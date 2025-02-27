//
//  STFilterCacheCost.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

import UIKit

@objcMembers public class STFilterCacheCost: NSObject, NSSecureCoding {

    var curBeautySuite: BeautyItemType?
    var curFeature: STEffectsType?
    /// 用户的滤镜设置
    public var filterSuite: STFilterEntiretycostModel?
    /// 滤镜列表模型数组
    var filterModelArray = Array<STFilterLooksModel>.init()
    
    var customSuite =  STFilterEntiretycostModel.init() // 用户自定义的美颜

    
    static public let share = STFilterCacheCost()
 
    public static var supportsSecureCoding: Bool {
        return true
    }
    
   

    required public init?(coder: NSCoder) {
        super.init()

        let filDict =  coder.decodeObject(forKey: "filterSuite")
        let custDict =  coder.decodeObject(forKey: "customSuite")
        if filDict != nil {
            filterSuite = try! STFilterEntiretycostModel.init(dictionary: filDict as? [AnyHashable: Any])
        }
        if custDict != nil {
            customSuite = try! STFilterEntiretycostModel.init(dictionary: custDict as? [AnyHashable: Any])
        }
      
    }
    
    public func encode(with coder: NSCoder) {
        
        let filDict = filterSuite?.toDictionary() ?? [:]
        let custDict = customSuite.toDictionary() ?? [:]
        coder.encode(filDict, forKey: "filterSuite")
        coder.encode(custDict, forKey: "customSuite")
    
    }
 
    private override init() {
        super.init()
        
        self.curBeautySuite = .Face
       
        checkAllSuite()
 
        self.curFeature = .Whiten  // 每次打开APP，都重置
        NotificationCenter.default.addObserver(self, selector: #selector(didReceiveFeatureValueChange(sender:)), name: kNotificationBeautyFeatureModity, object: nil)
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}


@objc extension STFilterCacheCost {
    
    /// 获取缓存
    public func getLocalModel() {
        let path = self.cachePath()
        if FileManager.default.fileExists(atPath: path) {
           
            var obj: STFilterCacheCost?
            
            if #available(iOS 11.0, *) {
                do {
                
                    let data = try Data(contentsOf: URL(fileURLWithPath: path))
                    if let model: STFilterCacheCost =  try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? STFilterCacheCost {
                        obj  = model
                    }
                } catch {
                    print("unarchive failure in init")
                }
            }else {
                let model: STFilterCacheCost? = NSKeyedUnarchiver.unarchiveObject(withFile: path) as? STFilterCacheCost
                if  model != nil {
                    obj  = model
                }
            }
            

            if obj == nil {
                try? FileManager.default.removeItem(atPath: path)
            }else {
                self.filterSuite = obj?.filterSuite
                self.customSuite = obj!.customSuite
                initFilterData()
            }
           
        }

        
    }
    
    public func currentBeautySuite() -> STFilterEntiretycostModel {
        
        return self.customSuite
    }
    
    
    func checkAllSuite() {
        
        customSuite  = STFilterEntiretycostModel.init().initWith(suiteType: .Face)
       
        if filterSuite == nil {
            filterSuite  = STFilterEntiretycostModel.init()
        }
     
    }
    
    func store() {
        let path = cachePath()
        if #available(iOS 11.0, *) {
            let data = try? NSKeyedArchiver.archivedData(withRootObject: self, requiringSecureCoding: true)
            try? data?.write(to: URL(fileURLWithPath: path))
            print("STFilterCacheCost storeRst ")
        } else {
            // Fallback on earlier versions
        }
       
    }
    
    func cachePath() -> String {
 
        let userId = 0
            
        let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let appDirectoryPath = (documentDictPath as NSString).appendingPathComponent("App/STFilterCacheCost")
       
        let fm = FileManager.default
        if fm.fileExists(atPath: appDirectoryPath) == false {
            try? fm.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }
        let filePath = (appDirectoryPath as NSString).appendingPathComponent((userId).description)
        return filePath
            
    }
    
    func setCurBeautySuite(curBeautySuite: BeautyItemType) {
        
        switch (curBeautySuite) {
       
        default:
            self.curBeautySuite = .Face
        }
    }
    
    // 将用户自定义的套餐重置为默认套餐数值
    func resetCustomDefSuite() {
        self.customSuite.resetBeautySuiteValueFor()
        self.curBeautySuite = .Face
        self.filterSuite = STFilterEntiretycostModel.init()
    }
    
