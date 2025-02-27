
//: Declare String Begin

/*: "className" :*/
fileprivate let str_labName:[Character] = ["c","l"]
fileprivate let str_dataToValue:String = "assNamemake make"

/*: "nativeClassName" :*/
fileprivate let str_offText:String = "photo"
fileprivate let str_meTapContent:[Character] = ["a","t","i","v","e","C","l","a","s","s","N","a","m","e"]

/*: "effectType" :*/
fileprivate let str_imageValue:[Character] = ["e","f","f","e","c"]
fileprivate let str_addFeedName:String = "model send make outside sendtType"

/*: "gifFile" :*/
fileprivate let str_modelTitle:[Character] = ["g","i","f","F","i","l","e"]

/*: "versions" :*/
fileprivate let str_labelFillData:String = "versiosizes"

/*: "config" :*/
fileprivate let str_textDataValue:String = "CONFIG"

/*: "mainFile" :*/
fileprivate let str_targetName:String = "mainFileto succeed label"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConstraintTransformable.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum MeasurementSequence: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum MMediumWidthSum: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum NameComparable: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct ConstraintTransformable: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = MeasurementSequence.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension ConstraintTransformable {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func air(dic: NSDictionary) -> ConstraintTransformable {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = ConstraintTransformable()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(String(str_labName) + String(str_dataToValue.prefix(7)))] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(str_offText.replacingOccurrences(of: "photo", with: "n") + String(str_meTapContent))] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(String(str_imageValue) + String(str_addFeedName.suffix(5)))] as? MeasurementSequence ?? MeasurementSequence.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(String(str_modelTitle))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[MeasurementSequence.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(str_labelFillData.replacingOccurrences(of: "size", with: "n"))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(str_textDataValue.lowercased())] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(String(str_labName) + String(str_dataToValue.prefix(7)))] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(str_offText.replacingOccurrences(of: "photo", with: "n") + String(str_meTapContent))] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(String(str_imageValue) + String(str_addFeedName.suffix(5)))] as? MeasurementSequence ?? MeasurementSequence.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(String(str_targetName.prefix(8)))] as? String ?? ""
        }
        //: return model
        return model
    }
}
