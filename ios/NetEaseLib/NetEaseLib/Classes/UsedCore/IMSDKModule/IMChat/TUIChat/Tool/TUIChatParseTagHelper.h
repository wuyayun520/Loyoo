//
//  TUIChatParseTagHelper.h


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    ParseTagTextType_Normal,
    ParseTagTextType_Tip,
} ParseTagTextType;




/*!
 解析带有html标签的文本
 */
@interface TUIChatParseTagHelper : NSObject

@property (nonatomic, assign) ParseTagTextType type;

@property (nonatomic, strong) NSString *colorHex;

@property (nonatomic, assign) BOOL containImg;

@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSArray *jumps;

@property (nonatomic, copy) void(^jumpActionBlock)(NSDictionary *jumpInfo);


- (NSMutableAttributedString*)contentParseWithFontSize:(CGFloat)fontSize insert:(NSString*)insertString atIndex:(NSUInteger)loc;

@end

NS_ASSUME_NONNULL_END
