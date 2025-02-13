
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_managerMText:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "gift" :*/
fileprivate let str_sharedFlushTagName:[Character] = ["g","i","f","t"]

/*: "iosEffect" :*/
fileprivate let str_commitData:String = "name video to value constraintiosE"

/*: "iosEmperorEffect" :*/
fileprivate let str_contentValue:String = "to textiosEm"
fileprivate let str_inputTitle:String = "add count videoperorE"

/*: "fromUid" :*/
fileprivate let str_dataContent:String = "final push let center indexfromUid"

/*: "fromNickname" :*/
fileprivate let str_cameraName:String = "fromNicbottom key guard view value"
fileprivate let str_pushValue:String = "statusame"

/*: "fromHeadPic" :*/
fileprivate let str_addressData:[Character] = ["f","r","o","m","H","e","a","d"]
fileprivate let str_imageData:String = "image height appear extension messagePic"

/*: "pid" :*/
fileprivate let str_giftCallValue:String = "pequald"

/*: "num" :*/
fileprivate let str_messageValue:String = "statusm"

/*: "pname" :*/
fileprivate let str_thoughtValue:String = "PNAME"

/*: "name" :*/
fileprivate let str_extraValue:String = "natext"

/*: "giftPic" :*/
fileprivate let str_mData:String = "giftPcoin day next if"
fileprivate let str_imageVoiceTitle:String = "isign"

/*: "imgPreview" :*/
fileprivate let str_localName:String = "imgPand data icon for"

/*: "comboNum" :*/
fileprivate let str_photoTitle:[Character] = ["c","o","m","b","o","N","u","m"]

/*: "showType" :*/
fileprivate let str_playerData:String = "raw rightshowType"

/*: "animationTimes" :*/
fileprivate let str_totalTagValue:[Character] = ["a","n","i","m","a","t","i","o"]
fileprivate let str_imageValue:[Character] = ["n","T","i","m","e","s"]

/*: "id" :*/
fileprivate let str_videoValue:String = "iallow"

/*: "iosVapEffect" :*/
fileprivate let str_viewName:String = "model conversation let error elseiosVap"
fileprivate let str_colorInfoName:String = "tempt"

/*: "giftNum" :*/
fileprivate let str_lengthLeadingFloatContent:String = "G"
fileprivate let str_makeName:String = "iftNumlike of self let"

/*: "Send to %@" :*/
fileprivate let str_userTextTitle:String = "Send tshared info type title manager"
fileprivate let str_rawTotalValue:[Character] = ["o"," ","%","@"]

/*: "all" :*/
fileprivate let str_viewThoughtData:String = "ALL"

