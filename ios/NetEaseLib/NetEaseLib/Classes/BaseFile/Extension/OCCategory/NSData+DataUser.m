// __DEBUG__
// __CLOSE_PRINT__
//
//  NSData+DataUser.m
//  AbroadTalking
//
//  Created by Hemming on 2023/4/27.
//

// __M_A_C_R_O__
//: #import "NSData+Encrypt.h"
#import "NSData+DataUser.h"
//: #import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonCryptor.h>

//: static char base64EncodingTable[64] = {
static char a_dataContent[64] = {
    //: 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
    //: 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
    'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
    //: 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
    'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
    //: 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'
    'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'
//: };
};

//: @implementation NSData (Encrypt)
@implementation NSData (DataUser)

//: - (NSData *)AES256EncryptWithKey:(NSString *)key{
- (NSData *)pathByLength:(NSString *)key{
    //: return [self AES256EncryptWithKey:key withVector:nil];
    return [self propertyPrice:key max:nil];
}

//: - (NSData *)AES256EncryptWithKey:(NSString *)key withVector:(NSString *)vector{
- (NSData *)propertyPrice:(NSString *)key max:(NSString *)vector{
    // 'key' should be 32 bytes for AES256, will be null-padded otherwise
    //: char keyPtr[kCCKeySizeAES256+1]; 
    char keyPtr[kCCKeySizeAES256+1]; // room for terminator (unused)
    //: bzero(keyPtr, sizeof(keyPtr)); 
    bzero(keyPtr, sizeof(keyPtr)); // fill with zeroes (for padding)

    // fetch key data
    //: [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];

    //: NSUInteger dataLength = [self length];
    NSUInteger dataLength = [self length];

    //See the doc: For block ciphers, the output size will always be less than or
    //equal to the input size plus the size of one block.
    //That's why we need to add the size of one block here
    //: size_t bufferSize = dataLength + kCCBlockSizeAES128;
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    //: void *buffer = malloc(bufferSize);
    void *buffer = malloc(bufferSize);
    //: const char* v = NULL;
    const char* v = NULL;
    //: if(vector){
    if(vector){
        //: v = [vector UTF8String];
        v = [vector UTF8String];
    }
    //: size_t numBytesEncrypted = 0;
    size_t numBytesEncrypted = 0;
    //kCCOptionECBMode
    //: CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt,
    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt,
                                          //: kCCAlgorithmAES128,
                                          kCCAlgorithmAES128,
                                          //: kCCOptionPKCS7Padding|kCCOptionECBMode,
                                          kCCOptionPKCS7Padding|kCCOptionECBMode,
                                          //: keyPtr,
                                          keyPtr,
                                          //: kCCKeySizeAES256,
                                          kCCKeySizeAES256,
                                          //: v /|* initialization vector (optional) *|/,
                                          v /* initialization vector (optional) */,
                                          //: [self bytes],
                                          [self bytes],
                                          //: dataLength, /|* input *|/
                                          dataLength, /* input */
                                          //: buffer,
                                          buffer,
                                          //: bufferSize, /|* output *|/
                                          bufferSize, /* output */
                                          //: &numBytesEncrypted);
                                          &numBytesEncrypted);
    //: if (cryptStatus == kCCSuccess) {
    if (cryptStatus == kCCSuccess) {
        //the returned NSData takes ownership of the buffer and will free it on deallocation
        //: return [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
        return [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
    }

    //: free(buffer); 
    free(buffer); //free the buffer;
    //: return nil;
    return nil;
}

//: - (NSData *)AES256DecryptWithKey:(NSString *)key {
- (NSData *)age:(NSString *)key {
    //: return [self AES256DecryptWithKey:key withVector:nil];
    return [self name:key manage:nil];
}

