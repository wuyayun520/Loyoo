
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let str_pickTitle:[Character] = ["P","H","P","S","E","S","S","I","D"]

/*: "UID" :*/
fileprivate let str_buttonValue:String = "Utitle"

/*: "Any" :*/
fileprivate let str_freeName:String = "height layer newAny"

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let str_pathAppText:[UInt8] = [0x55,0x73,0x65,0x72,0x42,0x61,0x73,0x69,0x63,0x49,0x6e,0x66,0x6f,0x53,0x65,0x74,0x74,0x69,0x6e,0x67,0x2f,0x75,0x73,0x65,0x72,0x54,0x61,0x67,0x2e,0x6a,0x73,0x6f,0x6e]

/*: "获取数据" :*/
fileprivate let str_imageContent:[Character] = ["\u{83b7}","\u{53d6}","数","据"]

/*: "json 解析失败" :*/
fileprivate let str_messageValue:String = "layerson"
fileprivate let str_clickData:[Character] = [" ","解","析","失","\u{8d25}"]

/*: "request_HasInit" :*/
fileprivate let str_norItemValue:[Character] = ["r","e","q","u","e","s","t","_","H","a"]
fileprivate let str_personalText:String = "sInitfloat white var to"

/*: "Reachable via WiFi" :*/
fileprivate let str_dataModelContent:String = "path gender menu video extensionReacha"
fileprivate let str_cardValue:String = "var type extension button centera WiFi"

/*: "Reachable via Cellular" :*/
fileprivate let str_blueData:String = "dismiss varReacha"
fileprivate let str_toValue:String = "efemale"
fileprivate let str_pointSizeTitle:[Character] = ["l","u","l","a","r"]

/*: "Network not reachable" :*/
fileprivate let str_callText:String = "Netwroom view thought"
fileprivate let str_beanContent:String = "super type label modelot r"

/*: "Not reachable" :*/
fileprivate let str_cameraName:String = "let stringNot rea"
fileprivate let str_upValue:String = "chabusere"

/*: "Unable to start notifier" :*/
fileprivate let str_documentEffectMakeValue:String = "formal selected model messageUnable"
fileprivate let str_indexCountFromValue:String = "siconaricon"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MeasurementAppManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class MeasurementAppManager: NSObject {
public class MeasurementAppManager: NSObject {
    //: @objc static public let share = MeasurementAppManager()
    @objc public static let share = MeasurementAppManager()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = LimitModelType() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = RadioactiveDatingHandyJSON() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = ConcertGoerInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = LabModelType() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: ValuePriorityTarget = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return LabCustomReflectable.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return LabCustomReflectable.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: AddrConstraintReactiveCompatible.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (String(str_pickTitle)) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: AddrConstraintReactiveCompatible.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == (str_buttonValue.replacingOccurrences(of: "title", with: "ID")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func upToDate() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = LimitModelType()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        a_timeNearbyData = (String(str_freeName.suffix(3))).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        a_sessionData = (String(str_freeName.suffix(3))).localized
    }
}

//: extension MeasurementAppManager {
extension MeasurementAppManager {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func toFirst(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(MeasurementAppManager.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            a_collectionName.set(MeasurementAppManager.share.loginUserMode.userID, forKey: a_askData)
            //: } else {
        } else {
            //: TalkingIMManager.shared.func__LogingOut()
            DateThen.shared.circulating()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            a_collectionName.removeObject(forKey: a_askData)
            //: func__cleanPrevLoginData()
            mediumDataChange()
//            AddrConstraintReactiveCompatible.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            GestureReactiveCompatible.share.toGiftColor(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func loadBy() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = a_collectionName.dictionary(forKey: a_barPackageData)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<LabModelType>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: MeasurementAppManager.share.appConfigMode = configModel
            MeasurementAppManager.share.appConfigMode = configModel
        }
        //: if let status = MeasurementAppManager.share.reachability?.connection, status != .unavailable {
        if let status = MeasurementAppManager.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            upData()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(pathDetect(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func upData() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        TableReactiveCompatible.enumeration { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func loadOn() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = a_collectionName.dictionary(forKey: a_ageTitle)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<LimitModelType>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func mediumDataChange() {
        //: func__reSet()
        upToDate()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        a_collectionName.removeObject(forKey: a_ageTitle)
//        let oldServerUrl: String = AddrConstraintReactiveCompatible.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func titleData() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.beatification() + String(bytes: str_pathAppText, encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.exhibitCheck(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<RegularMeasurable>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: (String(str_imageContent)))
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (str_messageValue.replacingOccurrences(of: "layer", with: "j") + String(str_clickData)))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func imageWindow() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (String(str_norItemValue) + String(str_personalText.prefix(5))))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    TableReactiveCompatible.toOrSolicitation()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func fallTable() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(str_dataModelContent.suffix(6)) + "ble vi" + String(str_cardValue.suffix(6))))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (String(str_blueData.suffix(6)) + "ble via C" + str_toValue.replacingOccurrences(of: "female", with: "l") + String(str_pointSizeTitle)))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(str_callText.prefix(4)) + "ork n" + String(str_beanContent.suffix(4)) + "eachable"))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(str_cameraName.suffix(7)) + str_upValue.replacingOccurrences(of: "user", with: "l")))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(str_documentEffectMakeValue.suffix(6)) + " to " + str_indexCountFromValue.replacingOccurrences(of: "icon", with: "t") + " notifier"))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func pathDetect(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            upData()
        }
    }
}
