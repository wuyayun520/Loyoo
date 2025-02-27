//
//  TUIMessageController.m
//  UIKit
//
//  Created by annidyfeng on 2019/7/1.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import "TUIMessageController.h"
#import "NSDictionary+Additions.h"
#import "NetEaseLib/NetEaseLib-Swift.h"



#define MAX_MESSAGE_SEP_DLAY (5 * 60)


@interface TUIMessageController () <TMessageCellDelegate>
@property (nonatomic, strong) TUIMessageCellData *menuUIMsg;
@property (nonatomic, strong) TUIMessageCellData *reSendUIMsg;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic, assign) BOOL isLoadingMsg;
@property (nonatomic, assign) BOOL isInVC;
@property (nonatomic, assign) BOOL isActive;
/// 长按菜单是否展示
@property (nonatomic, assign) BOOL menuIsShow;
 //资料卡片信息
@property (nonatomic, strong) NSArray *waitUserCardDataArray;

@property (nonatomic, strong) UITapGestureRecognizer *tap;

///没有更多消息
@property (nonatomic, assign) BOOL noMoreMsg;
///腾讯查消息的节点
@property (nonatomic, strong) V2TIMMessage *msgForGet;



@end

@implementation TUIMessageController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
    self.isActive = YES;
}


- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewWillAppear:(BOOL)animated {
    self.isInVC = YES;
    [self readedReport];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self readedReport];
    self.isInVC = NO;
    [super viewWillDisappear:animated];
}

- (void)readedReport {
    if (self.isInVC && self.isActive) {
        if (self.currentChatType == TalkingIMChatType_group ||
            self.currentChatType == TalkingIMChatType_meeting) {
            if (self.targetID.length > 0) {
                [[V2TIMManager sharedInstance] markGroupMessageAsRead:self.targetID succ:^{
                    
                } fail:^(int code, NSString *msg) {
                    
                }];
            }
        } else {
            if (self.targetID.length > 0) {
                [[V2TIMManager sharedInstance] markC2CMessageAsRead:self.targetID succ:^{
                    NSLog(@"");
                } fail:^(int code, NSString *msg) {
                    NSLog(@"");
                }];
            }
        }
        
        
        
        
    }
}

- (void)limitReadReport {
    static uint64_t lastTs = 0;
    uint64_t curTs = [[NSDate date] timeIntervalSince1970];
    // 超过 1s && 非首次 立即上报已读
    if (curTs - lastTs >= 1 && lastTs) {
        lastTs = curTs;
        [self readedReport];
    } else {
        // 低于 1s || 首次  延迟 1s 合并上报
        static BOOL delayReport = NO;
        if (delayReport) {
            return;
        }
        delayReport = YES;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self readedReport];
            delayReport = NO;
        });
    }
}

- (void)applicationBecomeActive {
    self.isActive = YES;
    [self readedReport];
}

- (void)applicationEnterBackground {
    self.isActive = NO;
}

- (void)setupViews {
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(applicationBecomeActive)
                                                 name:UIApplicationDidBecomeActiveNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(applicationBecomeActive)
                                                 name:UIApplicationWillEnterForegroundNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(applicationEnterBackground)
                                                 name:UIApplicationDidEnterBackgroundNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(menuWillHide:)
                                                 name:UIMenuControllerWillHideMenuNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onNewMessage:) name:[PicToNotificationTool addOn] object:nil];
    
    self.tableView.scrollsToTop = NO;
    self.tableView.estimatedRowHeight = 0;
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    self.tableView.backgroundColor = [UIColor whiteColor];
    
    
    _indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 40)];
    _indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    self.tableView.tableHeaderView = _indicatorView;
    
    _heightCache = [NSMutableArray array];
    _uiMsgs = [[NSMutableArray alloc] init];
    _firstLoad = YES;
}

- (void)setTargetID:(NSString *)targetID{
    _targetID = targetID;
    if (self.currentChatType == TalkingIMChatType_meeting) {
        self.tableView.tableHeaderView = nil;
    }
    [self loadMessage];
}