//: - (NSData *)AES256DecryptWithKey:(NSString *)key withVector:(NSString *)vector{
- (NSData *)name:(NSString *)key manage:(NSString *)vector{
    // 'key' should be 32 bytes for AES256, will be null-padded otherwise
    //: char keyPtr[kCCKeySizeAES256+1]; 
    char keyPtr[kCCKeySizeAES256+1]; // room for terminator (unused)
    //: bzero(keyPtr, sizeof(keyPtr)); 
    bzero(keyPtr, sizeof(keyPtr)); // fill with zeroes (for padding)

    // fetch key data
    //: [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];

    //: NSUInteger dataLength = [self length];
    NSUInteger dataLength = [self length];

    //See the doc: For block ciphers, the output size will always be less than or
    //equal to the input size plus the size of one block.
    //That's why we need to add the size of one block here
    //: size_t bufferSize = dataLength + kCCBlockSizeAES128;
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    //: void *buffer = malloc(bufferSize);
    void *buffer = malloc(bufferSize);

    //: const char* v = NULL;
    const char* v = NULL;
    //: if(vector){
    if(vector){
        //: v = [vector UTF8String];
        v = [vector UTF8String];
    }
    //: size_t numBytesDecrypted = 0;
    size_t numBytesDecrypted = 0;
    //: CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,
                                          //: kCCAlgorithmAES128,
                                          kCCAlgorithmAES128,
                                          //: kCCOptionPKCS7Padding|kCCOptionECBMode,
                                          kCCOptionPKCS7Padding|kCCOptionECBMode,
                                          //: keyPtr,
                                          keyPtr,
                                          //: kCCKeySizeAES256,
                                          kCCKeySizeAES256,
                                          //: v /|* initialization vector (optional) *|/,
                                          v /* initialization vector (optional) */,
                                          //: [self bytes],
                                          [self bytes],
                                          //: dataLength, /|* input *|/
                                          dataLength, /* input */
                                          //: buffer,
                                          buffer,
                                          //: bufferSize, /|* output *|/
                                          bufferSize, /* output */
                                          //: &numBytesDecrypted);
                                          &numBytesDecrypted);

    //: if (cryptStatus == kCCSuccess) {
    if (cryptStatus == kCCSuccess) {
        //the returned NSData takes ownership of the buffer and will free it on deallocation
        //: return [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
        return [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
    }

    //: free(buffer); 
    free(buffer); //free the buffer;
    //: return nil;
    return nil;
}


//: + (NSString *)base64StringFromData: (NSData *)data length: (NSUInteger)length {
+ (NSString *)burn: (NSData *)data column: (NSUInteger)length {
    //: unsigned long ixtext, lentext;
    unsigned long ixtext, lentext;
    //: long ctremaining;
    long ctremaining;
    //: unsigned char input[3], output[4];
    unsigned char input[3], output[4];
    //: short i, charsonline = 0, ctcopy;
    short i, charsonline = 0, ctcopy;
    //: const unsigned char *raw;
    const unsigned char *raw;
    //: NSMutableString *result;
    NSMutableString *result;

    //: lentext = [data length];
    lentext = [data length];
    //: if (lentext < 1) {
    if (lentext < 1) {
        //: return @"";
        return @"";
    }
    //: result = [NSMutableString stringWithCapacity: lentext];
    result = [NSMutableString stringWithCapacity: lentext];
    //: raw = [data bytes];
    raw = [data bytes];
    //: ixtext = 0;
    ixtext = 0;

    //: while (true) {
    while (true) {
        //: ctremaining = lentext - ixtext;
        ctremaining = lentext - ixtext;
        //: if (ctremaining <= 0) {
        if (ctremaining <= 0) {
            //: break;
            break;
        }
        //: for (i = 0; i < 3; i++) {
        for (i = 0; i < 3; i++) {
            //: unsigned long ix = ixtext + i;
            unsigned long ix = ixtext + i;
            //: if (ix < lentext) {
            if (ix < lentext) {
                //: input[i] = raw[ix];
                input[i] = raw[ix];
            }
            //: else {
            else {
                //: input[i] = 0;
                input[i] = 0;
            }
        }
        //: output[0] = (input[0] & 0xFC) >> 2;
        output[0] = (input[0] & 0xFC) >> 2;
        //: output[1] = ((input[0] & 0x03) << 4) | ((input[1] & 0xF0) >> 4);
        output[1] = ((input[0] & 0x03) << 4) | ((input[1] & 0xF0) >> 4);
        //: output[2] = ((input[1] & 0x0F) << 2) | ((input[2] & 0xC0) >> 6);
        output[2] = ((input[1] & 0x0F) << 2) | ((input[2] & 0xC0) >> 6);
        //: output[3] = input[2] & 0x3F;
        output[3] = input[2] & 0x3F;
        //: ctcopy = 4;
        ctcopy = 4;
        //: switch (ctremaining) {
        switch (ctremaining) {
            //: case 1:
            case 1:
                //: ctcopy = 2;
                ctcopy = 2;
                //: break;
                break;
            //: case 2:
            case 2:
                //: ctcopy = 3;
                ctcopy = 3;
                //: break;
                break;
        }

        //: for (i = 0; i < ctcopy; i++) {
        for (i = 0; i < ctcopy; i++) {
            //: [result appendString: [NSString stringWithFormat: @"%c", base64EncodingTable[output[i]]]];
            [result appendString: [NSString stringWithFormat: @"%c", a_dataContent[output[i]]]];
        }

        //: for (i = ctcopy; i < 4; i++) {
        for (i = ctcopy; i < 4; i++) {
            //: [result appendString: @"="];
            [result appendString: @"="];
        }

        //: ixtext += 3;
        ixtext += 3;
        //: charsonline += 4;
        charsonline += 4;

        //: if ((length > 0) && (charsonline >= length)) {
        if ((length > 0) && (charsonline >= length)) {
            //: charsonline = 0;
            charsonline = 0;
        }
    }
    //: return result;
    return result;
}

