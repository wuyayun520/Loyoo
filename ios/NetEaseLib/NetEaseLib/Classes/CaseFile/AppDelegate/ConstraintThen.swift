
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let str_requestToAtData:[Character] = ["w"]
fileprivate let str_tableMakeVarValue:[Character] = ["w","w",".","a","p","p","l","e",".","c","o","m"]

/*: "后台播放音乐模式异常:  :*/
fileprivate let str_contentTitle:[Character] = ["后","台","\u{64ad}","放","音","乐","模","\u{5f0f}","异","\u{5e38}",":"," "]

/*: ." :*/
fileprivate let str_centerName:String = "actual"

/*: "click_id" :*/
fileprivate let str_labelTipName:String = "giftic"

/*: "lkme.cc" :*/
fileprivate let str_upData:[Character] = ["l","k","m","e",".","c","c"]

/*: "key_uid" :*/
fileprivate let str_cancelData:[Character] = ["k","e","y","_","u","i","d"]

/*: "Reachable via WiFi" :*/
fileprivate let str_backValue:String = "Reachself gift name"
fileprivate let str_listName:[Character] = ["i","a"," ","W","i","F","i"]

/*: "Reachable via Cellular" :*/
fileprivate let str_applicationValue:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","C","e","l","l","u","l","a"]
fileprivate let str_valueTitle:[Character] = ["r"]

/*: "Current network unavailable" :*/
fileprivate let str_textTitle:String = "color to dataCurren"
fileprivate let str_rawTitle:String = "twlabel"
fileprivate let str_fullUserName:[Character] = ["k"," "]
fileprivate let str_infoColorTitle:String = "uncontentai"

/*: "Network none" :*/
fileprivate let str_managerValue:[Character] = ["N","e","t","w","o"]
fileprivate let str_allNameText:String = "rk nonegesture lab label return"

/*: "call_response_bgm" :*/
fileprivate let str_titleValue:String = "toll"
fileprivate let str_showTitle:String = "down self hiddennse_"
fileprivate let str_randomText:[Character] = ["b","g","m"]

/*: "Error playing BMG audio:  :*/
fileprivate let str_addValue:String = "self with let withError "
fileprivate let str_textModelTitle:String = "lab guard layer string leting B"
fileprivate let str_equalMessageName:String = "re frameio: "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConstraintThen.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import AVFAudio
import AVFAudio
//: import FirebaseCrashlytics
import FirebaseCrashlytics
//: import UIKit
import UIKit
//: import WebKit
import WebKit

