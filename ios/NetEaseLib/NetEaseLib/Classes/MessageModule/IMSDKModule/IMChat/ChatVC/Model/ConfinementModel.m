
#import <Foundation/Foundation.h>

NSString *StringFromSumerpretationData(Byte *data);


//: gift
Byte str_itemTitle[] = {69, 4, 12, 194, 9, 145, 169, 149, 87, 100, 162, 136, 116, 102, 105, 103, 119};


//: audio
Byte str_frameLevelText[] = {41, 5, 10, 103, 244, 217, 166, 184, 107, 42, 111, 105, 100, 117, 97, 176};


//: text
Byte str_giftText[] = {46, 4, 5, 200, 75, 116, 120, 101, 116, 157};


//: Sent 
Byte str_rateText[] = {57, 5, 8, 165, 6, 129, 243, 194, 32, 116, 110, 101, 83, 58};


//: img
Byte str_clearData[] = {32, 3, 7, 18, 86, 61, 111, 103, 109, 105, 28};


//: video
Byte str_statementData[] = {43, 5, 7, 176, 154, 70, 183, 111, 101, 100, 105, 118, 142};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConfinementModel.m
//  Talking
//
//   on 2021/9/3.
//  Copyright © 2021 
//

// __M_A_C_R_O__
//: #import "ConfinementModel.h"
#import "ConfinementModel.h"
//: #import "NetEaseLib/NetEaseLib-Swift.h"
#import "NetEaseLib/NetEaseLib-Swift.h"

//: @implementation ConfinementModel
@implementation ConfinementModel

//: @end
@end

//: @implementation AbTalkingChatMsgInfoModel
@implementation FactJsonModel

//: @end
@end

//: @implementation InputTalkingModel
@implementation InputTalkingModel

//: + (void)saveIntimatePhoto:(InputTalkingModel *)photoModel forMsgID:(NSString *)msgID {
+ (void)mainGift:(InputTalkingModel *)photoModel icon:(NSString *)msgID {
    //: NSMutableDictionary *dict = [self loadLocalIntimatePhotoDict].mutableCopy;
    NSMutableDictionary *dict = [self visualAspect].mutableCopy;
    //: NSString *jsonString = [photoModel toJSONString];
    NSString *jsonString = [photoModel toJSONString];
    //: dict[msgID] = jsonString;
    dict[msgID] = jsonString;
    //: NSString *path = [ToCacheDefine getIntimatePhotoPath];
    NSString *path = [ToCacheDefine allObject];
    //: [NSKeyedArchiver archiveRootObject:dict toFile:path];
    [NSKeyedArchiver archiveRootObject:dict toFile:path];
}

//: + (NSMutableDictionary<NSString *, NSString *> *)loadLocalIntimatePhotoDict {
+ (NSMutableDictionary<NSString *, NSString *> *)visualAspect {
    //: NSString *path = [ToCacheDefine getIntimatePhotoPath];
    NSString *path = [ToCacheDefine allObject];
    //: NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (dict.allKeys.count > 0) {
    if (dict.allKeys.count > 0) {
        //: return dict;
        return dict;
    }
    //: return [NSMutableDictionary dictionary];
    return [NSMutableDictionary dictionary];
}

//: @end
@end

//: @implementation FullPhaseOfTheMoonJsonModel
@implementation FullPhaseOfTheMoonJsonModel

//: + (void)saveIntimateVideo:(FullPhaseOfTheMoonJsonModel *)videoModel forMsgID:(NSString *)msgID {
+ (void)value:(FullPhaseOfTheMoonJsonModel *)videoModel with:(NSString *)msgID {
    //: NSMutableDictionary *dict = [self loadLocalIntimateVideoDict].mutableCopy;
    NSMutableDictionary *dict = [self video].mutableCopy;
    //: NSString *jsonString = [videoModel toJSONString];
    NSString *jsonString = [videoModel toJSONString];
    //: dict[msgID] = jsonString;
    dict[msgID] = jsonString;
    //: NSString *path = [ToCacheDefine getIntimateVideoPath];
    NSString *path = [ToCacheDefine collectionPath];
    //: [NSKeyedArchiver archiveRootObject:dict toFile:path];
    [NSKeyedArchiver archiveRootObject:dict toFile:path];
}

//: + (NSMutableDictionary<NSString *, NSString *> *)loadLocalIntimateVideoDict {
+ (NSMutableDictionary<NSString *, NSString *> *)video {
    //: NSString *path = [ToCacheDefine getIntimateVideoPath];
    NSString *path = [ToCacheDefine collectionPath];
    //: NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (dict.allKeys.count > 0) {
    if (dict.allKeys.count > 0) {
        //: return dict;
        return dict;
    }
    //: return [NSMutableDictionary dictionary];
    return [NSMutableDictionary dictionary];
}

//: @end
@end

//: @implementation AbTalkingChatMsgCustomSendModel
@implementation GlassesModel

//: @end
@end

//: @implementation AbTalkingChatMsgUserModel
@implementation DestroyJsonModel

//: @end
@end

//: @implementation AbTalkingChatMsgToUserModel
@implementation DataConverterJsonModel

//: @end
@end

//: @implementation AbTalkingChatMsgGiftModel
@implementation InstanceJsonModel

//: @end
@end

//: @implementation AbTalkingChatMsgTipsModel
@implementation MakeLayerJsonModel

//: @end
@end


//: @implementation AbTalkingChatMsgQuoteModel
@implementation IsochronalModel

//: - (BOOL)isQuoteMsg{
- (BOOL)originMsg{
    //: if (self && self.msgId && self.msgId.length > 0) {
    if (self && self.msgId && self.msgId.length > 0) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}