//: + (NSData *)base64DataFromString:(NSString *)string {
+ (NSData *)custom:(NSString *)string {
    //: unsigned long ixtext, lentext;
    unsigned long ixtext, lentext;
    //: unsigned char ch, inbuf[4], outbuf[3];
    unsigned char ch, inbuf[4], outbuf[3];
    //: short i, ixinbuf;
    short i, ixinbuf;
    //: Boolean flignore, flendtext = false;
    Boolean flignore, flendtext = false;
    //: const unsigned char *tempcstring;
    const unsigned char *tempcstring;
    //: NSMutableData *theData;
    NSMutableData *theData;

    //: if (string == nil) {
    if (string == nil) {
        //: return [NSData data];
        return [NSData data];
    }

    //: ixtext = 0;
    ixtext = 0;

    //: tempcstring = (const unsigned char *)[string UTF8String];
    tempcstring = (const unsigned char *)[string UTF8String];

    //: lentext = [string length];
    lentext = [string length];

    //: theData = [NSMutableData dataWithCapacity: lentext];
    theData = [NSMutableData dataWithCapacity: lentext];

    //: ixinbuf = 0;
    ixinbuf = 0;

    //: while (true) {
    while (true) {
        //: if (ixtext >= lentext) {
        if (ixtext >= lentext) {
            //: break;
            break;
        }

        //: ch = tempcstring [ixtext++];
        ch = tempcstring [ixtext++];

        //: flignore = false;
        flignore = false;

        //: if ((ch >= 'A') && (ch <= 'Z')) {
        if ((ch >= 'A') && (ch <= 'Z')) {
            //: ch = ch - 'A';
            ch = ch - 'A';
        }
        //: else if ((ch >= 'a') && (ch <= 'z')) {
        else if ((ch >= 'a') && (ch <= 'z')) {
            //: ch = ch - 'a' + 26;
            ch = ch - 'a' + 26;
        }
        //: else if ((ch >= '0') && (ch <= '9')) {
        else if ((ch >= '0') && (ch <= '9')) {
            //: ch = ch - '0' + 52;
            ch = ch - '0' + 52;
        }
        //: else if (ch == '+') {
        else if (ch == '+') {
            //: ch = 62;
            ch = 62;
        }
        //: else if (ch == '=') {
        else if (ch == '=') {
            //: flendtext = true;
            flendtext = true;
        }
        //: else if (ch == '/') {
        else if (ch == '/') {
            //: ch = 63;
            ch = 63;
        }
        //: else {
        else {
            //: flignore = true;
            flignore = true;
        }

        //: if (!flignore) {
        if (!flignore) {
            //: short ctcharsinbuf = 3;
            short ctcharsinbuf = 3;
            //: Boolean flbreak = false;
            Boolean flbreak = false;

            //: if (flendtext) {
            if (flendtext) {
                //: if (ixinbuf == 0) {
                if (ixinbuf == 0) {
                    //: break;
                    break;
                }

                //: if ((ixinbuf == 1) || (ixinbuf == 2)) {
                if ((ixinbuf == 1) || (ixinbuf == 2)) {
                    //: ctcharsinbuf = 1;
                    ctcharsinbuf = 1;
                }
                //: else {
                else {
                    //: ctcharsinbuf = 2;
                    ctcharsinbuf = 2;
                }

                //: ixinbuf = 3;
                ixinbuf = 3;

                //: flbreak = true;
                flbreak = true;
            }

            //: inbuf [ixinbuf++] = ch;
            inbuf [ixinbuf++] = ch;

            //: if (ixinbuf == 4) {
            if (ixinbuf == 4) {
                //: ixinbuf = 0;
                ixinbuf = 0;

                //: outbuf[0] = (inbuf[0] << 2) | ((inbuf[1] & 0x30) >> 4);
                outbuf[0] = (inbuf[0] << 2) | ((inbuf[1] & 0x30) >> 4);
                //: outbuf[1] = ((inbuf[1] & 0x0F) << 4) | ((inbuf[2] & 0x3C) >> 2);
                outbuf[1] = ((inbuf[1] & 0x0F) << 4) | ((inbuf[2] & 0x3C) >> 2);
                //: outbuf[2] = ((inbuf[2] & 0x03) << 6) | (inbuf[3] & 0x3F);
                outbuf[2] = ((inbuf[2] & 0x03) << 6) | (inbuf[3] & 0x3F);

                //: for (i = 0; i < ctcharsinbuf; i++) {
                for (i = 0; i < ctcharsinbuf; i++) {
                    //: [theData appendBytes: &outbuf[i] length: 1];
                    [theData appendBytes: &outbuf[i] length: 1];
                }
            }

            //: if (flbreak) {
            if (flbreak) {
                //: break;
                break;
            }
        }
    }

    //: return theData;
    return theData;
}


//: @end
@end