#pragma mark --- 拉取消息
- (void)loadMessage {
    if(_isLoadingMsg || _noMoreMsg) {
        return;
    }
    
    _isLoadingMsg = YES;
    int msgCount = 20;
    if (self.currentChatType == TalkingIMChatType_meeting) { // 公共聊天室一次性获取50条，不分页
        msgCount = 50;
    }
    
    @weakify(self);
    if (self.currentChatType == TalkingIMChatType_group ||
        self.currentChatType == TalkingIMChatType_meeting) { // 群聊
        [[V2TIMManager sharedInstance] getGroupHistoryMessageList:self.targetID count:msgCount lastMsg:self.msgForGet succ:^(NSArray<V2TIMMessage *> *msgs) {
            @strongify(self)
            [self getMessages:msgs msgCount:msgCount];
            if (self.currentChatType == TalkingIMChatType_meeting) { // 公共聊天室不分页
                self.noMoreMsg = YES;
            }
            
        } fail:^(int code, NSString *msg) {
            @strongify(self)
            self.isLoadingMsg = NO;
            if ([DateThen shared].isConnection) { //推送点进来会报错
                NSString *str = [@"Net Error, Try again later" videoLabel];
                [self episodeWithShowMsg:[str videoLabel]];
            }
            [self.indicatorView stopAnimating];
        }];
        
    } else if (self.currentChatType == TalkingIMChatType_private ||
               self.currentChatType == TalkingIMChatType_system ||
               self.currentChatType == TalkingIMChatType_service) { // 单聊
        [[V2TIMManager sharedInstance] getC2CHistoryMessageList:self.targetID count:msgCount lastMsg:self.msgForGet succ:^(NSArray<V2TIMMessage *> *msgs) {
            @strongify(self)
            [self getMessages:msgs msgCount:msgCount];
            
        } fail:^(int code, NSString *msg) {
            @strongify(self)
            self.isLoadingMsg = NO;
            if ([DateThen shared].isConnection) {
                if (MeasurementAppManager.share.appStatus == 0) {
                    NSString *str = [@"Net Error, Try again later" videoLabel];
                    [self episodeWithShowMsg:[str videoLabel]];
                }
            }
            [self.indicatorView stopAnimating];
        }];
        
    } else {
        NSLog(@"error");
    }
}

- (void)getMessages:(NSArray *)msgs msgCount:(int)msgCount {
    
    if (msgs.count != 0) {
        //TX的节点
        self.msgForGet = msgs[msgs.count - 1];
    }
    //拉取完毕
    if (msgs.count < msgCount) {
        self.noMoreMsg = YES;
        self.indicatorView.height = 0;
    }
    //UI-msgs
    //过滤消息
    NSMutableArray *array = [NSMutableArray arrayWithArray:msgs];
    for (NSInteger k = array.count - 1; k >= 0; --k) {
        V2TIMMessage *msg = array[k];
        NSLog(@"🚀：-----，%@， %@ %@, %d", msg, msg.userID, msg.timestamp, msg.isPeerRead);
        if (![msg.userID isEqualToString:self.targetID] && ![msg.groupID isEqualToString:self.targetID]) {
            continue;
        }
        //由后台发送的消息，如果是本人的，要过滤,避免和本地消息重复
        NSString *extra = [[NSString alloc]initWithData:msg.customElem.data encoding:NSUTF8StringEncoding];
        NSDictionary *dic = [NSDictionary dictionaryWithJsonString:extra];
        NSString *userId = [NSString stringWithFormat:@"%@",dic[@"From_Account"]];
        if ([userId isEqualToString:MeasurementAppManager.share.loginUserMode.userID]) {
            [array removeObject:msg];
            continue;
        }
    }
    
    msgs = [array copy];
    NSMutableArray *uiMsgs = [self transUIMsgFromIMMsg:msgs];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        // 记录新数据加载前偏移量
        CGFloat oldContentH = self.tableView.contentSize.height;
        CGFloat oldOffset = self.tableView.contentOffset.y;
        
        // 更新数据源并刷新表格
        if (uiMsgs.count > 0) {
            NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, uiMsgs.count)];
            [self.uiMsgs insertObjects:uiMsgs atIndexes:indexSet];
            [self.heightCache removeAllObjects];
        }
        [self.tableView reloadData];
        [self.tableView layoutIfNeeded];
        
        if (uiMsgs.count > 0) {
            CGFloat currContentH = self.tableView.contentSize.height;
            if (self.firstLoad) { // 首次加载 滚动到底部
                CGFloat frameHeight = self.tableView.frame.size.height;
                if (currContentH > frameHeight) {
                    [self.tableView setContentOffset:CGPointMake(0, currContentH - frameHeight) animated:NO];
                }
                
            } else { // 加载更多 保持原位置
                [self.tableView setContentOffset:CGPointMake(0, oldOffset + (currContentH - oldContentH)) animated:NO];
            }
        }
        
        self.isLoadingMsg = NO;
        [self.indicatorView stopAnimating];
        self.firstLoad = NO;
    });
}

