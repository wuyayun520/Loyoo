//
//  STFilterLooksModel.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

import UIKit

@objcMembers public class STFilterLooksModel: BaseJsonModel {

    var category: STBeautyCategory?
    var featureType: STEffectsType?

    public var beautyValue = 0.0

    var title: String {
        get {
            return setTitle()
        }
        set { self.title = newValue }
    }
    var norImageName: String {
        get {
            return SetSelImageName()
        }
        set { self.norImageName = newValue }
    }
    var selImageName: String {
        get {
            return SetSelImageName()
        }
        set { self.selImageName = newValue }
    }

    var zipPath = ""
    public var strPath = ""
    var strName = ""

    var strMaterialPath = ""
    var state = 0

    var index = 0
    var isSelected = false

    var subFeatureItemsArr: [STFilterLooksModel]?
    // 针对滤镜加上的
    /// 滤镜数组
    var subFilterItemsArr: [STFilterLooksModel]?
    /// 滤镜图片
   var filterNormalImageName = ""
    /// 滤镜图片
    var filterPressImageName = ""
    /// 是否选中该滤镜
   var isSelect = false
}

extension STFilterLooksModel {
    
    func setFeatureModel(featureType: STEffectsType, category: STBeautyCategory) -> STFilterLooksModel {
        let  ret = STFilterLooksModel.init()
        ret.category    = category
        ret.featureType = featureType
        
        switch (category) {
        case .MakeUp:
            break
        case .Filter:
            self.category = category
            setupSubFeatureItems()
            ret.subFilterItemsArr = self.subFilterItemsArr
            break
        default:
            break
        }
        
        
        let beautySuite: STFilterEntiretycostModel = STFilterCacheCost.share.currentBeautySuite()
        
        switch (featureType) {
                
        case .Whiten: ret.beautyValue = beautySuite.fWhitenStrength // 美白
               
        case .Ruddy: ret.beautyValue = beautySuite.fReddenStrength // 红润
               
        case .Dermabrasion: ret.beautyValue = beautySuite.fSmoothStrength // 磨皮
            
        case .ShrinkFace: ret.beautyValue = beautySuite.fShrinkFaceStrength // 瘦脸
               
        case .EnlargeEyes: ret.beautyValue = beautySuite.fEnlargeEyeStrength // 大眼
               
        case .ShrinkJaw: ret.beautyValue = beautySuite.fShrinkJawStrength // 小脸
                
        case .NarrowFace: ret.beautyValue = beautySuite.fNarrowFaceStrength // 窄脸
                
        case .RoundEye: ret.beautyValue = beautySuite.fRoundEyeStrength // 圆眼
               
        case .ThinFaceShape: ret.beautyValue = beautySuite.fThinFaceShapeStrength // 瘦脸型
               
        case .Chin: ret.beautyValue = beautySuite.fChinStrength // 下巴
               
        case .HairLine: ret.beautyValue = beautySuite.fHairLineStrength  // 额头
               
        case .NarrowNose: ret.beautyValue = beautySuite.fNarrowNoseStrength // 瘦鼻翼
                
        case .LengthNose: ret.beautyValue = beautySuite.fLongNoseStrength // 长鼻
               
        case .MouthSize: ret.beautyValue = beautySuite.fMouthStrength // 嘴形
                
        case .BrightEye: ret.beautyValue = beautySuite.fBrightEyeStrength // 亮眼
                
        case .RemoveDarkCircles: ret.beautyValue = beautySuite.fRemoveDarkCirclesStrength // 祛黑眼圈
               
        case .RemoveNasolabialFolds: ret.beautyValue = beautySuite.fRemoveNasolabialFoldsStrength // 祛法令纹
               
        case .WhiteTeeth: ret.beautyValue = beautySuite.fWhiteTeethStrength // 亮牙
               
        case .ShrinkCheekbone: ret.beautyValue = beautySuite.fShrinkCheekboneStrength // 瘦颧骨
        
        case .AppleMusle: ret.beautyValue = beautySuite.fAppleMusleStrength // 苹果肌
               
        case .ProfileRhinoplasty: ret.beautyValue = beautySuite.fProfileRhinoplastyStrength // 侧脸隆鼻
               
        case .LengthPhiltrum: ret.beautyValue = beautySuite.fPhiltrumStrength // 缩人中
                
        case .EyeDistance: ret.beautyValue = beautySuite.fEyeDistanceStrength // 眼距
                
        case .EyeAngle: ret.beautyValue = beautySuite.fEyeAngleStrength // 眼睛角度
                
        case .OpenCanthus: ret.beautyValue = beautySuite.fOpenCanthusStrength // 开眼角
     
        case .Contrast: ret.beautyValue = beautySuite.fContrastStrength // 对比度
               
        case .Saturation: ret.beautyValue = beautySuite.fSaturationStrength // 饱和度
               
        case .Sharpen: ret.beautyValue = beautySuite.fSharpenStrength // 锐化
            
        default:
            break
        }
        
        return ret
    }
    
