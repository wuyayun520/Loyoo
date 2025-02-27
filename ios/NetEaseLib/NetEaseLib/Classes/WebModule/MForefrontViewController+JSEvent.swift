
//: Declare String Begin

/*: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION" :*/
fileprivate let str_topValue:[UInt8] = [0x57,0x45,0x42,0x56,0x49,0x45,0x57,0x5f,0x54,0x48,0x49,0x52,0x44,0x5f,0x52,0x45,0x46,0x52,0x45,0x53,0x48,0x43,0x4f,0x49,0x4e,0x5f,0x4e,0x4f,0x54,0x49,0x46,0x49,0x43,0x41,0x54,0x49,0x4f,0x4e]

/*: "goodsId" :*/
fileprivate let str_imageValue:[Character] = ["g","o","o","d","s","I","d"]

/*: "source" :*/
fileprivate let str_userContent:String = "sframeurc"
fileprivate let str_makeValue:[Character] = ["e"]

/*: "type" :*/
fileprivate let str_administratorValue:String = "mobileype"

/*: "title" :*/
fileprivate let str_voiceToolOfTitle:[Character] = ["t","i","t","l","e"]

/*: "url" :*/
fileprivate let str_toData:[Character] = ["u","r","l"]

/*: "money" :*/
fileprivate let str_equalValue:[Character] = ["m","o","n","e","y"]

/*: "show" :*/
fileprivate let str_colorValue:[Character] = ["s","h","o","w"]

/*: "target" :*/
fileprivate let str_toTitle:String = "textrget"

/*: "eventName" :*/
fileprivate let str_modelValue:String = "eventNaclear image name start"
fileprivate let str_scaleData:[Character] = ["m","e"]

/*: "jsonString" :*/
fileprivate let str_giftEqualPathTitle:String = "cancelon"
fileprivate let str_originValue:[Character] = ["g"]

/*: "coin" :*/
fileprivate let str_buttonValue:String = "ctextn"

/*: "uid" :*/
fileprivate let str_eventValue:String = "uishow"

/*: "未实现的js事件： :*/
fileprivate let str_cornerValue:String = "未实现的js事件var view"
fileprivate let str_sizeTargetData:String = "\u{ff1a}"

/*: "Retry After or Go to \"Feedback\" to contact us" :*/
fileprivate let str_pairData:[UInt8] = [0x52,0x65,0x74,0x72,0x79,0x20,0x41,0x66,0x74,0x65,0x72,0x20,0x6f,0x72,0x20,0x47,0x6f,0x20,0x74,0x6f,0x20,0x22,0x46,0x65,0x65,0x64,0x62,0x61,0x63,0x6b,0x22,0x20,0x74,0x6f,0x20,0x63,0x6f,0x6e,0x74,0x61,0x63,0x74,0x20,0x75,0x73]

/*: " apple支付充值失败： :*/
fileprivate let str_explainQuantityText:String = " apple\u{652f}"
fileprivate let str_giftValue:[Character] = ["\u{4ed8}","充","\u{503c}","\u{5931}","败","："]

/*: "payResultCallback();" :*/
fileprivate let str_myMakeLeftData:String = "for let make index colorpayResul"
fileprivate let str_changeValue:[Character] = ["t","C","a","l","l","b","a","c","k","(",")",";"]

/*: "USD" :*/
fileprivate let str_needName:[Character] = ["U","S","D"]

/*: "amount" :*/
fileprivate let str_priceWithValue:[UInt8] = [0x61,0x6d,0x6f,0x75,0x6e,0x74]

/*: "getSystemNotificationtStatus(true)" :*/
fileprivate let str_moreData:[UInt8] = [0x67,0x65,0x74,0x53,0x79,0x73,0x74,0x65,0x6d,0x4e,0x6f,0x74,0x69,0x66,0x69,0x63,0x61,0x74,0x69,0x6f,0x6e,0x74,0x53,0x74,0x61,0x74,0x75,0x73,0x28,0x74,0x72,0x75,0x65,0x29]