- (void)printfTXMsgs:(NSArray *)msgs {
#if DEBUG
    
    NSInteger index = 0;
    for (V2TIMMessage *msgModel in msgs) {
        if ([msgModel isKindOfClass:[V2TIMMessage class]]) {
            NSString *extra = [[NSString alloc]initWithData:msgModel.customElem.data encoding:NSUTF8StringEncoding];
            NSDictionary *dic = [NSDictionary dictionaryWithJsonString:extra];
            
            BOOL direction = msgModel.isSelf;
            
            //            if ([dic[@"rYMsgType"] isEqualToString:@"GJ:Sess:AutoGreet:TxtCustom"] || [dic[@"content"] isEqualToString:@"111"]) {
            //                direction = [dic[@"extra"][@"msgInfo"][@"changeDirection"] boolValue];
            //
            //                if (direction) {
            //                    NSLog(@"自动打招呼消息 右侧，msgId = %@，timeStamp = %lld，seq = %zd， random = %zd",msgModel.msgID,msgModel.timestamp.timeIntervalSince1970,msgModel.seq,msgModel.random);
            //                } else {
            //                    NSLog(@"自动打招呼消息 左侧，msgId = %@，timeStamp = %lld，seq = %zd， random = %zd",msgModel.msgID,msgModel.timestamp.timeIntervalSince1970,msgModel.seq,msgModel.random);
            //                }
            //            }
            
            
            //            NSLog(@"dic = %@, time = %lld",dic,msgModel.timestamp.timeIntervalSince1970);
        }
        index ++;
    }
    
#endif
}

- (void)onNewMessage:(NSNotification *)notification
{
    V2TIMMessage *msg = notification.object;
    
    if ([msg.sender isEqualToString:MeasurementAppManager.share.loginUserMode.userID]) {
        //过滤本人发送的消息
        return;
    }
    
    NSMutableArray *uiMsgs = [self transUIMsgFromIMMsg:@[msg]];
    if (uiMsgs.count > 0) {
        //生成需要插入的 index。即行号从 _uiMsgs.count - 1到 _uiMsgs.count + uiMsgs.count +1。 section 恒为 0。
        [self.tableView beginUpdates];
        for (TUIMessageCellData *uiMsg in uiMsgs) {
            [self.uiMsgs addObject:uiMsg];
            [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
                                  withRowAnimation:UITableViewRowAnimationFade];
        }
        [self.tableView endUpdates];
        // 查看历史消息的时候根据当前 contentOffset 判断是否需要滑动到底部
        if ((self.tableView.contentSize.height - self.tableView.contentOffset.y) < [ImageMacroDefine redact] * 1.5) {
            [self scrollToBottom:YES];
        }
        [self limitReadReport];
    }
}

- (NSMutableArray *)transUIMsgFromIMMsg:(NSArray *)msgs
{
    NSMutableArray *uiMsgs = [NSMutableArray array];
    for (NSInteger k = msgs.count - 1; k >= 0; --k) {
        V2TIMMessage *msg = msgs[k];
        if (![msg.userID isEqualToString:self.targetID] && ![msg.groupID isEqualToString:self.targetID]) {
            continue;
        }
        
        // 时间信息
        TalkingSystemMsgCellData *dateMsg = [self transSystemMsgFromDate:msg.timestamp];
        // 外部自定义的消息
        if ([self.delegate respondsToSelector:@selector(messageController:onNewMessage:)]) {
            TUIMessageCellData *data = [self.delegate messageController:self onNewMessage:msg];
            if(msg.groupID.length > 0 && ![data isKindOfClass:[TalkingSystemMsgCellData class]]){
                data.showName = YES;
            }
            
            if (data) {
                
                data.innerMessage = msg;
                data.msgID = msg.msgID;
                switch (msg.status) {
                    case 1: // V2TIM_MSG_STATUS_SENDING
                        data.status = Msg_Status_Sending_2;
                        break;
                    case 2: // V2TIM_MSG_STATUS_SEND_SUCC
                        data.status = Msg_Status_Succ;
                        break;
                    case 3: // V2TIM_MSG_STATUS_SEND_FAIL
                        data.status = Msg_Status_Fail;
                        break;
                    default:
                        break;
                }
                
                if (dateMsg) {
                    _msgForDate = msg;
                    [uiMsgs addObject:dateMsg];
                }
                [uiMsgs addObject:data];
                continue;
            }
        }
    }
    return uiMsgs;
}


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _uiMsgs.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TUIMessageCellData *data = _uiMsgs[indexPath.row];
    
    CGFloat height = 0;
    if(_heightCache.count > indexPath.row) {
        height = [_heightCache[indexPath.row] floatValue];
    }
    //    缓存存在问题待处理
    //    if (height > 0 && ![data isKindOfClass:[AbTalkingChatMatchMsgCellData class]] && ![data isKindOfClass:[TalkingChatTipsMsgCellData class]]) {
    //        return height;
    //    }
    height = [data heightOfWidth:[UIScreen mainScreen].bounds.size.height];
    [_heightCache insertObject:[NSNumber numberWithFloat:height] atIndex:indexPath.row];
    return height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TUIMessageCellData *data;
    data = _uiMsgs[indexPath.row];
    
    TUIMessageCell *cell = nil;
    if ([self.delegate respondsToSelector:@selector(messageController:onShowMessageData:)]) {
        cell = [self.delegate messageController:self onShowMessageData:data];
        if (cell) {
            cell.delegate = self;
            return cell;
        }
    }
    if (!data.reuseId) {
        
        if([data isKindOfClass:[TalkingSystemMsgCellData class]]) {
            data.reuseId = @"TSystemMessageCell_ReuseId";
        }
        else {
            return [TUIMessageCell new];
        }
    }
    cell = [tableView dequeueReusableCellWithIdentifier:data.reuseId forIndexPath:indexPath];
    if (!cell) {
        
        cell = [[TUIMessageCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:data.reuseId];
    }
    cell.delegate = self;
    [cell fillWithData:_uiMsgs[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

- (void)scrollToBottom:(BOOL)animate {
    if (_uiMsgs.count > 0 && self.menuIsShow == NO) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:self->_uiMsgs.count - 1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:animate];
        });
    }
    
}

