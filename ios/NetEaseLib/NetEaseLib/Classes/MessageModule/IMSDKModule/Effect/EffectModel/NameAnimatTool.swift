
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let str_picValue:[Character] = ["u","n","a","r","c","h","i","v","e"," ","f","a","i","l","u"]
fileprivate let str_pathText:[Character] = ["r","e"," ","i","n"," ","i","n","i","t"]

/*: "App" :*/
fileprivate let str_errorContent:[Character] = ["A","p","p"]

/*: "privateChatEffect%@" :*/
fileprivate let str_extraName:[Character] = ["p","r","i","v","a","t","e","C","h","a","t","E","f","f","e"]
fileprivate let str_backData:String = "var app age hidden selfct%@"

/*: "extra" :*/
fileprivate let str_sessionTitle:[Character] = ["e","x","t","r","a"]

/*: "user" :*/
fileprivate let str_requestFailureData:[Character] = ["u","s","e","r"]

/*: "%@" :*/
fileprivate let str_bottomName:String = "%@"

/*: "id" :*/
fileprivate let str_makeText:[Character] = ["i","d"]

/*: "gift" :*/
fileprivate let str_blockData:[Character] = ["g","i","f","t"]

/*: "fromUid" :*/
fileprivate let str_liveName:String = "model user auto valuefromUid"

/*: "fromNickname" :*/
fileprivate let str_languageValue:String = "ftom"
fileprivate let str_viewData:String = "namstate"

/*: "name" :*/
fileprivate let str_goldTitle:String = "namlog"

/*: "fromHeadPic" :*/
fileprivate let str_centerText:String = "frocurrent"

/*: "icon" :*/
fileprivate let str_topValue:String = "icoclose"

/*: "pid" :*/
fileprivate let str_selectedName:String = "PID"

/*: "num" :*/
fileprivate let str_tableCornerTitle:String = "nuinfo"

/*: "pname" :*/
fileprivate let str_blockLabelValue:String = "pnammedium"

/*: "giftPic" :*/
fileprivate let str_languageName:[Character] = ["g","i","f","t","P","i","c"]

/*: "comboNum" :*/
fileprivate let str_textColorLetValue:[Character] = ["c","o","m","b","o"]
fileprivate let str_equalFileData:String = "shared thought lab makeNum"

/*: "iosEffect" :*/
fileprivate let str_playerText:String = "iosEffectview model"

/*: "showType" :*/
fileprivate let str_viewModelData:[Character] = ["s","h","o","w","T","y","p"]
fileprivate let str_recordName:String = "app"

/*: "animationTimes" :*/
fileprivate let str_buttonName:[Character] = ["a","n","i","m","a"]
fileprivate let str_touchData:String = "tionTif image left"

/*: "iosVapEffect" :*/
fileprivate let str_girlText:String = "iosVapright self first image message"
fileprivate let str_modelTitle:String = "label"

/*: "msgInfo" :*/
fileprivate let str_selectLeadingData:[Character] = ["m","s","g","I","n","f","o"]

/*: "mfBean" :*/
fileprivate let str_requestText:[UInt8] = [0x6d,0x66,0x42,0x65,0x61,0x6e]

/*: "toUser" :*/
fileprivate let str_kitValue:String = "photo up model usertoUser"

/*: "uid" :*/
fileprivate let str_contentShowData:String = "uishadow"

/*: "giftNum" :*/
fileprivate let str_toName:String = "gequal"
fileprivate let str_labelText:String = "view player outside letftNum"

/*: "nickname" :*/
fileprivate let str_tapText:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "Send to %@" :*/
fileprivate let str_indexAtValue:[Character] = ["S","e","n","d"," ","t","o"," ","%","@"]

/*: "Send to All Numbers" :*/
fileprivate let str_headText:String = "height var add false toSend "
fileprivate let str_meDataValue:[Character] = [" ","N","u","m","b","e","r","s"]

/*: "headPic" :*/
fileprivate let str_roomIndexText:String = "headPicsucceed data left"

/*: "LiveGift_%@" :*/
fileprivate let str_subValue:String = "image var pathLive"

/*: "toUid" :*/
fileprivate let str_sendViewContent:[Character] = ["t","o","U","i","d"]

