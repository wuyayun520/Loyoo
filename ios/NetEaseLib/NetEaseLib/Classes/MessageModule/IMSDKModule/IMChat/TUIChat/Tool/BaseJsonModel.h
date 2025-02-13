//
//  BaseJsonModel.h
//  AbroadTalking
//
//  Created by Hemming on 2022/9/13.
//

#import <UIKit/UIKit.h>
#import <JSONModel/JSONModel.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseJsonModel : JSONModel

+ (instancetype)modelWithDic:(NSDictionary *)dic;

@property (nonatomic, strong) NSMutableDictionary *objDic; ///<  源数据


@end

NS_ASSUME_NONNULL_END