- (void)didTapViewController
{
    if(_delegate && [_delegate respondsToSelector:@selector(didTapInMessageController:)]) {
        [_delegate didTapInMessageController:self];
    }
}

#pragma mark - 自定义方法
/// 发送消息
/// - Parameter msg: cellData
- (void)sendCustomMessage:(TUIMessageCellData *)msg {

    if (self.currentChatType == TalkingIMChatType_meeting) {
        if (_uiMsgs.count > 7000) {
            V2TIMMessage *msg = _uiMsgs.firstObject;
            [[V2TIMManager sharedInstance] deleteMessages:@[msg] succ:nil fail:nil];
            [_uiMsgs removeObject:msg];
        }
    }
    
    [self.tableView beginUpdates];
    V2TIMMessage *imMsg = msg.innerMessage;
    TUIMessageCellData *dateMsg = nil;
    if (msg.status == Msg_Status_Init) {
        if (imMsg) {
            dateMsg = [self transSystemMsgFromDate:imMsg.timestamp];
        }
    } else if (imMsg) {
        //重发
        dateMsg = [self transSystemMsgFromDate:[NSDate date]];
        NSInteger row = [_uiMsgs indexOfObject:msg];
        [_heightCache removeObjectAtIndex:row];
        [_uiMsgs removeObjectAtIndex:row];
        [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:0]]
                              withRowAnimation:UITableViewRowAnimationFade];
        
        [[V2TIMManager sharedInstance] deleteMessageFromLocalStorage:imMsg succ:nil fail:nil];
        
    } else {
        [self.tableView endUpdates];
        NSLog(@"Unknown message state");
        return;
    }
    @weakify(self)
    BOOL isGroup = self.currentChatType == TalkingIMChatType_meeting || self.currentChatType == TalkingIMChatType_group;
    NSInteger sender = MeasurementAppManager.share.loginUserMode.userID.integerValue;
    NSString *msgID;
    if (isGroup) {
        msgID = [[V2TIMManager sharedInstance] insertGroupMessageToLocalStorage:imMsg to:self.targetID sender:@(sender).description succ:nil fail:nil];
    } else {
        msgID = [[V2TIMManager sharedInstance] insertC2CMessageToLocalStorage:imMsg to:self.targetID sender:@(sender).description succ:nil fail:nil];
    }
    
    // 展示 UI 界面
    msg.status = Msg_Status_Sending;
    msg.name = [msg.innerMessage nickName];
    msg.avatarUrl = [NSURL URLWithString:[msg.innerMessage faceURL]];
    msg.msgID = msgID;
    if(dateMsg) {
        _msgForDate = imMsg;
        [_uiMsgs addObject:dateMsg];
        [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
                              withRowAnimation:UITableViewRowAnimationFade];
    }
    if (isGroup && ![msg isKindOfClass:[TalkingSystemMsgCellData class]]) {
        msg.showName = YES;
    }
    [_uiMsgs addObject:msg];
    [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
                          withRowAnimation:UITableViewRowAnimationFade];
    [self.tableView endUpdates];
    [self scrollToBottom:YES];
    
    int delay = 1;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        @strongify(self)
        if(msg.status == Msg_Status_Sending) {
            [self changeCustomMsg:msg status:Msg_Status_Sending_2];
        }
    });
}

