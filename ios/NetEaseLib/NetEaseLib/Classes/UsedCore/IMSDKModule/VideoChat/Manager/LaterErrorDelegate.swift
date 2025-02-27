
//: Declare String Begin

/*: "TalkingFemaleVIPCallIdsArrayKey_ :*/
fileprivate let str_equalData:[UInt8] = [0x47,0x72,0x7f,0x78,0x7a,0x7d,0x74,0x55,0x76,0x7e,0x72,0x7f,0x76,0x45,0x5a,0x43,0x50,0x72,0x7f,0x7f,0x5a,0x77,0x60,0x52,0x61,0x61,0x72,0x6a,0x58,0x76,0x6a,0x4c]

/*: "CHANGE_BEAN" :*/
fileprivate let str_backLengthSumervalText:String = "CHtextGE"
fileprivate let str_limitTitle:String = "pine"

/*: "Failed to get user information, please return and try again" :*/
fileprivate let str_capRecordText:[UInt8] = [0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x64,0x6e,0x61,0x20,0x6e,0x72,0x75,0x74,0x65,0x72,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x6e,0x6f,0x69,0x74,0x61,0x6d,0x72,0x6f,0x66,0x6e,0x69,0x20,0x72,0x65,0x73,0x75,0x20,0x74,0x65,0x67,0x20,0x6f,0x74,0x20,0x64,0x65,0x6c,0x69,0x61,0x46]

/*: "type" :*/
fileprivate let str_addTitle:[UInt8] = [0xc1,0xcc,0xc5,0xd0]

/*: "uid" :*/
fileprivate let str_backName:[Character] = ["u","i","d"]

/*: "fromFreeCall" :*/
fileprivate let str_observerValue:String = "FRO"
fileprivate let str_defineData:String = "self screen active value ifmFre"

/*: "cmd" :*/
fileprivate let str_locationData:[UInt8] = [0x74,0x7a,0x73]

/*: "requestCall" :*/
fileprivate let str_whiteValue:String = "recoloru"
fileprivate let str_listData:[Character] = ["a","l","l"]

/*: "data" :*/
fileprivate let str_backgroundModelLayerTitle:[UInt8] = [0x64,0x61,0x74,0x61]

/*: "onRequestCall" :*/
fileprivate let str_colorTitle:String = "you stateonReques"
fileprivate let str_indexText:String = "tCallto private input a"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LaterErrorDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum LimitExpressionConvertible: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallBlock = () -> Void
typealias OnReqestCallBlock = () -> Void

//: class TalkingCallMenuManager: NSObject {
class LaterErrorDelegate: NSObject {
    // 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    //: var onReqestCallBlock: OnReqestCallBlock?
    var onReqestCallBlock: OnReqestCallBlock? /// 发起建立通话成功

    // 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "TalkingFemaleVIPCallIdsArrayKey_\(MeasurementAppManager.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = String(bytes: str_equalData.map{$0^19}, encoding: .utf8)! + "\(MeasurementAppManager.share.loginUid)"

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        SocketReactiveCompatible.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        SocketReactiveCompatible.shared.errorDelegate = nil
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension LaterErrorDelegate {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func drop(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard SocketReactiveCompatible.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.episode(showMsg: a_viewNetValue)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = MediumDataSource(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.withMakePrice(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = LimitExpressionConvertible(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (str_backLengthSumervalText.replacingOccurrences(of: "text", with: "AN") + "_BEA" + str_limitTitle.replacingOccurrences(of: "pine", with: "N")), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (str_backLengthSumervalText.replacingOccurrences(of: "text", with: "AN") + "_BEA" + str_limitTitle.replacingOccurrences(of: "pine", with: "N")), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.ofPrompt(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            varietyDown(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func varietyDown(type: LimitExpressionConvertible) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.domainTitleComplection()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.complection()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func complection(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard SocketReactiveCompatible.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.episode(showMsg: a_viewNetValue)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        PrefaceReactiveCompatible.pryUpward(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.episode(showMsg: a_matchData)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            SocketReactiveCompatible.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            SocketReactiveCompatible.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.cameraType(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func domainTitleComplection(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard SocketReactiveCompatible.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.episode(showMsg: a_viewNetValue)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        PrefaceReactiveCompatible.voiceMicrophone { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.episode(showMsg: a_matchData)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            SocketReactiveCompatible.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            SocketReactiveCompatible.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.cameraType(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension LaterErrorDelegate {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func ofPrompt(type: LimitExpressionConvertible, vipPrompt: String) {
        //: guard MeasurementAppManager.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard MeasurementAppManager.share.loginUserMode.status == LabCustomReflectable.normal.rawValue else {
            //: self.requestCall(type: type)
            self.varietyDown(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = a_collectionName.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.varietyDown(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        a_collectionName.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = EqualRegularReactiveCompatible(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.varietyDown(type: type)
        }
        //: alert.show()
        alert.cram()
    }
}

// MARK: - ViewOpenObjectProtocol, OfErrorDelegate【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension LaterErrorDelegate: ViewOpenObjectProtocol, OfErrorDelegate {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func cameraType(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.episode(showMsg: String(bytes: str_capRecordText.reversed(), encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid]
        var data: [String: Any] = [String(bytes: str_addTitle.map{$0^181}, encoding: .utf8)!: type, (String(str_backName)): uid]
        //: let index = EnableFreeCallType.nor
        let index = UpMarkContentConvertible.nor
        //: if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 && MeasurementAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 && MeasurementAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (str_observerValue.lowercased() + String(str_defineData.suffix(4)) + "eCall"))
            //: TalkingSocketManager.shared.isFreeCall = true
            SocketReactiveCompatible.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_locationData.map{$0^23}, encoding: .utf8)!: (str_whiteValue.replacingOccurrences(of: "color", with: "q") + "estC" + String(str_listData)), String(bytes: str_backgroundModelLayerTitle, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        SocketReactiveCompatible.shared.sendBeautyMoment(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {        self.onReqestCallBlock?()
    func limit(data: [String: Any]) { self.onReqestCallBlock?()
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData[(String(str_backName))] = self.uid
        //: MeasurementAppManager.share.start1v1TalkCall(info: newData)
        MeasurementAppManager.share.cancelAction(info: newData)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func videoEqual(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func mixUp(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_colorTitle.suffix(8)) + String(str_indexText.prefix(5))) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.episode(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == StarringStrideable.MoneyLack.rawValue {
                //: guard MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue else { return }
                //: LimitPushManager.share.func__jumpToWebRecharge(clickEvent: clickVideocallButton, sufficient: false)
                LimitPushManager.share.billParams(clickEvent: a_cellName, sufficient: false)
            }
        }
    }
}
