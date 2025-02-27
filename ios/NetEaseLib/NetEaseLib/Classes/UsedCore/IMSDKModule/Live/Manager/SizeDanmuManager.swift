
//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let str_leadingName:String = "path success color cust"
fileprivate let str_giftData:String = "em.data self call height"
fileprivate let str_skipName:[Character] = ["i","s"," ","e","r","r","o","r"]

/*: "extra" :*/
fileprivate let str_topOfTitle:[Character] = ["e","x","t","r","a"]

/*: "MF:PartyChatSysMsg" :*/
fileprivate let str_labelValue:String = "if any moreMF:Par"
fileprivate let str_toData:String = "Msgview source"

/*: "opType" :*/
fileprivate let str_positionName:String = "opTypemodel lab"

/*: "roomLogout" :*/
fileprivate let str_normalTitle:String = "color stop view selfroomLogo"
fileprivate let str_turnName:String = "sizet"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_imageLabContent:String = "MF:Parbar view camera plus layer"
fileprivate let str_micValue:String = "self normal infoMsg"

/*: "startLive" :*/
fileprivate let str_subPathValue:String = "sadd"
fileprivate let str_labValue:String = "push text let model forartLive"

/*: "floatingScreen" :*/
fileprivate let str_appText:[UInt8] = [0x66,0x6c,0x6f,0x61,0x74,0x69,0x6e,0x67,0x53,0x63,0x72,0x65,0x65,0x6e]

/*: "mute" :*/
fileprivate let str_imageText:[Character] = ["m","u","t","e"]

/*: "uid" :*/
fileprivate let str_toOfHeightTitle:[Character] = ["u","i","d"]

/*: "expireAt" :*/
fileprivate let str_modeValue:[Character] = ["e","x","p","i","r","e"]
fileprivate let str_indexText:[Character] = ["A","t"]

/*: "unmute" :*/
fileprivate let str_cornerName:String = "logmute"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let str_succeedData:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","G"]
fileprivate let str_tableName:String = "self makeiftMsg"

/*: "MF:PartyChatGiftMsg" :*/
fileprivate let str_selectedTitle:String = "MF:Pmax add"
fileprivate let str_colorTitle:String = "any hide actual colorChatG"

/*: "gift" :*/
fileprivate let str_indexData:String = "gvalueft"

/*: "id" :*/
fileprivate let str_picContent:String = "iview"

/*: "imgPreview" :*/
fileprivate let str_pointTitle:[Character] = ["i","m","g","P","r","e","v","i","e","w"]

/*: "name" :*/
fileprivate let str_freeValue:[Character] = ["n","a","m","e"]

/*: "num" :*/
fileprivate let str_burnValue:[Character] = ["n","u","m"]

/*: "mfBean" :*/
fileprivate let str_centerName:[UInt8] = [0x6d,0x66,0x42,0x65,0x61,0x6e]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_numberName:String = "MF:Livview bag"
fileprivate let str_titleClickValue:String = "tPrizeMsgvar view"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let str_modelData:[Character] = ["<","a","t",">","@","[","\\","S","\\","s","]","+"]
fileprivate let str_originVoiceValue:String = "draft model target load make?</at>"

/*: "加入弹幕房间" :*/
fileprivate let str_eventData:[Character] = ["加","\u{5165}","\u{5f39}","幕","房"]
fileprivate let str_genderValue:[Character] = ["\u{95f4}"]

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let str_matterValue:[UInt8] = [0x72,0x65,0x74,0x61,0x6c,0x20,0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x65,0x73,0x61,0x65,0x6c,0x50,0x20,0x2e,0x6d,0x6f,0x6f,0x72,0x20,0x74,0x61,0x68,0x63,0x20,0x65,0x68,0x74,0x20,0x72,0x65,0x74,0x6e,0x65,0x20,0x6f,0x74,0x20,0x64,0x65,0x6c,0x69,0x61,0x46]

/*: "live/sendMsg" :*/
fileprivate let str_tapMakeName:String = "lblockve"

