// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+ShadowCompress.m
//
//  Created by tiger on 2017/2/21.
//  Copyright © 2017年 xinma. All rights reserved.
//
// 马赛克参数

// __M_A_C_R_O__
//: #import "UIImage+Compress.h"
#import "UIImage+ShadowCompress.h"

//: @implementation UIImage (Compress)
@implementation UIImage (ShadowCompress)

//: - (NSData *)compressedImageData {
- (NSData *)priceVideo {

    //: UIImage *image = self.wcTimelineCompress;
    UIImage *image = self.name;
    //: NSData *data = UIImageJPEGRepresentation(image, 0.5f);
    NSData *data = UIImageJPEGRepresentation(image, 0.5f);


    //: NSData *originData = UIImageJPEGRepresentation(self, 1.f);
    NSData *originData = UIImageJPEGRepresentation(self, 1.f);
    //: NSLog(@"\n 原图: %@  压缩: %@   比例:%.3f\n",@(originData.length),@(data.length),data.length*1.f/originData.length);


    //: return data;
    return data;
}
//: - (UIImage *)compressedImage {
- (UIImage *)objectImage {

    //: return [UIImage imageWithData:[self compressedImageData]];
    return [UIImage imageWithData:[self priceVideo]];
}


//: - (UIImage *)wcSessionCompress {
- (UIImage *)of {
    //: return [self wcCompres:YES];
    return [self plicate:YES];
}

//: - (UIImage *)wcTimelineCompress {
- (UIImage *)name {
    //: return [self wcCompres:NO];
    return [self plicate:NO];
}

/**
 wechat image compress
 
 @param isSession session image boundary is 800, timeline is 1280
 
 @return thumb image
 */
//: - (UIImage *)wcCompres:(Boolean)isSession {
- (UIImage *)plicate:(Boolean)isSession {
    //: CGSize size = [self wxImageSize:isSession];
    CGSize size = [self user:isSession];
    //: UIImage *reImage = [self resizedImage:size];
    UIImage *reImage = [self trademark:size];
    //: NSData *data = UIImageJPEGRepresentation(reImage, 0.5);
    NSData *data = UIImageJPEGRepresentation(reImage, 0.5);
    //: return [[UIImage alloc] initWithData:data];
    return [[UIImage alloc] initWithData:data];
}


/**
 get wechat compress image size

 @return thumb image size
 */
//: - (CGSize)wxImageSize:(Boolean)isSession {
- (CGSize)user:(Boolean)isSession {
    //: CGFloat width = self.size.width;
    CGFloat width = self.size.width;
    //: CGFloat height = self.size.height;
    CGFloat height = self.size.height;
    //: CGFloat boundary = 1280;
    CGFloat boundary = 1280;

    // width, height <= 1280, Size remains the same
    //: if (width < boundary && height < boundary) {
    if (width < boundary && height < boundary) {
        //: return CGSizeMake(width, height);
        return CGSizeMake(width, height);
    }

    // aspect ratio
    //: CGFloat ratio = ((width) > (height) ? (width) : (height)) / ((width) < (height) ? (width) : (height));
    CGFloat ratio = ((width) > (height) ? (width) : (height)) / ((width) < (height) ? (width) : (height));
    //: if (ratio <= 2) {
    if (ratio <= 2) {
        //: CGFloat x = ((width) > (height) ? (width) : (height)) / boundary;
        CGFloat x = ((width) > (height) ? (width) : (height)) / boundary;
        //: if (width > height) {
        if (width > height) {
            //: width = boundary;
            width = boundary;
            //: height = height / x;
            height = height / x;
        //: } else {
        } else {
            //: height = boundary;
            height = boundary;
            //: width = width / x;
            width = width / x;
        }
    //: } else {
    } else {
        // width, height > 1280
        //: if (((width) < (height) ? (width) : (height)) >= boundary) {
        if (((width) < (height) ? (width) : (height)) >= boundary) {
            //: boundary = isSession ? 800 : 1280;
            boundary = isSession ? 800 : 1280;
            // Set the smaller value to the boundary, and the larger value is compressed
            //: CGFloat x = ((width) < (height) ? (width) : (height)) / boundary;
            CGFloat x = ((width) < (height) ? (width) : (height)) / boundary;
            //: if (width < height) {
            if (width < height) {
                //: width = boundary;
                width = boundary;
                //: height = height / x;
                height = height / x;
            //: } else {
            } else {
                //: height = boundary;
                height = boundary;
                //: width = width / x;
                width = width / x;
            }
        }
    }

    //: return CGSizeMake(width, height);
    return CGSizeMake(width, height);
}