/*: "Send to All Numbers" :*/
fileprivate let str_belowText:[Character] = ["S","e","n","d"," ","t","o"]
fileprivate let str_timeData:[Character] = [" ","A","l","l"," ","N","u"]
fileprivate let str_kitTitle:[Character] = ["m","b","e","r","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EquidistantThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class EquidistantThen: UIView {
    var colorImageView: UIImageView?

    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.fromRequest()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_managerMText, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: TableAnimatView = {
        //: let view = TalkingGiftAnimatView.init()
        let view = TableAnimatView()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension EquidistantThen {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func titleTheory(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(String(str_sharedFlushTagName))] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(str_commitData.suffix(4)) + "ffect")) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(str_contentValue.suffix(5)) + String(str_inputTitle.suffix(6)) + "ffect")) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(str_contentValue.suffix(5)) + String(str_inputTitle.suffix(6)) + "ffect")] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(str_commitData.suffix(4)) + "ffect")] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = MeasurementAppManager.share.loginUserMode.userID
                dictM[(String(str_dataContent.suffix(7)))] = MeasurementAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = MeasurementAppManager.share.loginUserMode.nickname
                dictM[(String(str_cameraName.prefix(7)) + str_pushValue.replacingOccurrences(of: "status", with: "kn"))] = MeasurementAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = MeasurementAppManager.share.loginUserMode.headPic
                dictM[(String(str_addressData) + String(str_imageData.suffix(3)))] = MeasurementAppManager.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(str_giftCallValue.replacingOccurrences(of: "equal", with: "i"))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))] = giftInfo?[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(str_thoughtValue.lowercased())] = giftInfo?[(str_extraValue.replacingOccurrences(of: "text", with: "me"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(str_mData.prefix(5)) + str_imageVoiceTitle.replacingOccurrences(of: "sign", with: "c"))] = giftInfo?[(String(str_localName.prefix(4)) + "review")]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(str_photoTitle))] = giftInfo?[(String(str_photoTitle))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(str_commitData.suffix(4)) + "ffect")] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(str_playerData.suffix(8)))] = giftInfo?[(String(str_playerData.suffix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(String(str_totalTagValue) + String(str_imageValue))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(str_totalTagValue) + String(str_imageValue))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(String(str_totalTagValue) + String(str_imageValue))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo![(str_messageValue.replacingOccurrences(of: "status", with: "nu"))] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = MeasurementAppManager.share.loginUserMode.userID
            dictM[(String(str_dataContent.suffix(7)))] = MeasurementAppManager.share.loginUserMode.userID
            //: dictM["fromNickname"] = MeasurementAppManager.share.loginUserMode.nickname
            dictM[(String(str_cameraName.prefix(7)) + str_pushValue.replacingOccurrences(of: "status", with: "kn"))] = MeasurementAppManager.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = MeasurementAppManager.share.loginUserMode.headPic
            dictM[(String(str_addressData) + String(str_imageData.suffix(3)))] = MeasurementAppManager.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(str_giftCallValue.replacingOccurrences(of: "equal", with: "i"))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))] = giftInfo?[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(str_thoughtValue.lowercased())] = giftInfo?[(str_extraValue.replacingOccurrences(of: "text", with: "me"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(str_mData.prefix(5)) + str_imageVoiceTitle.replacingOccurrences(of: "sign", with: "c"))] = giftInfo?[(String(str_localName.prefix(4)) + "review")]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(str_photoTitle))] = giftInfo?[(String(str_photoTitle))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(str_commitData.suffix(4)) + "ffect")] = giftInfo?[(String(str_commitData.suffix(4)) + "ffect")]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(str_playerData.suffix(8)))] = giftInfo?[(String(str_playerData.suffix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(str_viewName.suffix(6)) + "Effe" + str_colorInfoName.replacingOccurrences(of: "temp", with: "c"))] = giftInfo?[(String(str_viewName.suffix(6)) + "Effe" + str_colorInfoName.replacingOccurrences(of: "temp", with: "c"))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(str_totalTagValue) + String(str_imageValue))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(String(str_totalTagValue) + String(str_imageValue))] = giftInfo?[(String(str_totalTagValue) + String(str_imageValue))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(String(str_totalTagValue) + String(str_imageValue))] = dictM[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        pathDoing()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func hull(dict: [String: Any]) -> EventHandyJSON? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(String(str_sharedFlushTagName))] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(str_contentValue.suffix(5)) + String(str_inputTitle.suffix(6)) + "ffect")) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(str_contentValue.suffix(5)) + String(str_inputTitle.suffix(6)) + "ffect")] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(str_commitData.suffix(4)) + "ffect")] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = MeasurementAppManager.share.loginUserMode.userID
                dictM[(String(str_dataContent.suffix(7)))] = MeasurementAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = MeasurementAppManager.share.loginUserMode.nickname
                dictM[(String(str_cameraName.prefix(7)) + str_pushValue.replacingOccurrences(of: "status", with: "kn"))] = MeasurementAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = MeasurementAppManager.share.loginUserMode.headPic
                dictM[(String(str_addressData) + String(str_imageData.suffix(3)))] = MeasurementAppManager.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(str_giftCallValue.replacingOccurrences(of: "equal", with: "i"))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))] = giftInfo?[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(str_thoughtValue.lowercased())] = giftInfo?[(str_extraValue.replacingOccurrences(of: "text", with: "me"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(str_mData.prefix(5)) + str_imageVoiceTitle.replacingOccurrences(of: "sign", with: "c"))] = giftInfo?[(String(str_localName.prefix(4)) + "review")]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(str_photoTitle))] = giftInfo?[(String(str_photoTitle))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(str_commitData.suffix(4)) + "ffect")] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(str_playerData.suffix(8)))] = giftInfo?[(String(str_playerData.suffix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(String(str_totalTagValue) + String(str_imageValue))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = MeasurementAppManager.share.loginUserMode.userID
            dictM[(String(str_dataContent.suffix(7)))] = MeasurementAppManager.share.loginUserMode.userID
            //: dictM["fromNickname"] = MeasurementAppManager.share.loginUserMode.nickname
            dictM[(String(str_cameraName.prefix(7)) + str_pushValue.replacingOccurrences(of: "status", with: "kn"))] = MeasurementAppManager.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = MeasurementAppManager.share.loginUserMode.headPic
            dictM[(String(str_addressData) + String(str_imageData.suffix(3)))] = MeasurementAppManager.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(str_giftCallValue.replacingOccurrences(of: "equal", with: "i"))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))] = giftInfo?[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(str_thoughtValue.lowercased())] = giftInfo?[(str_extraValue.replacingOccurrences(of: "text", with: "me"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(str_mData.prefix(5)) + str_imageVoiceTitle.replacingOccurrences(of: "sign", with: "c"))] = giftInfo?[(String(str_localName.prefix(4)) + "review")]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(str_photoTitle))] = giftInfo?[(String(str_photoTitle))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(str_commitData.suffix(4)) + "ffect")] = giftInfo?[(String(str_commitData.suffix(4)) + "ffect")]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(str_playerData.suffix(8)))] = giftInfo?[(String(str_playerData.suffix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(str_viewName.suffix(6)) + "Effe" + str_colorInfoName.replacingOccurrences(of: "temp", with: "c"))] = giftInfo?[(String(str_viewName.suffix(6)) + "Effe" + str_colorInfoName.replacingOccurrences(of: "temp", with: "c"))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(str_totalTagValue) + String(str_imageValue))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(String(str_totalTagValue) + String(str_imageValue))] = giftInfo?[(String(str_totalTagValue) + String(str_imageValue))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(String(str_totalTagValue) + String(str_imageValue))] = dictM[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func messageUser(giftMessageDic: [String: Any], model: RegularThen) -> EventHandyJSON? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains((String(str_sharedFlushTagName))) == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<ViewAnimatModel>.deserializeFrom(dict: giftMessageDic[(String(str_sharedFlushTagName))] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic[(String(str_sharedFlushTagName))] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(str_lengthLeadingFloatContent.lowercased() + String(str_makeName.prefix(6)))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = MeasurementAppManager.share.loginUserMode.userID
                    dictM[(String(str_dataContent.suffix(7)))] = MeasurementAppManager.share.loginUserMode.userID
                    //: dictM["fromNickname"] = MeasurementAppManager.share.loginUserMode.nickname
                    dictM[(String(str_cameraName.prefix(7)) + str_pushValue.replacingOccurrences(of: "status", with: "kn"))] = MeasurementAppManager.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = MeasurementAppManager.share.loginUserMode.headPic
                    dictM[(String(str_addressData) + String(str_imageData.suffix(3)))] = MeasurementAppManager.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM[(str_giftCallValue.replacingOccurrences(of: "equal", with: "i"))] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM[(str_thoughtValue.lowercased())] = (String(str_userTextTitle.prefix(6)) + String(str_rawTotalValue)).random(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == (str_viewThoughtData.lowercased()) {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(str_thoughtValue.lowercased())] = (String(str_belowText) + String(str_timeData) + String(str_kitTitle)).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_mData.prefix(5)) + str_imageVoiceTitle.replacingOccurrences(of: "sign", with: "c"))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(str_photoTitle))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(str_commitData.suffix(4)) + "ffect")] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_playerData.suffix(8)))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(String(str_totalTagValue) + String(str_imageValue))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
                    }
                }
                // 循环播放次数
                //: var animationTimes = 1
                var animationTimes = 1
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: animationTimes = roomGiftModel.animationTimes
                    animationTimes = roomGiftModel.animationTimes
                    //: } else {
                } else {
                    //: animationTimes = roomGiftModel.giftNum
                    animationTimes = roomGiftModel.giftNum
                }
                //: let tempGiftArr = tempArr
                let tempGiftArr = tempArr
                //: for _ in 0..<animationTimes {
                for _ in 0 ..< animationTimes {
                    //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    //: tempDictM.addObjects(from: tempDicArr as! [Any])
                    tempDictM.addObjects(from: tempDicArr as! [Any])
                }
                //: } else {
            } else {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = MeasurementAppManager.share.loginUserMode.userID
                dictM[(String(str_dataContent.suffix(7)))] = MeasurementAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = MeasurementAppManager.share.loginUserMode.nickname
                dictM[(String(str_cameraName.prefix(7)) + str_pushValue.replacingOccurrences(of: "status", with: "kn"))] = MeasurementAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = MeasurementAppManager.share.loginUserMode.headPic
                dictM[(String(str_addressData) + String(str_imageData.suffix(3)))] = MeasurementAppManager.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM[(str_giftCallValue.replacingOccurrences(of: "equal", with: "i"))] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM[(str_thoughtValue.lowercased())] = (String(str_userTextTitle.prefix(6)) + String(str_rawTotalValue)).random(model.nickname)
                //: if model.uid == "all" {
                if model.uid == (str_viewThoughtData.lowercased()) {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM[(str_thoughtValue.lowercased())] = (String(str_belowText) + String(str_timeData) + String(str_kitTitle)).localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(str_mData.prefix(5)) + str_imageVoiceTitle.replacingOccurrences(of: "sign", with: "c"))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(str_photoTitle))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(str_commitData.suffix(4)) + "ffect")] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(str_viewName.suffix(6)) + "Effe" + str_colorInfoName.replacingOccurrences(of: "temp", with: "c"))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(str_playerData.suffix(8)))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(str_totalTagValue) + String(str_imageValue))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(str_totalTagValue) + String(str_imageValue))] = dictM[(str_messageValue.replacingOccurrences(of: "status", with: "nu"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func pathView(model: EventHandyJSON) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        pathDoing()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func place(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        pathDoing()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func infoAnimat() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func upToTheMinute(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        pathDoing()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func listWithId(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = NameAnimatTool.shared.placeId(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        pathDoing()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func pathDoing() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            cardNext()
        }
    }

    /// 播放
    //: func playNext() {
    func cardNext() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: EventHandyJSON = obj as! EventHandyJSON
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == UpAppSendable.myStery.rawValue || model.showType == UpAppSendable.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.underIndexCell(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                pathDoing()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension EquidistantThen {
    // 添加视图
    //: private func setupSubviews() {
    private func fromRequest() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.cardNext()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.cardNext()
            }
        }
    }
}