/// 更改cellData加载状态
/// - Parameters:
///   - msg: cellData
///   - status: 加载状态
- (void)changeCustomMsg:(TUIMessageCellData *)msg status:(TMsgStatus)status {
    msg.status = status;
    NSInteger index = [_uiMsgs indexOfObject:msg];
    if ([self.tableView numberOfRowsInSection:0] > index) {
        TUIMessageCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        if (cell != nil) {
            [cell fillWithData:msg];
        }
    } else {
        NSLog(@"缺少cell");
    }
}

/// 修改消息本地数据
/// - Parameters:
///   - extral: 需要保存的数据
///   - msg: cellData
- (void)modifyCustomMessageDataWithExtral:(NSDictionary *)extral cellData:(TUIMessageCellData *)msg {
    V2TIMMessage *imMsg = msg.innerMessage;
    NSDictionary *dict = [TUIMsgChatManager parseTXMessageDataWithData:imMsg.customElem.data];
    NSMutableDictionary *tempDict = [NSMutableDictionary dictionaryWithDictionary:dict];
    NSMutableDictionary *newExtraDict = tempDict[@"extra"];
    
    if ([newExtraDict containsObjectForKey:@"msgInfo"] && [extral containsObjectForKey:@"msgInfo"]) {
        newExtraDict[@"msgInfo"] = extral[@"msgInfo"];
    }
    if ([newExtraDict containsObjectForKey:@"params"] && [extral containsObjectForKey:@"params"]) {
        newExtraDict[@"params"] = extral[@"params"];
    }
    
    // 更新消息本地保存的数据
    tempDict[@"extra"] = newExtraDict;
    NSString *extraString = [tempDict jsonStringEncoded];
    NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
    imMsg.customElem.data = cData;
    [[V2TIMManager sharedInstance] modifyMessage:imMsg completion:^(int code, NSString *desc, V2TIMMessage *msg) {
    }];
    
    // 更新内存模型
    msg.msgModel = [ConfinementModel modelWithDic:newExtraDict];
}

/// 更改自定义消息发送状态
/// - Parameters:
///   - msg: 消息数据
///   - msgId: 本人发送，接口返回的消息ID（可能为nil）
///   - incon: 收益
///   - status: 消息发送状态
- (void)changeCustomMsg:(TUIMessageCellData *)msg msgId:(NSString *)msgId msgIncome:(NSNumber *)income status:(TMsgStatus)status {
    dispatch_async(dispatch_get_main_queue(), ^{
        NSMutableDictionary *tempDic = [TUIMessageController getLocalCustomDictionaryWithMessage:msg];
        [tempDic setObject:@(status).description forKey:@"status"];
        [tempDic setObject:income forKey:@"msgIncome"];
        if (msgId != nil) { [tempDic setObject:msgId forKey:@"msgId"]; }
        NSError *error = nil;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tempDic options:NSJSONWritingPrettyPrinted error:&error];
        [msg.innerMessage setLocalCustomData:jsonData];
        
        msg.status = status;
        msg.msgIncome = income.floatValue;
        msg.msgModel.msgInfo.msgId = msgId;
        [self inner_reloadCellWithMessage:msg];
    });
}

#pragma mark - 私密照片
/// 更改私密照片消息的状态
/// - Parameters:
///   - msg: 图片消息
///   - model: 私密照片模型
- (void)changeIntimatePhotoMsg:(TUIMessageCellData *)msg photoModel:(InputTalkingModel *)model {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (model == nil) { return; }
        [InputTalkingModel mainGift:model icon:msg.msgID];
        msg.msgModel.msgInfo.intimatePhoto = model;
        [self inner_reloadCellWithMessage:msg];
    });
}

#pragma mark - 私密视频
/// 更改私密视频消息的状态
/// - Parameters:
///   - msg: 视频消息
///   - model: 私密视频模型
- (void)changeIntimateVideoMsg:(TUIMessageCellData *)msg videoModel:(FullPhaseOfTheMoonJsonModel *)model {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (model == nil) { return; }
        [FullPhaseOfTheMoonJsonModel value:model with:msg.msgID];
        msg.msgModel.msgInfo.video = model;
        [self inner_reloadCellWithMessage:msg];
    });
}

#pragma mark - 索要礼物
/// 更改索要礼物消息的状态
- (void)changeIntimateGiftMsg:(TUIMessageCellData *)msg {
    dispatch_async(dispatch_get_main_queue(), ^{
        [StochasticProcessJsonModel wantId:msg.msgID];
        msg.msgModel.msgInfo.wantGift.sendStatus = 1;
        [self inner_reloadCellWithMessage:msg];
    });
}

