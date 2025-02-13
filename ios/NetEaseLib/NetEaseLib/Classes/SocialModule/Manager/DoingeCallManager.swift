
//: Declare String Begin

/*: "0,0" :*/
fileprivate let str_requestValue:[Character] = ["0",",","0"]

/*: "dist/loungePlus" :*/
fileprivate let str_deedData:String = "add voicedist/lo"
fileprivate let str_textDataValue:String = "ustartg"
fileprivate let str_shareContent:String = "be path make phone myePlus"

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let str_equalData:[Character] = ["m","f","/","f","r","e","e","C","a","l","l","/","g","e","t","V","i"]
fileprivate let str_angleInputData:String = "deoInfoequal direction"

/*: "fromType" :*/
fileprivate let str_appLeadingName:[UInt8] = [0x66,0x72,0x6f,0x6d,0x54,0x79,0x70,0x65]

/*: "videoId" :*/
fileprivate let str_labTitle:[Character] = ["v","i","d","e","o","I","d"]

/*: "uid" :*/
fileprivate let str_onlineTitle:[Character] = ["u","i","d"]

/*: "type" :*/
fileprivate let str_rawTitle:String = "TYPE"

/*: "logId" :*/
fileprivate let str_allText:String = "right selflogId"

/*: "duration" :*/
fileprivate let str_wrapValue:String = "DURATIO"
fileprivate let str_backShadowName:String = "lock"

/*: "stopUid" :*/
fileprivate let str_requestTitle:String = "succeed"
fileprivate let str_sizeVideoData:[Character] = ["t","o","p","U","i","d"]

