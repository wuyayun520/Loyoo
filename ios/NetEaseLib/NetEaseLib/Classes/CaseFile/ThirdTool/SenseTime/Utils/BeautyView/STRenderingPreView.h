//
//  STRenderingPreView.h
//
//  Created by sluin on 2017/1/11.
//  Copyright © 2017年 SenseTime. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <OpenGLES/ES3/glext.h>


/*!
 * 本地采集加美颜处理预览渲染
 */
@interface STRenderingPreView : UIView

@property (nonatomic , strong) EAGLContext *glContext;

- (instancetype)initWithFrame:(CGRect)frame context:(EAGLContext *)context;

- (void)renderTexture:(GLuint)texture;

- (void)destroyFramebuffer;

@end
