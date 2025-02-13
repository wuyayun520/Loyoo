
//: Declare String Begin

/*: "Speaker On" :*/
fileprivate let str_dayName:String = "Speaksize index name"
fileprivate let str_succeedTingValueData:String = "and if begin modeler On"

/*: "Speaker Off" :*/
fileprivate let str_indexAddNoValue:[Character] = ["S","p","e","a","k","e","r"," ","O","f","f"]

/*: "s- :*/
fileprivate let str_clearText:String = "image interactions-"

/*: - :*/
fileprivate let str_viewData:String = "manager"

/*: "TRTC 音频通话销毁. logId： :*/
fileprivate let str_sizeKeyTitle:[Character] = ["T","R","T","C"," ","音","频","通","话","销","毁","."," ","l","o","g","I"]
fileprivate let str_eventData:String = "view bottom color somed："

/*: ." :*/
fileprivate let str_maxValue:[Character] = ["."]

/*: "TRTC 音频通话错误. errCode: :*/
fileprivate let str_viewValue:String = "TagentTC"
fileprivate let str_normalTitle:String = "错误. "
fileprivate let str_pairData:[Character] = ["o","d","e",":"]

/*: , errMsg: :*/
fileprivate let str_goldInfoUserData:[Character] = [","," ","e"]
fileprivate let str_userCountData:String = "section going falserrMsg:"

/*: "TRTC 音频通话SDK收到警告. warningCode: :*/
fileprivate let str_atTitle:String = "shared model styleTRTC 音"
fileprivate let str_actualData:String = "频\u{901a}话"
fileprivate let str_regularData:[Character] = ["S","D","K","收","到","警","告","."," ","w","a","r","n","i","n","g","C","o","d","e",":"]

/*: , warningMsg: :*/
fileprivate let str_timeName:String = ", warnonline location text cell style"
fileprivate let str_makeText:String = "push"

/*: "TRTC 音频通话进入房间. result: :*/
fileprivate let str_errorTitle:String = "TRTC full render position in var"
fileprivate let str_taskValue:String = "live return return manager间. re"

/*: , logId： :*/
fileprivate let str_dropContent:[Character] = [","," ","l","o","g","I","d","："]

/*:  加入了房间" :*/
fileprivate let str_pathNameData:String = "on"
fileprivate let str_textData:String = "\u{52a0}入了房间"

/*:  离开了房间" :*/
fileprivate let str_menuValue:String = " 离开了\u{623f}间"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateModelReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/12/16.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

/// 音频渲染配置
//: private class TalkingVoiceChatConfig: NSObject {
private class ObjectManagerThen: NSObject {
    //: var isHandsfree = false
    var isHandsfree = false // 是否免提，默认否
    //: var isMute = false
    var isMute = false // 是否静音，默认否
    //: var isTalking = false
    var isTalking = false // 是否正在通话
    //: var disconnected = true
    var disconnected = true // 是否未连接
}

//: class TalkingVoiceChatManager: NSObject {
class DateModelReactiveCompatible: NSObject {
    //: weak var handsfreeBtn: UIButton?
    weak var handsfreeBtn: UIButton? // 免提按钮弱引用
    //: weak var handsfreeDesLab: UILabel?
    weak var handsfreeDesLab: UILabel? // 免提描述弱引用
    //: private var config = TalkingVoiceChatConfig()
    private var config = ObjectManagerThen() // 音频渲染配置类
    //: private var logId = 0
    private var logId = 0 // 通话Id

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: self.notificationAndInterruptSettings()
        self.equalData()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: self.shouldReleaseAllResource()
        self.releaseImage()
    }
}

// MARK: - Public Event