    /// 是否限制了上限在90
    func isLimitMaxNightValue() -> Bool {
        if (self.featureType == .ShrinkFace || self.featureType == .ShrinkJaw || self.featureType == .NarrowFace || self.featureType == .ThinFaceShape) {
            // 上限是90
           return true
        }
        return false
    }
    
    func arrayOfFeatureModelWith(categoryType: STBeautyCategory) -> [STFilterLooksModel] {
        
        var featureTypes = [STEffectsType]()
        
        switch (categoryType) {
        case .Base:
            featureTypes = [
                (.Whiten),         // 美白
                (.Ruddy),          // 红润
                (.Dermabrasion),   // 磨皮
                (.ShrinkFace),     // 瘦脸
                (.ShrinkJaw),      // 小脸
                (.NarrowFace),     // 窄脸
                (.ThinFaceShape),  // 瘦脸型
                (.Chin),           // 下巴
                (.RemoveNasolabialFolds),  // 祛法令纹
                (.ShrinkCheekbone),    // 瘦颧骨
                (.HairLine),       // 额头
            ]
    
        case .Shape:
                featureTypes = [
                    (.EnlargeEyes),    // 大眼
                    (.RoundEye),       // 圆眼
                    (.BrightEye),          // 亮眼
                    (.RemoveDarkCircles),  // 祛黑眼圈
                ]
             
                
        case .MicroSurgery:
                featureTypes = [
                    (.NarrowNose),     // 瘦鼻翼
                    (.LengthNose),     // 长鼻
                ]
               
        case .MakeUp:
                featureTypes = [
                    (.MouthSize),          // 嘴形
                    (.WhiteTeeth),         // 亮牙
                ]
                
        case .Filter:
                featureTypes = [
                    (.FilterPortrait),
                ]
                
        case .Adjust:
                featureTypes = [
                    (.Contrast),       // 对比度
                    (.Saturation),     // 饱和度
                    (.Sharpen),        // 锐化
                ]
 
        default:
            break
        }
        
        if (featureTypes.count > 0) {
            
            var tmp = Array<STFilterLooksModel>()
            
            for featureType in featureTypes {
                
                let model = STFilterLooksModel.init().setFeatureModel(featureType: featureType, category: categoryType)
                tmp.append(model)
            }
            return tmp
        }
        
        return Array<STFilterLooksModel>()
    }
    
    
    func beautyFeatureCategoryInfoWith(categoryTypes: NSArray) -> Dictionary<Int, Any> {
        
        if (categoryTypes.count > 0) {
            
            var tmp = Dictionary<Int, Any>.init(minimumCapacity: categoryTypes.count)
            for cateType in categoryTypes {
                
        
                let featureModelsArr = arrayOfFeatureModelWith(categoryType: cateType as! STBeautyCategory)
                
                if featureModelsArr.count > 0 {
                    let type = cateType as! STBeautyCategory
                    tmp[type.rawValue] = featureModelsArr
                }
            }
            
            return tmp
        }
        
        
        return Dictionary.init()
    }
    
    
    func setupSubFeatureItems() {
        
        switch (self.category) {
        case .MakeUp:
            var bundleName = ""
            
            switch (self.featureType) {
            case .STBMPTYPE_LIP: bundleName = "lips"
                   
            case .STBMPTYPE_BROW: bundleName = "brow"
                   
            case .STBMPTYPE_FACE: bundleName = "face"
                    
            case .STBMPTYPE_BLUSH: bundleName = "blush"
                    
            case .STBMPTYPE_EYE:  bundleName = "eyeshadow"
                    
            case .STBMPTYPE_EYELINER: bundleName = "eyeliner"
                   
            case .STBMPTYPE_EYELASH: bundleName = "eyelash"
                    
            case .STBMPTYPE_EYEBALL: bundleName = "eyeball"
                   
            default: return
                
            }
            
            subFeatureItemsArr = getSourceFromPath(bundleName: bundleName, bmpType: self.featureType ?? .FeatureTypeUnknown)
                
        case .Filter:
            subFilterItemsArr = getSourceFromPath(bundleName: "PortraitFilters", bmpType: self.featureType ?? .FeatureTypeUnknown)
               
        default:
            break
        }
    }