#pragma mark - 翻译
/// 翻译消息，更新本地消息状态
/// - Parameters:
///   - msg: 消息数据
///   - transContent: 翻译后的内容
///   - status: 当前翻译状态
- (void)translateMessage:(TUIMessageCellData *)msg translatedContent:(NSString *)transContent status:(TMsgTranslateStatus)status {
    dispatch_async(dispatch_get_main_queue(), ^{
        NSString *content = transContent.length > 0? transContent:@"";
        NSMutableDictionary *tempDic = [TUIMessageController getLocalCustomDictionaryWithMessage:msg];
        [tempDic setObject:@(status) forKey:@"TMsgTranslateStatus"];
        [tempDic setObject:content forKey:@"TMsgTranslatedContent"];
        
        NSError *error = nil;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tempDic options:NSJSONWritingPrettyPrinted error:&error];
        [msg.innerMessage setLocalCustomData:jsonData];
        msg.translateStatus = status;
        msg.translatedContent = content;
        
        [self inner_reloadCellWithMessage:msg];
    });
}

/// 获取本地自定义消息字典
/// - Parameter msg: 消息数据
+ (NSMutableDictionary *)getLocalCustomDictionaryWithMessage:(TUIMessageCellData *)msg {
    V2TIMMessage *imMsg = msg.innerMessage;
    NSString *customStr = [[NSString alloc]initWithData:imMsg.localCustomData encoding:NSUTF8StringEncoding];
    NSDictionary *customDic = @{};
    if (customStr != nil && customStr.length > 0) {
        customDic = [NSDictionary dictionaryWithJsonString:customStr];
    }
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] initWithDictionary:customDic];
    
    return tempDic;
}

- (void)deleteCustomMessage:(TUIMessageCellData *)msg {
    V2TIMMessage *imMsg = msg.innerMessage;
    TUIMessageCellData *dateMsg = nil;
    dateMsg = [self transSystemMsgFromDate:[NSDate date]];
    NSInteger row = [_uiMsgs indexOfObject:msg];
    [_heightCache removeObjectAtIndex:row];
    [_uiMsgs removeObjectAtIndex:row];
    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:0]]
                          withRowAnimation:UITableViewRowAnimationFade];
    
    [[V2TIMManager sharedInstance] deleteMessageFromLocalStorage:imMsg succ:nil fail:nil];
    
}


/// 刷新cell
/// - Parameter msg: 消息数据
- (void)inner_reloadCellWithMessage:(TUIMessageCellData *)msg {
    NSInteger index = [_uiMsgs indexOfObject:msg];
    if ([self.tableView numberOfRowsInSection:0] > index) {
        TUIMessageCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        if (cell != nil) {
            [cell fillWithData:msg];
            [UIView performWithoutAnimation:^{
                [self.tableView reloadRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0] withRowAnimation:UITableViewRowAnimationNone];
            }];
        }
    } else {
        NSLog(@"缺少cell");
    }
}

- (TalkingSystemMsgCellData *)transSystemMsgFromDate:(NSDate *)date
{
    if(_msgForDate == nil || fabs([date timeIntervalSinceDate:_msgForDate.timestamp]) > MAX_MESSAGE_SEP_DLAY) {
        TalkingSystemMsgCellData *system = [[TalkingSystemMsgCellData alloc] initWithDirection:MsgDirectionOutgoing];
        system.contentStr = [NSDate clickDateWithShowDetail:YES date:date];
        system.reuseId = @"TSystemMessageCell_ReuseId";
        return system;
    }
    return nil;
}

///滚动时，隐藏键盘
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
    [self didTapViewController];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if(!_noMoreMsg && scrollView.contentOffset.y <= 40) {
        if(!_indicatorView.isAnimating) {
            [_indicatorView startAnimating];
        }
    }
    else {
        if(_indicatorView.isAnimating) {
            [_indicatorView stopAnimating];
        }
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if(scrollView.contentOffset.y <= 40) {
        [self loadMessage];
    }
}

#pragma mark - message cell delegate

- (void)onSelectMessageWithCell:(TUIMessageCell *)cell{
    if ([self.delegate respondsToSelector:@selector(messageController:onSelectMessageContent:)]) {
        [self.delegate messageController:self onSelectMessageContent:cell];
    }
}

#pragma mark - cell长按手势

