// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

/*
 @author: ideawu
 @link: https://github.com/ideawu/Objective-C-RSA
*/



//: @interface FZRSA : NSObject
@interface InputSoftware : NSObject

// return base64 encoded string
//: + (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;
+ (NSString *)content:(NSString *)str name:(NSString *)pubKey;
// return raw data
//: + (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;
+ (NSData *)stem:(NSData *)data present:(NSString *)pubKey;

// decrypt base64 encoded string, convert result to string(not base64 encoded)
//: + (NSString *)decryptString:(NSString *)str publicKey:(NSString *)pubKey;
+ (NSString *)phaseOfTheMoon:(NSString *)str data:(NSString *)pubKey;
//: + (NSData *)decryptData:(NSData *)data publicKey:(NSString *)pubKey;
+ (NSData *)key:(NSData *)data video:(NSString *)pubKey;

//: @end
@end