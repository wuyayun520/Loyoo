
//: Declare String Begin

/*: "TalkingIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let str_currentName:[UInt8] = [0x79,0x65,0x4b,0x79,0x61,0x72,0x72,0x41,0x64,0x49,0x67,0x73,0x4d,0x6b,0x63,0x6f,0x6c,0x6e,0x55,0x6f,0x74,0x6f,0x68,0x50,0x65,0x74,0x61,0x6d,0x69,0x74,0x6e,0x49,0x67,0x6e,0x69,0x6b,0x6c,0x61,0x54]

/*: "TalkingPrivateChatVideoTipsIsShow_ :*/
fileprivate let str_itemData:[UInt8] = [0x54,0x61,0x6c,0x6b,0x69,0x6e,0x67,0x50,0x72,0x69,0x76,0x61,0x74,0x65,0x43,0x68,0x61,0x74,0x56,0x69,0x64,0x65,0x6f,0x54,0x69,0x70,0x73,0x49,0x73,0x53,0x68,0x6f,0x77,0x5f]

/*: _ :*/
fileprivate let str_colorTitle:String = "_"

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let str_toValue:[UInt8] = [0x51,0x75,0x69,0x63,0x6b,0x20,0x67,0x72,0x65,0x65,0x74,0x69,0x6e,0x67,0x20,0x63,0x61,0x6e,0x20,0x6f,0x6e,0x6c,0x79,0x20,0x62,0x65,0x20,0x73,0x65,0x6e,0x74,0x20,0x74,0x6f,0x20,0x68,0x69,0x6d,0x20,0x6f,0x6e,0x63,0x65]

/*: "txt" :*/
fileprivate let str_videoName:String = "smartt"

/*: "audio" :*/
fileprivate let str_imageData:[Character] = ["a","u","d","i","o"]

/*: "Please add greeting text" :*/
fileprivate let str_textTimeValue:[Character] = ["P","l","e","a","s","e"," ","a","d","d"," "]
fileprivate let str_rowData:String = "grvoicevoicet"

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let str_modelData:[UInt8] = [0x59,0x6f,0x75,0x20,0x68,0x61,0x76,0x65,0x20,0x6e,0x6f,0x74,0x20,0x73,0x65,0x74,0x20,0x75,0x70,0x20,0x61,0x20,0x70,0x68,0x6f,0x74,0x6f,0x20,0x67,0x72,0x65,0x65,0x74,0x69,0x6e,0x67,0x2c,0x20,0x70,0x6c,0x65,0x61,0x73,0x65,0x20,0x73,0x65,0x74,0x20,0x69,0x74,0x20,0x75,0x70,0x20,0x62,0x65,0x66,0x6f,0x72,0x65,0x20,0x73,0x65,0x6e,0x64,0x69,0x6e,0x67,0x21]

/*: "Cancel" :*/
fileprivate let str_logName:[Character] = ["C","a","n","c","e","l"]

/*: "Go to set" :*/
fileprivate let str_managerWithValue:[Character] = ["G","o"," ","t","o"," ","s","e","t"]

/*: "#startTime#" :*/
fileprivate let str_windowValue:String = "#stain return red"
fileprivate let str_todayValue:String = "target make user tool viewrtTime#"

/*: "#endTime#" :*/
fileprivate let str_appToValue:[Character] = ["#","e","n","d","T","i","m","e","#"]

/*: "text" :*/
fileprivate let str_infoAfterName:[Character] = ["t","e","x","t"]

/*: "img" :*/
fileprivate let str_errorTabTitle:String = "IMG"

/*: "video" :*/
fileprivate let str_executeTitle:[Character] = ["v","i","d","e","o"]

/*: "gift" :*/
fileprivate let str_cancelBottomValue:String = "gifuser"

/*: "PrivateChat 点击引用消息 :*/
fileprivate let str_photoData:[Character] = ["P","r","i","v","a","t","e","C","h","a","t"," ","点"]
fileprivate let str_actionData:[Character] = ["击","\u{5f15}","用","消","息"]

/*: ." :*/
fileprivate let str_centerFileData:String = "size"

