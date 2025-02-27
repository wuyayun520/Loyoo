
//: Declare String Begin

/*: "&sr=6" :*/
fileprivate let str_makeTitle:String = "error label return&sr=6"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SheManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/2.
//

//: import UIKit
import UIKit

//: struct TalkingWebConfig {
struct LabConfig {
    //: var clearBgColor = false
    var clearBgColor = false
    //: var showLoadingView = false
    var showLoadingView = false
    //: var showCloseBtn = false
    var showCloseBtn = false
    //: var forbiddenRightBtnChange = false
    var forbiddenRightBtnChange = false
    //: var isAlertType = false
    var isAlertType = false
    //: var isHalfView = false
    var isHalfView = false
    //: var widthHeight: Double?
    var widthHeight: Double? // 屏幕展示比例：0：全屏展示；大于0：屏幕高度 = 屏宽*weight
    //: var isDiscountsView = false
    var isDiscountsView = false // 是否优惠弹窗
}

// H5 定义的方法
//: enum WebMethodType: String, CaseIterable {
enum DeleteBasicType: String, CaseIterable {
    //: case MethodType_Exit                          = "closeWeb"                 // 关闭网页
    case MethodType_Exit = "closeWeb" // 关闭网页
    //: case MethodType_needLogin                     = "needLogin"                // 需要登录
    case MethodType_needLogin = "needLogin" // 需要登录
    //: case MethodType_apPay                         = "apPay"                    // 苹果支付
    case MethodType_apPay = "apPay" // 苹果支付
    //: case MethodType_apPay_subscribe               = "subscribe"                // 苹果支付-订阅
    case MethodType_apPay_subscribe = "subscribe" // 苹果支付-订阅
    //: case MethodType_changeMenuButton              = "changeMenuButton"         // 更改按钮
    case MethodType_changeMenuButton = "changeMenuButton" // 更改按钮
    //: case MethodType_refreshCoin                   = "refreshCoin"              // 【paypal】刷新金币
    case MethodType_refreshCoin = "refreshCoin" // 【paypal】刷新金币
    //: case MethodType_appearsOnGiftBroadcast        = "appearsOnGiftBroadcast"   // 是否上广播
    case MethodType_appearsOnGiftBroadcast = "appearsOnGiftBroadcast" // 是否上广播
    //: case MethodType_ToUrl                         = "toUrl"                    // 打开新页面
    case MethodType_ToUrl = "toUrl" // 打开新页面
    //: case MethodType_customerService               = "customerService"          // 客服服务
    case MethodType_customerService = "customerService" // 客服服务
    //: case setRightMenuButton                       = "setRightMenuButton"       // 右边按钮
    case setRightMenuButton // 右边按钮
    //: case MethodType_taskCenter                    = "jumpNative"               // 任务中心
    case MethodType_taskCenter = "jumpNative" // 任务中心
    //: case MethodType_systemNotification            = "systemNotification"       // 签到获取通知权限
    case MethodType_systemNotification = "systemNotification" // 签到获取通知权限
    //: case MethodType_refreshPoint                  = "refreshPoint"             // 直播时提现，积分变动
    case MethodType_refreshPoint = "refreshPoint" // 直播时提现，积分变动
    //: case MethodType_onEvent                       = "onEvent"                  // 事件上报
    case MethodType_onEvent = "onEvent" // 事件上报
    //: case MethodType_refreshCoinAll                = "refreshCoinAll"           // 【游戏】刷新金币
    case MethodType_refreshCoinAll = "refreshCoinAll" // 【游戏】刷新金币
    //: case MethodType_refreshPackage                = "refreshPackage"           // 【游戏】新增礼物刷新背包
    case MethodType_refreshPackage = "refreshPackage" // 【游戏】新增礼物刷新背包
    //: case MethodType_vibrate                       = "vibrate"                  // 震动
    case MethodType_vibrate = "vibrate" // 震动
    //: case MethodType_goFreeVideo                   = "goFreeVideo"              // 跳转到随机视频
    case MethodType_goFreeVideo = "goFreeVideo" // 跳转到随机视频
    //: case MethodType_goMessageDetail               = "goMessageDetail"          // 跳转到私信页
    case MethodType_goMessageDetail = "goMessageDetail" // 跳转到私信页
    //: case MethodType_goPersonInfo                  = "goPersonInfo"             // 跳转到个人资料页
    case MethodType_goPersonInfo = "goPersonInfo" // 跳转到个人资料页
    //: case MethodType_showRechargeDialog            = "showRechargeDialog"       // 打开半屏充值页
    case MethodType_showRechargeDialog = "showRechargeDialog" // 打开半屏充值页
    //: case OpenRetainPopup                          = "openRetainPopup"          // 打开挽留弹窗
    case OpenRetainPopup = "openRetainPopup" // 打开挽留弹窗
    //: case openBrowserWithUrl                          = "openBrowserWithUrl"          // 打开外部浏览器
    case openBrowserWithUrl // 打开外部浏览器
}

