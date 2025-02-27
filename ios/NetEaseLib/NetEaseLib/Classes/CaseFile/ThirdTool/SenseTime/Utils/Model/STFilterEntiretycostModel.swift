//
//  STBeautySuiteValueModel.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

import UIKit


@objcMembers public class STFilterEntiretycostModel: BaseJsonModel {

    public var beautySuite =  BeautyItemType.Face

    /// 滤镜 强度
    public var fFilterStrength = 0.0  // 滤镜强度
    /// 滤镜名称
    public var filterName = ""
    /// 滤镜路径(实际路径以filterModelArray取出的为准)
    public var filterModelPath = ""

    // beauty value
    // 基础美颜
    public var fWhitenStrength = 0.0 // 美白
    public var fReddenStrength = 0.0 // 红润
    public var fSmoothStrength = 0.0 // 磨皮

    // 美形
    public var fShrinkFaceStrength = 0.0 // 瘦脸
    public var fEnlargeEyeStrength = 0.0 // 大眼
    public var fShrinkJawStrength = 0.0 // 小脸
    public var fNarrowFaceStrength = 0.0 // 窄脸
    public var fRoundEyeStrength = 0.0 // 圆眼

    // 微整形
    public var fThinFaceShapeStrength = 0.0 // 瘦脸型
    public var fChinStrength = 0.0 // 下巴
    public var fHairLineStrength = 0.0 // 额头
    public var fNarrowNoseStrength = 0.0 // 瘦鼻翼
    public var fLongNoseStrength = 0.0 // 长鼻
    public var fMouthStrength = 0.0 // 嘴型
    public var fBrightEyeStrength = 0.0 // 亮眼
    public var fRemoveDarkCirclesStrength = 0.0 // 去黑眼圈
    public var fRemoveNasolabialFoldsStrength = 0.0 // 去法令纹
    public var fWhiteTeethStrength = 0.0 //  白牙
    public var fShrinkCheekboneStrength = 0.0 // 瘦颧骨


    /*!
     * 下面这些项目使用默认值，UI上没有调整的交互
     */
    public var fPhiltrumStrength = 0.0 // 缩人中
    public var fAppleMusleStrength = 0.0 // 苹果肌
    public var fEyeDistanceStrength = 0.0 // 眼距
    public var fEyeAngleStrength = 0.0 // 眼角度
    public var fProfileRhinoplastyStrength = 0.0 // 侧脸隆鼻
    public var fOpenCanthusStrength = 0.0 // 开眼角

    public var fContrastStrength = 0.0 // 设置对比度参数
    public var fSaturationStrength = 0.0 // 设置饱和度参数
    public var fSharpenStrength = 0.0 // 锐化参数
    
}

@objc extension STFilterEntiretycostModel {
    
    func initWith(suiteType: BeautyItemType)-> STFilterEntiretycostModel {
        
        let model = STFilterEntiretycostModel.init()
        model.beautySuite = suiteType
        model.resetBeautySuiteValueFor()
        return model
    }
    
    func resetBeautySuiteValueFor() {
        
        self.fFilterStrength = 0.65
        
        self.fWhitenStrength = 0.2
        self.fSmoothStrength = 0.2
        self.fReddenStrength = 0.5
        
        self.fShrinkFaceStrength = 0.1
        self.fEnlargeEyeStrength = 0.4
        self.fShrinkJawStrength = 0.3
        self.fNarrowFaceStrength = 0.1
        self.fRoundEyeStrength = 0.2
        
        self.fThinFaceShapeStrength = 0.4
        self.fChinStrength      = 0.6      // 下巴
        self.fHairLineStrength  = 0.25     // 额头
        self.fNarrowNoseStrength = 0.3
        self.fLongNoseStrength  = 0.55     // 长鼻
        self.fMouthStrength     = 0.6     // 嘴形
        self.fBrightEyeStrength = 0.3
        self.fRemoveDarkCirclesStrength = 0.5
        self.fRemoveNasolabialFoldsStrength = 0.5
        self.fWhiteTeethStrength = 0.5
        self.fShrinkCheekboneStrength = 0
        
    }
    
    
}