    func getSourceFromPath(bundleName: String, bmpType: STEffectsType) -> [STFilterLooksModel] {
        
        if bundleName == "PortraitFilters" {
            // 滤镜资源
            return getFilterBundleSource(bundleName: bundleName as NSString)
        }
        let strLocalBundlePath = LimitPodspecBundle.bundle.path(forResource: bundleName, ofType: "bundle")
        let arrFiles = try? FileManager.default.contentsOfDirectory(atPath: strLocalBundlePath ?? "")
        arrFiles?.sorted { $0 == $1 }
        
        var array = [STFilterLooksModel]()
        
        var featureType = STEffectsType.FeatureTypeUnknown
        switch (self.category) {
        case .MakeUp:
            featureType = .STBMPTYPE_SubItem
        case .Filter:
            featureType = .Filter_SubItem
        default:
            break
        }
        
        //
        let model = STFilterLooksModel.init()
        model.norImageName = "st_close_white"
        model.title = "None".localized
        model.beautyValue = 0.8
        model.category = self.category
        model.featureType = featureType
        
        array.append(model)
        
        for i in 0...(arrFiles?.count ?? 1)-1 {
            let strFileName = arrFiles?[i] ?? ""
            if strFileName.hasSuffix(".zip") {
                let strBmpPath = (strLocalBundlePath as! NSString).appendingPathComponent(strFileName)
                
                let tstrName = (strBmpPath as NSString).deletingPathExtension
                let strName = (tstrName as NSString).lastPathComponent
                let strThumbPath = (strBmpPath as NSString).deletingPathExtension.appending(".png")
                
                let model = STFilterLooksModel.init()
                var imageThumb = UIImage.init(contentsOfFile: strThumbPath)
                if imageThumb == nil {
                    imageThumb = UIImage.outsideText(name: "st_none")
                }
                
                model.title = strName
                model.beautyValue = 0.8
                model.zipPath = strBmpPath
                model.norImageName = strThumbPath
                model.category = self.category
                model.featureType = featureType
                array.append(model)
               
            }
        }
        
        return array
    }
    
    func getFilterBundleSource(bundleName: NSString) -> [STFilterLooksModel] {
        let arrFiles = try? FileManager.default.contentsOfDirectory(atPath: ImageMacroDefine.giftDown())

        var arrFilterPaths = [STFilterLooksModel]()
        /// 先加入原片
        let  model = STFilterLooksModel.init()
        model.filterNormalImageName = "icon_lj_original_nor"
        model.filterPressImageName = "icon_lj_original_pre"
        model.strName = "Original".localized
        arrFilterPaths.append(model)
        
        var sourceDict = Dictionary<String, Any>()
        for i in 0...(arrFiles?.count ?? 1)-1 {
            let strFileName: String = arrFiles?[i] ?? ""
            if strFileName.hasSuffix("model") {
                var orignName = (strFileName as NSString).replacingOccurrences(of: "filter_style_", with: "")
                orignName = (orignName as NSString).replacingOccurrences(of: ".model", with: "")
                orignName = (orignName as NSString).components(separatedBy: "_").first ?? ""
                
                if orignName.count > 0 {
                    sourceDict[orignName] = NSString.path(withComponents: [ImageMacroDefine.giftDown(), strFileName ])
                }
            }
        }
        let listNameArray = ["tender", "sofina", "peach", "ruby", "ol", "se", "cherry", "pretty", "scarlet", "lovely"]
        
        let filterNameDict = ["tender": "Standard",
                             "sofina": "Natural",
                             "peach": "Luminous",
                             "ruby": "Ruby",
                             "ol": "Whiten",
                             "se": "Honey Peach",
                             "cherry": "Sweet",
                             "pretty": "Cute",
                             "scarlet": "Cookies",
                             "lovely": "Fair"]
        
        let defaultValueDict =  ["tender": "0.4",
                                            "sofina": "0.4",
                                            "peach": "0.3",
                                            "ruby": "0.4",
                                            "ol": "0.4",
                                            "se": "0.4",
                                            "cherry": "0.3",
                                            "pretty": "0.4",
                                            "scarlet": "0.4",
                                            "lovely": "0.6"]
        
        for  filterName in listNameArray {
            let ve = sourceDict[filterName] as? String
            if ve?.count ?? 0 > 0 {
                let model = STFilterLooksModel.init()
                model.filterNormalImageName = String.init(format: "icon_lj_%@_nor", filterName)
                model.filterPressImageName = String.init(format: "icon_lj_%@_pre", filterName)
                model.strName = (filterNameDict[filterName] ?? "").localized
                model.strPath = sourceDict[filterName] as? String ?? ""
                model.beautyValue = Double(defaultValueDict[filterName] ?? "0.0")!
                arrFilterPaths.append(model)
                
            }
        }
        return arrFilterPaths
    }