- (void)onLongPressMessageWithCell:(TUIMessageCell *)cell{
    
    TUIMessageCellData *data = cell.messageData;
    if ([[self requiredResponseWithLongGestureRecognizer] containsObject:[data class]] == NO) {
        return;
    }
    
    BOOL hasJumps = NO;
    if ([data isKindOfClass:[OfCellData class]]) {
        OfCellData *textCellData = (OfCellData *)data;
        
        if (textCellData.hasJump) {
            hasJumps = YES;
        }
    }
    
    NSMutableArray *items = [NSMutableArray array];
    // 只有文字才有复制功能
    if (([data isKindOfClass:[PathCellData class]] ||
         [data isKindOfClass:[OfCellData class]]) && hasJumps == NO) {
        // 过滤掉音视频通话文本消息
        if (data.msgModel.msgInfo.callCmd == nil) {
            [items addObject:[[UIMenuItem alloc] initWithTitle:@"Copy".videoLabel action:@selector(onCopyMsg:)]];
            // 私聊 && 接收消息 && 消息未翻译成功
            if ([data isKindOfClass:[OfCellData class]] &&
                data.direction == MsgDirectionIncoming &&
                data.translateStatus != MsgTranslate_succeed) {
                [items addObject:[[UIMenuItem alloc] initWithTitle:@"Trans".videoLabel action:@selector(onTranslateMsg:)]];
            }
        }
    }
    
    if ([self canReplyResponseWithLongGestureRecognizer:data]) {
        [items addObject:[[UIMenuItem alloc] initWithTitle:@"Reply".videoLabel action:@selector(onReplyMsg:)]];
    }
    
    if (items.count == 0) {
        return;
    }
    
    self.menuIsShow = YES;
    BOOL isFirstResponder = NO;
    if(_delegate && [_delegate respondsToSelector:@selector(messageController:willShowMenuInCell:)]) {
        isFirstResponder = [_delegate messageController:self willShowMenuInCell:cell];
    }
    if(isFirstResponder) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(menuDidHide:) name:UIMenuControllerDidHideMenuNotification object:nil];
    } else {
        [self becomeFirstResponder];
    }
    UIMenuController *controller = [UIMenuController sharedMenuController];
    controller.menuItems = items;
    _menuUIMsg = data;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [controller setTargetRect:cell.container.bounds inView:cell.container];
        [controller setMenuVisible:YES animated:YES];
    });
}

///长按支持手势的cell数据
- (NSArray *)requiredResponseWithLongGestureRecognizer {
    return @[[PathCellData class],
             [OfCellData class],
             [ValueViewReactiveCompatible class],
             [DocumentCellData class],
             [ToCellData class],
             [ConstraintReactiveCompatible class],
             [ChatValueCellData class]];
}

- (void)onRetryMessageWithCell:(TUIMessageCell *)cell{
    
    if ([self.delegate respondsToSelector:@selector(messageController:onRetryMessageContent:)]) {
        [self.delegate messageController:self onRetryMessageContent:cell];
    }
    
}

- (void)onSelectMessageAvatarWithCell:(TUIMessageCell *)cell{
    if ([self.delegate respondsToSelector:@selector(messageController:onSelectMessageAvatar:)]) {
        [self.delegate messageController:self onSelectMessageAvatar:cell];
    }
}

-(BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    if (action == @selector(onDelete:) ||
        action == @selector(onRevoke:) ||
        action == @selector(onReSend:) ||
        action == @selector(onCopyMsg:) ||
        action == @selector(onTranslateMsg:) ||
        action == @selector(onMulitSelect:) ||
        action == @selector(onReplyMsg:)){
        return YES;
    }
    return NO;
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)menuDidHide:(NSNotification*)notification
{
    if(_delegate && [_delegate respondsToSelector:@selector(didHideMenuInMessageController:)]){
        [_delegate didHideMenuInMessageController:self];
    }
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIMenuControllerDidHideMenuNotification object:nil];
}

- (void)menuWillHide:(NSNotification *)notif {
    self.menuIsShow = NO;
}