/*: "groupId" :*/
fileprivate let str_addData:[Character] = ["g","r","o","u","p","I","d"]

/*: "message" :*/
fileprivate let str_pushValue:String = "memanagerage"

/*: "toUid" :*/
fileprivate let str_galleryTitle:[Character] = ["t","o","U","i","d"]

/*: "party/sendMsg" :*/
fileprivate let str_makeValue:String = "if top makeparty/"
fileprivate let str_buttonValue:String = "para"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeDanmuManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol MediumLabManagerDelegate: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func modelBind(Msg: AppModelType)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func sunrise(Msg: AppModelType)

    //: func func__actionUserNewModel(pushUid: String?)
    func occurrent(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func less(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func onHide()
    // 用户退出房间
    //: func func__userLogout()
    func terms()
}

//: class TalkingDanmuManager: NSObject {
class SizeDanmuManager: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: SizeDanmuManager? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: MediumLabManagerDelegate?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func appShared() -> SizeDanmuManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = SizeDanmuManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension SizeDanmuManager {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func nudge(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = AppModelType()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = LoadMsgInfo()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = PrintMediaReactiveCompatible()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.toCell(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.modelBind(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func shank(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(str_leadingName.suffix(5)) + "omEl" + String(str_giftData.prefix(8)) + String(str_skipName)))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?[(String(str_topOfTitle))] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if ext == "MF:PartyChatSysMsg", extraDic?["opType"] as? String == "roomLogout" { // 语聊房退房操作
        if ext == (String(str_labelValue.suffix(6)) + "tyChatSys" + String(str_toData.prefix(3))), extraDic?[(String(str_positionName.prefix(6)))] as? String == (String(str_normalTitle.suffix(8)) + str_turnName.replacingOccurrences(of: "size", with: "u")) { // 语聊房退房操作
            //: self.delegate?.func__userLogout()
            self.delegate?.terms()
            //: return
            return

                    //: } else if ext == "MF:PartyChatWelMsg" { // 语聊房进入欢迎消息
        } else if ext == (String(str_imageLabContent.prefix(6)) + "tyChatWel" + String(str_micValue.suffix(3))) { // 语聊房进入欢迎消息
            //: self.delegate?.func__userLogin()
            self.delegate?.onHide()

            //: } else if let opType = extraDic?["opType"], opType as? String == "startLive" {
        } else if let opType = extraDic?[(String(str_positionName.prefix(6)))], opType as? String == (str_subPathValue.replacingOccurrences(of: "add", with: "t") + String(str_labValue.suffix(7))) {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: a_videoData, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?[(String(str_positionName.prefix(6)))], opType as? String == String(bytes: str_appText, encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: str_appText, encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: a_appData, object: nil, userInfo: [String(bytes: str_appText, encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?[(String(str_positionName.prefix(6)))], opType as? String == (String(str_imageText)) { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(String(str_toOfHeightTitle))] as? Int {
                //: if MeasurementAppManager.share.loginUserMode.userID == "\(uid)" {
                if MeasurementAppManager.share.loginUserMode.userID == "\(uid)" {
                    //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                    if ext == (String(str_labelValue.suffix(6)) + "tyChatSys" + String(str_toData.prefix(3))) { // 语聊房
                        //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        ImageToThen.labelShared().partyModel.muteExpireAt = extraDic?[(String(str_modeValue) + String(str_indexText))] as? Int ?? 0
                        //: }else {
                    } else {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        PropertyMManageressPushListener.giftShared().liveRoomModel.muteExpireAt = extraDic?[(String(str_modeValue) + String(str_indexText))] as? Int ?? 0
                    }
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?[(String(str_positionName.prefix(6)))], opType as? String == (str_cornerName.replacingOccurrences(of: "log", with: "un")) { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(String(str_toOfHeightTitle))] as? Int {
                //: if MeasurementAppManager.share.loginUserMode.userID == "\(uid)" {
                if MeasurementAppManager.share.loginUserMode.userID == "\(uid)" {
                    //: if MeasurementAppManager.share.loginUserMode.userID == "\(uid)" {
                    if MeasurementAppManager.share.loginUserMode.userID == "\(uid)" {
                        //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                        if ext == (String(str_labelValue.suffix(6)) + "tyChatSys" + String(str_toData.prefix(3))) { // 语聊房
                            //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = 0
                            ImageToThen.labelShared().partyModel.muteExpireAt = 0
                            //: }else {
                        } else {
                            //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                            PropertyMManageressPushListener.giftShared().liveRoomModel.muteExpireAt = 0
                        }
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = AppModelType.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" || model.MsgExtension == "MF:PartyChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(str_succeedData) + String(str_tableName.suffix(6))) || model.MsgExtension == (String(str_selectedTitle.prefix(4)) + "arty" + String(str_colorTitle.suffix(5)) + "iftMsg") {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?[(str_indexData.replacingOccurrences(of: "value", with: "i"))] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(String(str_pointTitle))] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?[(String(str_freeValue))] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?[(String(str_burnValue))] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if PropertyMManageressPushListener.giftShared().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if PropertyMManageressPushListener.giftShared().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        NameAnimatTool.shared.neighbourBarAction(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.sunrise(Msg: model)
                    }

                    //: } else if TalkingVoiceRoomManager.shared().isParty && model.gift?.isDisplay == true {
                } else if ImageToThen.labelShared().isParty, model.gift?.isDisplay == true { // 语聊房弹幕礼物
                    //: if TalkingVoiceRoomManager.shared().isSmallMode {
                    if ImageToThen.labelShared().isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        NameAnimatTool.shared.neighbourBarAction(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.sunrise(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: a_videoDeviceData, object: nil, userInfo: [String(bytes: str_centerName, encoding: .utf8)!: mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: a_errBarName.upward6decrypt(), with: a_bottomFoundText) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.cellSetUpAccumulationGameLodgeDoorDammuModel(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.cellSetUpAccumulationGameLodgeDoorDammuModel(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if MeasurementAppManager.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if MeasurementAppManager.share.appStatus == LabCustomReflectable.special.rawValue, model.MsgExtension == (String(str_numberName.prefix(6)) + "eCha" + String(str_titleClickValue.prefix(9))) {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            cellSetUpAccumulationGameLodgeDoorDammuModel(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func cellSetUpAccumulationGameLodgeDoorDammuModel(danmuModel: AppModelType) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = PrintMediaReactiveCompatible()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.imageBeTip(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.occurrent(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != MeasurementAppManager.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != MeasurementAppManager.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: (String(str_modelData) + String(str_originVoiceValue.suffix(6))), options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.transmutationTo(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.less(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.modelBind(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension SizeDanmuManager {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func momentResource() {
        //: if TalkingDanmuManager._instance != nil {
        if SizeDanmuManager._instance != nil {
            //: TalkingDanmuManager._instance = nil
            SizeDanmuManager._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func saveSelect(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            printLog(message: (String(str_eventData) + String(str_genderValue)))
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                SizeDanmuManager.appShared().nudge(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if SizeDanmuManager.appShared().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                SizeDanmuManager.appShared().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                saveSelect(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                SizeDanmuManager.appShared().episode(showMsg: String(bytes: str_matterValue.reversed(), encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func playTarget(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension SizeDanmuManager {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func uploadInContext(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (str_tapMakeName.replacingOccurrences(of: "block", with: "i") + "/sendMsg")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(str_addData))] = groupId
        //: dict["message"] = message
        dict[(str_pushValue.replacingOccurrences(of: "manager", with: "ss"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(str_galleryTitle))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 语聊房发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func voiceRoomSendTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func bridgeSize(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "party/sendMsg"
        reqModel.requestPath = (String(str_makeValue.suffix(6)) + "sendM" + str_buttonValue.replacingOccurrences(of: "para", with: "sg"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(str_addData))] = groupId
        //: dict["message"] = message
        dict[(str_pushValue.replacingOccurrences(of: "manager", with: "ss"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(str_galleryTitle))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}
