
//: Declare String Begin

/*: "LIVE_NEED_OPEN_NOTIFICATION" :*/
fileprivate let str_episodeData:String = "guard viewLIVE_"
fileprivate let str_withData:String = "_OPENimage var restriction"
fileprivate let str_viewCoinData:String = "CATIOname"

/*: "LIVE_STATUS_CHANGE_NOTIFICATION" :*/
fileprivate let str_minimumName:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x45,0x47,0x4e,0x41,0x48,0x43,0x5f,0x53,0x55,0x54,0x41,0x54,0x53,0x5f,0x45,0x56,0x49,0x4c]

/*: "live/startCheck" :*/
fileprivate let str_lastName:String = "app makelive/"
fileprivate let str_formalValue:String = "ECK"

/*: "live/start" :*/
fileprivate let str_startText:String = "live/type as"

/*: "live/stop" :*/
fileprivate let str_viewCenterContent:String = "live/sttemp error any social text"
fileprivate let str_toolData:String = "list"

/*: "type" :*/
fileprivate let str_selectedData:[UInt8] = [0x74,0x79,0x70,0x65]

/*: "mf/user/dataCard" :*/
fileprivate let str_styleValue:[Character] = ["m","f","/","u","s","e","r","/","d","a","t","a","C","a"]
fileprivate let str_attributeData:String = "manager"

/*: "uid" :*/
fileprivate let str_audienceValue:[UInt8] = [0x75,0x69,0x64]

/*: "streamerUid" :*/
fileprivate let str_emptyData:[UInt8] = [0xe9,0xee,0xe8,0xff,0xfb,0xf7,0xff,0xe8,0xcf,0xf3,0xfe]

/*: "roomId" :*/
fileprivate let str_listSendValue:String = "var leadingroomId"

/*: "Try again later, if you have any questions please contact customer service" :*/
fileprivate let str_selectedValue:[UInt8] = [0x65,0x63,0x69,0x76,0x72,0x65,0x73,0x20,0x72,0x65,0x6d,0x6f,0x74,0x73,0x75,0x63,0x20,0x74,0x63,0x61,0x74,0x6e,0x6f,0x63,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x73,0x6e,0x6f,0x69,0x74,0x73,0x65,0x75,0x71,0x20,0x79,0x6e,0x61,0x20,0x65,0x76,0x61,0x68,0x20,0x75,0x6f,0x79,0x20,0x66,0x69,0x20,0x2c,0x72,0x65,0x74,0x61,0x6c,0x20,0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x54]

/*: "redirectUrl" :*/
fileprivate let str_coverAddData:String = "rcolori"

/*: "livePushUrl" :*/
fileprivate let str_extraData:[Character] = ["l","i","v","e","P","u","s","h"]
fileprivate let str_triggerValue:String = "size interaction lab leading letUrl"

/*: "FaceActionEvent_Interval_1_second" :*/
fileprivate let str_backgroundText:[UInt8] = [0x64,0x6e,0x6f,0x63,0x65,0x73,0x5f,0x31,0x5f,0x6c,0x61,0x76,0x72,0x65,0x74,0x6e,0x49,0x5f,0x74,0x6e,0x65,0x76,0x45,0x6e,0x6f,0x69,0x74,0x63,0x41,0x65,0x63,0x61,0x46]

/*: "hasFace" :*/
fileprivate let str_effectName:String = "hasFacelanguage var to else"

/*: "Opening failed" :*/
fileprivate let str_blockName:String = "Openinapp day place"
fileprivate let str_arrayName:[Character] = ["e","d"]

/*: "LIVE 状态码： :*/
fileprivate let str_makeSizeValue:String = "li"
fileprivate let str_labLimitData:String = "VE \u{72b6}\u{6001}码："

/*: ." :*/
fileprivate let str_titleContent:String = "sum"

/*: "Network busy!" :*/
fileprivate let str_jumpData:String = "Netintimate cookie"
fileprivate let str_textData:[Character] = ["w","o","r","k"," ","b","u","s","y","!"]

/*: "LIVE 异常下播，evtID: :*/
fileprivate let str_markTitle:[Character] = ["L","I","V","E"," ","异","\u{5e38}","\u{4e0b}"]
fileprivate let str_insideValue:[Character] = ["播","，","e"]
fileprivate let str_activeName:[Character] = ["v","t","I","D",":"]