#pragma mark - 复制消息
- (void)onCopyMsg:(id)sender {
    NSInteger index = [_uiMsgs indexOfObject:self.menuUIMsg];
    if (index == NSNotFound)
        return;
    
    if ([_menuUIMsg isKindOfClass:[PathCellData class]] ||
        [_menuUIMsg isKindOfClass:[OfCellData class]]) {
        OfCellData *txtMsg = (OfCellData *)_menuUIMsg;
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        NSString *content = txtMsg.contentStr;
        if ([content containsString:@"<at>"]) {
            
            content = [content stringByReplacingOccurrencesOfString:@"<at>" withString:@""];
        }
        if ([content containsString:@"</at>"]) {
            content = [content stringByReplacingOccurrencesOfString:@"</at>" withString:@""];
        }
        
        //        if (!FZUtils.isEmptyString(content)) {
        //            content = [content convertGJEmoji];
        //        }
        
        pasteboard.string = content;
    }
    
}
#pragma mark - 引用消息
- (BOOL)canReplyResponseWithLongGestureRecognizer:(TUIMessageCellData *)cellData {
    if (self.currentChatType != TalkingIMChatType_private) {
        return NO;
    }
    if (cellData.direction == MsgDirectionOutgoing && cellData.status != Msg_Status_Succ) {
        return NO;
    }
    if (cellData.messageType == 3) { // 过滤系统代发打招呼消息
        return NO;
    }
    if ([cellData isKindOfClass:[ConstraintReactiveCompatible class]] || [cellData isKindOfClass:[ValueViewReactiveCompatible class]]) {
        return YES;
    }
    if ([cellData isKindOfClass:[OfCellData class]]) {
        if (cellData.msgModel.msgInfo.callCmd == nil) { // 过滤掉音视频通话文本消息
            return YES;
        }
    }
    if ([cellData isKindOfClass:[ToCellData class]]) {
        // 普通视频
        if (cellData.msgModel.msgInfo.video.burnStatus == -1 && cellData.msgModel.msgInfo.video.lockStatus == -1 && [cellData.msgModel.msgInfo.video.giftId isEqualToString:@"0"]) {
            return YES;
        }
    }
    if ([cellData isKindOfClass:[DocumentCellData class]]) {
        // 普通图片
        if (cellData.msgModel.msgInfo.intimatePhoto != nil || [cellData.msgModel.msgInfo.customSend.isBurn isEqualToString:@"1"] || (cellData.msgModel.msgInfo.customSend.giftId != nil && ![cellData.msgModel.msgInfo.customSend.giftId isEqualToString:@"0"])) {
            return NO;
        }
        return YES;
    }
    
    return NO;
}

- (void)onReplyMessageWithCell:(TUIMessageCell *)cell {
    if ([_delegate respondsToSelector:@selector(messageController:onClickReplyMessage:)]) {
        [_delegate messageController:self onClickReplyMessage:cell.messageData];
    }
}
- (void)onReplyMsg:(id)sender {
    NSInteger index = [_uiMsgs indexOfObject:self.menuUIMsg];
    if (index == NSNotFound)
        return;
    OfCellData *txtMsg = (OfCellData *)_menuUIMsg;
    if ([_delegate respondsToSelector:@selector(messageController:onReplyMessage:)]) {
        [_delegate messageController:self onReplyMessage:txtMsg];
    }
    
}

#pragma mark - 翻译消息
/// 系统翻译事件
- (void)onTranslateMsg:(id)sender {
    [self translateMsgWithCellData:self.menuUIMsg];
}

/// 翻译消息
/// - Parameter cellData: 数据
- (void)translateMsgWithCellData:(TUIMessageCellData *)cellData {
    NSInteger index = [_uiMsgs indexOfObject:cellData];
    if (index == NSNotFound) return;
    
    if (MeasurementAppManager.share.appUserConfigMode.enableTranslate == NO) { // 非会员，无法使用翻译
        [[LimitPushManager share] birth];
        return;
    }
    
    if ([cellData isKindOfClass:[OfCellData class]]) {
        OfCellData *txtMsg = (OfCellData *)cellData;
        [self translateMessageToReq:txtMsg andType:0];
        
    } else if ([cellData isKindOfClass:[PathCellData class]]) {
        PathCellData *txtMsg = (PathCellData *)cellData;
        [self translateMessageToReq:txtMsg andType:1];
    }
}

- (void)translateMessageToReq:(TUIMessageCellData *)txtMsg andType:(int)type {
    [self translateMessage:txtMsg translatedContent:nil status:MsgTranslate_translating];
    // 调用翻译接口
    [DoingSheRequestTool repeatScreenWithMsgId:txtMsg.msgModel.msgInfo.msgId type:type completion:^(BOOL succeed, NSDictionary *dict, NSInteger errorCode) {
        if (!succeed) {
            if (errorCode == 403) { // 非会员，无法使用翻译
                MeasurementAppManager.share.appUserConfigMode.enableTranslate = NO;
                [[LimitPushManager share] birth];
            }
            
            [self translateMessage:txtMsg translatedContent:@"Retry" status:MsgTranslate_fail];
            return;
        }
        
        NSString *content = @"";
        if ([dict.allKeys containsObject:@"targetText"]) { content = dict[@"targetText"]; }
        [self translateMessage:txtMsg translatedContent:content status:MsgTranslate_succeed];
    }];
}


@end