//: extension TalkingVoiceChatManager {
extension DateModelReactiveCompatible {
    /// 挂断来电后，需重恢复音频设备
    //: func enableAudioModule(enable: Bool) {
    func needAllEnable(enable: Bool) {
        //: guard enable == true else { return }
        guard enable == true else { return }

        // 先暂停音频设备
        //: notification_stopLocalAudio(notif: nil)
        mopUp(notif: nil)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            // 再恢复音频设备
            //: self.notification_startLocalAudio(notif: nil)
            self.computerDatabaseNotif(notif: nil)
        }
    }

    /// 释放资源
    //: func shouldReleaseAllResource() {
    func releaseImage() {
        //: destoryTRTCView()
        mentalPicture()
    }

    /// 创建音频通话房间
    /// - Parameter roomId: 房间id
    //: func createRoomAndStartPublish(roomId: Int) {
    func valid(roomId: Int) {
        //: self.handsfreeBtn?.isEnabled = !hasHeadSet()
        self.handsfreeBtn?.isEnabled = !methodBottom()

        //: self.config.isTalking = true
        self.config.isTalking = true
        //: self.logId = roomId
        self.logId = roomId
        //: enterRoom()
        moveCounto()
    }

    /// 设置静音
    /// - Parameter isMute: true：静音；false：恢复
    //: func setMute(isMute: Bool) {
    func adjust(isMute: Bool) {
        //: guard self.config.isMute != isMute else { return }
        guard self.config.isMute != isMute else { return }

        //: self.config.isMute = isMute
        self.config.isMute = isMute
        //: TRTCCloud.sharedInstance().muteLocalAudio(isMute)
        TRTCCloud.sharedInstance().muteLocalAudio(isMute)
    }

    /// 设置免提
    /// - Parameter isHandsfree: true：开启免提；false：听筒
    //: func setHandsfree(isHandsfree: Bool) {
    func headTo(isHandsfree: Bool) {
        //: guard hasHeadSet() == false else { return }
        guard methodBottom() == false else { return }
        //: guard self.config.isHandsfree != isHandsfree else { return }
        guard self.config.isHandsfree != isHandsfree else { return }

        //: self.config.isHandsfree = isHandsfree
        self.config.isHandsfree = isHandsfree
        //: self.handsfreeBtn?.isSelected = isHandsfree
        self.handsfreeBtn?.isSelected = isHandsfree
        //: self.handsfreeDesLab?.text = isHandsfree ? "Speaker On".localized:"Speaker Off".localized
        self.handsfreeDesLab?.text = isHandsfree ? (String(str_dayName.prefix(5)) + String(str_succeedTingValueData.suffix(5))).localized : (String(str_indexAddNoValue)).localized
        //: updateWhenPlayDeviceChanged(isHandsfree: isHandsfree)
        exceptUserHandsfree(isHandsfree: isHandsfree)
    }
}

// MARK: - Private Event

