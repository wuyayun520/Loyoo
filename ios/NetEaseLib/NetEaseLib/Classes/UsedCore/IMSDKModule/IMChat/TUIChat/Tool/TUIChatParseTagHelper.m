//
//  TUIChatParseTagHelper.m


#import "TUIChatParseTagHelper.h"
#import "Ono.h"
#import "NetEaseLib/NetEaseLib-Swift.h"

#define kJumpInfo @"jumpInfo"

@interface TUIChatParseTagHelper ()

@property (nonatomic,strong) NSString *pure_content;
@property (nonatomic,strong) NSMutableAttributedString *contentTextAttrString;
@property (nonatomic,strong) NSMutableArray *contentAttrArray;

@property (nonatomic,strong) NSMutableArray *jumpArray;

@end

@implementation TUIChatParseTagHelper


- (NSString *)pure_content{
    if (!_pure_content) {
        [self analysisContent];
    }
    return _pure_content;
}

- (void)analysisContent{
    if (!_contentAttrArray || !_pure_content) {
        _contentAttrArray = [NSMutableArray new];
        _pure_content = [self parseXML:self.content into:self.contentAttrArray];
    }
}


- (NSMutableAttributedString*)contentParseWithFontSize:(CGFloat)fontSize insert:(NSString*)insertString atIndex:(NSUInteger)loc{
    
    if (_contentTextAttrString) {
        return _contentTextAttrString;
    }
    
    [self analysisContent];
    return [self rendering:self.contentAttrArray fontSize:fontSize insert:insertString atIndex:loc];
    
}

- (NSMutableAttributedString*)rendering:(NSMutableArray*)attrArray
                               fontSize:(CGFloat)fontSize
                                 insert:(NSString *)insertString
                                atIndex:(NSUInteger)loc{
    
    NSMutableAttributedString *textAttributedString= [NSMutableAttributedString new];
    
    UIFont *font = [UIFont systemFontOfSize:fontSize];
    [textAttributedString appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];

    for (NSDictionary* textInfo in attrArray) {
        
        NSString *type = textInfo[@"type"];
        if ([type.lowercaseString isEqualToString:@"text"]) {
            
            NSString *text = textInfo[@"text"];
            BOOL isB = [textInfo[@"b"] boolValue];
            NSDictionary *attr = textInfo[@"attr"];
            
            UIColor *textColor = [UIColor colorWithHexString:attr[@"color"]];
            BOOL underLine = [attr[@"underLine"] boolValue];
            if (isB) {
                font = [UIFont boldSystemFontOfSize:fontSize];
            } else {
                font = [UIFont systemFontOfSize:fontSize];
            }
            
            UIFont *infoFont = attr[@"font"];
            if (infoFont && [infoFont isKindOfClass:UIFont.class]) {
                font = infoFont;
            }
            
            NSMutableDictionary *attributes = [NSMutableDictionary dictionaryWithDictionary:@{NSFontAttributeName:font}];
            if (textColor) {
                attributes[NSForegroundColorAttributeName] = textColor;
            }
            if (underLine) {
                attributes[NSUnderlineStyleAttributeName] = @(NSUnderlineStyleSingle);
            }
            
            if (text) {
                
                NSMutableAttributedString *attText = [[NSMutableAttributedString alloc] initWithString:text attributes:attributes];
                
                NSDictionary *jumpInfo = attr[kJumpInfo];
                
                if (jumpInfo) {
                    [attText yy_setTextHighlightRange:NSMakeRange(0, attText.length) color:nil backgroundColor:nil tapAction:^(UIView * _Nonnull containerView, NSAttributedString * _Nonnull text, NSRange range, CGRect rect) {
                        if (self.jumpActionBlock) {
                            self.jumpActionBlock(jumpInfo);
                        }
                    }];
                }
                
                [textAttributedString appendAttributedString:attText];
            }
        } else if ([type.lowercaseString isEqualToString:@"img"]) {
            
            if (self.containImg) {
                
                CGFloat width    = MAX(180, [ImageMacroDefine blazeAway] - 150);
                CGFloat height   = 94.0/230.f * width;
                NSString *imgUrl = textInfo[@"name"];
                
                UIImageView *imageView = [[UIImageView alloc] init];
                imageView.bounds = CGRectMake(0, 0, width, height);
                imageView.clipsToBounds = YES;
                [imageView recordFinishWithUrlStr:imgUrl placeImg:nil loadFinish:nil];
                NSMutableAttributedString *imageAtt =
                [NSMutableAttributedString yy_attachmentStringWithContent:imageView
                                                              contentMode:(UIViewContentModeScaleAspectFill)
                                                           attachmentSize:CGSizeMake(width, height)
                                                              alignToFont:[UIFont systemFontOfSize:15]
                                                                alignment:YYTextVerticalAlignmentCenter];
                
                [textAttributedString appendAttributedString:imageAtt];
            
            }
        }
    }
    
    
    if (insertString && insertString.length > 0) {
        [textAttributedString insertAttributedString:[[NSAttributedString alloc] initWithString:insertString attributes:@{NSFontAttributeName:font}] atIndex:loc];
    }
    
    [textAttributedString appendAttributedString:[[NSAttributedString alloc] initWithString:@"\u202C"]];
    _contentTextAttrString = textAttributedString;
    return _contentTextAttrString;
}


