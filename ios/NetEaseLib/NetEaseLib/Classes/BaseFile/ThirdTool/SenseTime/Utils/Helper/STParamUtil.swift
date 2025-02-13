//
//  STParamUtil.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/9.
//

import UIKit
import MachO


/// 美颜的类别
@objc enum STBeautyCategory: Int {
    
    case Unknown = 0
    
    case Base
    case Shape
    case MicroSurgery
    case MakeUp
    case Filter
    case Adjust
    
    
}
/// 滤镜
@objc enum STEffectsType: Int {
    
    case FeatureTypeUnknown = 0
    
    // 美颜
    case Whiten = 101   // 美白
    case Ruddy          // 红润
    case Dermabrasion   // 磨皮
     
    // 美形
    case ShrinkFace     // 瘦脸
    case EnlargeEyes    // 大眼
    case ShrinkJaw      // 小脸
    case NarrowFace     // 窄脸
    case RoundEye       // 圆眼
    
    // 微整形
    case ThinFaceShape  // 瘦脸型
    case Chin           // 下巴
    case HairLine       // 额头
    case NarrowNose     // 瘦鼻翼
    case LengthNose     // 长鼻
    case MouthSize          // 嘴形
    case BrightEye          // 亮眼
    case RemoveDarkCircles  // 祛黑眼圈
    case RemoveNasolabialFolds  // 祛法令纹
    case WhiteTeeth         // 亮牙
    case ShrinkCheekbone    // 瘦颧骨
    
    case ProfileRhinoplasty // 侧脸隆鼻
    case LengthPhiltrum     // 缩人中
    case AppleMusle         // 苹果肌
    case EyeDistance        // 眼距
    case EyeAngle           // 眼睛角度
    case OpenCanthus        // 开眼角

    // 调整
    case Contrast       // 对比度
    case Saturation     // 饱和度
    case Sharpen        // 锐化

    // 美妆
    case STBMPTYPE_LIP      // 腮红
    case STBMPTYPE_BROW     // 眉毛
    case STBMPTYPE_FACE     // 修容
    case STBMPTYPE_BLUSH    // 口红
    case STBMPTYPE_EYE      // 眼影
    case STBMPTYPE_EYELINER // 眼线
    case STBMPTYPE_EYELASH  // 眼睫毛
    case STBMPTYPE_EYEBALL  // 美瞳
    case STBMPTYPE_SubItem // 美妆的子项
    
    // 滤镜
    case FilterPortrait    //
    case FilterScenery     //
    case FilterStillLife   //
    case FilterDeliciousFood   //
    case Filter_SubItem // 滤镜的子项

    // 贴纸
    case TypeNew = 201 //
    case Type2D        //
    case TypeAvatar    //
    case Type3D        //
    case TypeGesture   //
    case TypeSegment  //
    case TypeDeformation   //
    case TypeMorph        //
    case TypeParticle      //
    case TypeObjectTrack   //

    // 特效
    case Sticker2D = 301   //
    case StickerAvatar     //
    case Sticker3D       //
    case StickerGesture    //
    case StickerSegment    //
    case StickerFaceChange         //
    case StickerFaceDeformation    //
    case StickerParticle   //
    case StickerNew       //
    case StickerMy         //
    case ObjectTrack      //
}

public let kNotificationBeautyFeatureModity = NSNotification.Name(rawValue: "Notification.Beauty.Feature.Modity")
/// 选择滤镜通知
public let kNotificationSelectBeautyFilter = NSNotification.Name(rawValue: "Notification.Beauty.Filter.Modity")
/// 滤镜强度变化通知
public let kNotificationBeautyFilterValueChange  =  NSNotification.Name(rawValue: "Notification.Beauty.Filter.ValueChange")



@objcMembers public class STParamUtil: NSObject {
    
    public let kNotificationBeautyFeatureModityStr = "Notification.Beauty.Feature.Modity"
    /// 选择滤镜通知
    public let kNotificationSelectBeautyFilterStr = "Notification.Beauty.Filter.Modity"
    /// 滤镜强度变化通知
    public let kNotificationBeautyFilterValueChangeStr  =  "Notification.Beauty.Filter.ValueChange"
 
    
    public func BeautifyParam(beautifyHandle: st_handle_t, type: st_beautify_type, value: Float) {
        
        let iRet = st_mobile_beautify_setparam(beautifyHandle, type, value)
        if (iRet != ST_OK) {
            print("st mobile beautify set beautiy type %d failed: %d", type, iRet)
        }
    }
    