/*: "mf/freeCall/operation" :*/
fileprivate let str_rawModeData:String = "mf/freview cell if view jump"
fileprivate let str_frameConvertValue:[Character] = ["/","o"]
fileprivate let str_hiddenText:[Character] = ["p","e","r","a","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingeCallManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗管理
//: class TalkingVideoInitivCallManager: NSObject {
class DoingeCallManager: NSObject {
    //: private var videoCallTimer: Timer?
    private var videoCallTimer: Timer? /// timer
    //: var videoCallModel = TalkingVideoInitivCallModel.init()
    var videoCallModel = TableMeasurable()
    //: private var countDown = 0
    private var countDown = 0 /// x秒后显示主动拨打弹窗
    //: private var intervalDown = 0
    private var intervalDown = 0 /// 间隔时间x秒
    //: private var timer_Duration: TimeInterval = 0
    private var timer_Duration: TimeInterval = 0 /// 时间间隔 初次3s，后续90s

    //: static let shared = TalkingVideoInitivCallManager()
    static let shared = DoingeCallManager()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_VideoCallTimer),
                                               selector: #selector(carhop),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: a_senseContent,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingVideoInitivCallManager {
extension DoingeCallManager {
    //: private func distroryNotif() {
    private func applicationNotif() {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func setObserver() {
    func cellShow() {
        //: guard MeasurementAppManager.share.loginUserMode.callPopupSetting != "0,0" else {
        guard MeasurementAppManager.share.loginUserMode.callPopupSetting != "0,0" else {
            //: distroryNotif()
            applicationNotif()
            //: return
            return
        }
        //: let arr = MeasurementAppManager.share.loginUserMode.callPopupSetting .split(separator: ",")
        let arr = MeasurementAppManager.share.loginUserMode.callPopupSetting.split(separator: ",")
        //: if arr.count > 1 {
        if arr.count > 1 {
            //: countDown = Int(arr[0]) ?? 0
            countDown = Int(arr[0]) ?? 0
            //: intervalDown = Int(arr[1]) ?? 0
            intervalDown = Int(arr[1]) ?? 0
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+Double(countDown)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(countDown)) {
            //: self.req_getVideoInfo()
            self.elementOf()
        }
        /// 充值成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(strike),
                                               //: name: APPLE_IAP_PAY_SUCCEED_NOTIFICATION,
                                               name: a_netData,
                                               //: object: nil)
                                               object: nil)
        /// 订阅成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(strike),
                                               //: name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION,
                                               name: a_imageTitle,
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启x秒倒计时
    //: func initVideoCallTimer() {
    func upTimer() {
        //: self.timer_Duration = TimeInterval(intervalDown)
        self.timer_Duration = TimeInterval(intervalDown)
        //: if videoCallTimer == nil {
        if videoCallTimer == nil {
            //: videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(req_getVideoInfo), userInfo: nil, repeats: true)
            videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(elementOf), userInfo: nil, repeats: true)
            //: RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
            RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
        }
    }

    //: private func videoCallTimerPopView() {
    private func callValue() {
        /// 当前显示半屏充值页或订阅页时，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if colorController()?.isKind(of: MForefrontViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = colorController() as! MForefrontViewController
            //: if vc.urlStr.contains(WebUrlType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains("dist/loungePlus") {
            if vc.urlStr.contains(BrandSubscriptType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains((String(str_deedData.suffix(7)) + str_textDataValue.replacingOccurrences(of: "start", with: "n") + String(str_shareContent.suffix(5)))) {
                //: return
                return
            }
        }
        /// 当前在随机匹配页，视频通话页，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingRandomVideoViewController.self) == true || currentViewController()?.isKind(of: TalkingVideoInitivCallVC.self) == true {
        if colorController()?.isKind(of: AtPartyDelegate.self) == true || colorController()?.isKind(of: MeasurementRecognizerDelegate.self) == true {
            //: return
            return
        }
        //: TalkingPopupWindowManager.shared.videoCallPopUpWindow()
        ToViewWindowManager.shared.straitAndNarrowWindow()
        //: stop_VideoCallTimer()
        carhop()
    }

    /// 停止
    //: @objc func stop_VideoCallTimer() {
    @objc func carhop() {
        //: if self.videoCallTimer != nil {
        if self.videoCallTimer != nil {
            //: self.videoCallTimer?.invalidate()
            self.videoCallTimer?.invalidate()
            //: self.videoCallTimer = nil
            self.videoCallTimer = nil
        }
    }

    ///  充值成功后，跳转到callTab页面
    //: @objc private func paySuccessTool() {
    @objc private func strike() {
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if colorController()?.isKind(of: MForefrontViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = colorController() as! MForefrontViewController
            //: if (vc.urlStr.contains(WebUrlType.RechargeHalfPage.rawValue) || vc.urlStr.contains(WebUrlType.SubscribeAlert.rawValue )) && vc.isRechargeOrSubscribeChangeMatch {
            if vc.urlStr.contains(BrandSubscriptType.RechargeHalfPage.rawValue) || vc.urlStr.contains(BrandSubscriptType.SubscribeAlert.rawValue), vc.isRechargeOrSubscribeChangeMatch {
                //: stop_VideoCallTimer()
                carhop()
                //: vc.dismiss(animated: true)
                vc.dismiss(animated: true)
//                tabberSelete()
            }
        }
    }
}

// MARK: - Load Data

//: extension TalkingVideoInitivCallManager {
extension DoingeCallManager {
    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func elementOf() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(str_equalData) + String(str_angleInputData.prefix(7)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "0"]
        reqModel.params = [String(bytes: str_appLeadingName, encoding: .utf8)!: "0"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            /// 用户正在通话中，需要开启x秒后再次请求
            //: if errorModel?.errorCode == 104 {
            if errorModel?.errorCode == 104 {
                //: self.initVideoCallTimer()
                self.upTimer()
                //: return
                return
            }
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.distroryNotif()
                self.applicationNotif()
                //: self.stop_VideoCallTimer()
                self.carhop()
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = TableMeasurable.deserialize(from: result as? Dictionary) {
                //: self.videoCallModel = model
                self.videoCallModel = model
            }
            /// 预加载
            //: let  player = TalkingVideoPlayerManager.init()
            let player = DatePlayListener()
            //: player.setMute(bEnable: true)
            player.pileEndowIcon(bEnable: true)
            //: player.playerWithUrlAndVideoView(url: self.videoCallModel.winVideoUrl, view: UIView.init())
            player.catScan(url: self.videoCallModel.winVideoUrl, view: UIView())

            //: self.videoCallTimerPopView()
            self.callValue()
        }
    }

    /** 接口记录用户是否接通或拒绝当前通话
     *  type :3 拒绝 1 接通 2 挂断
     *  duration 接通时长
     */
    //: func req_userOperation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
    func operation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["videoId"] = videoCallModel.videoId
        dict[(String(str_labTitle))] = videoCallModel.videoId
        //: dict["uid"] = videoCallModel.uid
        dict[(String(str_onlineTitle))] = videoCallModel.uid
        //: dict["type"] = type
        dict[(str_rawTitle.lowercased())] = type
        //: dict["logId"] = videoCallModel.logId
        dict[(String(str_allText.suffix(5)))] = videoCallModel.logId

        //: if duration > 0 {
        if duration > 0 {
            //: dict["duration"] = duration
            dict[(str_wrapValue.lowercased() + str_backShadowName.replacingOccurrences(of: "lock", with: "n"))] = duration
        }
        //: if stopUid.count > 0 {
        if stopUid.count > 0 {
            //: dict["stopUid"] = stopUid
            dict[(str_requestTitle.replacingOccurrences(of: "succeed", with: "s") + String(str_sizeVideoData))] = stopUid
        }

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/freeCall/operation"
        reqModel.requestPath = (String(str_rawModeData.prefix(6)) + "eCall" + String(str_frameConvertValue) + String(str_hiddenText))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