    func canEdit() -> Bool {
        
        switch (self.featureType) {
        case .Whiten:                 return true
        case .Ruddy:                   return true
        case .Dermabrasion: return           true
                
        case .ShrinkFace: return             true
        case .EnlargeEyes: return            true
        case .ShrinkJaw: return              true
        case .NarrowFace: return             true
        case .RoundEye: return               true
                
        case .ThinFaceShape: return          true
        case .Chin: return                   true
        case .HairLine: return               true
        case .AppleMusle: return             true
        case .NarrowNose: return             true
        case .LengthNose: return             true
        case .ProfileRhinoplasty: return     true
        case .MouthSize: return              true
        case .LengthPhiltrum: return         true
        case .EyeDistance: return            true
        case .EyeAngle: return               true
        case .OpenCanthus: return            true
        case .BrightEye: return              true
        case .RemoveDarkCircles: return      true
        case .RemoveNasolabialFolds: return  true
        case .WhiteTeeth: return             true
        case .ShrinkCheekbone: return        true
                
        case .Contrast: return               true
        case .Saturation: return             true
        case .Sharpen: return                true
                
        case .STBMPTYPE_LIP: return         false
        case .STBMPTYPE_BROW: return        false
        case .STBMPTYPE_FACE: return        false
        case .STBMPTYPE_BLUSH: return       false
        case .STBMPTYPE_EYE: return         false
        case .STBMPTYPE_EYELINER: return    false
        case .STBMPTYPE_EYELASH: return     false
        case .STBMPTYPE_EYEBALL: return     false
        
                
        default:  break
        }
        
        return false
        
    }

    func showBeautyValue() -> Float {
        
        var value = self.beautyValue
        /// 是否向上取整
        var isSetCeil = false
        switch (self.featureType) {
        case .LengthNose, .MouthSize, .Chin, .HairLine, .LengthPhiltrum, .EyeDistance:
            break
        case .EyeAngle:
            value = Double(STFilterCacheCost.share.rangeMappedValueFrom(rawValue: Float(value)))
        case .ShrinkFace, .ShrinkJaw, .NarrowFace:
            break
        case .ThinFaceShape:
             // 瘦脸  小脸   窄脸 瘦脸型  上限为0.9
                value /= 0.9
                isSetCeil = true
                break
        default:
            break
        }
        if (isSetCeil) {
            return Float(ceilf(Float(value)*100) > 100 ? 100 : ceilf(Float(value)*100))
        }else {
            return Float(value*100)
        }
        
    }

    // 美颜数值是否只用正数
    func isOnlyPositiveValue() -> Bool {
        
        switch (self.featureType) {
        case .LengthNose, .MouthSize, .Chin, .HairLine, .LengthPhiltrum, .EyeDistance:
            break
        case .EyeAngle:
            return false
        default:
            break
        }
        
        return true
    }


    func setTitle() -> String {
        
        switch (self.featureType) {
        case .Whiten: return              "Tone".localized     /// "美白"
        case .Ruddy: return               "Ruddy".localized    /// "红润"
        case .Dermabrasion: return        "Smooth".localized   /// "磨皮"
                
        case .ShrinkFace: return          "Slim".localized     /// "瘦脸"
        case .EnlargeEyes: return         "Big".localized    /// "大眼"
        case .ShrinkJaw: return           "Small".localized    /// "小脸"
        case .NarrowFace: return          "Narrow".localized  /// "窄脸"
        case .RoundEye: return            "Round".localized         /// "圆眼"
                
        case .ThinFaceShape: return       "Face Shape".localized   /// "瘦脸型"
        case .Chin: return                "Chin".localized         /// "下巴"
        case .HairLine: return            "Forehead".localized     /// "额头"
        case .AppleMusle: return             "苹果肌"
        case .NarrowNose: return          "Nose Ala".localized     /// "瘦鼻翼"
        case .LengthNose: return          "Enhance".localized      /// "长鼻"
        case .ProfileRhinoplasty: return     "侧脸隆鼻"
        case .MouthSize: return            "Lip".localized         /// "嘴形"
        case .LengthPhiltrum: return         "缩人中"
        case .EyeDistance: return            "眼距"
        case .EyeAngle: return               "眼睛角度"
        case .OpenCanthus: return            "开眼角"
        case .BrightEye: return             "Brighten".localized        /// "亮眼"
        case .RemoveDarkCircles: return     "Dark Circles".localized    /// "祛黑眼圈"
        case .RemoveNasolabialFolds: return   "Firm".localized          /// "祛法令纹"
        case .WhiteTeeth: return            "Whitening".localized       /// "亮牙"
        case .ShrinkCheekbone: return       "Cheekbones".localized      /// "瘦颧骨"
                
        case .Contrast: return               "对比度"
        case .Saturation: return             "饱和度"
        case .Sharpen: return                "锐化"
                
        case .STBMPTYPE_LIP: return                      "腮红"
        case .STBMPTYPE_BROW: return                     "眉毛"
        case .STBMPTYPE_FACE: return                     "修容"
        case .STBMPTYPE_BLUSH: return                    "口红"
        case .STBMPTYPE_EYE: return                      "眼影"
        case .STBMPTYPE_EYELINER: return                 "眼线"
        case .STBMPTYPE_EYELASH: return                  "眼睫毛"
        case .STBMPTYPE_EYEBALL: return                  "美瞳"
                
        default:  break
        }
        
        return self.title
    }

