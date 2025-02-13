//
//  TUIMessageCellData.m
//  TXIMSDK_TUIKit_iOS
//
//  Created by annidyfeng on 2019/5/21.
//

#import "TUIMessageCellData.h"
#import "NetEaseLib/NetEaseLib-Swift.h"

@implementation TUIMessageCellData

- (id)initWithDirection:(TMsgDirection)direction
{
    self = [super init];
    if (self) {
        _direction = direction;
        _status = Msg_Status_Init;
        _avatarImage = [UIImage pineTreeStateSquare];
        _translateStatus = MsgTranslate_init;
        if (direction == MsgDirectionIncoming) {
            _cellLayout = [[MessageCellLayout alloc] initWithIsIncomming:YES];
            _nameFont = [[self class] incommingNameFont];
            _nameColor = [[self class] incommingNameColor];
        } else {
            _cellLayout = [[MessageCellLayout alloc] initWithIsIncomming:NO];
            _nameFont = [[self class] outgoingNameFont];
            _nameColor = [[self class] outgoingNameColor];
        }
    }
    return self;
}

- (void)setMsgModel:(ConfinementModel *)msgModel{
    _msgModel = msgModel;
}

- (CGFloat)heightOfWidth:(CGFloat)width
{
    CGFloat height = self.cellLayout.messageInsets.top; // 气泡与顶部的距离
    CGSize containerSize = [self contentSize];               // 实际气泡的高度
    height += containerSize.height;
    height += self.cellLayout.messageInsets.bottom;          // 气泡与底部的距离
    CGFloat coinH = self.msgIncome > 0 ? 20 : 0;
    height += coinH;
    // 判断是否展示未回复付费消息提示
    if ([PrivateThen allView:self.direction
                                                    msgType:self.messageType
                                                    msgTime:self.innerMessage.timestamp]) {
        height += 20;
    }
    
    if (self.showName == YES) {
        height += 22;
    }
    
    return MAX(65, height);
}

- (CGSize)contentSize
{
    return CGSizeZero;
}

- (void)setTranslatedContent:(NSString *)translatedContent {
    _translatedContent = translatedContent;
}


static UIColor *sOutgoingNameColor;

+ (UIColor *)outgoingNameColor
{
    if (!sOutgoingNameColor) {
        sOutgoingNameColor = [UIColor lightGrayColor];
    }
    return sOutgoingNameColor;
}

+ (void)setOutgoingNameColor:(UIColor *)outgoingNameColor
{
    sOutgoingNameColor = outgoingNameColor;
}

static UIFont *sOutgoingNameFont;

+ (UIFont *)outgoingNameFont
{
    if (!sOutgoingNameFont) {
        sOutgoingNameFont = [UIFont systemFontOfSize:14];
    }
    return sOutgoingNameFont;
}

+ (void)setOutgoingNameFont:(UIFont *)outgoingNameFont
{
    sOutgoingNameFont = outgoingNameFont;
}

static UIColor *sIncommingNameColor;

+ (UIColor *)incommingNameColor
{
    if (!sIncommingNameColor) {
        sIncommingNameColor = [UIColor lightGrayColor];
    }
    return sIncommingNameColor;
}

+ (void)setIncommingNameColor:(UIColor *)incommingNameColor
{
    sIncommingNameColor = incommingNameColor;
}

static UIFont *sIncommingNameFont;

+ (UIFont *)incommingNameFont
{
    if (!sIncommingNameFont) {
        sIncommingNameFont = [UIFont systemFontOfSize:14];
    }
    return sIncommingNameFont;
}

+ (void)setIncommingNameFont:(UIFont *)incommingNameFont
{
    sIncommingNameFont = incommingNameFont;
}
@end
