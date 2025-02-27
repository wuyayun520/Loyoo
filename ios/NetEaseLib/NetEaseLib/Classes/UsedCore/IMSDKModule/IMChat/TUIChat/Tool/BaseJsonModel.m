//
//  BaseJsonModel.m
//  AbroadTalking
//
//  Created by Hemming on 2022/9/13.
//

#import "BaseJsonModel.h"

@implementation BaseJsonModel

+ (instancetype)modelWithDic:(NSDictionary *)dic {
    
    return [[[self class] alloc] initWithDictionary:dic error:nil];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
                             error:(NSError *__autoreleasing *)err {
    
    if ([dict isKindOfClass:[NSDictionary class]] == NO) {
        return nil;
    }
    
    _objDic = [dict mutableCopy];
    return [super initWithDictionary:dict error:err];
}

+ (BOOL)propertyIsOptional:(NSString *)propertyName {
    
    return YES;
}

@end
