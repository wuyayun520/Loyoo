//
//  TUISocialChatManager.h

#import <Foundation/Foundation.h>

@class TUIMessageCellData,V2TIMMessage;

typedef enum : NSUInteger {
    TXMessageContentType_text = 1,
    TXMessageContentType_picture,
    TXMessageContentType_gift,
    TXMessageContentType_askforGift,
    TXMessageContentType_voice,
    TXMessageContentType_local,
    TXMessageContentType_tips,
    TXMessageContentType_userCard,
    TXMessageContentType_video,
} TXMessageContentType;

NS_ASSUME_NONNULL_BEGIN

@interface TUISocialChatManager : NSObject


/// 获取消息插入的时间戳 毫秒
+ (long long)getMessageInsertTime;


#pragma mark - 腾讯IM

+ (TUIMessageCellData *)insertTXMessageModelWithExtral:(NSDictionary *)extral
                                                 toUid:(NSString *)toUid
                                              isSender:(BOOL)isSend
                                                 isTip:(BOOL)isTip;

/// 腾讯IM发送消息组装
/// - Parameters:
///   - extral: 字典数据
///   - isSend: 是否发送方
///   - isTip: 是否提示
+ (TUIMessageCellData *)handleTXMessageSendModelWithExtral:(NSDictionary *)extral
                                                  isSender:(BOOL)isSend
                                                     isTip:(BOOL)isTip;

/*!腾讯IM重发消息组装*/
+ (TUIMessageCellData *)handleTXMessageReSendModelWithData:(TUIMessageCellData *)cellData;

/*!腾讯IM接收消息组装*/
+ (TUIMessageCellData *)handleTXReceiveMessageModelWithExtral:(NSDictionary*)dic
                                                      cusData:(NSData *)data
                                                    tempModel:(V2TIMMessage *)tempModel;

+ (NSString *)checkPrimaryKeyWithMsgModel:(id)tempModel;

// 腾讯IM转化DIC
+ (NSDictionary *)packageDictWithTXMessage:(V2TIMMessage *)message;

/// 根据字典获取消息类型
/// - Parameter extraDic: V2TIMMessage数据中的 customElem.data
+ (TXMessageContentType)messageCellType:(NSDictionary *)extraDic;

@end

NS_ASSUME_NONNULL_END