/*: "PartyGift_%@" :*/
fileprivate let str_sValue:[Character] = ["P","a","r","t","y","G","i","f","t","_","%"]
fileprivate let str_priceData:String = "@"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameAnimatTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class NameAnimatTool: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = NameAnimatTool()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        untilImage()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension NameAnimatTool {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func untilImage() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: sharedFrom()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (String(str_picValue) + String(str_pathText)))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.sharedFrom()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func objectEqual() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: sharedFrom()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.sharedFrom())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func sharedFrom() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent((String(str_errorContent)))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", MeasurementAppManager.share.loginUserMode.userID)
        let name = String(format: (String(str_extraName) + String(str_backData.suffix(4))), MeasurementAppManager.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func placeId(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.objectEqual()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func collage(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.objectEqual()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func heliogram(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(str_sessionTitle))] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic[(String(str_requestFailureData))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(str_blockData))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<ViewAnimatModel>.deserializeFrom(dict: extraDict![(String(str_blockData))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(str_liveName.suffix(7)))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(str_languageValue.replacingOccurrences(of: "to", with: "ro") + "Nick" + str_viewData.replacingOccurrences(of: "state", with: "e"))] = user?[(str_goldTitle.replacingOccurrences(of: "log", with: "e"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(str_centerText.replacingOccurrences(of: "current", with: "m") + "HeadPic")] = user?[(str_topValue.replacingOccurrences(of: "close", with: "n"))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(str_selectedName.lowercased())] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(str_tableCornerTitle.replacingOccurrences(of: "info", with: "m"))] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM[(str_blockLabelValue.replacingOccurrences(of: "medium", with: "e"))] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(str_languageName))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(str_textColorLetValue) + String(str_equalFileData.suffix(3)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(str_playerText.prefix(9)))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(str_viewModelData) + str_recordName.replacingOccurrences(of: "app", with: "e"))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(str_buttonName) + String(str_touchData.prefix(5)) + "imes")] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
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
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(str_liveName.suffix(7)))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(str_languageValue.replacingOccurrences(of: "to", with: "ro") + "Nick" + str_viewData.replacingOccurrences(of: "state", with: "e"))] = user?[(str_goldTitle.replacingOccurrences(of: "log", with: "e"))]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(str_centerText.replacingOccurrences(of: "current", with: "m") + "HeadPic")] = user?[(str_topValue.replacingOccurrences(of: "close", with: "n"))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(str_selectedName.lowercased())] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(str_tableCornerTitle.replacingOccurrences(of: "info", with: "m"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM[(str_blockLabelValue.replacingOccurrences(of: "medium", with: "e"))] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_languageName))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(str_textColorLetValue) + String(str_equalFileData.suffix(3)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(str_playerText.prefix(9)))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(str_girlText.prefix(6)) + "Effec" + str_modelTitle.replacingOccurrences(of: "label", with: "t"))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_viewModelData) + str_recordName.replacingOccurrences(of: "app", with: "e"))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(str_buttonName) + String(str_touchData.prefix(5)) + "imes")] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(str_buttonName) + String(str_touchData.prefix(5)) + "imes")] = dictM[(str_tableCornerTitle.replacingOccurrences(of: "info", with: "m"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.colorController() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if PropertyMManageressPushListener.giftShared().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(str_selectLeadingData))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: str_requestText, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: a_videoDeviceData, object: nil, userInfo: [String(bytes: str_requestText, encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? HumanActivityPartyDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if MeasurementAppManager.share.loginUserMode.userID != targetId,
                    if MeasurementAppManager.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.appearFinish(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? ToObjectProtocol {
                    // 音视频通话时，只展示通话人的礼物
                    //: if MeasurementAppManager.share.loginUserMode.userID != targetId,
                    if MeasurementAppManager.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.labBench(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? DoingRecognizerDelegate {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.everyClick() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.administratorArr(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中/语聊房 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) ||
                } else if currentVC.isKind(of: MTheoryThen.self) ||
                    //: currentVC.isKind(of: TalkingVoiceRoomViewController.self) {
                    currentVC.isKind(of: BlockManagerDelegate.self)
                {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: DoingRecognizerDelegate.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! DoingRecognizerDelegate
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.everyClick() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.administratorArr(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.objectEqual()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func modelShowToday(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(str_sessionTitle))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(String(str_requestFailureData))] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(String(str_kitValue.suffix(6)))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?[(str_contentShowData.replacingOccurrences(of: "shadow", with: "d"))] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(str_blockData))) == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<ViewAnimatModel>.deserializeFrom(dict: extraDict![(String(str_blockData))] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?[(String(str_blockData))] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(str_toName.replacingOccurrences(of: "equal", with: "i") + String(str_labelText.suffix(5)))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(str_liveName.suffix(7)))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(str_languageValue.replacingOccurrences(of: "to", with: "ro") + "Nick" + str_viewData.replacingOccurrences(of: "state", with: "e"))] = user?[(str_goldTitle.replacingOccurrences(of: "log", with: "e"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(str_centerText.replacingOccurrences(of: "current", with: "m") + "HeadPic")] = user?[(str_topValue.replacingOccurrences(of: "close", with: "n"))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(str_selectedName.lowercased())] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(str_tableCornerTitle.replacingOccurrences(of: "info", with: "m"))] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(String(str_tapText))] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM[(str_blockLabelValue.replacingOccurrences(of: "medium", with: "e"))] = (String(str_indexAtValue)).random(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM[(str_blockLabelValue.replacingOccurrences(of: "medium", with: "e"))] = (String(str_headText.suffix(5)) + "to All" + String(str_meDataValue)).localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(str_languageName))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(str_textColorLetValue) + String(str_equalFileData.suffix(3)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(str_playerText.prefix(9)))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(str_viewModelData) + str_recordName.replacingOccurrences(of: "app", with: "e"))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(str_buttonName) + String(str_touchData.prefix(5)) + "imes")] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
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
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(str_liveName.suffix(7)))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(str_languageValue.replacingOccurrences(of: "to", with: "ro") + "Nick" + str_viewData.replacingOccurrences(of: "state", with: "e"))] = user?[(String(str_tapText))]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(str_centerText.replacingOccurrences(of: "current", with: "m") + "HeadPic")] = user?[(String(str_roomIndexText.prefix(7)))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(str_selectedName.lowercased())] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(str_tableCornerTitle.replacingOccurrences(of: "info", with: "m"))] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(String(str_tapText))] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM[(str_blockLabelValue.replacingOccurrences(of: "medium", with: "e"))] = (String(str_indexAtValue)).random(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(str_blockLabelValue.replacingOccurrences(of: "medium", with: "e"))] = (String(str_headText.suffix(5)) + "to All" + String(str_meDataValue)).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_languageName))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(str_textColorLetValue) + String(str_equalFileData.suffix(3)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(str_playerText.prefix(9)))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(str_girlText.prefix(6)) + "Effec" + str_modelTitle.replacingOccurrences(of: "label", with: "t"))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_viewModelData) + str_recordName.replacingOccurrences(of: "app", with: "e"))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(str_buttonName) + String(str_touchData.prefix(5)) + "imes")] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(str_buttonName) + String(str_touchData.prefix(5)) + "imes")] = dictM[(str_tableCornerTitle.replacingOccurrences(of: "info", with: "m"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?[(str_contentShowData.replacingOccurrences(of: "shadow", with: "d"))] as? Int
                //: if TalkingLiveManager.shared().isLive, MeasurementAppManager.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if PropertyMManageressPushListener.giftShared().isLive, MeasurementAppManager.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(str_selectLeadingData))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: str_requestText, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: a_videoDeviceData, object: nil, userInfo: [String(bytes: str_requestText, encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if LimitPushManager.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if LimitPushManager.share.beforeRoom()!.isKind(of: DocumentControllerDelegate.self) {
                    //: let chatVC = LimitPushManager.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = LimitPushManager.share.beforeRoom() as! DocumentControllerDelegate
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.holdfastEndGiftHorse(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func neighbourBarAction(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(str_sessionTitle))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(String(str_requestFailureData))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?[(str_contentShowData.replacingOccurrences(of: "shadow", with: "d"))] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if PropertyMManageressPushListener.giftShared().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(str_subValue.suffix(4)) + "Gift_%@"), extraDict?[(String(str_sendViewContent))] as? CVarArg ?? "")
                //: } else if TalkingVoiceRoomManager.shared().isParty {
            } else if ImageToThen.labelShared().isParty {
                //: toUid = String(format: "PartyGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(str_sValue) + str_priceData.capitalized), extraDict?[(String(str_sendViewContent))] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?[(String(str_blockData))] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(str_blockData))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<ViewAnimatModel>.deserializeFrom(dict: extraDict![(String(str_blockData))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(String(str_liveName.suffix(7)))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(str_languageValue.replacingOccurrences(of: "to", with: "ro") + "Nick" + str_viewData.replacingOccurrences(of: "state", with: "e"))] = user?[(String(str_tapText))]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(str_centerText.replacingOccurrences(of: "current", with: "m") + "HeadPic")] = user?[(String(str_roomIndexText.prefix(7)))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM[(str_selectedName.lowercased())] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM[(str_tableCornerTitle.replacingOccurrences(of: "info", with: "m"))] = gift?[(str_tableCornerTitle.replacingOccurrences(of: "info", with: "m"))] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM[(str_blockLabelValue.replacingOccurrences(of: "medium", with: "e"))] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(str_languageName))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(str_textColorLetValue) + String(str_equalFileData.suffix(3)))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(str_playerText.prefix(9)))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(str_girlText.prefix(6)) + "Effec" + str_modelTitle.replacingOccurrences(of: "label", with: "t"))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(str_viewModelData) + str_recordName.replacingOccurrences(of: "app", with: "e"))] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(str_buttonName) + String(str_touchData.prefix(5)) + "imes")] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(str_buttonName) + String(str_touchData.prefix(5)) + "imes")] = dictM[(str_tableCornerTitle.replacingOccurrences(of: "info", with: "m"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<EventHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.objectEqual()
            }
        }
    }
}
