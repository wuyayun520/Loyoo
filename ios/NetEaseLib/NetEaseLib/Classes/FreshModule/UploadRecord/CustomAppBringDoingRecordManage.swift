
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let str_topValue:String = "text lab withV4uj"
fileprivate let str_equalResultTitle:String = "data open at makeUl6Rv"
fileprivate let str_timeValue:String = "D6m91make white"

/*: "data/index" :*/
fileprivate let str_appRawTitle:[Character] = ["d","a","t","a","/","i"]
fileprivate let str_titleValue:String = "imageex"

/*: "toUid" :*/
fileprivate let str_sizeAppName:String = "toUidvideo extension size height equal"

/*: "uid" :*/
fileprivate let str_callData:[Character] = ["u","i","d"]

/*: "POST" :*/
fileprivate let str_imageStyleValue:String = "POSmake"

/*: "Token" :*/
fileprivate let str_trackData:[Character] = ["T","o","k","e","n"]

/*: "%@" :*/
fileprivate let str_cookieName:String = "%section"

/*: "无法解析出JSON字符串" :*/
fileprivate let str_viewName:String = "无法解\u{6790}"
fileprivate let str_sinceValue:[Character] = ["字","符","串"]

/*: "plat" :*/
fileprivate let str_playerPartyVerticalValue:String = "pappt"

/*: "ios" :*/
fileprivate let str_makeData:String = "backos"

/*: "packageId" :*/
fileprivate let str_cameraData:[Character] = ["p","a","c","k","a","g","e","I","d"]

/*: "channel" :*/
fileprivate let str_skinData:[Character] = ["c","h","a","n","n"]
fileprivate let str_valueData:String = "EL"

/*: "type" :*/
fileprivate let str_completeName:String = "tyfatale"

/*: "stat" :*/
fileprivate let str_indexTitle:String = "stpath"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomAppBringDoingRecordManage.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire
//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let a_textTurnName = CustomAppBringDoingRecordManage()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let a_inviteName = (String(str_topValue.suffix(4)) + "GjsN" + String(str_equalResultTitle.suffix(5)) + "gjvg" + String(str_timeValue.prefix(5)))

//: class UploadRecordManage: NSObject {
class CustomAppBringDoingRecordManage: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func photoOf(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(str_appRawTitle) + str_titleValue.replacingOccurrences(of: "image", with: "nd"))
        //: reqModel.requestServer = MeasurementAppManager.share.appConfigMode.reportDomain
        reqModel.requestServer = MeasurementAppManager.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.toClick()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary(jsonString: jsonStr!)
            dict["c"] = NSDictionary(jsonString: jsonStr!)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic[(String(str_sizeAppName.prefix(5)))] = toUid
            }
            //: messageDic["uid"] = MeasurementAppManager.share.loginUserMode.userID
            messageDic[(String(str_callData))] = MeasurementAppManager.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.pastRecordCompletion(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func daguerreotype(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(str_appRawTitle) + str_titleValue.replacingOccurrences(of: "image", with: "nd"))
        //: reqModel.requestServer = MeasurementAppManager.share.appConfigMode.reportDomain
        reqModel.requestServer = MeasurementAppManager.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.toClick()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = MeasurementAppManager.share.loginUserMode.userID
        messageDic[(String(str_callData))] = MeasurementAppManager.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.pastRecordCompletion(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func pastRecordCompletion(model: TitleTheoryThen, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = a_tabData.thanGift(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.timeStamp()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = (str_imageStyleValue.replacingOccurrences(of: "make", with: "T"))
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: (String(str_trackData)))

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", a_inviteName)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.summate(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.send(key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<BaseMeasurable>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func summate(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (str_viewName + "出JSON" + String(str_sinceValue)))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension CustomAppBringDoingRecordManage {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func toClick() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict[(str_playerPartyVerticalValue.replacingOccurrences(of: "app", with: "la"))] = (str_makeData.replacingOccurrences(of: "back", with: "i")) /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(String(str_cameraData))] = a_pathValue /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = a_conversationTitle /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.timeStamp() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(String(str_skinData) + str_valueData.lowercased())] = a_pathValue /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict[(str_completeName.replacingOccurrences(of: "fatal", with: "p"))] = (str_indexTitle.replacingOccurrences(of: "path", with: "at")) /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