//: - (CGSize)quoteSize:(NSInteger)maxWidth{
- (CGSize)object:(NSInteger)maxWidth{
    //: NSInteger height = height;
    NSInteger height = height;

    //: NSDictionary* attributes = @{NSFontAttributeName: [UIFont pingfangRugularFontWithFontSize:12]};
    NSDictionary* attributes = @{NSFontAttributeName: [UIFont drogueSizeWithFontSize:12]};


    //: if ([self.renderType isEqualToString:@"video"] || [self.renderType isEqualToString:@"img"]) {
    if ([self.renderType isEqualToString:StringFromSumerpretationData(str_statementData)] || [self.renderType isEqualToString:StringFromSumerpretationData(str_clearData)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        //: CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((5 + nameSize.width + 34) < (maxWidth) ? (5 + nameSize.width + 34) : (maxWidth)) , 31);
        return CGSizeMake(((5 + nameSize.width + 34) < (maxWidth) ? (5 + nameSize.width + 34) : (maxWidth)) , 31);

    }
    //: if ([self.renderType isEqualToString:@"text"]) {
    if ([self.renderType isEqualToString:StringFromSumerpretationData(str_giftText)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,self.renderData.content];
        NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,self.renderData.content];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
    }

    //: if ([self.renderType isEqualToString:@"audio"]) {
    if ([self.renderType isEqualToString:StringFromSumerpretationData(str_frameLevelText)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        //: CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((5 + nameSize.width + 48) < (maxWidth) ? (5 + nameSize.width + 48) : (maxWidth)) , 22);
        return CGSizeMake(((5 + nameSize.width + 48) < (maxWidth) ? (5 + nameSize.width + 48) : (maxWidth)) , 22);
    }
    //: if ([self.renderType isEqualToString:@"gift"]) {
    if ([self.renderType isEqualToString:StringFromSumerpretationData(str_itemTitle)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@%@ x%ld",self.sendName,@"Sent ".localized,self.renderData.giftNameLocal, (long)self.renderData.giftNum];
        NSString *str = [NSString stringWithFormat:@"%@: %@%@ x%ld",self.sendName,StringFromSumerpretationData(str_rateText).videoLabel,self.renderData.local, (long)self.renderData.giftNum];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
    }

    //: return CGSizeZero;
    return CGSizeZero;
}

//: @end
@end

//: @implementation AbTalkingChatMsgQuoteDataModel
@implementation ShadowJsonModel

//: - (NSString *)giftNameLocal{
- (NSString *)local{
    //: NSString *locName;
    NSString *locName;
    //: NSString *sysLangCode = [ImageMacroDefine getSystemLangCode];
    NSString *sysLangCode = [ImageMacroDefine loadLang];
    //: if ([sysLangCode isEqualToString:@"ar"]) {
    if ([sysLangCode isEqualToString:@"ar"]) {
        //: locName = self.giftNameI18n[@"ar"];
        locName = self.giftNameI18n[@"ar"];
    //: }else if ([sysLangCode isEqualToString:@"es"]) {
    }else if ([sysLangCode isEqualToString:@"es"]) {
        //: locName = self.giftNameI18n[@"es"];
        locName = self.giftNameI18n[@"es"];
    //: }else if ([sysLangCode isEqualToString:@"pt"]) {
    }else if ([sysLangCode isEqualToString:@"pt"]) {
        //: locName = self.giftNameI18n[@"pt"];
        locName = self.giftNameI18n[@"pt"];
    //: }else{
    }else{
        //: locName = self.giftNameI18n[@"en"];
        locName = self.giftNameI18n[@"en"];
    }
    //: if (locName == nil || locName.length > 0 ) {
    if (locName == nil || locName.length > 0 ) {
        //: locName = self.giftName;
        locName = self.giftName;
    }
    //: return locName;
    return locName;
}

//: @end
@end

//: @implementation WantGiftModel
@implementation StochasticProcessJsonModel

//: + (void)saveAskForGiftWithMsgID:(NSString *)msgID {
+ (void)wantId:(NSString *)msgID {
    //: @synchronized (self) {
    @synchronized (self) {
        //: NSMutableArray *arr = [self loadAskForGiftArr];
        NSMutableArray *arr = [self level];
        //: [arr addObject:msgID];
        [arr addObject:msgID];
        //: NSString *path = [ToCacheDefine getAskForGiftPath];
        NSString *path = [ToCacheDefine blockPath];
        //: [NSKeyedArchiver archiveRootObject:arr toFile:path];
        [NSKeyedArchiver archiveRootObject:arr toFile:path];
    }
}

//: + (NSMutableArray *)loadAskForGiftArr {
+ (NSMutableArray *)level {
    //: NSString *path = [ToCacheDefine getAskForGiftPath];
    NSString *path = [ToCacheDefine blockPath];
    //: NSMutableArray *arr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableArray *arr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (arr.count > 0) {
    if (arr.count > 0) {
        //: return arr;
        return arr;
    }
    //: return [@[] mutableCopy];
    return [@[] mutableCopy];
}

//: @end
@end

Byte * SumerpretationDataToCache(Byte *data) {
    int userSwitchline = data[0];
    int server = data[1];
    int relativeFrequency = data[2];
    if (!userSwitchline) return data + relativeFrequency;
    for (int i = 0; i < server / 2; i++) {
        int begin = relativeFrequency + i;
        int end = relativeFrequency + server - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[relativeFrequency + server] = 0;
    return data + relativeFrequency;
}

NSString *StringFromSumerpretationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SumerpretationDataToCache(data)];
}  
