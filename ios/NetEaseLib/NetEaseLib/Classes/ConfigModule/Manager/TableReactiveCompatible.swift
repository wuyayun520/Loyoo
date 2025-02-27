
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let str_equalValue:[Character] = ["a","p","p","/","g","e"]
fileprivate let str_showViewValue:String = "pic"
fileprivate let str_sexTitle:[Character] = ["C","o","n","f","i","g"]

/*: "mf/user/getMyInfo" :*/
fileprivate let str_iconValue:[Character] = ["m","f","/","u","s","e","r","/","g"]
fileprivate let str_playerValue:String = "etMyInfotrue float value data"

/*: "mf/user/getInfoColumn" :*/
fileprivate let str_halfData:[Character] = ["m","f","/","u","s"]
fileprivate let str_blueContent:String = "equal all text path sizeer/g"
fileprivate let str_sectionTitle:String = "Columnwith array manager equal"

/*: "%.2f" :*/
fileprivate let str_enterName:String = "%.2fview to"

/*: "mfCoin" :*/
fileprivate let str_toName:[Character] = ["m","f","C","o","i"]
fileprivate let str_imageAtValue:String = "equal"

/*: "mf/index/getConfig" :*/
fileprivate let str_makeData:String = "mf/indexbegin var sex player"
fileprivate let str_modelValue:String = "/getCotarget make"

/*: _ :*/
fileprivate let str_someoneContent:String = "reading"

/*: "baseinfo =  :*/
fileprivate let str_pathValue:[Character] = ["b","a","s","e","i","n","f","o"," "]
fileprivate let str_labTitle:String = "model "

/*: "UserBasicInfoSetting" :*/
fileprivate let str_topTitle:[Character] = ["U","s","e","r","B","a","s","i","c","I"]
fileprivate let str_appLayerData:String = "data"
fileprivate let str_ofValue:[Character] = ["f","o","S","e","t","t","i","n","g"]

/*: "/userTag.json" :*/
fileprivate let str_starWhiteData:String = "tap change let/user"
fileprivate let str_makeBarTitle:String = "N"

/*: "json 解析失败" :*/
fileprivate let str_sizeData:String = "json \u{89e3}析\u{5931}败"

/*: "app/reportDeviceId" :*/
fileprivate let str_equalLengthData:[Character] = ["a","p","p","/","r","e","p","o","r","t","D","e"]
fileprivate let str_tabValue:[Character] = ["v","i","c","e","I","d"]

/*: "p0" :*/
fileprivate let str_cancelTempText:String = "P0"

/*: "token" :*/
fileprivate let str_controlValue:[UInt8] = [0x74,0x6f,0x6b,0x65,0x6e]

/*: "app/reportFcmPushToken" :*/
fileprivate let str_styleYouData:[Character] = ["a","p","p","/","r"]
fileprivate let str_toolContent:String = "startpor"
fileprivate let str_controlViewData:String = "ushTokenapp hide frame to text"

/*: "app/init" :*/
fileprivate let str_addValue:[Character] = ["a","p","p","/","i","n","i","t"]