//: extension TalkingVoiceChatManager {
extension DateModelReactiveCompatible {
    /// 判断当前设备是否链接了蓝牙耳机等设备
    /// - Returns: true：有；false：没有
    //: private func hasHeadSet() -> Bool {
    private func methodBottom() -> Bool {
        //: let audioSession = AVAudioSession.sharedInstance()
        let audioSession = AVAudioSession.sharedInstance()
        //: let currentRoute = audioSession.currentRoute
        let currentRoute = audioSession.currentRoute
        //: for output in currentRoute.outputs {
        for output in currentRoute.outputs {
            //: let portType = output.portType
            let portType = output.portType
            //: if portType == .headphones ||
            if portType == .headphones ||
                //: portType == .bluetoothA2DP ||
                portType == .bluetoothA2DP ||
                //: portType == .bluetoothLE ||
                portType == .bluetoothLE ||
                //: portType == .bluetoothHFP {
                portType == .bluetoothHFP
            {
                //: return true
                return true
            }
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingVoiceChatManager {
extension DateModelReactiveCompatible {
    /// 初始化通知
    //: func notificationAndInterruptSettings() {
    func equalData() {
        // 监听 App 切后台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(notification_stopLocalAudio(notif:)),
                                               selector: #selector(mopUp(notif:)),
                                               //: name: UIApplication.didEnterBackgroundNotification,
                                               name: UIApplication.didEnterBackgroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听 App 从后台切前台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(notification_startLocalAudio(notif:)),
                                               selector: #selector(computerDatabaseNotif(notif:)),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听电话事件
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioSessionWasInterrupted(notif:)),
                                               selector: #selector(audio(notif:)),
                                               //: name: AVAudioSession.interruptionNotification,
                                               name: AVAudioSession.interruptionNotification,
                                               //: object: nil)
                                               object: nil)

        // 播放设备更改监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioRouteChangeListenerCallback(notif:)),
                                               selector: #selector(cannulise(notif:)),
                                               //: name: AVAudioSession.routeChangeNotification,
                                               name: AVAudioSession.routeChangeNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// app进入后台，暂停音频设备
    //: @objc private func notification_stopLocalAudio(notif: Notification?) {
    @objc private func mopUp(notif: Notification?) {
        //: if notif == nil {
        if notif == nil {
            //: TRTCCloud.sharedInstance().stopLocalAudio()
            TRTCCloud.sharedInstance().stopLocalAudio()
        }
    }

    /// 监听 App 从后台切前台，开启音频设备
    //: @objc private func notification_startLocalAudio(notif: Notification?) {
    @objc private func computerDatabaseNotif(notif: Notification?) {
        //: if notif == nil {
        if notif == nil {
            //: TRTCCloud.sharedInstance().startLocalAudio(.default)
            TRTCCloud.sharedInstance().startLocalAudio(.default)
        }
    }

    // 监听电话事件
    //: @objc private func audioSessionWasInterrupted(notif: Notification) {
    @objc private func audio(notif: Notification) {
        //: guard notif.userInfo != nil else { return }
        guard notif.userInfo != nil else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard let status = notif.userInfo![AVAudioSessionInterruptionTypeKey] as? UInt else {
            guard let status = notif.userInfo![AVAudioSessionInterruptionTypeKey] as? UInt else {
                //: return
                return
            }
            //: let  interruptStatus = AVAudioSession.InterruptionType(rawValue: status)
            let interruptStatus = AVAudioSession.InterruptionType(rawValue: status)
            //: if interruptStatus == AVAudioSession.InterruptionType.began {
            if interruptStatus == AVAudioSession.InterruptionType.began {
                // 暂停音频设备
                //: self.notification_stopLocalAudio(notif: nil)
                self.mopUp(notif: nil)
                //: } else if interruptStatus == AVAudioSession.InterruptionType.ended {
            } else if interruptStatus == AVAudioSession.InterruptionType.ended {
                // 恢复音频设备
                //: self.notification_startLocalAudio(notif: nil)
                self.computerDatabaseNotif(notif: nil)
            }
        }
    }

    // 播放设备更改监听
    //: @objc func audioRouteChangeListenerCallback(notif: Notification) {
    @objc func cannulise(notif: Notification) {
        //: guard let interuptionDict = notif.userInfo else { return }
        guard let interuptionDict = notif.userInfo else { return }
        //: guard let number = interuptionDict[AVAudioSessionRouteChangeReasonKey] as? NSNumber else {
        guard let number = interuptionDict[AVAudioSessionRouteChangeReasonKey] as? NSNumber else {
            //: return
            return
        }
        //: let routeChangeReason = AVAudioSession.RouteChangeReason(rawValue: number.uintValue)
        let routeChangeReason = AVAudioSession.RouteChangeReason(rawValue: number.uintValue)

        //: switch(routeChangeReason) {
        switch routeChangeReason {
        //: case .newDeviceAvailable:
        case .newDeviceAvailable: // 听筒
            //: self.handsfreeBtn?.isEnabled = false
            self.handsfreeBtn?.isEnabled = false
            //: updateWhenPlayDeviceChanged(isHandsfree: false)
            exceptUserHandsfree(isHandsfree: false)

        //: case .oldDeviceUnavailable:
        case .oldDeviceUnavailable: // 免提
            //: self.handsfreeBtn?.isEnabled = true
            self.handsfreeBtn?.isEnabled = true
            //: self.config.isHandsfree = true
            self.config.isHandsfree = true
            //: self.handsfreeBtn?.isSelected = true
            self.handsfreeBtn?.isSelected = true
            //: self.handsfreeDesLab?.text = "Speaker On".localized
            self.handsfreeDesLab?.text = (String(str_dayName.prefix(5)) + String(str_succeedTingValueData.suffix(5))).localized
            //: updateWhenPlayDeviceChanged(isHandsfree: self.config.isHandsfree)
            exceptUserHandsfree(isHandsfree: self.config.isHandsfree)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - 音频通话事件

//: extension TalkingVoiceChatManager {
extension DateModelReactiveCompatible {
    /// 进入音频通话房间
    //: private func enterRoom() {
    private func moveCounto() {
        //: let params = TRTCParams()
        let params = TRTCParams()
        //: params.sdkAppId = TRTCAppID
        params.sdkAppId = a_iconText
        //: params.roomId = UInt32(logId)
        params.roomId = UInt32(logId)
        //: params.userId = MeasurementAppManager.share.loginUserMode.userID
        params.userId = MeasurementAppManager.share.loginUserMode.userID
        //: params.userSig = MeasurementAppManager.share.appUserConfigMode.uSigTrtc
        params.userSig = MeasurementAppManager.share.appUserConfigMode.uSigTrtc
        //: params.streamId = "s-\(params.userId)-\(logId)"
        params.streamId = "s-\(params.userId)-\(logId)"
        //: TRTCCloud.sharedInstance().delegate = self
        TRTCCloud.sharedInstance().delegate = self
        //: TRTCCloud.sharedInstance().startLocalAudio(.default)
        TRTCCloud.sharedInstance().startLocalAudio(.default)
        //: TRTCCloud.sharedInstance().enterRoom(params, appScene: .audioCall)
        TRTCCloud.sharedInstance().enterRoom(params, appScene: .audioCall)
        // 初始设置是否免提
        //: updateWhenPlayDeviceChanged(isHandsfree: self.config.isHandsfree)
        exceptUserHandsfree(isHandsfree: self.config.isHandsfree)
    }

    /// 更新通话模式
    /// - Parameter isHandsfree: 是否免提
    //: private func updateWhenPlayDeviceChanged(isHandsfree: Bool) {
    private func exceptUserHandsfree(isHandsfree: Bool) {
        //: TRTCCloud.sharedInstance().setAudioRoute((isHandsfree ? .modeSpeakerphone:.modeEarpiece))
        TRTCCloud.sharedInstance().setAudioRoute(isHandsfree ? .modeSpeakerphone : .modeEarpiece)
    }

    /// 销毁trtc
    //: private func destoryTRTCView() {
    private func mentalPicture() {
        //: UploadLogTool.writeLog(msg: "TRTC 音频通话销毁. logId：\(logId).")
        TitleMediumLogTool.commitMedium(msg: (String(str_sizeKeyTitle) + String(str_eventData.suffix(2))) + "\(logId).")
        //: guard self.config.isTalking else { return }
        guard self.config.isTalking else { return }

        //: if self.config.isHandsfree == false {
        if self.config.isHandsfree == false { // 恢复系统扬声器播放声音
            //: updateWhenPlayDeviceChanged(isHandsfree: true)
            exceptUserHandsfree(isHandsfree: true)
        }
        //: TRTCCloud.sharedInstance().exitRoom()
        TRTCCloud.sharedInstance().exitRoom()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: TRTCCloud.destroySharedIntance()
            TRTCCloud.destroySharedIntance()
        }
        //: self.config.isTalking = false
        self.config.isTalking = false
    }

    /// 音频通话重连
    /// - Parameter roomId: 房间Id
    //: func restartTalkWhenDisconnectedAndNetAvailable(roomId: Int) {
    func stopInPerusalHospitalRoom(roomId: Int) {
        //: if self.config.disconnected == true {
        if self.config.disconnected == true {
            //: self.config.disconnected = false
            self.config.disconnected = false
            //: self.createRoomAndStartPublish(roomId: roomId)
            self.valid(roomId: roomId)
        }
    }
}

// MARK: - TRTCCloudDelegate

//: extension TalkingVoiceChatManager: TRTCCloudDelegate {
extension DateModelReactiveCompatible: TRTCCloudDelegate {
    //: func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: UploadLogTool.writeLog(msg: "TRTC 音频通话错误. errCode:\(errCode), errMsg:\(String(describing: errMsg)).")
        TitleMediumLogTool.commitMedium(msg: (str_viewValue.replacingOccurrences(of: "agent", with: "R") + " \u{97f3}频\u{901a}话" + str_normalTitle.capitalized + "errC" + String(str_pairData)) + "\(errCode)" + (String(str_goldInfoUserData) + String(str_userCountData.suffix(6))) + "\(String(describing: errMsg)).")
        //: if errMsg != nil {
        if errMsg != nil {
            //: self.func__showStatusBarErrorMsg(showMsg: errMsg!)
            self.episode(showMsg: errMsg!)
        }
    }

    //: func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: UploadLogTool.writeLog(msg: "TRTC 音频通话SDK收到警告. warningCode:\(warningCode), warningMsg:\(String(describing: warningMsg)).")
        TitleMediumLogTool.commitMedium(msg: (String(str_atTitle.suffix(6)) + str_actualData + String(str_regularData)) + "\(warningCode)" + (String(str_timeName.prefix(6)) + "ingMsg" + str_makeText.replacingOccurrences(of: "push", with: ":")) + "\(String(describing: warningMsg)).")
    }

    //: func onEnterRoom(_ result: Int) {
    func onEnterRoom(_ result: Int) {
        //: UploadLogTool.writeLog(msg: "TRTC 音频通话进入房间. result:\(result), logId：\(logId).")
        TitleMediumLogTool.commitMedium(msg: (String(str_errorTitle.prefix(5)) + "音频通话进入房" + String(str_taskValue.suffix(5)) + "sult:") + "\(result)" + (String(str_dropContent)) + "\(logId).")
        //: if result < 0 {
        if result < 0 { // 加入失败
            //: self.config.disconnected = true
            self.config.disconnected = true
            //: TalkingSocketManager.shared.endTalkingPing()
            SocketReactiveCompatible.shared.impingeOnName()
            //: } else {
        } else {
            //: self.config.disconnected = false
            self.config.disconnected = false
        }
    }

    //: func onExitRoom(_ reason: Int) {
    func onExitRoom(_: Int) {
        //: self.config.disconnected = true
        self.config.disconnected = true
        //: TalkingSocketManager.shared.endTalkingPing()
        SocketReactiveCompatible.shared.impingeOnName()
    }

    //: func onRemoteUserEnterRoom(_ userId: String) {
    func onRemoteUserEnterRoom(_ userId: String) {
        //: printLog(message: "\(userId) 加入了房间")
        printLog(message: "\(userId)" + (str_pathNameData.replacingOccurrences(of: "on", with: " ") + str_textData))
    }

    //: func onRemoteUserLeaveRoom(_ userId: String, reason: Int) {
    func onRemoteUserLeaveRoom(_ userId: String, reason _: Int) {
        //: printLog(message: "\(userId) 离开了房间")
        printLog(message: "\(userId)" + (str_menuValue))
    }
}