/*: "Sent " :*/
fileprivate let str_titleColorName:[Character] = ["S","e","n","t"," "]

/*: " x :*/
fileprivate let str_ofName:String = " xapp view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrivateThen.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class PrivateThen: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = PrivateThen()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "TalkingIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: str_currentName.reversed(), encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension PrivateThen {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func subsequently(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue else { return }
        // 男性
        //: guard MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "TalkingPrivateChatVideoTipsIsShow_\(String(MeasurementAppManager.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: str_itemData, encoding: .utf8)! + "\(String(MeasurementAppManager.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = a_collectionName.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? TUIMessageCellData
            let indexModel = indexModel as? TUIMessageCellData
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: OfCellData.self) {
                if indexModel!.isKind(of: OfCellData.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! OfCellData
                    let textMsgModel = indexModel as! OfCellData
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: ValueViewReactiveCompatible.self) ||
                if indexModel!.isKind(of: ValueViewReactiveCompatible.self) ||
                    //: indexModel!.isKind(of: OfCellData.self) ||
                    indexModel!.isKind(of: OfCellData.self) ||
                    //: indexModel!.isKind(of: DocumentCellData.self) ||
                    indexModel!.isKind(of: DocumentCellData.self) ||
                    //: indexModel!.isKind(of: ToCellData.self) {
                    indexModel!.isKind(of: ToCellData.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            a_collectionName.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            a_collectionName.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension PrivateThen {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func statisticalTable(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(MeasurementAppManager.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(MeasurementAppManager.share.loginUserMode.userID)_\(a_outputData)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: str_toValue, encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: DoingSheRequestTool.req_getAutoGreetContent { succeed, result, errorModel in
        DoingSheRequestTool.belowUp { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !MeasurementAppManager.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !MeasurementAppManager.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    ToViewWindowManager.shared.messagePlayer()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict[(str_videoName.replacingOccurrences(of: "smart", with: "tx"))] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict[(String(str_imageData))] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(str_textTimeValue) + str_rowData.replacingOccurrences(of: "voice", with: "e") + "ing text").localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            sizeCurrent(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func sizeCurrent(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(MeasurementAppManager.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(MeasurementAppManager.share.loginUserMode.userID)_\(a_outputData)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func statusBy(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: DoingSheRequestTool.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        DoingSheRequestTool.getTextMake(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = MarkAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                TitleAlertShow.appearAll(message: String(bytes: str_modelData, encoding: .utf8)!.localized, leftBtnTitle: (String(str_logName)).localized, rightBtnTitle: (String(str_managerWithValue)).localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    TitleAlertShow.lastAlert()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    TitleAlertShow.lastAlert()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !MeasurementAppManager.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !MeasurementAppManager.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                ToViewWindowManager.shared.messagePlayer()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension PrivateThen {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func makeFinish(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard MeasurementAppManager.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard MeasurementAppManager.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: MeasurementAppManager.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.zoneName(shDateStr: MeasurementAppManager.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: MeasurementAppManager.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.zoneName(shDateStr: MeasurementAppManager.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.sizeUser(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = MeasurementAppManager.share.appConfigMode.CSConfig.systemTips
        var tips = MeasurementAppManager.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(str_windowValue.prefix(4)) + String(str_todayValue.suffix(7))), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(str_appToValue)), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension PrivateThen {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: TUIMessageCellData, msgView: TUIMessageController) {
    static func userState(cellData: TUIMessageCellData, msgView: TUIMessageController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = a_collectionName.object(forKey: PrivateThen.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: DocumentCellData.self) ||
                  cellData.isKind(of: DocumentCellData.self) ||
                  //: cellData.isKind(of: ToCellData.self)) else { return }
                  cellData.isKind(of: ToCellData.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                meanSolarDayConversation(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                a_collectionName.set(array, forKey: PrivateThen.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: ConstraintReactiveCompatible.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: ConstraintReactiveCompatible.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! TUIMessageCellData
            let data = msgCellData as! TUIMessageCellData
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                meanSolarDayConversation(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
    private static func meanSolarDayConversation(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
        //: if cellData.isKind(of: DocumentCellData.self) {
        if cellData.isKind(of: DocumentCellData.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
            }

            //: } else if cellData.isKind(of: ToCellData.self) {
        } else if cellData.isKind(of: ToCellData.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.changeIntimateVideoMsg(cellData, videoModel: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension PrivateThen {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func giveAndTake(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
        //: guard MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard DoingRecognizerDelegate.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        DoingRecognizerDelegate.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func allView(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
        //: guard MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard DoingRecognizerDelegate.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard PrivateThen.resign(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func resign(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension PrivateThen {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: TUIMessageCellData) -> Bool {
    static func targetData(cellData: TUIMessageCellData) -> Bool {
        //: if MeasurementAppManager.share.loginUserMode.loungePlus == false,
        if MeasurementAppManager.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: TUIMessageCellData) -> Bool {
    static func cellAnnouncement(cellData: TUIMessageCellData) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if MeasurementAppManager.share.loginUserMode.loungePlus == true,
        if MeasurementAppManager.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: TUIMessageCellData) -> Bool {
    static func counteractionData(cellData: TUIMessageCellData) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = PrivateThen.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension PrivateThen {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: TUIMessageCellData, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func theme(cellData: TUIMessageCellData, targetId: String) -> IsochronalModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = IsochronalModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = MeasurementAppManager.share.loginUserMode.userID
            quoteModel.uid = MeasurementAppManager.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = ShadowJsonModel()
        //: if cellData.isKind(of: OfCellData.self) {
        if cellData.isKind(of: OfCellData.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = (String(str_infoAfterName))
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: DocumentCellData.self) {
        } else if cellData.isKind(of: DocumentCellData.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = (str_errorTabTitle.lowercased())
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: ToCellData.self) {
        } else if cellData.isKind(of: ToCellData.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = (String(str_executeTitle))
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: ValueViewReactiveCompatible.self) {
        } else if cellData.isKind(of: ValueViewReactiveCompatible.self) {
            //: let audioCelldata = cellData as! ValueViewReactiveCompatible
            let audioCelldata = cellData as! ValueViewReactiveCompatible
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = (String(str_imageData))
            //: let voiceCache = DBUserInfoManager.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = InfoReactiveCompatible.person(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: ConstraintReactiveCompatible.self) {
        } else if cellData.isKind(of: ConstraintReactiveCompatible.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = (str_cancelBottomValue.replacingOccurrences(of: "user", with: "t"))
            //: let giftCellData = cellData as! ConstraintReactiveCompatible
            let giftCellData = cellData as! ConstraintReactiveCompatible
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
        }

        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: TUIMessageCellData, targetId: String) {
    static func playerMenu(cellData: TUIMessageCellData, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: UploadLogTool.writeLog(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        TitleMediumLogTool.commitMedium(msg: (String(str_photoData) + String(str_actionData)) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == (String(str_infoAfterName)) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = ModalPopView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.cloud()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == (str_errorTabTitle.lowercased()) {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(a_cancelName)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = GoldObjectMeasurable()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = CustomMeasurable()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [GoldObjectMeasurable] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = CellViewController(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            PrivateThen.share.isochronalStack()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == (String(str_executeTitle)) {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = LargePlayerDelegate(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            PrivateThen.share.isochronalStack()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == (String(str_imageData)) {
            //: let cacheWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = ObjectReactiveCompatible.hireWith(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = FrameworkValueModelType()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = WCDBVoiceMsgTable()
                let model = ObjectReactiveCompatible()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == MeasurementAppManager.share.loginUserMode.userID {
                if renderData.uid == MeasurementAppManager.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = MeasurementAppManager.share.loginUserMode.userID
                    model.db_touid = MeasurementAppManager.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(model)
                ObjectReactiveCompatible.than(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            SolarDayReactiveCompatible.shared.scorer()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            SolarDayReactiveCompatible.shared.viewModel(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == (str_cancelBottomValue.replacingOccurrences(of: "user", with: "t")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = ModalPopView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = (String(str_titleColorName)).localized + renderData.renderData.local() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.cloud()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension PrivateThen {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func facilityVersion(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }
}