    /*
     * 返回CPU占用率的分子（分母为100）
     */
    func getCpuUsage() -> Float {
        return 0
    }
    
    /**
     获取特定类型滤镜路径

     @param type STEffectsType
     @return 路径数组
     */
    func getFilterModelPathsByType(type: STEffectsType) -> Array<Any> {
        var strPrefix = NSString.init()
        
        switch (type) {
                
        case .FilterPortrait:
                strPrefix = "PortraitFilters"
                break
                
        case .FilterScenery:
                strPrefix = "SceneryFilters"
                break
                
        case .FilterStillLife:
                strPrefix = "StillLifeFilters"
                break
                
        case .FilterDeliciousFood:
                strPrefix = "DeliciousFoodFilters"
                break
                
        default:
                break
        }
        
        let fileManger = FileManager.init()
        let strBundlePath: String = LimitPodspecBundle.bundle.resourcePath?.appending(strPrefix.appending(".bundle")) ?? ""
        
        var arrFileNames: [String] = try! fileManger.contentsOfDirectory(atPath: strBundlePath)
        
        let arrFilterPaths = NSMutableArray.init()
        
        for strFileName in arrFileNames {
            if strFileName.hasPrefix("model") && strFileName.hasPrefix("filter_style") {
                arrFilterPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
            }
           
        }
        
        let strDocumentsPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!
        
        let filterPortraitPath = strDocumentsPath.appending("PortraitFilters")
        let filterSceneryPath = strDocumentsPath.appending("SceneryFilters")
        let filterStillLifePath = strDocumentsPath.appending("StillLifeFilters")
        let filterDeliciousFoodPath = strDocumentsPath.appending("DeliciousFoodFilters")
        
        if !FileManager.default.fileExists(atPath: filterPortraitPath) {
            try? fileManger.createDirectory(atPath: filterPortraitPath, withIntermediateDirectories: true, attributes: nil)
        }
        
        if !FileManager.default.fileExists(atPath: filterSceneryPath) {
            try? fileManger.createDirectory(atPath: filterSceneryPath, withIntermediateDirectories: true, attributes: nil)
        }
        
        if !FileManager.default.fileExists(atPath: filterStillLifePath) {
            try? fileManger.createDirectory(atPath: filterStillLifePath, withIntermediateDirectories: true, attributes: nil)
        }
   
        if !FileManager.default.fileExists(atPath: filterDeliciousFoodPath) {
            try? fileManger.createDirectory(atPath: filterDeliciousFoodPath, withIntermediateDirectories: true, attributes: nil)
        }
        

        
        let filterPath = strDocumentsPath.appending(strPrefix as String)
        
        do {
            arrFileNames = try fileManger.contentsOfDirectory(atPath: filterPath)
        }catch {
            
        }
        for strFileName in arrFileNames {
            if strFileName.hasPrefix("model") && strFileName.hasPrefix("filter_style") {
                arrFilterPaths.add(NSString.path(withComponents: [filterPath, strFileName]))
            }
           
        }
    
        
        return arrFilterPaths.copy() as! Array<Any>
    }
    
    
    /**
     获取通用物体素材路径
     
     @return 路径数组
     */
    func getTrackerPaths() -> Array<Any> {
        
        let fileManager = FileManager.init()
        
        let strBundlePath: String = LimitPodspecBundle.bundle.resourcePath ?? ""
        
        var arrFileNames: [String] = try! fileManager.contentsOfDirectory(atPath: strBundlePath)
        
        let arrPaths = NSMutableArray.init()
        
        for strFileName in arrFileNames {
            if strFileName.hasPrefix("common_object") {
                arrPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
            }
           
        }
        
        let strDocumentsPath: String = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true) .last!
        
        do {
            arrFileNames = try fileManager.contentsOfDirectory(atPath: strDocumentsPath)
        }catch {
            
        }
        
