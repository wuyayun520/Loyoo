
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let str_toValue:[Character] = ["a","p","p","_","m","a","r"]
fileprivate let str_rawPointName:[Character] = ["s","x","l","o","g"]

/*: "Install" :*/
fileprivate let str_attentionData:String = "size"
fileprivate let str_buttonValue:String = "NSTALL"

/*: "LinkedME finished init with params(params.description)" :*/
fileprivate let str_messageOriginRowData:[UInt8] = [0x4c,0x69,0x6e,0x6b,0x65,0x64,0x4d,0x45,0x20,0x66,0x69,0x6e,0x69,0x73,0x68,0x65,0x64,0x20,0x69,0x6e,0x69,0x74,0x20,0x77,0x69,0x74,0x68,0x20,0x70,0x61,0x72,0x61,0x6d,0x73,0x28,0x70,0x61,0x72,0x61,0x6d,0x73,0x2e,0x64,0x65,0x73,0x63,0x72,0x69,0x70,0x74,0x69,0x6f,0x6e,0x29]

/*: "$control" :*/
fileprivate let str_topTitle:[Character] = ["$","c","o","n","t","r","o","l"]

/*: "inviteCode" :*/
fileprivate let str_indexName:String = "invihalfe"
fileprivate let str_stopBlockCornerText:[Character] = ["C","o","d","e"]

/*: "TXUGCBase初始化：result:  :*/
fileprivate let str_imageName:String = "TXUendCB"
fileprivate let str_addRoomValue:String = "化："
fileprivate let str_titleValue:String = "remax"

/*: , reason:  :*/
fileprivate let str_modelData:String = ", reaslet title group equal"

/*: ." :*/
fileprivate let str_labValue:String = "layer"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConstraintThen+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust
//: import DXMarsXlog
import DXMarsXlog
//: import Foundation
import Foundation
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// MARK: - Public Event

//: extension AppDelegateHelper {
extension ConstraintThen {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func instanceFromSetup(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = MediaTransactionObserver.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((String(str_toValue) + String(str_rawPointName)))

        //: TalkingIMManager.shared.func__TXSDKInit()
        DateThen.shared.viewInTo()

        //: initADjust()
        doDjust()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        RegularAdjustManager.share.beatBack(key: (str_attentionData.replacingOccurrences(of: "size", with: "I") + str_buttonValue.lowercased()))
        //: setupTXLive()
        observerLive()
        //: setupTXUGC()
        relaxer()

        //: guard SenseTime_Use == true else { return }
        guard a_keyPostText == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if STLicHelper.share.checkLicense() == false {
            if STLicHelper.share.checkLicense() == false {
                //: SenseTime_Use = false
                a_keyPostText = false
                //: STLicHelper.share.checkRemoteLicInfoWith { succeed in
                STLicHelper.share.checkRemoteLicInfoWith { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    a_keyPostText = succeed
                }
            }
        }
    }

    /// LinkedME初始化
    //: func initLinkedME(launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
    func equalDismiss(launchOptions _: [UIApplication.LaunchOptionsKey: Any]?) {
        //: let linkedme = LinkedME.getInstance()
        let linkedme = LinkedME.getInstance()
        // 解析深度链获取参数
        //: linkedme?.initSession(andRegisterDeepLinkHandler: { params, error in if error == nil {
        linkedme?.initSession(andRegisterDeepLinkHandler: { params, error in if error == nil {
            //: printLog(message: "LinkedME finished init with params(params.description)")
            printLog(message: String(bytes: str_messageOriginRowData, encoding: .utf8)!)

            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: a_noName)
            //: guard inviteCode == nil else {
            guard inviteCode == nil else {
                //: return
                return
            }
            //: let dic = params?["$control"] as? [String: Any]
            let dic = params?[(String(str_topTitle))] as? [String: Any]
            //: let code = dic?["inviteCode"] as? String
            let code = dic?[(str_indexName.replacingOccurrences(of: "half", with: "t") + String(str_stopBlockCornerText))] as? String
            //: if code != nil, code?.count ?? 0 > 1 {
            if code != nil, code?.count ?? 0 > 1 {
                //: UserDefaults.standard.set(code, forKey: SaveInviteCodeKey)
                UserDefaults.standard.set(code, forKey: a_noName)
            }

            //: } else {
        } else {
            //: printLog(message: error as Any)
            printLog(message: error as Any)
        }

        //: })
        })
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension ConstraintThen {
    //: private func setupTXLive() {
    private func observerLive() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if a_nearbyText.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(a_nearbyText, key: a_underValue)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func relaxer() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(a_nearbyText, key: a_underValue)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func doDjust() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !a_allValue {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = a_backUseText
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension ConstraintThen: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: UploadLogTool.writeLog(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        TitleMediumLogTool.commitMedium(msg: (str_imageName.replacingOccurrences(of: "end", with: "G") + "ase初\u{59cb}" + str_addRoomValue.capitalized + str_titleValue.replacingOccurrences(of: "max", with: "su") + "lt: ") + "\(result)" + (String(str_modelData.prefix(6)) + "on: ") + "\(String(describing: reason)).")
    }
}
