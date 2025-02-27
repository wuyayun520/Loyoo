
//: Declare String Begin

/*: "/dist/loungePlus/index.html" :*/
fileprivate let str_exhibitName:[Character] = ["/","d","i","s","t","/","l","o","u","n","g","e","P","l","u","s","/","i"]
fileprivate let str_topValue:[Character] = ["n","d","e"]
fileprivate let str_userContent:String = "temp image if labelx.html"

/*: "PremiumStarPlanBanner" :*/
fileprivate let str_originValue:[Character] = ["P","r","e","m","i","u","m","S","t","a"]
fileprivate let str_labModelValue:String = "content equal task view effectrPlan"

/*: "uid" :*/
fileprivate let str_requestText:String = "uilist"

/*: "mfChatGift" :*/
fileprivate let str_nameValue:[Character] = ["m","f","C","h","a","t","G","i","f"]
fileprivate let str_scaleText:[Character] = ["t"]

/*: "mfChat" :*/
fileprivate let str_viewData:[Character] = ["m","f","C","h","a","t"]

/*: "user" :*/
fileprivate let str_methodData:String = "USER"

/*: "Please verification first" :*/
fileprivate let str_colorName:String = "Pleasource time"
fileprivate let str_recordData:String = "itoic"
fileprivate let str_tapName:String = "atiadd"
fileprivate let str_mainNetCheckedData:String = "make section formatn first"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NumerosityMeasurable.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct NumerosityMeasurable: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension NumerosityMeasurable {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func jumpReport(model: NumerosityMeasurable) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index.html") {
            if newUrl.contains((String(str_exhibitName) + String(str_topValue) + String(str_userContent.suffix(6)))) {
                //: LimitPushManager.share.func__pushToSubscribePageWebVC()
                LimitPushManager.share.birth()
                //: return
                return
            }
            //: LimitPushManager.share.func__pushToWebVC(urlStr: model.url)
            LimitPushManager.share.comb(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(str_originValue) + String(str_labModelValue.suffix(5)) + "Banner")) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                NumerosityMeasurable.viewBanner()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == (str_requestText.replacingOccurrences(of: "list", with: "d")) }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(str_nameValue) + String(str_scaleText))) { // 私聊打开礼物面板
                    //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    LimitPushManager.share.sharedMode(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.areaBtn()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(str_viewData))) { // 私聊
                    //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: uid)
                    LimitPushManager.share.sharedMode(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains((str_methodData.lowercased())) { // 用户详情
                    //: LimitPushManager.share.func__pushToUserDetailVC(uid: uid)
                    LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = LabConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: LimitPushManager.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            LimitPushManager.share.comb(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func viewBanner() {
        //: if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.isSuccessed.rawValue ||
            //: MeasurementAppManager.share.loginUserMode.isRealPersonAuth == false {
            MeasurementAppManager.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if MeasurementAppManager.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if MeasurementAppManager.share.loginUserMode.premiumStarApplyStatus != MarkCloseMirrorPath.isOnGoing.rawValue {
                //: LimitPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                LimitPushManager.share.recordIn(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: LimitPushManager.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                LimitPushManager.share.recordIn(webViewType: .StarPlanAudit)
            }
            //: } else if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().afterTitle(showMsg: (String(str_colorName.prefix(4)) + "se ver" + str_recordData.replacingOccurrences(of: "to", with: "f") + str_tapName.replacingOccurrences(of: "add", with: "o") + String(str_mainNetCheckedData.suffix(7))).localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = ManagerVerificationVc()
            //: LimitPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            LimitPushManager.share.beforeRoom()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().afterTitle(showMsg: (String(str_colorName.prefix(4)) + "se ver" + str_recordData.replacingOccurrences(of: "to", with: "f") + str_tapName.replacingOccurrences(of: "add", with: "o") + String(str_mainNetCheckedData.suffix(7))).localized)
            //: LimitPushManager.share.func__pushUserVerifyController(toast: nil)
            LimitPushManager.share.invitationTo(toast: nil)
        }
    }
}