//: + (NSData *)compressImage:(UIImage *)image ToFileSize:(NSInteger)fileSize{
+ (NSData *)photo:(UIImage *)image errorSex:(NSInteger)fileSize{

    //: CGSize size = image.size;
    CGSize size = image.size;
    //: CGFloat shortSize = size.width>size.height?size.height:size.width;
    CGFloat shortSize = size.width>size.height?size.height:size.width;

    //: if (shortSize>1080) {
    if (shortSize>1080) {//压缩到最短边不大于1080,也避免了shortSize==0的情况
        //: BOOL shortSizeIsWidth = size.width>size.height?NO:YES;
        BOOL shortSizeIsWidth = size.width>size.height?NO:YES;
        //: CGSize targetSize ;
        CGSize targetSize ;
        //: if (shortSizeIsWidth) {
        if (shortSizeIsWidth) {
            //: targetSize = CGSizeMake(1080, 1080*size.height/size.width);
            targetSize = CGSizeMake(1080, 1080*size.height/size.width);
        //: } else {
        } else {
            //: targetSize = CGSizeMake(1080*size.width/size.height, 1080);
            targetSize = CGSizeMake(1080*size.width/size.height, 1080);
        }
        //: image = [image scaledToSize:targetSize];
        image = [image aidPath:targetSize];
    }

    //: UIImage *thumIMG = image;
    UIImage *thumIMG = image;
    //: NSData *outIMGData = [thumIMG compressToFileSize:(fileSize*1024)];
    NSData *outIMGData = [thumIMG lock:(fileSize*1024)];
    //: thumIMG = [UIImage imageWithData:outIMGData];
    thumIMG = [UIImage imageWithData:outIMGData];
    //: CGSize scalesize = image.size;
    CGSize scalesize = image.size;

    //如果压缩后还是无法达到文件大小，则降低分辨率，继续压缩
    //: while (outIMGData.length>(fileSize*1024)) {
    while (outIMGData.length>(fileSize*1024)) {

        //: scalesize = CGSizeMake(scalesize.width*0.8, scalesize.height*0.8);
        scalesize = CGSizeMake(scalesize.width*0.8, scalesize.height*0.8);

        //: thumIMG = [thumIMG resizeTo:scalesize scale:NO];
        thumIMG = [thumIMG lengthByScale:scalesize keyPhoto:NO];

        //: outIMGData = [thumIMG compressToFileSize:(fileSize*1024)];
        outIMGData = [thumIMG lock:(fileSize*1024)];
    }

    //: return outIMGData;
    return outIMGData;

}
//: - (UIImage*)scaledToSize:(CGSize)targetSize{
- (UIImage*)aidPath:(CGSize)targetSize{
    //: UIImage *sourceImage = self;
    UIImage *sourceImage = self;
    //: UIImage *newImage = nil;
    UIImage *newImage = nil;
    //: CGSize imageSize = sourceImage.size;
    CGSize imageSize = sourceImage.size;
    //: CGFloat scaleFactor = 0.0;
    CGFloat scaleFactor = 0.0;
    //: if (__CGSizeEqualToSize(imageSize, targetSize) == NO)
    if (__CGSizeEqualToSize(imageSize, targetSize) == NO)
    {
        //: CGFloat widthFactor = targetSize.width / imageSize.width;
        CGFloat widthFactor = targetSize.width / imageSize.width;
        //: CGFloat heightFactor = targetSize.height / imageSize.height;
        CGFloat heightFactor = targetSize.height / imageSize.height;
        //: if (widthFactor < heightFactor) {
        if (widthFactor < heightFactor) {
            //: scaleFactor = heightFactor; 
            scaleFactor = heightFactor; // scale to fit height
        //: } else {
        } else {
            //: scaleFactor = widthFactor; 
            scaleFactor = widthFactor; // scale to fit width
        }
    }
    //: scaleFactor = ((scaleFactor) < (1.0) ? (scaleFactor) : (1.0));
    scaleFactor = ((scaleFactor) < (1.0) ? (scaleFactor) : (1.0));
    //: CGFloat targetWidth = imageSize.width* scaleFactor;
    CGFloat targetWidth = imageSize.width* scaleFactor;
    //: CGFloat targetHeight = imageSize.height* scaleFactor;
    CGFloat targetHeight = imageSize.height* scaleFactor;

    //: targetSize = CGSizeMake(floorf(targetWidth), floorf(targetHeight));
    targetSize = CGSizeMake(floorf(targetWidth), floorf(targetHeight));
    //: UIGraphicsBeginImageContext(targetSize); 
    UIGraphicsBeginImageContext(targetSize); // this will crop
    //: [sourceImage drawInRect:CGRectMake(0, 0, ceilf(targetWidth), ceilf(targetHeight))];
    [sourceImage drawInRect:CGRectMake(0, 0, ceilf(targetWidth), ceilf(targetHeight))];
    //: newImage = UIGraphicsGetImageFromCurrentImageContext();
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: if(newImage == nil) {
    if(newImage == nil) {
        //: NSLog(@"could not scale image");
        //: newImage = sourceImage;
        newImage = sourceImage;
    }
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}
//------只缩不压
//若Scale为YES，则原图会根据Size进行拉伸-会变形
//若Scale为NO，则原图会根据Size进行填充-不会变形
//: - (UIImage *)resizeTo:(CGSize)targetSize scale:(BOOL)isScale{
- (UIImage *)lengthByScale:(CGSize)targetSize keyPhoto:(BOOL)isScale{
    //: UIGraphicsBeginImageContextWithOptions(targetSize, NO, 0.0);
    UIGraphicsBeginImageContextWithOptions(targetSize, NO, 0.0);

    //: CGRect rect = CGRectMake(0,0,targetSize.width,targetSize.height);
    CGRect rect = CGRectMake(0,0,targetSize.width,targetSize.height);
    //: if (!isScale) {
    if (!isScale) {
        //: CGFloat bili_imageWH = self.size.width/(self.size.height);
        CGFloat bili_imageWH = self.size.width/(self.size.height);
        //: CGFloat bili_SizeWH = targetSize.width/targetSize.height;
        CGFloat bili_SizeWH = targetSize.width/targetSize.height;

        //: if (bili_imageWH > bili_SizeWH) {
        if (bili_imageWH > bili_SizeWH) {

            //: CGFloat bili_SizeH_imageH = targetSize.height/self.size.height;
            CGFloat bili_SizeH_imageH = targetSize.height/self.size.height;
            //: CGFloat height = self.size.height*bili_SizeH_imageH;
            CGFloat height = self.size.height*bili_SizeH_imageH;
            //: CGFloat width = height * bili_imageWH;
            CGFloat width = height * bili_imageWH;
            //: CGFloat x = -(width - targetSize.width)/2;
            CGFloat x = -(width - targetSize.width)/2;
            //: CGFloat y = 0;
            CGFloat y = 0;
            //: rect = CGRectMake(x,y,width,height);
            rect = CGRectMake(x,y,width,height);
        //: } else {
        } else {
            //: CGFloat bili_SizeW_imageW = targetSize.width/self.size.width;
            CGFloat bili_SizeW_imageW = targetSize.width/self.size.width;
            //: CGFloat width = self.size.width *
            CGFloat width = self.size.width *
            //: bili_SizeW_imageW;
            bili_SizeW_imageW;
            //: CGFloat height = width / bili_imageWH;
            CGFloat height = width / bili_imageWH;
            //: CGFloat x = 0;
            CGFloat x = 0;
            //: CGFloat y = -(height - targetSize.height)/2;
            CGFloat y = -(height - targetSize.height)/2;
            //: rect = CGRectMake(x,y,width,height);
            rect = CGRectMake(x,y,width,height);
        }
    }

    //: [[UIColor clearColor] set];
    [[UIColor clearColor] set];
    //: UIRectFill(rect);
    UIRectFill(rect);

    //: [self drawInRect:rect];
    [self drawInRect:rect];

    //: UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();

    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (NSData *)compressToFileSize:(NSInteger)fileSize{
- (NSData *)lock:(NSInteger)fileSize{
    //: CGFloat compression = 1.0f;
    CGFloat compression = 1.0f;
    //: CGFloat minCompression = 0.001f;
    CGFloat minCompression = 0.001f;
    //: NSData *imageData = UIImageJPEGRepresentation(self,compression);
    NSData *imageData = UIImageJPEGRepresentation(self,compression);
    //每次减少的比例
    //: float scale = 0.1;
    float scale = 0.1;

    //循环条件：没到最小压缩比例，且没压缩到目标大小
    //: while ((compression > minCompression)&&
    while ((compression > minCompression)&&
           //: (imageData.length>fileSize)) {
           (imageData.length>fileSize)) {
        //: compression -= scale;
        compression -= scale;
        //: imageData = UIImageJPEGRepresentation(self,compression);
        imageData = UIImageJPEGRepresentation(self,compression);
    }
    //: return imageData;
    return imageData;
}
/**
 Zoom the picture to the specified size
 
 @param newSize session image boundary is 800, timeline is 1280
 
 @return new image
 */
//: - (UIImage *)resizedImage:(CGSize)newSize {
- (UIImage *)trademark:(CGSize)newSize {
    //: CGRect newRect = CGRectMake(0, 0, newSize.width, newSize.height);
    CGRect newRect = CGRectMake(0, 0, newSize.width, newSize.height);
    //: UIGraphicsBeginImageContext(newRect.size);
    UIGraphicsBeginImageContext(newRect.size);
    //: UIImage *newImage = [[UIImage alloc] initWithCGImage:self.CGImage scale:1 orientation:self. imageOrientation];
    UIImage *newImage = [[UIImage alloc] initWithCGImage:self.CGImage scale:1 orientation:self. imageOrientation];
    //: [newImage drawInRect:newRect];
    [newImage drawInRect:newRect];
    //: newImage = UIGraphicsGetImageFromCurrentImageContext();
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (UIImage*)circleImage {
- (UIImage*)pastCircleQuantityimate {

    //: UIGraphicsBeginImageContextWithOptions(self.size,NO, 1);
    UIGraphicsBeginImageContextWithOptions(self.size,NO, 1);
    //: CGContextRef ctx =UIGraphicsGetCurrentContext();
    CGContextRef ctx =UIGraphicsGetCurrentContext();
    //: CGRect rect =CGRectMake(0, 0,self.size.width,self.size.height);
    CGRect rect =CGRectMake(0, 0,self.size.width,self.size.height);
    //: CGContextAddEllipseInRect(ctx, rect);
    CGContextAddEllipseInRect(ctx, rect);
    //: CGContextClip(ctx);
    CGContextClip(ctx);
    //: [self drawInRect:rect];
    [self drawInRect:rect];
    //: UIImage*image =UIGraphicsGetImageFromCurrentImageContext();
    UIImage*image =UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return image;
    return image;

}

/// 图片添加马赛克效果
/// @param orginImage 原图
/// @param level 马赛克等级
//: + (UIImage *)transToMosaicImage:(UIImage*)orginImage blockLevel:(NSUInteger)level {
+ (UIImage *)head:(UIImage*)orginImage choppingBlock:(NSUInteger)level {
    // 获取BitmapData
    //: CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    //: CGImageRef imgRef = orginImage.CGImage;
    CGImageRef imgRef = orginImage.CGImage;
    //: CGFloat width = CGImageGetWidth(imgRef);
    CGFloat width = CGImageGetWidth(imgRef);
    //: CGFloat height = CGImageGetHeight(imgRef);
    CGFloat height = CGImageGetHeight(imgRef);
    //: CGContextRef context = CGBitmapContextCreate (nil,
    CGContextRef context = CGBitmapContextCreate (nil,
                                                  //: width,
                                                  width,
                                                  //: height,
                                                  height,
                                                  //: (8), 
                                                  (8), // 每个颜色值8bit
                                                  //: width*(4), 
                                                  width*(4), // 每一行的像素点占用的字节数，每个像素点的ARGB四个通道各占8个bit
                                                  //: colorSpace,
                                                  colorSpace,
                                                  //: kCGImageAlphaPremultipliedLast);
                                                  kCGImageAlphaPremultipliedLast);
    //: CGContextDrawImage(context, CGRectMake(0, 0, width, height), imgRef);
    CGContextDrawImage(context, CGRectMake(0, 0, width, height), imgRef);
    //: unsigned char *bitmapData = CGBitmapContextGetData (context);
    unsigned char *bitmapData = CGBitmapContextGetData (context);

    // 这里把BitmapData进行马赛克转换,就是用一个点的颜色填充一个level*level的正方形
    //: unsigned char pixel[(4)] = {0};
    unsigned char pixel[(4)] = {0};
    //: NSUInteger index,preIndex;
    NSUInteger index,preIndex;
    //: for (NSUInteger i = 0; i < height - 1 ; i++) {
    for (NSUInteger i = 0; i < height - 1 ; i++) {
        //: for (NSUInteger j = 0; j < width - 1; j++) {
        for (NSUInteger j = 0; j < width - 1; j++) {
            //: index = i * width + j;
            index = i * width + j;
            //: if (i % level == 0) {
            if (i % level == 0) {
                //: if (j % level == 0) {
                if (j % level == 0) {
                    //: memcpy(pixel, bitmapData + (4)*index, (4));
                    memcpy(pixel, bitmapData + (4)*index, (4));
                //: }else{
                }else{
                    //: memcpy(bitmapData + (4)*index, pixel, (4));
                    memcpy(bitmapData + (4)*index, pixel, (4));
                }
            //: } else {
            } else {
                //: preIndex = (i-1)*width +j;
                preIndex = (i-1)*width +j;
                //: memcpy(bitmapData + (4)*index, bitmapData + (4)*preIndex, (4));
                memcpy(bitmapData + (4)*index, bitmapData + (4)*preIndex, (4));
            }
        }
    }

    //: NSInteger dataLength = width*height* (4);
    NSInteger dataLength = width*height* (4);
    //: CGDataProviderRef provider = CGDataProviderCreateWithData(NULL, bitmapData, dataLength, NULL);
    CGDataProviderRef provider = CGDataProviderCreateWithData(NULL, bitmapData, dataLength, NULL);
    // 创建要输出的图像
    //: CGImageRef mosaicImageRef = CGImageCreate(width, height,
    CGImageRef mosaicImageRef = CGImageCreate(width, height,
                                        //: (8),
                                        (8),
                                        //: (32),
                                        (32),
                                        //: width*(4) ,
                                        width*(4) ,
                                        //: colorSpace,
                                        colorSpace,
                                        //: kCGImageAlphaPremultipliedLast,
                                        kCGImageAlphaPremultipliedLast,
                                        //: provider,
                                        provider,
                                        //: NULL, NO,
                                        NULL, NO,
                                        //: kCGRenderingIntentDefault);
                                        kCGRenderingIntentDefault);
     //: CGContextRef outputContext = CGBitmapContextCreate(nil,
     CGContextRef outputContext = CGBitmapContextCreate(nil,
                                                 //: width,
                                                 width,
                                                 //: height,
                                                 height,
                                                 //: (8),
                                                 (8),
                                                 //: width*(4),
                                                 width*(4),
                                                 //: colorSpace,
                                                 colorSpace,
                                                //: kCGImageAlphaPremultipliedLast);
                                                kCGImageAlphaPremultipliedLast);
    //: CGContextDrawImage(outputContext, CGRectMake(0.0f, 0.0f, width, height), mosaicImageRef);
    CGContextDrawImage(outputContext, CGRectMake(0.0f, 0.0f, width, height), mosaicImageRef);
    //: CGImageRef resultImageRef = CGBitmapContextCreateImage(outputContext);
    CGImageRef resultImageRef = CGBitmapContextCreateImage(outputContext);
    //: UIImage *resultImage = nil;
    UIImage *resultImage = nil;
    //: if([UIImage respondsToSelector:@selector(imageWithCGImage:scale:orientation:)]) {
    if([UIImage respondsToSelector:@selector(imageWithCGImage:scale:orientation:)]) {
        //: float scale = [[UIScreen mainScreen] scale];
        float scale = [[UIScreen mainScreen] scale];
        //: resultImage = [UIImage imageWithCGImage:resultImageRef scale:scale orientation:UIImageOrientationUp];
        resultImage = [UIImage imageWithCGImage:resultImageRef scale:scale orientation:UIImageOrientationUp];
    //: } else {
    } else {
        //: resultImage = [UIImage imageWithCGImage:resultImageRef];
        resultImage = [UIImage imageWithCGImage:resultImageRef];
    }

    // 释放
    //: if(resultImageRef){
    if(resultImageRef){
        //: CFRelease(resultImageRef);
        CFRelease(resultImageRef);
    }
    //: if(mosaicImageRef){
    if(mosaicImageRef){
        //: CFRelease(mosaicImageRef);
        CFRelease(mosaicImageRef);
    }
    //: if(colorSpace){
    if(colorSpace){
        //: CGColorSpaceRelease(colorSpace);
        CGColorSpaceRelease(colorSpace);
    }
    //: if(provider){
    if(provider){
        //: CGDataProviderRelease(provider);
        CGDataProviderRelease(provider);
    }
    //: if(context){
    if(context){
        //: CGContextRelease(context);
        CGContextRelease(context);
    }
    //: if(outputContext){
    if(outputContext){
        //: CGContextRelease(outputContext);
        CGContextRelease(outputContext);
    }

    //: return resultImage;
    return resultImage;
}

//: @end
@end