    // notification
    func didReceiveFeatureValueChange(sender: NSNotification) {
        
        var cache: STFilterEntiretycostModel?
        cache = self.customSuite
        let featureModel: STFilterLooksModel = sender.object as! STFilterLooksModel
        handleFeatureValueChangeWith(beautySuite: cache ?? STFilterEntiretycostModel.init(), featureModel: featureModel)
    }
    
    
    func handleFeatureValueChangeWith(beautySuite: STFilterEntiretycostModel, featureModel: STFilterLooksModel) {
        
        if (self.curBeautySuite == .Face) {
            
            if featureModel.isKind(of: STFilterLooksModel.self) == true {
                
                // [0,1]
                let beautyValue = featureModel.beautyValue
                
                switch (featureModel.featureType) {
                case .Whiten:        beautySuite.fWhitenStrength = beautyValue // 美白
                        
                case .Ruddy:         beautySuite.fReddenStrength = beautyValue // 红润
                       
                case .Dermabrasion:  beautySuite.fSmoothStrength = beautyValue // 磨皮
                      
                case .ShrinkFace:    beautySuite.fShrinkFaceStrength = beautyValue // 瘦脸
                        
                case .EnlargeEyes:   beautySuite.fEnlargeEyeStrength = beautyValue // 大眼
                       
                case .ShrinkJaw:     beautySuite.fShrinkJawStrength = beautyValue // 小脸
                       
                case .NarrowFace:    beautySuite.fNarrowFaceStrength = beautyValue // 窄脸
                       
                case .RoundEye:      beautySuite.fRoundEyeStrength = beautyValue // 圆眼
                  
                case .ThinFaceShape: beautySuite.fThinFaceShapeStrength = beautyValue // 瘦脸型
                       
                case .Chin:          beautySuite.fChinStrength = beautyValue // 下巴
                        
                case .HairLine:      beautySuite.fHairLineStrength = beautyValue // 额头
                       
                case .AppleMusle:    beautySuite.fAppleMusleStrength = beautyValue // 苹果肌
                        
                case .NarrowNose:    beautySuite.fNarrowNoseStrength = beautyValue // 瘦鼻翼
                       
                case .LengthNose:    beautySuite.fLongNoseStrength = beautyValue // 长鼻
                        
                case .ProfileRhinoplasty: beautySuite.fProfileRhinoplastyStrength = beautyValue // 侧脸隆鼻
                        
                case .MouthSize:         beautySuite.fMouthStrength = beautyValue // 嘴形
                        
                case .LengthPhiltrum:    beautySuite.fPhiltrumStrength = beautyValue // 缩人中
                       
                case .EyeDistance:       beautySuite.fEyeDistanceStrength = beautyValue // 眼距
                       
                case .EyeAngle:          beautySuite.fEyeAngleStrength = beautyValue // 眼睛角度
                        
                case .OpenCanthus:       beautySuite.fOpenCanthusStrength = beautyValue // 开眼角
                        
                case .BrightEye:         beautySuite.fBrightEyeStrength = beautyValue // 亮眼
                       
                case .RemoveDarkCircles: beautySuite.fRemoveDarkCirclesStrength = beautyValue // 祛黑眼圈
                        
                case .RemoveNasolabialFolds: beautySuite.fRemoveNasolabialFoldsStrength = beautyValue // 祛法令纹
                        
                case .WhiteTeeth:        beautySuite.fWhiteTeethStrength = beautyValue // 亮牙
                       
                case .ShrinkCheekbone:   beautySuite.fShrinkCheekboneStrength = beautyValue // 瘦颧骨

                case .Contrast:       // 对比度
                        break
                case .Saturation:    // 饱和度
                        break
                case .Sharpen:        // 锐化
                        break
  
                case .STBMPTYPE_LIP, .STBMPTYPE_BROW, .STBMPTYPE_FACE, .STBMPTYPE_BLUSH, .STBMPTYPE_EYE, .STBMPTYPE_EYELINER, .STBMPTYPE_EYELASH, .STBMPTYPE_EYEBALL:    
                        break
                default:
                    break
                }
            }
        }
    }
    
    /// -------初始化滤镜资源
    func reloadFilterData(model: STFilterLooksModel) {
        
        self.filterSuite?.fFilterStrength = model.beautyValue
        self.filterSuite?.filterName = model.strName
        self.filterSuite?.filterModelPath = model.strPath
    }

    public func getFilterDataModel() -> STFilterLooksModel? {
        
        if (self.filterSuite?.filterModelPath.count == 0) {
            return nil
        }
        
        for model in self.filterModelArray {
            if model.strName == self.filterSuite?.filterName {
                model.beautyValue = self.filterSuite?.fFilterStrength ?? 0.0
                return model
            }
        }
        
        return nil
    }

    func rangeMappedValueFrom(rawValue: Float)-> Float {
        
        // 下面几个情况的商汤SDK值域为【-1,1】，将UI上原始的【0,1】值域转化
        // [0,1] -> [-1,1]
        //    case STBeautyTypeLengthNose:
        //    case STBeautyTypeMouthSize:
        //    case STBeautyTypeChin:
        //    case STBeautyTypeHairLine:
        //    case STBeautyTypeLengthPhiltrum:
        //    case STBeautyTypeEyeDistance:
        //    case STBeautyTypeEyeAngle:
    
        return max(-1.0, min(1.0, rawValue * 2 - 1.0))
        
    }
    
    func initFilterData() {
        let orignArray  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .Filter)
        
        if (orignArray.count > 0) {
            let model = orignArray.first
            self.filterModelArray = NSMutableArray.init(array: model?.subFilterItemsArr ?? [STFilterLooksModel].init()) as! [STFilterLooksModel]
        }
        
    }




}