//: public class AppDelegateHelper: NSObject {
public class ConstraintThen: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(str_requestToAtData) + String(str_tableMakeVarValue)))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: static let shared = AppDelegateHelper()
    static let shared = ConstraintThen()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        self.window?.rootViewController = NormalWaitingController()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(imageController),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: a_tableDetailCallData,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension ConstraintThen {
    //: class func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    class func adapterWindow(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        ConstraintThen.shared.window = window
        //: AppDelegateHelper.shared.initLinkedME(launchOptions: launchOptions)
        ConstraintThen.shared.equalDismiss(launchOptions: launchOptions)
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        AddrConstraintReactiveCompatible.share.applicationLoadImage()
        //: AppDelegateHelper.shared.installNotificationObservers()
        ConstraintThen.shared.nameFrom()
        //: AppDelegateHelper.shared.initGetCache()
        ConstraintThen.shared.pushCache()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        AddrConstraintReactiveCompatible.share.timeServer()
        //: AppDelegateHelper.shared.currApplication = application
        ConstraintThen.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "后台播放音乐模式异常: \(error).")
            TitleMediumLogTool.commitMedium(msg: (String(str_contentTitle)) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func rangeTotalerval(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        ConstraintThen.shared.sharedTask()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func customer(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        ConstraintThen.shared.timeOn()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        ConstraintThen.shared.hiddenPathTask()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func statuteText(_ application: UIApplication) {
        //: let unreadMsgCount = MeasurementAppManager.share.unreadMessageNum
        let unreadMsgCount = MeasurementAppManager.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func utilizationInThreat(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func startGift(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        ConstraintThen.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - openURL

//: public extension AppDelegateHelper {
public extension ConstraintThen {
    //: class func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
    class func lever(_: UIApplication, open url: URL, options _: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: if url.absoluteString.components(separatedBy: "click_id").count > 1 {
        if url.absoluteString.components(separatedBy: (str_labelTipName.replacingOccurrences(of: "gift", with: "cl") + "k_id")).count > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().handleDeepLink(url)
            return LinkedME.getInstance().handleDeepLink(url)
        }

        //: return true
        return true
    }

    // URI Scheme 实现深度链接技术
    //: class func application(app: UIApplication, openURL url: NSURL, options: [String: AnyObject]) -> Bool {
    class func searchedOptions(app _: UIApplication, openURL url: NSURL, options _: [String: AnyObject]) -> Bool {
        // 判断是否是通过LinkedME的UrlScheme唤起App
        //: if (url.absoluteString?.components(separatedBy: "click_id").count)! > 1 {
        if (url.absoluteString?.components(separatedBy: (str_labelTipName.replacingOccurrences(of: "gift", with: "cl") + "k_id")).count)! > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().handleDeepLink(url as URL)
            return LinkedME.getInstance().handleDeepLink(url as URL)
        }
        //: return true
        return true
    }

    // Universal Links 通用链接实现深度链接技术
    //: class func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
    class func golfer(_: UIApplication, continue userActivity: NSUserActivity, restorationHandler _: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        // 判断是否是通过LinkedME的Universal Links唤起App
        //: if (userActivity.webpageURL?.absoluteString.components(separatedBy: "lkme.cc").count)! > 1 {
        if (userActivity.webpageURL?.absoluteString.components(separatedBy: (String(str_upData))).count)! > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().continue(userActivity)
            return LinkedME.getInstance().continue(userActivity)
        }
        //: return true
        return true
    }

    //: class func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
    class func exerciseInAnnotation(_: UIApplication, open url: URL, sourceApplication _: String?, annotation _: Any) -> Bool {
        //: if url.absoluteString.components(separatedBy: "click_id").count > 1 {
        if url.absoluteString.components(separatedBy: (str_labelTipName.replacingOccurrences(of: "gift", with: "cl") + "k_id")).count > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().handleDeepLink(url)
            return LinkedME.getInstance().handleDeepLink(url)
        }
        //: return true
        return true
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension ConstraintThen {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func pushCache() {
        //: MeasurementAppManager.share.func__checkAppConfigModeNeedUpdate()
        MeasurementAppManager.share.loadBy()
        //: MeasurementAppManager.share.func__loadCurrentLoginInfoData()
        MeasurementAppManager.share.loadOn()
    }

    //: @objc private func initRootController() {
    @objc private func imageController() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            ConstraintThen.shared.instanceFromSetup(currApplication!)
        }
        //: MeasurementAppManager.share.func__listenRequestHasInit()
        MeasurementAppManager.share.imageWindow()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (a_collectionName.string(forKey: a_askData)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            indexStar()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(MeasurementAppManager.share.loginUid)
            Crashlytics.crashlytics().setUserID(MeasurementAppManager.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(MeasurementAppManager.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(MeasurementAppManager.share.loginUid, forKey: (String(str_cancelData)))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            MediaTransactionObserver.shared.lock()
            //: MeasurementAppManager.share.request_HasInit = false
            MeasurementAppManager.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            GestureReactiveCompatible.share.toGiftColor(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            TableReactiveCompatible.funcDismissMovieCamera()
            //: } else {
        } else {
            //: if MeasurementAppManager.share.loginSessionId.count > 0 {
            if MeasurementAppManager.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                LoginReactiveCompatible.index { _ in
                }
                //: MeasurementAppManager.share.func__cleanPrevLoginData()
                MeasurementAppManager.share.mediumDataChange()
            }
            //: func__setupLoginViewController()
            thanSize()
            //: MeasurementAppManager.share.request_HasInit = true
            MeasurementAppManager.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func indexStar() {
        //: func__setupRootViewController(type: .Taking)
        characteristic(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func thanSize() {
        //: func__setupRootViewController(type: .Login)
        characteristic(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func characteristic(type: ErrorViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            giftKind(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.giftKind(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func giftKind(type: ErrorViewType) {
        //: if checkRootTarBarController(type: type) {
        if about(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = LimitHasDelegate(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func about(type: ErrorViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is LimitHasDelegate {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? LimitHasDelegate {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension ConstraintThen {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func nameFrom() {
        // 网络状态监听
        //: MeasurementAppManager.share.startNotifierNetwork()
        MeasurementAppManager.share.fallTable()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(reachability(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(a_bottomData)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                UtiliserManager.shared.pastStatusDatabase()
                //: self.func__setupTakingViewController()
                self.indexStar()
                //: MeasurementAppManager.share.func__UserLoginChanged(isLogin: true)
                MeasurementAppManager.share.toFirst(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(MeasurementAppManager.share.loginUid)
                Crashlytics.crashlytics().setUserID(MeasurementAppManager.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(MeasurementAppManager.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(MeasurementAppManager.share.loginUid, forKey: (String(str_cancelData)))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                MediaTransactionObserver.shared.lock()
                //: if !MeasurementAppManager.share.request_HasInit {
                if !MeasurementAppManager.share.request_HasInit {
                    //: MeasurementAppManager.share.request_HasInit = true
                    MeasurementAppManager.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                TableReactiveCompatible.funcDismissMovieCamera()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(a_senseContent)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: MeasurementAppManager.share.func__UserLoginChanged(isLogin: false)
                MeasurementAppManager.share.toFirst(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                SocketReactiveCompatible.shared.designDismiss(userLoginOut: true)
                //: self.func__setupLoginViewController()
                self.thanSize()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (ViewLoadKingfisherCompatible.shared as? ViewLoadKingfisherCompatible)?.afterSkip()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(a_likeData)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                TableReactiveCompatible.bring { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: a_limitSuccessVideoValue, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func reachability(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(str_backValue.prefix(5)) + "able v" + String(str_listName)))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(str_applicationValue) + String(str_valueTitle)))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            episode(showMsg: (String(str_textTitle.suffix(6)) + "t ne" + str_rawTitle.replacingOccurrences(of: "label", with: "or") + String(str_fullUserName) + str_infoColorTitle.replacingOccurrences(of: "content", with: "av") + "lable").localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(str_managerValue) + String(str_allNameText.prefix(7))))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension ConstraintThen {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func sharedTask() {
        //: checkAndEndBackgroundTask()
        hiddenPathTask()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.hiddenPathTask()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func hiddenPathTask() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func upDownBgm() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = MonochromeThen.default.kindPlus(name: (str_titleValue.replacingOccurrences(of: "to", with: "ca") + "_respo" + String(str_showTitle.suffix(4)) + String(str_randomText)))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            explosiveDetectionSystemEnterAt()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(str_addValue.suffix(6)) + "play" + String(str_textModelTitle.suffix(5)) + "MG aud" + String(str_equalMessageName.suffix(4))) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func timeOn() {
        //: stopSystemVibrate()
        explosiveTraceDetection()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func explosiveDetectionSystemEnterAt() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func explosiveTraceDetection() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
