//
//  NSDictionary+Additions.m
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

#import "NSDictionary+Additions.h"

@implementation NSDictionary (Additions)

+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) {
        return nil;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err) {
        //        NSLog(@"json解析失败：%@ \nfor:%@",err,jsonString);
        return nil;
    }
    return dic;
}

@end