/*: "app/ping" :*/
fileprivate let str_yellowNameValue:String = "app/pinimage label"
fileprivate let str_permissionData:[Character] = ["g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import Adjust
import Adjust
//: import Alamofire
import Alamofire
//: import FirebaseMessaging
import FirebaseMessaging
//: import UIKit
import UIKit

//: var isRequestingInit = false
var a_screenValue = false

//: var isRetryDeviceIdTime = 3.0
var a_likeValue = 3.0

//: class AppManagerRequest: NSObject {
class TableReactiveCompatible: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func enumeration(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = TitleTheoryThen()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (String(str_equalValue) + str_showViewValue.replacingOccurrences(of: "pic", with: "t") + String(str_sexTitle))
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                a_collectionName.set(result, forKey: a_barPackageData)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<LabModelType>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: MeasurementAppManager.share.appConfigMode = configModel
                    MeasurementAppManager.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: a_tableDetailCallData, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = a_collectionName.dictionary(forKey: a_barPackageData)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<LabModelType>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: MeasurementAppManager.share.appConfigMode = configModel
                    MeasurementAppManager.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: a_tableDetailCallData, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func bring(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(str_iconValue) + String(str_playerValue.prefix(8)))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                a_collectionName.set(result, forKey: a_ageTitle)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<LimitModelType>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: MeasurementAppManager.share.loginUserMode = userModel
                    MeasurementAppManager.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func conversion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(str_halfData) + String(str_blueContent.suffix(4)) + "etInfo" + String(str_sectionTitle.prefix(6)))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: MeasurementAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                MeasurementAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", json[(String(str_toName) + str_imageAtValue.replacingOccurrences(of: "equal", with: "n"))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func afterPost(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(str_makeData.prefix(8)) + String(str_modelValue.prefix(6)) + "nfig")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: MeasurementAppManager.share.loginUserMode.sex))"
            let configKey = "\(a_inviteValue)_\(String(describing: MeasurementAppManager.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                a_collectionName.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<RadioactiveDatingHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: MeasurementAppManager.share.appUserConfigMode = userModel
                    MeasurementAppManager.share.appUserConfigMode = userModel
                    //: TalkingIMManager.shared.func__LogingIn()
                    DateThen.shared.eventBlock()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: MeasurementAppManager.share.appUserConfigMode.baseInfo)
                    approximation(baseinfo: MeasurementAppManager.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        TitleMediumLogTool.shared.humanActionWrite(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (ViewLoadKingfisherCompatible.shared as? ViewLoadKingfisherCompatible)?.currency()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = a_collectionName.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<RadioactiveDatingHandyJSON>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: MeasurementAppManager.share.appUserConfigMode = userModel
                    MeasurementAppManager.share.appUserConfigMode = userModel
                    //: TalkingIMManager.shared.func__LogingIn()
                    DateThen.shared.eventBlock()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: a_giftName, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func approximation(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = a_collectionName.string(forKey: a_homeAppValue)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (String(str_pathValue) + str_labTitle.replacingOccurrences(of: "model", with: "=")) + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<RegularMeasurable>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        a_collectionName.set(baseinfo, forKey: a_homeAppValue)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.beatification() + (String(str_topTitle) + str_appLayerData.replacingOccurrences(of: "data", with: "n") + String(str_ofValue))
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.hit(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.titleNameFlingOffHadithToTrademarkDramatizeInstance(content: responseJson!, writePath: jsonPath + (String(str_starWhiteData.suffix(5)) + "Tag.jso" + str_makeBarTitle.lowercased()))
                            //: MeasurementAppManager.share.func__loadUserTagCacheData()
                            MeasurementAppManager.share.titleData()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (str_sizeData))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: MeasurementAppManager.share.func__loadUserTagCacheData()
            MeasurementAppManager.share.titleData()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func application() {
        //: func__reportDeviceIdentifier()
        upBurnRequest()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func upBurnRequest() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = TitleTheoryThen()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(str_equalLengthData) + String(str_tabValue))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.timeStamp()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(a_inviteName)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.send(key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            a_tabData.blackFor(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if a_likeValue <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + a_likeValue) {
                    //: isRetryDeviceIdTime *= 2
                    a_likeValue *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.upBurnRequest()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func funcDismissMovieCamera() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = [String(bytes: str_controlValue, encoding: .utf8)!: token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = TitleTheoryThen()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(str_styleYouData) + str_toolContent.replacingOccurrences(of: "start", with: "e") + "tFcmP" + String(str_controlViewData.prefix(8)))
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                a_tabData.blackFor(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func toOrSolicitation() {
        //: if isRequestingInit {
        if a_screenValue {
            //: return
            return
        }
        //: isRequestingInit = true
        a_screenValue = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (String(str_addValue))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            a_screenValue = false
            //: if succeed && MeasurementAppManager.share.request_HasInit == false {
            if succeed && MeasurementAppManager.share.request_HasInit == false {
                //: MeasurementAppManager.share.request_HasInit = true
                MeasurementAppManager.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func managerSub(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (String(str_yellowNameValue.prefix(7)) + String(str_permissionData))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