/*: "getSystemNotificationtStatus(false)" :*/
fileprivate let str_centerData:[UInt8] = [0x67,0x65,0x74,0x53,0x79,0x73,0x74,0x65,0x6d,0x4e,0x6f,0x74,0x69,0x66,0x69,0x63,0x61,0x74,0x69,0x6f,0x6e,0x74,0x53,0x74,0x61,0x74,0x75,0x73,0x28,0x66,0x61,0x6c,0x73,0x65,0x29]

/*: "mfBean" :*/
fileprivate let str_toLocationData:[UInt8] = [0x6d,0x66,0x42,0x65,0x61,0x6e]

/*: "%.2f" :*/
fileprivate let str_cellInfoData:[Character] = ["%",".","2","f"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MForefrontViewController+JSEvent.swift
//  AbroadTalking
//
//  Created by young on 2022/9/6.
//

//: import UIKit
import UIKit
//: import WebKit
import WebKit

// 通知三方H5刷新金币
//: public let WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION = NSNotification.Name(rawValue: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION")
public let a_noText = NSNotification.Name(rawValue: String(bytes: str_topValue, encoding: .utf8)!)

//: extension TalkingWebViewController {
extension MForefrontViewController {
    /// 处理JS事件
    /// - Parameters:
    ///   - message: 消息
    //: func HandleScriptMessage(_ message: WKScriptMessage) {
    func ofAt(_ message: WKScriptMessage) {
        //: let type = WebMethodType(rawValue: message.name)
        let type = DeleteBasicType(rawValue: message.name)
        //: let json = JSON(message.body)
        let json = JSON(message.body)
        //: switch type {
        switch type {
        //: case .MethodType_Exit:
        case .MethodType_Exit:
            //: self.func__closeAction(sender: nil)
            self.underEqual(sender: nil)

        //: case .MethodType_needLogin:
        case .MethodType_needLogin:
            //: needLogin()
            cryFor()

        //: case .MethodType_apPay:
        case .MethodType_apPay:
            //: applePay(productId: json["goodsId"].stringValue, source: json["source"].intValue, payType: .Pay)
            expendView(productId: json[(String(str_imageValue))].stringValue, source: json[(str_userContent.replacingOccurrences(of: "frame", with: "o") + String(str_makeValue))].intValue, payType: .Pay)

        //: case .MethodType_apPay_subscribe:
        case .MethodType_apPay_subscribe:
            //: if json["type"].stringValue == "6" {
            if json[(str_administratorValue.replacingOccurrences(of: "mobile", with: "t"))].stringValue == "6" {
                //: isVideoCallRechargeHalfPage = true
                isVideoCallRechargeHalfPage = true
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                a_okUseTopValue = a_routeErrorData
                //: } else if json["type"].stringValue == "7" { // 点击订阅弹窗的订阅按钮
            } else if json[(str_administratorValue.replacingOccurrences(of: "mobile", with: "t"))].stringValue == "7" { // 点击订阅弹窗的订阅按钮
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                a_okUseTopValue = a_routeErrorData
            }
            //: applePay_subscribe(type: json["type"].stringValue, productId: json["goodsId"].stringValue, payType: .Subscribe)
            imageType(type: json[(str_administratorValue.replacingOccurrences(of: "mobile", with: "t"))].stringValue, productId: json[(String(str_imageValue))].stringValue, payType: .Subscribe)

        //: case .MethodType_changeMenuButton:
        case .MethodType_changeMenuButton:
            //: changeRightMenuButton(title: json["title"].stringValue, url: json["url"].stringValue)
            deformationKey(title: json[(String(str_voiceToolOfTitle))].stringValue, url: json[(String(str_toData))].stringValue)

        //: case .MethodType_refreshCoin:
        case .MethodType_refreshCoin:
            //: refreshCoin(price: Double(json["money"].stringValue) ?? 0)
            conversionPrice(price: Double(json[(String(str_equalValue))].stringValue) ?? 0)

        //: case .MethodType_appearsOnGiftBroadcast:
        case .MethodType_appearsOnGiftBroadcast:
            //: appearsOnGiftBroadcast(show: json["show"].boolValue)
            someApp(show: json[(String(str_colorValue))].boolValue)

        //: case.MethodType_ToUrl:
        case .MethodType_ToUrl:
            //: openTourl(url: json.rawString() ?? "")
            pullUpUrl(url: json.rawString() ?? "")

        //: case .MethodType_customerService:
        case .MethodType_customerService:
            //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: ImageMacroDefine.getCustomerServiceID())
            LimitPushManager.share.sharedMode(chatID: ImageMacroDefine.executeByTitle())

        //: case.setRightMenuButton:
        case .setRightMenuButton:
            //: break
            break

        //: case .MethodType_taskCenter:
        case .MethodType_taskCenter:
            //: let target = json["target"].intValue
            let target = json[(str_toTitle.replacingOccurrences(of: "text", with: "ta"))].intValue
            //: self.reloadInputViews()
            self.reloadInputViews()
            //: switch target {
            switch target {
            //: case 1:
            case 1: /// 签到领金币页
                //: LimitPushManager.share.func__pushToSubscribePageWebVC()
                LimitPushManager.share.birth()

            //: case 2:
            case 2: /// 个人信息编辑页面
                //: let vc = TalkingEditProfilesVC.init()
                let vc = TableModelViewController()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)

            //: case 3:
            case 3: /// 真人认证页面
                //: verifyBtnClick()
                countroduce()
            //: case 4:
            case 4: /// 发布动态页面
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                mainAdd(type: AtScalar.Moment.rawValue)
                /// 防止动态首页广播还没创建
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: FREEBTN_UPLOAD_POST_NOTIFICATION,
                    NotificationCenter.default.post(name: a_numberKeyTitle,
                                                    //: object: nil,
                                                    object: nil,
                                                    //: userInfo: nil)
                                                    userInfo: nil)
                }
            //: case 5:
            case 5: /// 我的页面
                //: tabberSelete(type: TabBarItemType.Account.rawValue)
                mainAdd(type: AtScalar.Account.rawValue)
            //: case 6:
            case 6: /// 首页
                //: tabberSelete(type: TabBarItemType.Social.rawValue)
                mainAdd(type: AtScalar.Social.rawValue)
            //: case 7:
            case 7: /// 消息列表页
                //: tabberSelete(type: TabBarItemType.Message.rawValue)
                mainAdd(type: AtScalar.Message.rawValue)
            //: case 8:
            case 8: /// Greet setting页
                //: let vc = TalkingAutoGreetSettingVC()
                let vc = MolarConcentrationDataSource()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            //: case 9:
            case 9: /// 动态列表页
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                mainAdd(type: AtScalar.Moment.rawValue)
            //: default:
            default:
                //: break
                break
            }
        //: case .MethodType_systemNotification:
        case .MethodType_systemNotification:
            //: let type = json["type"].intValue
            let type = json[(str_administratorValue.replacingOccurrences(of: "mobile", with: "t"))].intValue
            //: changeNotifaStatus(type: type)
            matchStatus(type: type)

        //: case .MethodType_refreshPoint:
        case .MethodType_refreshPoint:
            //: refreshPoint()
            recording()

        //: case .MethodType_onEvent:
        case .MethodType_onEvent:
            //: reportEvent(eventName: json["eventName"].stringValue, jsonStr: json["jsonString"].stringValue)
            charm(eventName: json[(String(str_modelValue.prefix(7)) + String(str_scaleData))].stringValue, jsonStr: json[(str_giftEqualPathTitle.replacingOccurrences(of: "cancel", with: "js") + "Strin" + String(str_originValue))].stringValue)

        //: case .MethodType_refreshCoinAll:
        case .MethodType_refreshCoinAll:
            //: req_refreshCoinAll(coin: json["coin"].stringValue)
            engageCoin(coin: json[(str_buttonValue.replacingOccurrences(of: "text", with: "oi"))].stringValue)

        //: case .MethodType_refreshPackage:
        case .MethodType_refreshPackage:
            //: req_refreshPackage()
            cypher()

        //: case .MethodType_vibrate:
        case .MethodType_vibrate:
            //: phoneVibrate()
            boundaryLine()

        //: case .MethodType_goFreeVideo:
        case .MethodType_goFreeVideo:
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            TableReactiveCompatible.bring { _, _, _ in
                //: if MeasurementAppManager.share.loginUserMode.jumpType == 1 {
                if MeasurementAppManager.share.loginUserMode.jumpType == 1 {
                    //: self.func__closeAction(sender: nil)
                    self.underEqual(sender: nil)
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        //: LimitPushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                        LimitPushManager.share.hitOrMiss(isBeginRand: false)
                    }
                }
            }

        //: case .MethodType_goMessageDetail:
        case .MethodType_goMessageDetail:
            //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: json["uid"].stringValue)
            LimitPushManager.share.sharedMode(chatID: json[(str_eventValue.replacingOccurrences(of: "show", with: "d"))].stringValue)

        //: case .MethodType_goPersonInfo:
        case .MethodType_goPersonInfo:
            //: LimitPushManager.share.func__pushToUserDetailVC(uid: json["uid"].stringValue)
            LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: json[(str_eventValue.replacingOccurrences(of: "show", with: "d"))].stringValue)

        //: case .MethodType_showRechargeDialog:
        case .MethodType_showRechargeDialog:
            //: LimitPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
            LimitPushManager.share.pathSub(webViewType: .RechargeHalfPage)

        //: case .OpenRetainPopup:
        case .OpenRetainPopup:
            //: self.func__closeAction(sender: nil)
            self.underEqual(sender: nil)
        //: case .openBrowserWithUrl:
        case .openBrowserWithUrl:
            //: openToOutUrl(url: json.rawString() ?? "")
            makeOpen(url: json.rawString() ?? "")
        //: case .none:
        case .none:
            //: printLog(message: "未实现的js事件：\(message.name)")
            printLog(message: (String(str_cornerValue.prefix(8)) + str_sizeTargetData) + "\(message.name)")
        }
    }

    // MARK: - Event

    /// 苹果支付订阅
    /// - Parameters:
    ///   - type: 订阅入口；1：首页banner，2：全屏充值页，3：半屏充值页，4：领取金币弹窗
    ///   - productId: 商品Id
    ///   - payType: 支付类型
    //: private func applePay_subscribe(type: String, productId: String, payType: ApplePayType) {
    private func imageType(type _: String, productId: String, payType: CustomType) {
        //: applePay(productId: productId, payType: payType)
        expendView(productId: productId, payType: payType)
    }

    /// 苹果支付
    /// - Parameters:
    ///   - productId: productId: 商品Id
    ///   - source: 充值来源
    //: private func applePay(productId: String, source: Int = -1, payType: ApplePayType) {
    private func expendView(productId: String, source: Int = -1, payType: CustomType) {
        //: if MeasurementAppManager.share.loginUid.isEmptyString {
        if MeasurementAppManager.share.loginUid.isEmptyString {
            //: return
            return
        }

        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: var index = isVideoCallRechargeHalfPage ? 1: 0
        var index = isVideoCallRechargeHalfPage ? 1 : 0
        //: if source != -1 {
        if source != -1 {
            //: index = source
            index = source
        }
        //: AppleIAPManager.shared.iap_startPurchase(productId: productId, payType: payType, source: index) { type, reportMoney in
        MediaTransactionObserver.shared.engineering(productId: productId, payType: payType, source: index) { type, reportMoney in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: DispatchQueue.main.async { [self] in
            DispatchQueue.main.async { [self] in
                //: switch type {
                switch type {
                //: case .verityFail:
                case .verityFail:
                    //: ProgressHUD.toast( "Retry After or Go to \"Feedback\" to contact us".localized)
                    SizeHungReactiveCompatible.toToast(String(bytes: str_pairData, encoding: .utf8)!.localized)
                //: case .veritySucceed:
                case .veritySucceed:
                    //: appleIAPVeritySucceed(price: reportMoney)
                    titleAt(price: reportMoney)
                //: case .renewSucceed:
                case .renewSucceed:
                    //: refreshCoin(price: reportMoney)
                    conversionPrice(price: reportMoney)
                //: default:
                default:
                    //: printLog(message: " apple支付充值失败：\(type.rawValue)")
                    printLog(message: (str_explainQuantityText + String(str_giftValue)) + "\(type.rawValue)")
                }
            }
        }
    }

    /// 设置导航右侧按钮
    /// - Parameters:
    ///   - title: 标题
    ///   - url: 地址
    //: private func changeRightMenuButton(title: String, url: String) {
    private func deformationKey(title: String, url: String) {
        //: let rightBtn = TalkingButton()
        let rightBtn = PathErrorTalkingButton()
        //: rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        //: rightBtn.setTitle(title, for: .normal)
        rightBtn.setTitle(title, for: .normal)
        //: rightBtn.setTitleColor(.RGBA(51, 51, 51, 1), for: .normal)
        rightBtn.setTitleColor(.each(51, 51, 51, 1), for: .normal)
        //: rightBtn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        rightBtn.addTarget(self, action: #selector(backButton), for: .touchUpInside)
        //: rightBtn.sizeToFit()
        rightBtn.sizeToFit()
        //: rightBtn.userInfo = ["url": url]
        rightBtn.userInfo = [(String(str_toData)): url]
        //: self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
    }

    //: @objc func rightButtonClick(button: TalkingButton) {
    @objc func backButton(button: PathErrorTalkingButton) {
        //: guard let urlString = button.userInfo?["url"] as? String else {
        guard let urlString = button.userInfo?[(String(str_toData))] as? String else {
            //: return
            return
        }

        //: self.urlStr = urlString
        self.urlStr = urlString
        //: func__startRequest()
        owner()
    }

    /// 退出登录
    //: private func needLogin() {
    private func cryFor() {
        //: guard Int(MeasurementAppManager.share.loginUid) ?? 0 > 0 else {
        guard Int(MeasurementAppManager.share.loginUid) ?? 0 > 0 else {
            //: self.webView.reload()
            self.webView.reload()
            //: return
            return
        }

        //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
        NotificationCenter.default.post(name: a_senseContent,
                                        //: object: nil,
                                        object: nil,
                                        //: userInfo: nil)
                                        userInfo: nil)
    }

    /// 苹果支付成功验证通过
    /// - Parameter price: 充值金额
    //: func appleIAPVeritySucceed(price: Double) {
    func titleAt(price: Double) {
        //: self.webView.evaluateJavaScript("payResultCallback();") { data, error in
        self.webView.evaluateJavaScript((String(str_myMakeLeftData.suffix(8)) + String(str_changeValue))) { _, _ in
        }
        //: refreshCoin(price: price)
        conversionPrice(price: price)
    }

    /// 支付成功刷新个人信息【apple/paypal】
    /// - Parameter price: 充值金额
    //: private func refreshCoin(price: Double) {
    private func conversionPrice(price: Double) {
        //: NotificationCenter.default.post(name: UPDATE_USER_GETMYINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: a_likeData, object: nil)
        //: NotificationCenter.default.post(name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: a_marginName, object: nil)
        //: NotificationCenter.default.post(name: REFRESH_INDEX_GETCONFIG_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: a_screenTitle, object: nil)

        // 成功埋点
        //: TalkingAdjustManager.share.addPurchasedEvent(price: price, currency: "USD")
        RegularAdjustManager.share.whenEffect(price: price, currency: (String(str_needName)))
        // 半屏充值成功埋点
        //: if RECHARGE_CLICK_EVENT.count > 0 {
        if a_okUseTopValue.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: RECHARGE_CLICK_EVENT, parameterStr: ["amount": price])
            a_textTurnName.daguerreotype(eventID: a_okUseTopValue, parameterStr: [String(bytes: str_priceWithValue, encoding: .utf8)!: price])
        }

        // 支付成功发送通知，调用三方js事件
        //: NotificationCenter.default.post(name: WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: a_noText, object: nil)
    }

    /// 广播设置
    /// - Parameter show: 是否上广播
    //: private func appearsOnGiftBroadcast(show: Bool) {
    private func someApp(show _: Bool) {}

    //: private func verifyBtnClick() {
    private func countroduce() {
        //: if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.isSuccessed.rawValue {
            //: return
            return
                //: } else if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.unknown.rawValue {
            //: LimitPushManager.share.func__pushUserVerifyController(toast: nil)
            LimitPushManager.share.invitationTo(toast: nil)
            //: } else if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = ManagerVerificationVc()
            //: LimitPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            LimitPushManager.share.beforeRoom()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: LimitPushManager.share.func__pushUserVerifyController(toast: nil)
            LimitPushManager.share.invitationTo(toast: nil)
        }
    }

    /// 底部tabbar切换
    //: private func tabberSelete(type: Int) {
    private func mainAdd(type: Int) {
        //: guard type < self.tabBarController?.viewControllers?.count ?? 0 else { return }
        guard type < self.tabBarController?.viewControllers?.count ?? 0 else { return }
        //: let vc = self.tabBarController?.viewControllers?[type]
        let vc = self.tabBarController?.viewControllers?[type]
        //: self.tabBarController?.tabBar.isHidden = false
        self.tabBarController?.tabBar.isHidden = false
        //: self.tabBarController?.selectedIndex = type
        self.tabBarController?.selectedIndex = type
        //: self.tabBarController?.selectedViewController = vc
        self.tabBarController?.selectedViewController = vc
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 获取系统通知状态
    //: private func changeNotifaStatus(type: Int) {
    private func matchStatus(type: Int) {
        //: if type == 0 {
        if type == 0 {
            //: if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
                //: if #available(iOS 10.0, *) {
                if #available(iOS 10.0, *) {
                    //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    //: } else {
                } else {
                    //: if UIApplication.shared.canOpenURL(url) {
                    if UIApplication.shared.canOpenURL(url) {
                        //: UIApplication.shared.openURL(url)
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            //: } else if type == 1 {
        } else if type == 1 {
            //: AppManagerRequest.func__requestUserConfig { succeed, result, errorModel in }
            TableReactiveCompatible.afterPost { _, _, _ in }
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in }
            TableReactiveCompatible.bring { _, _, _ in }
            //: TalkingPermissionTool.checkPushNotification { isShow in
            PrefaceReactiveCompatible.nonsolidColour { isShow in
                //: DispatchQueue.main.sync {
                DispatchQueue.main.sync {
                    //: let str = isShow ? "getSystemNotificationtStatus(true)" : "getSystemNotificationtStatus(false)"
                    let str = isShow ? String(bytes: str_moreData, encoding: .utf8)! : String(bytes: str_centerData, encoding: .utf8)!
                    //: self.webView.evaluateJavaScript(str) { data, error in
                    self.webView.evaluateJavaScript(str) { _, _ in
                    }
                }
            }
        }
    }

    //: private func refreshPoint() {
    private func recording() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        TableReactiveCompatible.bring { _, _, _ in
            //: if TalkingLiveManager.shared().isLive {
            if PropertyMManageressPushListener.giftShared().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: a_videoDeviceData, object: nil, userInfo: [String(bytes: str_toLocationData, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// 刷新金币
    /// - Parameter coin: 传' ', 刷新接口；传其他，进行相加（含负数））
    //: private func req_refreshCoinAll(coin: String) {
    private func engageCoin(coin: String) {
        //: let value: Double = Double(coin) ?? 0
        let value = Double(coin) ?? 0
        //: if value == 0 {
        if value == 0 { // 刷新接口
            //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
            TableReactiveCompatible.conversion { _, _, _ in
            }
            //: } else {
        } else { // 加减
            //: let newCoin = Double(MeasurementAppManager.share.loginUserMode.mf_coin)! + value
            let newCoin = Double(MeasurementAppManager.share.loginUserMode.mf_coin)! + value
            //: MeasurementAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
            MeasurementAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
        }
    }

    /// 刷新礼物背包
    //: private func req_refreshPackage() {
    private func cypher() {
        //: NotificationCenter.default.post(name: GIFT_REFRESHPACKAGE_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: a_formalBottomValue, object: nil)
    }

    /// 事件上报
    /// - Parameters:
    ///   - eventName: 事件名称
    ///   - jsonStr: 事件参数
    //: private func reportEvent(eventName: String, jsonStr: String) {
    private func charm(eventName: String, jsonStr: String) {
        //: uploadRecord.uploadRecordEvent(eventID: eventName, toUid: "", jsonStr: jsonStr)
        a_textTurnName.photoOf(eventID: eventName, toUid: "", jsonStr: jsonStr)
    }

    /// 手机震动
    //: private func phoneVibrate() {
    private func boundaryLine() {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}