/*: "Live room exception" :*/
fileprivate let str_makeTargetName:[Character] = ["L","i"]
fileprivate let str_indexDataName:[Character] = ["v","e"," ","r","o","o","m"," ","e","x","c","e","p","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PropertyMManageressPushListener.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// 是否需要恢复直播
//: public var NEED_RESTORE_LIVE = false
public var a_iconName = false
// 唤起直播功能
//: public let LIVE_NEED_OPEN_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_NEED_OPEN_NOTIFICATION")
public let a_clickTitle = NSNotification.Name(rawValue: (String(str_episodeData.suffix(5)) + "NEED" + String(str_withData.prefix(5)) + "_NOTIFI" + str_viewCoinData.replacingOccurrences(of: "name", with: "N")))
// 直播状态变更通知
//: public let LIVE_STATUS_CHANGE_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_STATUS_CHANGE_NOTIFICATION")
public let a_errorScreenValue = NSNotification.Name(rawValue: String(bytes: str_minimumName.reversed(), encoding: .utf8)!)

/// 直播渲染配置
//: class TalkingLiveConfig: NSObject {
class LoadBlockThen: NSObject {
    //: var livePushUrl = ""                 // 推流地址
    var livePushUrl = "" // 推流地址
    //: var isSmallMode = false
    var isSmallMode = false // 是否小窗口
    //: var isMute = false
    var isMute = false // 是否静音
    //: var isRequest = false
    var isRequest = false // 正在请求中（防止多次调用）
    //: var frontCamera = true
    var frontCamera = true // 是否前置摄像头
}

//: class TalkingLiveManager: NSObject {
class PropertyMManageressPushListener: NSObject {
    // 直播间消息
    //: var liveRoomModel = TalkingLiveRoomModel()
    var liveRoomModel = AtModelType()
    // 是否正在直播中（状态变更时发送通知）
    //: private(set) var isLive: Bool = false {
    private(set) var isLive: Bool = false {
        //: didSet {
        didSet {
            //: if MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
            if MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue {
                //: NotificationCenter.default.post(name: LIVE_STATUS_CHANGE_NOTIFICATION, object: self)
                NotificationCenter.default.post(name: a_errorScreenValue, object: self)
            }
        }
    }

    // TXLive
    //: var config = TalkingLiveConfig()
    var config = LoadBlockThen() // 直播渲染配置类
    //: private weak var renderLiveView: UIView?
    private weak var renderLiveView: UIView? // 直播视图视频源
    //: private var localPreviewView: TalkingTRTCVideoView?
    private var localPreviewView: AfterwardReactiveCompatible? // 本地预览view（使用商汤美颜）
    //: private static var _instance: TalkingLiveManager?
    private static var _instance: PropertyMManageressPushListener? // singleton

    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingLiveManager {
    class func giftShared() -> PropertyMManageressPushListener {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingLiveManager()
            _instance = PropertyMManageressPushListener()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: class func destroy() {
    class func statuteNameTo() {
        //: if TalkingLiveManager._instance != nil {
        if PropertyMManageressPushListener._instance != nil {
            //: TalkingLiveManager._instance = nil
            PropertyMManageressPushListener._instance = nil
        }
    }

    // MARK: - Lazy Load

    // 直播小窗口悬浮窗
    //: private lazy var liveMiniView: TalkingLiveMiniView = {
    private lazy var liveMiniView: GoldReactiveCompatible = {
        //: let mini = TalkingLiveMiniView.buildLiveMiniView()
        let mini = GoldReactiveCompatible.dismissWith()
        //: mini.tapGestureBlock = { [weak self] in
        mini.tapGestureBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            // 进入直播间
            //: self.live_updateTXLivePreview(self.liveRoomVC.renderView, smallWindow: false)
            self.colouring(self.liveRoomVC.renderView, smallWindow: false)
            //: guard let currentVC = self.currentViewController() else { return }
            guard let currentVC = self.colorController() else { return }
            // 如果顶部视图是私信页，先返回列表，避免多个私信页消息同步问题
            //: if currentVC.isKind(of: TalkingPrivateChatController.self) {
            if currentVC.isKind(of: DoingRecognizerDelegate.self) {
                //: if var vcArr = currentVC.navigationController?.viewControllers {
                if var vcArr = currentVC.navigationController?.viewControllers {
                    //: vcArr.removeLast()
                    vcArr.removeLast()
                    //: vcArr.append(self.liveRoomVC)
                    vcArr.append(self.liveRoomVC)
                    //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                    currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                }
                //: } else {
            } else {
                //: currentVC.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                currentVC.navigationController?.pushViewController(self.liveRoomVC, animated: true)
            }
        }
        //: return mini
        return mini
        //: }()
    }()

    // 直播控制器
    //: private lazy var liveRoomVC: TalkingLiveBeautifyViewController = {
    private lazy var liveRoomVC: MTheoryThen = {
        //: let vc = TalkingLiveBeautifyViewController()
        let vc = MTheoryThen()
        //: return vc
        return vc
        //: }()
    }()

    // 检测无人脸弹窗
    //: private lazy var noFaceAlert: TalkingLiveAlertView = {
    private lazy var noFaceAlert: TitleAlertView = //: return TitleAlertView(frame: .zero, type: .noFace)
        .init(frame: .zero, type: .noFace)
    //: }()

    // 直播推流对象
    //: private lazy var livePusher: TXLivePush = {
    private lazy var livePusher: TXLivePush = {
        //: let pushConfig = TXLivePushConfig()
        let pushConfig = TXLivePushConfig()
        //: pushConfig.frontCamera = self.config.frontCamera
        pushConfig.frontCamera = self.config.frontCamera
        //: pushConfig.customModeType |= CUSTOM_MODE_VIDEO_CAPTURE
        pushConfig.customModeType |= CUSTOM_MODE_VIDEO_CAPTURE
        // 标清
        //: let pusher = TXLivePush(config: pushConfig)
        let pusher = TXLivePush(config: pushConfig)
        //: pusher?.setVideoQuality(TX_Enum_Type_VideoQuality.VIDEO_QUALITY_STANDARD_DEFINITION,
        pusher?.setVideoQuality(TX_Enum_Type_VideoQuality.VIDEO_QUALITY_STANDARD_DEFINITION,
                                //: adjustBitrate: true,
                                adjustBitrate: true,
                                //: adjustResolution: false)
                                adjustResolution: false)
        //: return pusher!
        return pusher!
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveManager {
extension PropertyMManageressPushListener {
    /// 检测是否被禁用“开播功能”
    //: class func req_liveStartCheck(completion: @escaping FinishBlock) {
    class func sessionPush(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "live/startCheck"
        reqModel.requestPath = (String(str_lastName.suffix(5)) + "startCh" + str_formalValue.lowercased())
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开启直播
    //: class func req_liveStart(completion: @escaping FinishBlock) {
    class func dismissCapture(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "live/start"
        reqModel.requestPath = (String(str_startText.prefix(5)) + "start")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 停止直播
    /// - Parameters:
    ///   - type: 停播类型：1=主动终止；2=没有人脸；3=通话中断
    ///   - completion: 回调
    //: class func req_liveStop(type: Int, completion: FinishBlock? = nil) {
    class func toSatisfy(type: Int, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "live/stop"
        reqModel.requestPath = (String(str_viewCenterContent.prefix(7)) + str_toolData.replacingOccurrences(of: "list", with: "op"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["type": type]
        reqModel.params = [String(bytes: str_selectedData, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// - Parameters:
    ///  - uid: 卡片用户id
    ///   - streamerUid: 主播id
    //: class func req__userCardInfo(uid: String, streamerUid: String, roomId: String? = nil , completion: @escaping FinishBlock) {
    class func behindResume(uid: String, streamerUid: String, roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/user/dataCard"
        reqModel.requestPath = (String(str_styleValue) + str_attributeData.replacingOccurrences(of: "manager", with: "rd"))
        //: var params = ["uid": uid, "streamerUid": streamerUid]
        var params = [String(bytes: str_audienceValue, encoding: .utf8)!: uid, String(bytes: str_emptyData.map{$0^154}, encoding: .utf8)!: streamerUid]
        //: if let roomId = roomId {
        if let roomId = roomId {
            //: params["roomId"] = roomId
            params[(String(str_listSendValue.suffix(6)))] = roomId
        }
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

// MARK: - 权限检测，通过后开启直播

//: extension TalkingLiveManager {
extension PropertyMManageressPushListener {
    // 检测直播状态，未开播时打开直播
    //: func checkLiveAuthAndTurnOn(completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
    func frontCustomMake(completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
        //: guard self.isLive == false else { return }
        guard self.isLive == false else { return }
        //: guard self.config.isRequest == false else { return }
        guard self.config.isRequest == false else { return }
        //: self.config.isRequest = true
        self.config.isRequest = true

        // 1. 商汤美颜
        //: guard SenseTime_Use == true else {
        guard a_keyPostText == true else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Try again later, if you have any questions please contact customer service".localized)
            self.episode(showMsg: String(bytes: str_selectedValue.reversed(), encoding: .utf8)!.localized)
            //: self.config.isRequest = false
            self.config.isRequest = false
            //: return
            return
        }

        // 2. 权限检测
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        PrefaceReactiveCompatible.voiceMicrophone { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.episode(showMsg: a_matchData)
                //: self.config.isRequest = false
                self.config.isRequest = false
                //: completionHandler?(false)
                completionHandler?(false)
                //: return
                return
            }
            // 3. 接口是否禁播检测
            //: TalkingLiveManager.req_liveStartCheck { succeed, result, errorModel in
            PropertyMManageressPushListener.sessionPush { succeed, result, errorModel in
                //: guard succeed else {
                guard succeed else {
                    //: self.config.isRequest = false
                    self.config.isRequest = false
                    //: if errorModel?.errorCode == 302 {
                    if errorModel?.errorCode == 302 { // 失败，跳转H5
                        //: if let result = result as? Dictionary<String, Any> {
                        if let result = result as? [String: Any] {
                            //: LimitPushManager.share.func__pushToWebVC(urlStr: result["redirectUrl"] as? String)
                            LimitPushManager.share.comb(urlStr: result[(str_coverAddData.replacingOccurrences(of: "color", with: "ed") + "rectUrl")] as? String)
                        }
                        //: } else if errorModel?.errorMsg.count ?? 0 > 0 {
                    } else if errorModel?.errorMsg.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.episode(showMsg: errorModel!.errorMsg)
                    }
                    //: completionHandler?(false)
                    completionHandler?(false)
                    //: return
                    return
                }
                // 4. 是否正在音视频通话中
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard SocketReactiveCompatible.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.episode(showMsg: a_viewNetValue)
                    //: self.config.isRequest = false
                    self.config.isRequest = false
                    //: completionHandler?(false)
                    completionHandler?(false)
                    //: return
                    return
                }

                // 校验成功，开启直播
                //: completionHandler?(true)
                completionHandler?(true)
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())

                // 进入直播间
                //: self.currentViewController()?.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                self.colorController()?.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                //: self.live_createRoomAndStartPush(livePushUrl: json["livePushUrl"].stringValue)
                self.afterEqual(livePushUrl: json[(String(str_extraData) + String(str_triggerValue.suffix(3)))].stringValue)
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingLiveManager {
extension PropertyMManageressPushListener {
    /// 展示直播违规弹窗
    //: static func live_showWarningView(content: String, reason: String, time: String) {
    static func little(content: String, reason: String, time: String) {
        //: let alert = TalkingLiveWarningView()
        let alert = WarningView()
        //: alert.refreshUI(content: content, reason: reason, time: time)
        alert.holograph(content: content, reason: reason, time: time)
        //: alert.show()
        alert.translationEach()
    }

    /// 释放资源
    //: func live_releaseAllResource() {
    func handleDown() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.isLive = false
            self.isLive = false
            //: self.config.isRequest = false
            self.config.isRequest = false
            //: UIApplication.shared.isIdleTimerDisabled = false
            UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
            //: NotificationCenter.default.removeObserver(self)
            NotificationCenter.default.removeObserver(self) // 移除通知
            //: TalkingSocketManager.shared.endLivePing()
            SocketReactiveCompatible.shared.filing() // 结束心跳包
            //: self.liveMiniView.removeFromSuperview()
            self.liveMiniView.removeFromSuperview() // 移除小窗口
            //: self.liveRoomVC.popCurrentViewController()
            self.liveRoomVC.panoramicViewEmpty() // 将直播视图从栈中移除
            //: self.destoryTXLiveView()
            self.showAdd()
            // 释放单例
            //: TalkingLiveManager.destroy()
            PropertyMManageressPushListener.statuteNameTo()
            // 销毁弹幕
            //: TalkingDanmuManager.danmu_releaseAllResource()
            SizeDanmuManager.momentResource()
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (ViewLoadKingfisherCompatible.shared as? ViewLoadKingfisherCompatible)?.currency()
        }
    }

    /// 创建视频通话房间开始推流
    /// - Parameter livePushUrl: 推流地址
    //: func live_createRoomAndStartPush(livePushUrl: String) {
    func afterEqual(livePushUrl: String) {
        //: self.config.livePushUrl = livePushUrl
        self.config.livePushUrl = livePushUrl

        // 创建预览画面，开始直播（默认大屏）
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
        //: self.live_updateTXLivePreview(self.liveRoomVC.renderView, smallWindow: false)
        self.colouring(self.liveRoomVC.renderView, smallWindow: false)
        //: self.live_startPush(livePushUrl: livePushUrl)
        self.terminal(livePushUrl: livePushUrl)
    }

    /// 更新tx直播画面
    /// - Parameters:
    ///   - randerView: 渲染视图（默认为小窗口）
    ///   - smallWindow: 是否小窗口
    //: func live_updateTXLivePreview(_ randerView: UIView? = nil, smallWindow: Bool) {
    func colouring(_ randerView: UIView? = nil, smallWindow: Bool) {
        //: if randerView == nil {
        if randerView == nil {
            //: self.renderLiveView = self.liveMiniView.renderView
            self.renderLiveView = self.liveMiniView.renderView
            //: } else {
        } else {
            //: self.renderLiveView = randerView
            self.renderLiveView = randerView
        }

        //: self.liveMiniView.isHidden = !smallWindow
        self.liveMiniView.isHidden = !smallWindow
        //: self.config.isSmallMode = smallWindow
        self.config.isSmallMode = smallWindow
        // 清除小窗口未读消息标识
        //: if self.config.isSmallMode {
        if self.config.isSmallMode {
            //: updateUnredMessageCount(clear: true)
            constraintAction(clear: true)
        }
        //: startTXLivePreview(smallWindow: smallWindow)
        buildWindow(smallWindow: smallWindow)
    }

    /// 前后摄像头切换
    /// - Parameter front: 是否前置
    //: func switchTRTCCamer(front: Bool) {
    func libraryNext(front: Bool) {
        //: guard self.config.frontCamera != front else { return }
        guard self.config.frontCamera != front else { return }
        //: self.config.frontCamera = front
        self.config.frontCamera = front

        //: guard SenseTime_Use == true else {
        guard a_keyPostText == true else {
            //: livePusher.switchCamera()
            livePusher.switchCamera()
            //: return
            return
        }

        //: self.localPreviewView?.switchTRTCCamer(isFront: front)
        self.localPreviewView?.galleryPrice(isFront: front)
    }
}

// MARK: - 通知事件

//: extension TalkingLiveManager {
extension PropertyMManageressPushListener {
    /// 添加通知监听
    //: private func addNotifications() {
    private func heatUp() {
        // 监听是否捕获到人脸
        //: if SenseTime_Use == true {
        if a_keyPostText == true {
            //: NotificationCenter.default.addObserver(self,
            NotificationCenter.default.addObserver(self,
                                                   //: selector: #selector(catchFaceResultNotification(notification:)),
                                                   selector: #selector(catchPagePullUpShort(notification:)),
                                                   //: name: NSNotification.Name(rawValue: "FaceActionEvent_Interval_1_second"),
                                                   name: NSNotification.Name(rawValue: String(bytes: str_backgroundText.reversed(), encoding: .utf8)!),
                                                   //: object: nil)
                                                   object: nil)
        }

        // 监听应用将要销毁
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appWillTerminate),
                                               selector: #selector(streetSmart),
                                               //: name: UIApplication.willTerminateNotification,
                                               name: UIApplication.willTerminateNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// 程序销毁时调用停播接口
    //: @objc private func appWillTerminate() {
    @objc private func streetSmart() {
        //: guard self.isLive == true else { return }
        guard self.isLive == true else { return }
        //: TalkingLiveManager.req_liveStop(type: 1)
        PropertyMManageressPushListener.toSatisfy(type: 1)
    }
}

// MARK: - 未读消息提醒标识

//: extension TalkingLiveManager {
extension PropertyMManageressPushListener {
    /// 更新未读消息数量
    /// - Parameter clear: 是否清空
    //: func updateUnredMessageCount(clear: Bool = false) {
    func constraintAction(clear: Bool = false) {
        //: guard self.config.isSmallMode else { return }
        guard self.config.isSmallMode else { return }
        //: if clear {
        if clear {
            //: self.liveMiniView.msgCount = 0
            self.liveMiniView.msgCount = 0
            //: } else {
        } else {
            //: self.liveMiniView.msgCount += 1
            self.liveMiniView.msgCount += 1
        }
    }
}

// MARK: - 商汤人脸检测

//: extension TalkingLiveManager {
extension PropertyMManageressPushListener {
    /// 商汤美颜是否捕获到人脸通知（间隔1秒）
    //: @objc private func catchFaceResultNotification(notification: NSNotification) {
    @objc private func catchPagePullUpShort(notification: NSNotification) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard self.isLive == true else { return }
            guard self.isLive == true else { return }
            //: let userInfo = notification.userInfo as! [String: AnyObject]
            let userInfo = notification.userInfo as! [String: AnyObject]
            //: let hasFace = (userInfo["hasFace"] as! NSNumber).description.boolValue
            let hasFace = (userInfo[(String(str_effectName.prefix(7)))] as! NSNumber).description.boolValue
            //: if hasFace == true {
            if hasFace == true {
                //: self.liveMiniView.noFaceTime = 0
                self.liveMiniView.noFaceTime = 0
                //: self.liveRoomVC.topView.noFaceTime = 0
                self.liveRoomVC.topView.noFaceTime = 0
                //: } else {
            } else {
                //: self.liveMiniView.noFaceTime += 1
                self.liveMiniView.noFaceTime += 1
                //: self.liveRoomVC.topView.noFaceTime += 1
                self.liveRoomVC.topView.noFaceTime += 1
            }
            // 连续X秒无人脸出现直接下播
            //: if self.liveMiniView.noFaceTime == MAX_NOFACETIME {
            if self.liveMiniView.noFaceTime == a_screenContent {
                //: self.interval_noFace()
                self.groupFace()
            }
            // 开启超时检测（防止直播时长时间后台、锁屏）
            //: self.interval_cancelPreviousPerformRequest()
            self.showGiftRequest()
            //: self.interval_startPerformRequest()
            self.pushRequest()
        }
    }

    /// 开启超时检测（防止直播时长时间后台、锁屏）
    //: private func interval_startPerformRequest() {
    private func pushRequest() {
        //: self.perform(#selector(interval_noFace), with: nil, afterDelay: 30)
        self.perform(#selector(groupFace), with: nil, afterDelay: 30)
    }

    /// 取消超时检测
    //: private func interval_cancelPreviousPerformRequest() {
    private func showGiftRequest() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: #selector(interval_noFace),
                                               selector: #selector(groupFace),
                                               //: object: nil)
                                               object: nil)
    }

    /// 未检测到人脸超过30秒
    //: @objc private func interval_noFace() {
    @objc private func groupFace() {
        //: guard self.isLive == true else { return }
        guard self.isLive == true else { return }
        //: TalkingLiveManager.req_liveStop(type: 2)
        PropertyMManageressPushListener.toSatisfy(type: 2)
        //: self.live_releaseAllResource()
        self.handleDown()
        //: self.noFaceAlert.show()
        self.noFaceAlert.shack()
    }
}

// MARK: - TX直播

//: extension TalkingLiveManager {
extension PropertyMManageressPushListener {
    /// tx本地预览视频画面
    /// - Parameter smallWindow: 是否自己的画面在小窗口
    //: private func startTXLivePreview(smallWindow: Bool) {
    private func buildWindow(smallWindow: Bool) {
        //: guard SenseTime_Use == true else {
        guard a_keyPostText == true else {
            //: let beautyManger = livePusher.getBeautyManager()
            let beautyManger = livePusher.getBeautyManager()
            //: beautyManger?.setBeautyStyle(.nature)
            beautyManger?.setBeautyStyle(.nature)
            //: beautyManger?.setBeautyLevel(6)
            beautyManger?.setBeautyLevel(6)

            //: livePusher.startPreview(self.renderLiveView)
            livePusher.startPreview(self.renderLiveView)
            //: return
            return
        }

        //: if self.localPreviewView == nil {
        if self.localPreviewView == nil {
            //: self.localPreviewView = TalkingTRTCVideoView()
            self.localPreviewView = AfterwardReactiveCompatible()
        }
        //: self.localPreviewView?.startPreView(isSmallWindow: smallWindow, livePusher: livePusher)
        self.localPreviewView?.viewClick(isSmallWindow: smallWindow, livePusher: livePusher)
        //: if self.localPreviewView?.superview != self.renderLiveView {
        if self.localPreviewView?.superview != self.renderLiveView {
            //: self.localPreviewView?.removeFromSuperview()
            self.localPreviewView?.removeFromSuperview()
            //: self.renderLiveView?.addSubview(self.localPreviewView!)
            self.renderLiveView?.addSubview(self.localPreviewView!)
            //: self.localPreviewView?.snp.makeConstraints({ make in
            self.localPreviewView?.snp.makeConstraints { make in
                //: make.edges.equalToSuperview()
                make.edges.equalToSuperview()
                //: })
            }
        }
    }

    /// 开始直播推流
    /// - Parameter livePushUrl: 推流地址
    //: private func live_startPush(livePushUrl: String) {
    private func terminal(livePushUrl: String) {
        //: if SenseTime_Use {
        if a_keyPostText {
            //: } else {
        } else {
            //: let beautyManger = livePusher.getBeautyManager()
            let beautyManger = livePusher.getBeautyManager()
            //: beautyManger?.setBeautyStyle(.nature)
            beautyManger?.setBeautyStyle(.nature)
            //: beautyManger?.setBeautyLevel(6)
            beautyManger?.setBeautyLevel(6)
        }

        //: livePusher.delegate = self
        livePusher.delegate = self
        //: livePusher.setMute(self.config.isMute)
        livePusher.setMute(self.config.isMute)
        //: let result = livePusher.start(livePushUrl)
        let result = livePusher.start(livePushUrl)
        //: onEnterRoom(Int(result))
        fieldModel(Int(result))
    }

    /// 销毁tx直播
    //: private func destoryTXLiveView() {
    private func showAdd() {
        //: if SenseTime_Use {
        if a_keyPostText {
            //: self.localPreviewView?.stopPreView()
            self.localPreviewView?.pushOut()
            //: } else {
        } else {
            //: self.livePusher.stopPreview()
            self.livePusher.stopPreview()
        }

        //: self.localPreviewView?.removeFromSuperview()
        self.localPreviewView?.removeFromSuperview()
        //: self.localPreviewView = nil
        self.localPreviewView = nil

        //: self.livePusher.stop()
        self.livePusher.stop()
    }

    /// 进入直播间，调用接口
    //: func onEnterRoom(_ result: Int) {
    func fieldModel(_ result: Int) {
        //: guard result >= 0 else {
        guard result >= 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Opening failed".localized)
            self.episode(showMsg: (String(str_blockName.prefix(6)) + "g fail" + String(str_arrayName)).localized)
            //: self.live_releaseAllResource()
            self.handleDown()
            //: return
            return
        }

        // 加入房间成功，调用开播接口
        //: TalkingLiveManager.req_liveStart { succeed, result, errorModel in
        PropertyMManageressPushListener.dismissCapture { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.live_releaseAllResource()
                self.handleDown()
                //: return
                return
            }
            //: if let model = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) {
            if let model = AtModelType.deserialize(from: result as? Dictionary) {
                //: self.liveRoomModel = model
                self.liveRoomModel = model
            }
            // 加入弹幕
            //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.liveRoomModel.chatGroupId, announcementMsg: self.liveRoomModel.notification)
            SizeDanmuManager.saveSelect(groupId: self.liveRoomModel.chatGroupId, announcementMsg: self.liveRoomModel.notification)
            // 开播成功
            //: self.isLive = true
            self.isLive = true
            //: self.liveMiniView.refreshMiniView()
            self.liveMiniView.equalOf()
            //: self.liveRoomVC.refreshLiveRoomView()
            self.liveRoomVC.equalBegin()
            //: TalkingSocketManager.shared.startLivePing()
            SocketReactiveCompatible.shared.showCreate()
            //: self.addNotifications()
            self.heatUp()
            // 销毁上传busy状态定时器
            //: (TalkingApplication.shared as! TalkingApplication).destroyTimer()
            (ViewLoadKingfisherCompatible.shared as? ViewLoadKingfisherCompatible)?.donation()
        }
    }
}

// MARK: - TXLivePushListener

//: extension TalkingLiveManager: TXLivePushListener {
extension PropertyMManageressPushListener: TXLivePushListener {
    //: func onPushEvent(_ evtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPushEvent(_ evtID: Int32, withParam _: [AnyHashable: Any]!) {
        //: UploadLogTool.writeLog(msg: "LIVE 状态码：\(evtID).")
        TitleMediumLogTool.commitMedium(msg: (str_makeSizeValue.uppercased() + str_labLimitData) + "\(evtID).")
        //: if evtID == PUSH_WARNING_NET_BUSY.rawValue {
        if evtID == PUSH_WARNING_NET_BUSY.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Network busy!".localized)
            self.episode(showMsg: (String(str_jumpData.prefix(3)) + String(str_textData)).localized)

            //: } else if evtID == PUSH_ERR_OPEN_CAMERA_FAIL.rawValue ||
        } else if evtID == PUSH_ERR_OPEN_CAMERA_FAIL.rawValue ||
            //: evtID == PUSH_ERR_OPEN_MIC_FAIL.rawValue ||
            evtID == PUSH_ERR_OPEN_MIC_FAIL.rawValue ||
            //: evtID == PUSH_ERR_VIDEO_ENCODE_FAIL.rawValue ||
            evtID == PUSH_ERR_VIDEO_ENCODE_FAIL.rawValue ||
            //: evtID == PUSH_ERR_AUDIO_ENCODE_FAIL.rawValue ||
            evtID == PUSH_ERR_AUDIO_ENCODE_FAIL.rawValue ||
            //: evtID == PUSH_ERR_UNSUPPORTED_RESOLUTION.rawValue ||
            evtID == PUSH_ERR_UNSUPPORTED_RESOLUTION.rawValue ||
            //: evtID == PUSH_ERR_UNSUPPORTED_SAMPLERATE.rawValue ||
            evtID == PUSH_ERR_UNSUPPORTED_SAMPLERATE.rawValue ||
            //: evtID == PUSH_ERR_NET_DISCONNECT.rawValue ||
            evtID == PUSH_ERR_NET_DISCONNECT.rawValue ||
            //: evtID == PUSH_ERR_AUDIO_SYSTEM_NOT_WORK.rawValue ||
            evtID == PUSH_ERR_AUDIO_SYSTEM_NOT_WORK.rawValue ||
            //: evtID == PUSH_ERR_INVALID_ADDRESS.rawValue ||
            evtID == PUSH_ERR_INVALID_ADDRESS.rawValue ||
            //: evtID == PUSH_ERR_CONNECT_SERVER_FAILED.rawValue ||
            evtID == PUSH_ERR_CONNECT_SERVER_FAILED.rawValue ||
            //: evtID == PUSH_ERR_NETWORK_UNAVAIABLE.rawValue ||
            evtID == PUSH_ERR_NETWORK_UNAVAIABLE.rawValue ||
            //: evtID == PUSH_ERR_SERVER_REFUSED.rawValue {
            evtID == PUSH_ERR_SERVER_REFUSED.rawValue
        {
            // 主播异常下播
            //: UploadLogTool.writeLog(msg: "LIVE 异常下播，evtID:\(evtID).")
            TitleMediumLogTool.commitMedium(msg: (String(str_markTitle) + String(str_insideValue) + String(str_activeName)) + "\(evtID).")
            //: self.func__showStatusBarErrorMsg(showMsg: "Live room exception".localized)
            self.episode(showMsg: (String(str_makeTargetName) + String(str_indexDataName)).localized)
            //: TalkingLiveManager.req_liveStop(type: 1)
            PropertyMManageressPushListener.toSatisfy(type: 1)
            //: live_releaseAllResource()
            handleDown()
            // 重新开播弹窗
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: let alert = TalkingLiveAlertView(frame: .zero, type: .turnOnLive)
                let alert = TitleAlertView(frame: .zero, type: .turnOnLive)
                //: alert.rightBlcok = {
                alert.rightBlcok = {
                    //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
                    PropertyMManageressPushListener.giftShared().frontCustomMake()
                }
                //: alert.show()
                alert.shack()
            }
        }
    }

    //: func onNetStatus(_ param: [AnyHashable: Any]!) {}
    func onNetStatus(_: [AnyHashable: Any]!) {}

    //: func onScreenCaptureStarted() {}
    func onScreenCaptureStarted() {}

    //: func onScreenCapturePaused(_ reason: Int32) {}
    func onScreenCapturePaused(_: Int32) {}

    //: func onScreenCaptureResumed(_ reason: Int32) {}
    func onScreenCaptureResumed(_: Int32) {}

    //: func onScreenCaptureStoped(_ reason: Int32) {}
    func onScreenCaptureStoped(_: Int32) {}
}
