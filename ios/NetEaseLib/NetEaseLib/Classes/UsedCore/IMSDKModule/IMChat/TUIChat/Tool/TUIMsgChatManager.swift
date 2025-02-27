//
//  TUIMsgChatManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

import Foundation


public class TUIMsgChatManager: NSObject {
    
    
   @objc class public func parseTXMessageData(data: Data)-> Dictionary<String, Any> {
       
        let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        if dict != nil {
            return (dict as! NSDictionary) as! Dictionary<String, Any>
        }
        return NSDictionary() as! Dictionary<String, Any>
    }
    
    class func parseTXMessageJsonStr(data: Dictionary<String, Any>) -> String {
       
        var result: String = ""

        do { // 如果设置options为JSONSerialization.WritingOptions.prettyPrinted，则打印格式更好阅读
            let jsonData = try JSONSerialization.data(withJSONObject: data, options: JSONSerialization.WritingOptions.init(rawValue: 0))
            if let JSONString = String(data: jsonData, encoding: String.Encoding.utf8) {
                result = JSONString
            }
        } catch {
            result = ""
        }
        return result
    }
    
    
//    class func func__handleTXMessageModelWithExtral(extralDic:Dictionary<String, Any>,isSend:Bool,isTip:Bool)-> TUIMessageCellData{
//
//        var tempDic = extralDic
//
//        if isTip {
//            tempDic["msgType"] = "tips"
//            let extraDict = ["extra":tempDic]
//            return TUIMessageCellData.init()
//        }
//        let msgInfo:Dictionary<String,Any> = extralDic["msgInfo"] as! Dictionary<String, Any>
//
//        let userDic = ["uid":MeasurementAppManager.share.loginUserMode.userID,"nickName":MeasurementAppManager.share.loginUserMode.nickname,"headPic":MeasurementAppManager.share.loginUserMode.headPic,"mbId":msgInfo["mbId"]]
//        tempDic["user"] = userDic
//
//        let extraDict = ["extra":tempDic]
//
//        let  extraString = TUIMsgChatManager.parseTXMessageJsonStr(data: extraDict)
//
//        let msgTypeStr:String = msgInfo["msgType"] as! String
//
//        if msgTypeStr == "gift" {
//            let cellData = AbConstraintReactiveCompatible.init(direction: (isSend ? TMsgDirection.MsgDirectionOutgoing : TMsgDirection.MsgDirectionIncoming))
//            let data = extraString.data(using: .utf8)
//            cellData.innerMessage = V2TIMManager.sharedInstance().createCustomMessage(data)
//            do {
//                let msgModel = try ConfinementModel.init(dictionary: tempDic)
//                cellData.msgModel = msgModel
//            } catch _ {
//
//            }
//            return cellData;
//
//        } else if (msgTypeStr == "txt") {
//
//            let cellData = OfCellData.init(direction: (isSend ? TMsgDirection.MsgDirectionOutgoing : TMsgDirection.MsgDirectionIncoming))
//            let data = extraString.data(using: .utf8)
//            cellData.innerMessage = V2TIMManager.sharedInstance().createCustomMessage(data)
//            do {
//                let msgModel = try ConfinementModel.init(dictionary: tempDic)
//                cellData.msgModel = msgModel
//            } catch _ {
//
//            }
//            return cellData;
//
//        } else if (msgTypeStr == "img") {
//            let cellData = DocumentCellData.init(direction: (isSend ? TMsgDirection.MsgDirectionOutgoing : TMsgDirection.MsgDirectionIncoming))
//            let data = extraString.data(using: .utf8)
//            cellData.innerMessage = V2TIMManager.sharedInstance().createCustomMessage(data)
//            do {
//                let msgModel = try ConfinementModel.init(dictionary: tempDic)
//                cellData.msgModel = msgModel
//            } catch _ {
//
//            }
//            return cellData;
//
//        } else if (msgTypeStr == "audio") {
//            let cellData = ValueViewReactiveCompatible.init(direction: (isSend ? TMsgDirection.MsgDirectionOutgoing : TMsgDirection.MsgDirectionIncoming))
//            let data = extraString.data(using: .utf8)
//            cellData.innerMessage = V2TIMManager.sharedInstance().createCustomMessage(data)
//            do {
//                let msgModel = try ConfinementModel.init(dictionary: tempDic)
//                cellData.msgModel = msgModel
//            } catch _ {
//
//            }
//            return cellData;
//
//        }
//
//        return TUIMessageCellData.init()
//
//    }
}

extension TUIMsgChatManager {
    class func getMessageInsertTime() -> Double {
        var timeStamp: Double = 0
        let curDate = Date().timeIntervalSince1970
        let msInterval = floor(curDate * 1000)
        var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime()) // 秒为单位
        if deltaTime<1 {
            deltaTime = 0
        }
        timeStamp = msInterval-deltaTime
        return timeStamp
    }
    
    class func checkVoiceJsonMsg(msginfo: [String: JSON]) -> Bool {
        
        let msgType = msginfo["msgType"]?.stringValue ?? ""
        if msgType == "audio" {
            return true
        }
        let contentType = msginfo["contentType"]?.stringValue ?? ""
        if contentType == "AudioMsg" {
            return true
        }
        let audioData = msginfo["audioData"]?.stringValue ?? ""
        if  audioData.isEmptyString == false {
            return true
        }
        
        let audioUri = msginfo["audioUri"]?.stringValue ?? ""
        if audioUri.isEmptyString == false {
            return true
            
        }
        return false
    }
    
    class func checkVoiceMessage(message: V2TIMMessage) -> Bool {
        
        guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
            printLog(message: " customElem.data is error")
            return false
        }
        let json = JSON(parseJSON: extra)
        let extraDic = json["extra"]
        let msgInfo = extraDic["msgInfo"]
        return checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
    }

    @objc class public func checkVoiceMsg(msginfo: [String: Any]) -> Bool {
        
        if msginfo.keys.contains("msgType") {
            let msgType = msginfo["msgType"] as? String
            if msgType == "audio" {
                return true
            }
        }
        if msginfo.keys.contains("contentType") {
            let contentType = msginfo["contentType"] as? String
            if contentType == "AudioMsg" {
                return true
            }
        }
        if msginfo.keys.contains("audioData") {
            let audioData = msginfo["audioData"] as? String
            if !audioData!.isEmptyString {
                return true
            }
        }
        if msginfo.keys.contains("audioUri") {
            let audioUri = msginfo["audioUri"] as? String
            if !audioUri!.isEmptyString {
                return true
            }
        }
        return false
    }

}
