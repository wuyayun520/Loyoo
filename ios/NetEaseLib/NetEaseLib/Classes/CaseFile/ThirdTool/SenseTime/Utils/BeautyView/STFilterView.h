//
//  STFilterView.h
//  FZIphone
//
//  Created by Jack on 2018/8/3.
//  Copyright © 2018年 GuoJiang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "STFilterCamera.h"
#import "STRenderingPreView.h"


#define kDefaultSTCameraAVCaptureSessionPreset AVCaptureSessionPreset1280x720 //

// tap手势，调整曝光焦点
#define kNotificationTapToModifyExposurePoint @"key.Notification.Tap.To.Modify.Exposure.Point"


@class STFilterView;

@protocol STFilterViewDelegete <NSObject>
@optional
- (void)stFilterView:(STFilterView *)beautyView didProcessSampleBuffer:(CMSampleBufferRef)sampleBuffer;

- (void)stVideoBeautyView:(STFilterView *)beautyView didProcessVideoSampleBuffer:(CVPixelBufferRef)sampleBuffer;
@end



/*!
 * 商汤美颜；封装相机，视频预览，采样输出
 */
@interface STFilterView : UIView

@property (nonatomic, strong, readonly) STFilterCamera *stCamera;
@property (nonatomic, strong, readonly) STRenderingPreView *glPreview;

@property (nonatomic, weak) id<STFilterViewDelegete> delegate;

@property (nonatomic, assign) CGFloat imageWidth;
@property (nonatomic, assign) CGFloat imageHeight;
@property (nonatomic, copy) NSString *currentSessionPreset;


- (instancetype)initWihtVideoConversation:(NSString*)sessionPreset;

- (void)setupPreviewFullScreenSize:(BOOL)isFullScreen;

/// 设置视频通话预览的采集大小
/// @param isVideoPhoneSmall _
- (void)setupVideoConversationPreviewSize:(BOOL)isVideoPhoneSmall;

- (void)destory;

@property (nonatomic, assign) BOOL pause;


@end