// H5 Url
//: enum WebUrlType: String {
enum BrandSubscriptType: String {
    //: case TermsofUse         = "/dist/protocal/termsOfUse.html"                                          // 用户协议
    case TermsofUse = "/dist/protocal/termsOfUse.html" // 用户协议
    //: case PrivacyPolicy      = "/dist/protocal/privacyPolicy.html"                                       // 隐私协议
    case PrivacyPolicy = "/dist/protocal/privacyPolicy.html" // 隐私协议
    //: case GiftBroadcast       = "/dist/homepage/setAnnouncement.html"                                     // 礼物广播
    case GiftBroadcast = "/dist/homepage/setAnnouncement.html" // 礼物广播
    //: case RechargeFullPage   = "/dist/recharge/index.html?isfull=true"                                   // 全屏
    case RechargeFullPage = "/dist/recharge/index.html?isfull=true" // 全屏
    //: case RechargeHalfPage   = "/dist/recharge/index.html?isfull=false"                                  // 半屏
    case RechargeHalfPage = "/dist/recharge/index.html?isfull=false" // 半屏
    //: case RechargeToVideoInitivHalfPage   = "/dist/recharge/index.html?isfull=false&sr=6"                // 主动拨打弹窗半屏充值
    case RechargeToVideoInitivHalfPage = "/dist/recharge/index.html?isfull=false&sr=6" // 主动拨打弹窗半屏充值
    //: case SubscribePage      = "/dist/loungePlus/index.html?type=4&hideStatusBar=1&transparency=1"       // 会员订阅页面
    case SubscribePage = "/dist/loungePlus/index.html?type=4&hideStatusBar=1&transparency=1" // 会员订阅页面
    //: case SubscribeAlert     = "/dist/loungePlus/index.html?hideStatusBar=1&transparency=1&isPopup=true" // 会员订阅弹窗
    case SubscribeAlert = "/dist/loungePlus/index.html?hideStatusBar=1&transparency=1&isPopup=true" // 会员订阅弹窗
    //: case StarPlanIndex      = "/dist/starPlan/index.html"                                               // 巨星计划活动页
    case StarPlanIndex = "/dist/starPlan/index.html" // 巨星计划活动页
    //: case StarPlanAudit      = "/dist/starPlan/audit.html"                                               // 巨星计划审核页
    case StarPlanAudit = "/dist/starPlan/audit.html" // 巨星计划审核页
    //: case InviteFriends      = "/dist/inviteFriends/index.html"                                          // 邀请好友页
    case InviteFriends = "/dist/inviteFriends/index.html" // 邀请好友页
    //: case DetailedList       = "/dist/recharge/detailedList.html"                                        // 金币明细页
    case DetailedList = "/dist/recharge/detailedList.html" // 金币明细页
    //: case Balance            = "/dist/balance/index.html"                                                // 我的收益页
    case Balance = "/dist/balance/index.html" // 我的收益页
    //: case Level              = "/dist/level/index.html"                                                  // 用户等级页
    case Level = "/dist/level/index.html" // 用户等级页
    //: case Assistant          = "/dist/assistant/index.html"                                              // 专属助理页
    case Assistant = "/dist/assistant/index.html" // 专属助理页
    //: case FAQ                = "/dist/help/index.html"                                                   // 客服Feedback&Help
    case FAQ = "/dist/help/index.html" // 客服Feedback&Help
    //: case TaskCenter         = "/dist/task/index.html"                                                   // 任务中心
    case TaskCenter = "/dist/task/index.html" // 任务中心
    //: case SiginPopup         = "/dist/task/sign.html?transparency=1"                                     // 签到弹窗页
    case SiginPopup = "/dist/task/sign.html?transparency=1" // 签到弹窗页
    //: case luckyBlindBox         = "/dist/instruction/luckyBlindBox.html"                                 // 盲盒说明页
    case luckyBlindBox = "/dist/instruction/luckyBlindBox.html" // 盲盒说明页
    //: case Intimate         = "/dist/honey/index.html"
    case Intimate = "/dist/honey/index.html"
    // 1.7.6 亲密度
}

//: class TalkingWebManager: NSObject {
class SheManager: NSObject {
    //: class func getFullUrl(urlType: WebUrlType)-> String {
    class func sizeType(urlType: BrandSubscriptType) -> String {
        //: var url = MeasurementAppManager.share.appConfigMode.urlH5Domain
        var url = MeasurementAppManager.share.appConfigMode.urlH5Domain
        //: switch urlType {
        switch urlType {
        //: case .RechargeFullPage:
        case .RechargeFullPage:
            //: url.append(MeasurementAppManager.share.appUserConfigMode.fullRechargePage.isEmptyString ? urlType.rawValue : MeasurementAppManager.share.appUserConfigMode.fullRechargePage)
            url.append(MeasurementAppManager.share.appUserConfigMode.fullRechargePage.isEmptyString ? urlType.rawValue : MeasurementAppManager.share.appUserConfigMode.fullRechargePage)

        //: break
        //: case .RechargeHalfPage:
        case .RechargeHalfPage:
            //: url.append(MeasurementAppManager.share.appUserConfigMode.halfRechargePage.isEmptyString ? urlType.rawValue : MeasurementAppManager.share.appUserConfigMode.halfRechargePage)
            url.append(MeasurementAppManager.share.appUserConfigMode.halfRechargePage.isEmptyString ? urlType.rawValue : MeasurementAppManager.share.appUserConfigMode.halfRechargePage)

        //: case .RechargeToVideoInitivHalfPage:
        case .RechargeToVideoInitivHalfPage:
            //: let newstr = MeasurementAppManager.share.appUserConfigMode.halfRechargePage.appending("&sr=6")
            let newstr = MeasurementAppManager.share.appUserConfigMode.halfRechargePage.appending((String(str_makeTitle.suffix(5))))
            //: url.append(MeasurementAppManager.share.appUserConfigMode.halfRechargePage.isEmptyString ? urlType.rawValue : newstr)
            url.append(MeasurementAppManager.share.appUserConfigMode.halfRechargePage.isEmptyString ? urlType.rawValue : newstr)
        //: default:
        default:
            //: url.append(urlType.rawValue)
            url.append(urlType.rawValue)
        }
        //: return url
        return url
    }
}