        for strFileName in arrFileNames {
            if strFileName.hasPrefix("common_object") {
                arrPaths.add(NSString.path(withComponents: [strDocumentsPath, strFileName]))
            }
           
        }
        
        
        return arrPaths.copy() as! Array<Any>
    }
    
    // 特效-动态贴图
    func getStickerPathsByType(type: STEffectsType) -> Array<Any> {
        var strPrefix = ""
        
        switch (type) {
                
        case .StickerNew:
                strPrefix = "new_sticker"
                
                break
                
        case .Sticker2D:
                strPrefix = "2d_sticker"
                break
                
        case .StickerAvatar:
                strPrefix = "avatar_sticker"
                break
                
        case .Sticker3D:
                strPrefix = "3d_sticker"
                break
                
        case .StickerGesture:
                strPrefix = "hand_gesture_sticker"
                break
                
        case .StickerFaceDeformation:
                strPrefix = "deformation_sticker"
                break
                
        case .StickerSegment:
                strPrefix = "segment_sticker"
                break
                
        case .StickerFaceChange:
                strPrefix = "face_change_sticker"
                break
                
        case .StickerParticle:
                strPrefix = "particle_sticker"
                
        default:
                break
        }
        
        
        let fileManger = FileManager.init()
        
        let strBundlePath: String = LimitPodspecBundle.bundle.resourcePath?.appending(strPrefix.appending(".bundle")) ?? ""
        
        var arrFileNames: [String] = try! fileManger.contentsOfDirectory(atPath: strBundlePath)
        
        let arrZipPaths = NSMutableArray.init()
 
        for strFileName in arrFileNames {
            if strFileName.hasPrefix("zip") {
                arrZipPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
            }
           
        }
        
        let strDocumentsPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!
        
        let stickerNewPath = strDocumentsPath.appending("new_sticker")
        let sticker2dPath = strDocumentsPath.appending("2d_sticker")
        let stickerAvatarPath = strDocumentsPath.appending("avatar_sticker")
        let sticker3dPath = strDocumentsPath.appending("3d_sticker")
        let stickerHandGesturePath = strDocumentsPath.appending("hand_gesture_sticker")
        let stickerSegmentPath = strDocumentsPath.appending("segment_sticker")
        let stickerDeformationPath = strDocumentsPath.appending("deformation_sticker")
        let stickerFaceChangePath = strDocumentsPath.appending("face_change_sticker")
        let stickerParticlePath = strDocumentsPath.appending("particle_sticker")
        
        if !FileManager.default.fileExists(atPath: stickerNewPath) {
            try? fileManger.createDirectory(atPath: stickerNewPath, withIntermediateDirectories: true, attributes: nil)
        }
        if !FileManager.default.fileExists(atPath: sticker2dPath) {
            try? fileManger.createDirectory(atPath: sticker2dPath, withIntermediateDirectories: true, attributes: nil)
        }
        if !FileManager.default.fileExists(atPath: stickerAvatarPath) {
            try? fileManger.createDirectory(atPath: stickerAvatarPath, withIntermediateDirectories: true, attributes: nil)
        }
        if !FileManager.default.fileExists(atPath: sticker3dPath) {
            try? fileManger.createDirectory(atPath: sticker3dPath, withIntermediateDirectories: true, attributes: nil)
        }
        if !FileManager.default.fileExists(atPath: stickerHandGesturePath) {
            try? fileManger.createDirectory(atPath: stickerHandGesturePath, withIntermediateDirectories: true, attributes: nil)
        }
        if !FileManager.default.fileExists(atPath: stickerSegmentPath) {
            try? fileManger.createDirectory(atPath: stickerSegmentPath, withIntermediateDirectories: true, attributes: nil)
        }
        if !FileManager.default.fileExists(atPath: stickerDeformationPath) {
            try? fileManger.createDirectory(atPath: stickerDeformationPath, withIntermediateDirectories: true, attributes: nil)
        }
        if !FileManager.default.fileExists(atPath: stickerFaceChangePath) {
            try? fileManger.createDirectory(atPath: stickerFaceChangePath, withIntermediateDirectories: true, attributes: nil)
        }
        if !FileManager.default.fileExists(atPath: stickerParticlePath) {
            try? fileManger.createDirectory(atPath: stickerParticlePath, withIntermediateDirectories: true, attributes: nil)
        }
    
        
        let stickerPath = strDocumentsPath.appending(strPrefix)
        
        do {
            arrFileNames = try fileManger.contentsOfDirectory(atPath: stickerPath)
        }catch {
            
        }
        
        for strFileName in arrFileNames {
            if strFileName.hasPrefix("zip") {
                arrZipPaths.add(NSString.path(withComponents: [stickerPath, strFileName]))
            }
           
        }
        
        return arrZipPaths.copy() as! Array<Any>
    }
}
