//
//  TCommonCell.m
//  TXIMSDK_TUIKit_iOS
//
//  Created by annidyfeng on 2019/5/6.
//

#import "TCommonCell.h"

@implementation TCommonCellData

- (CGFloat)heightOfWidth:(CGFloat)width
{
    return 44;
}
@end





@interface TCommonTableViewCell()<UIGestureRecognizerDelegate>

@property TCommonCellData *data;

@end


@implementation TCommonTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)fillWithData:(TCommonCellData *)data
{
    self.data = data;
}

@end