   func setNorImageName() -> String {
        
        switch (self.featureType) {
        case .Whiten:            return "st_mb_nor"     // 美白
        case .Ruddy:             return "st_hr_nor"     // 红润
        case .Dermabrasion:      return "st_mp_nor"     // 磨皮
                    
        case .ShrinkFace:        return "st_sl_nor"     // 瘦脸
        case .EnlargeEyes:       return "st_dy_nor"     // 大眼
        case .ShrinkJaw:         return "st_xl_nor"     // 小脸
        case .NarrowFace:        return "st_zl_nor"     // 窄脸
        case .RoundEye:          return "st_yy_nor"     // 圆眼
                
        case .ThinFaceShape:     return "st_slx_nor"    // 瘦脸型
        case .Chin:              return "st_xb_nor"     // 下巴
        case .HairLine:          return "st_et_nor"     // 额头
        case .NarrowNose:        return "st_sb_nor"     // 瘦鼻翼
        case .LengthNose:        return "st_cb_nor"     // 长鼻
        case .MouthSize:         return "st_zx_nor"     // 嘴形
        case .BrightEye:         return "st_ly_nor"     // 亮眼
        case .RemoveDarkCircles: return "st_qhyq_nor"   // 祛黑眼圈
        case .RemoveNasolabialFolds: return "st_qflw_nor"  // 祛法令纹
        case .WhiteTeeth:        return "st_lyy_nor"    // 亮牙
        case .ShrinkCheekbone:   return "st_sqg_nor"    // 瘦颧骨
                
                
        case .AppleMusle: return "st_microsurgery_apple"     // 苹果肌
        case .ProfileRhinoplasty: return "st_microsurgery_rhinoplasty" // 侧脸隆鼻
        case .LengthPhiltrum: return "st_microsurgery_suorenzhong"     // 缩人中
        case .EyeDistance: return "st_microsurgery_eyeDistance"        // 眼距
        case .EyeAngle: return "st_microsurgery_eyeAngle"           // 眼睛角度
        case .OpenCanthus: return "st_microsurgery_openCanthus"        // 开眼角
                
        case .Contrast: return "st_adjust_contrast"       // 对比度
        case .Saturation: return "st_adjust_saturation"     // 饱和度
        case .Sharpen: return "st_adjust_sharpen"        // 锐化
                
        case .STBMPTYPE_LIP: return "st_makeup_blush"      // 腮红
        case .STBMPTYPE_BROW: return "st_makeup_brow"     // 眉毛
        case .STBMPTYPE_FACE: return "st_makeup_face"     // 修容
        case .STBMPTYPE_BLUSH: return "st_makeup_lip"    // 口红
        case .STBMPTYPE_EYE: return "st_makeup_eyeshadow"      // 眼影
        case .STBMPTYPE_EYELINER: return "st_makeup_eyeline" // 眼线
        case .STBMPTYPE_EYELASH: return "st_makeup_eyelash"  // 眼睫毛
        case .STBMPTYPE_EYEBALL: return "st_makeup_eyeball"  // 美瞳
               
        default:  break
        }
        
        
       return self.norImageName
    }

    func SetSelImageName() -> String {
        
        let norImageName = setNorImageName()
        if norImageName.count > 0 {
            return norImageName
        }
        
        return self.selImageName
    }

}
