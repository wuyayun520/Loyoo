
//: Declare String Begin

/*: "%02hhx" :*/
fileprivate let str_leadingData:[Character] = ["%","0","2","h","h","x"]

/*: "APNS Token =  :*/
fileprivate let str_colorTableTitle:String = "APNS Tadd let self top"
fileprivate let str_infoName:String = "image"

/*: "APNS Token Error:  :*/
fileprivate let str_centerOutsideText:String = "APNS content room"
fileprivate let str_monthValue:String = "block from handle viewError"
fileprivate let str_sizeProfileData:String = ":level"

/*: ." :*/
fileprivate let str_titleData:String = "model"

/*: "token =  :*/
fileprivate let str_iconContent:String = "call"
fileprivate let str_labelMakeText:String = "super action superoken = "

/*: "extra" :*/
fileprivate let str_timeLayerData:String = "extfloora"

/*: "Unable to register for remote notifications: :*/
fileprivate let str_topData:[UInt8] = [0x55,0x6e,0x61,0x62,0x6c,0x65,0x20,0x74,0x6f,0x20,0x72,0x65,0x67,0x69,0x73,0x74,0x65,0x72,0x20,0x66,0x6f,0x72,0x20,0x72,0x65,0x6d,0x6f,0x74,0x65,0x20,0x6e,0x6f,0x74,0x69,0x66,0x69,0x63,0x61,0x74,0x69,0x6f,0x6e,0x73,0x3a]

/*: "token" :*/
fileprivate let str_outsideText:[UInt8] = [0x74,0x6f,0x6b,0x65,0x6e]

/*: "FCMToken" :*/
fileprivate let str_labelEqualValue:String = "currency"
fileprivate let str_addSizeData:String = "text model if return guardCMToken"

/*: _LocalPush" :*/
fileprivate let str_centerTheData:String = "no model away self_Local"

/*: "identifier" :*/
fileprivate let str_componentName:String = "iuser"
fileprivate let str_succeedName:String = "entequal"

/*: "fcm_options" :*/
fileprivate let str_contentTitle:String = "image scale lab tofcm_op"
fileprivate let str_imageData:String = "tiinfos"

/*: "image" :*/
fileprivate let str_applicationName:[UInt8] = [0x69,0x6d,0x61,0x67,0x65]

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let str_windowRangeManagerTitle:[UInt8] = [0x63,0x19,0x29,0x60,0x19,0x35,0x63,0xb,0x2d,0x6c,0x5,0x4,0x6c,0x5,0x1f,0x62,0x1a,0x20,0xa5,0xa8,0xa8,0xa5,0x62,0x11,0x2d,0x63,0xd,0x32,0x63,0x19,0x2f,0x63,0xb,0xd,0x63,0x18,0x6,0xad,0xab,0xeb,0xea,0xf1,0xc1,0xe0,0xf1,0xe0,0xf7,0xe8,0xec,0xeb,0xe0,0xe1,0xac]

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let str_indexEqualValue:[Character] = ["本","地","推","送","\u{901a}"]
fileprivate let str_inviteText:String = "\u{77e5} --"
fileprivate let str_shootName:[Character] = [" ","用","户","\u{672a}","授","\u{6743}","(",".","d","e","n","i","e","d",")"]

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let str_viewNeedName:[Character] = ["本","地","推","送","通","知"," ","-","-"," ","用","户","未","授","权","(","."]
fileprivate let str_mainExplainName:[Character] = ["e","p","h"]
fileprivate let str_blockName:[Character] = ["e","m","e","r","a","l",")"]

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let str_resultValue:String = "share推"
fileprivate let str_guideData:String = "送通知 -"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConstraintThen+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import FirebaseCore
import FirebaseCore
//: import FirebaseMessaging
import FirebaseMessaging
//: import Foundation
import Foundation
//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension ConstraintThen {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func addBack(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (String(str_colorTableTitle.prefix(6)) + "oken =" + str_infoName.replacingOccurrences(of: "image", with: " ")) + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: UploadLogTool.writeLog(msg: "APNS Token Error: \(error).")
                TitleMediumLogTool.commitMedium(msg: (String(str_centerOutsideText.prefix(5)) + "Token " + String(str_monthValue.suffix(5)) + str_sizeProfileData.replacingOccurrences(of: "level", with: " ")) + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: (str_iconContent.replacingOccurrences(of: "call", with: "t") + String(str_labelMakeText.suffix(7))) + "\(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func sendMessage(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains((str_timeLayerData.replacingOccurrences(of: "floor", with: "r"))) {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo[(str_timeLayerData.replacingOccurrences(of: "floor", with: "r"))] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    TitleTalkingManager.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    TitleTalkingManager.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func vertical(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: str_topData, encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func centerTask(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            TitleTalkingManager.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            TitleTalkingManager.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains((str_timeLayerData.replacingOccurrences(of: "floor", with: "r"))) {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo[(str_timeLayerData.replacingOccurrences(of: "floor", with: "r"))] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                TitleTalkingManager.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                TitleTalkingManager.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func errorDown(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: str_outsideText, encoding: .utf8)!: fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((str_labelEqualValue.replacingOccurrences(of: "currency", with: "F") + String(str_addSizeData.suffix(7)))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension ConstraintThen {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func spatialRelationExposureTo(uid: String? = nil,
                                         //: title: String? = nil,
                                         title: String? = nil,
                                         //: body: String,
                                         body: String,
                                         //: imageUrl: String? = nil) {
                                         imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(a_callValue)" + (String(str_centerTheData.suffix(6)) + "Push")
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(str_componentName.replacingOccurrences(of: "user", with: "d") + str_succeedName.replacingOccurrences(of: "equal", with: "i") + "fier"): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    simulation(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: a_errBarName.upward6decrypt(), with: a_bottomFoundText)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(String(str_contentTitle.suffix(6)) + str_imageData.replacingOccurrences(of: "info", with: "on"))] = [String(bytes: str_applicationName, encoding: .utf8)!: newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    simulation(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: str_windowRangeManagerTitle.map{$0^133}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (String(str_indexEqualValue) + str_inviteText + String(str_shootName)))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (String(str_viewNeedName) + String(str_mainExplainName) + String(str_blockName)))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (str_resultValue.replacingOccurrences(of: "share", with: "本地") + str_guideData.capitalized + "- 用\u{6237}未授权"))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func simulation(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(str_componentName.replacingOccurrences(of: "user", with: "d") + str_succeedName.replacingOccurrences(of: "equal", with: "i") + "fier")] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func titleShow(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