- (NSString*)parseXML:(NSString*)source
                 into:(NSMutableArray*)attrArray{
    
    NSError *error = nil;
    ONOXMLDocument *document =
    [ONOXMLDocument XMLDocumentWithString:[NSString stringWithFormat:@"<_>%@</_>",source]
                                 encoding:CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingUTF8)
                                    error:&error];
    
    if (error) {
        NSLog(@"[Error] %@", error);
        [attrArray addObject:@{@"text":source,@"b":@(NO)}];
        return source;
    }
    ONOXMLElement *element = document.rootElement;
    if (element == nil) {
        return source;
    }
    
    [self parse:element into:attrArray defaultB:NO defaultAttr:@{}];
    
    NSString *retStr = @"";
    NSArray *childrenElements = [element childrenWithType:0];

    if (childrenElements.count == 0) {
        retStr = nil;
        
    } else {
        
        BOOL hasTitle = NO;
        
        
        for (ONOXMLElement *aChildEle in childrenElements) {
            
            if ([aChildEle.tag isEqualToString:@"title"]) {
                retStr = [retStr stringByAppendingString:aChildEle.stringValue];
                hasTitle = YES;
                
            } else if ([aChildEle.tag isEqualToString:@"img"]) {
                retStr = [retStr stringByAppendingString:@"[图片]"];
                
            } else if ([aChildEle.tag isEqualToString:@"content"]) {
                if (hasTitle == NO) {  // 需求：有标题时不展示内容信息
                    retStr = [retStr stringByAppendingString:aChildEle.stringValue];
                } else {
                   
                }
                
            } else {
                retStr = [retStr stringByAppendingString:aChildEle.stringValue];
                
            }
        }
        
    }
    
    // 消息的纯文本显示信息
    return retStr ? [retStr stringByReplacingOccurrencesOfString:@"\n" withString:@" "] : element.stringValue;
    
}

- (void)parse:(ONOXMLElement*)element into:(NSMutableArray*)attrArray
     defaultB:(BOOL)isB
  defaultAttr:(NSDictionary*)defaultAttr {
    
    if ([element.tag isEqualToString:@"b"]) {
        isB = YES;
    }
    NSArray *children = [element childrenWithType:0];

    NSMutableDictionary* mDefaultAttr = [defaultAttr mutableCopy];
    NSString *color     = [element valueForAttribute:@"color"];
    NSString *underLine = [element valueForAttribute:@"underLine"];
    
    if (color) {
        mDefaultAttr[@"color"] = color;
    } else if (mDefaultAttr[@"color"] == nil) {
        
        if (self.type == ParseTagTextType_Normal) {
            
            mDefaultAttr[@"color"] = self.colorHex?:@"#333333";
        } else {
            mDefaultAttr[@"color"] = @"#FFFFFF";
        }
        
    }
    
    if ([element.tag.lowercaseString isEqualToString:@"u"]) {
        mDefaultAttr[@"u"] = @YES;
        mDefaultAttr[@"underLine"] = @YES;
    }
    
    if (underLine) {
        mDefaultAttr[@"underLine"] = underLine;
    }
    
    if ([element.tag.lowercaseString isEqualToString:@"jump"]) {
        if (color) {
            mDefaultAttr[@"color"] = color;
        } else {
            mDefaultAttr[@"color"] = @"#0084FF";
            
        }
        
        if (!_jumpArray && self.jumps) {
            _jumpArray = [NSMutableArray array];
            [self.jumpArray addObjectsFromArray:self.jumps];
        }
        if (self.jumpArray.count > 0) {

            mDefaultAttr[kJumpInfo] = self.jumpArray[0];
            [self.jumpArray removeObjectAtIndex:0];
            
        }
    }
    
    if (children.count>0) {
        for (ONOXMLElement* child in children) {
            [self parse:child into:attrArray defaultB:isB defaultAttr:[mDefaultAttr copy]];
        }
        
    } else {
        
        NSString *text = element.stringValue?element.stringValue:@"";
        NSString *eleTag = element.parent.tag;
        
        if ([eleTag isEqualToString:@"title"]) {
            
            NSMutableDictionary *attributes = [mDefaultAttr mutableCopy];
            attributes[@"font"]  = [UIFont systemFontOfSize:16 weight:UIFontWeightRegular];
            if (!color) {
                attributes[@"color"] = @"#333333";
            }
            
            [attrArray addObject:@{@"type":@"text",
                                   @"text":[NSString stringWithFormat:@"%@\n",text],
                                   @"attr":attributes, }];
            
        } else if ([eleTag isEqualToString:@"img"]) {
            
            NSDictionary *imgInfo =@{@"type":@"img",
                                     @"name":element.stringValue,
                                     @"maxFont":[UIFont systemFontOfSize:16
                                                                  weight:(UIFontWeightRegular)],
                                     @"size":[NSValue valueWithCGSize:CGSizeZero],
                                     @"margin":[NSValue valueWithUIEdgeInsets:UIEdgeInsetsZero]};
            if (imgInfo.count > 0 && element.stringValue.length > 0 ) {
                
                if (attrArray.count > 0) {
                    
                    NSDictionary *preInfo = attrArray.lastObject;
                    NSString * preText = [preInfo[@"text"] description];
                    
                    // 第一个\n是换行，第二个是占空行（调整间隙），字号很小
                    if (preText.length > 0 && [preText hasSuffix:@"\n"] == NO) {
                        
                        NSMutableDictionary *attributes = [mDefaultAttr mutableCopy];
                        attributes[@"font"]  = [UIFont systemFontOfSize:3 weight:(UIFontWeightThin)];
                        [attrArray addObject:@{@"type":@"text",
                                               @"text":@"\n\n",
                                               @"attr":attributes,}];
                    }
                }
                
                [attrArray addObject:imgInfo];
                _containImg = YES;
            }
            
        } else {
            
            if (text) {
                [attrArray addObject:@{@"type":@"text",
                                       @"text":text,
                                       @"attr":[mDefaultAttr copy]}];
            }
        }
        
    }
}


@end
