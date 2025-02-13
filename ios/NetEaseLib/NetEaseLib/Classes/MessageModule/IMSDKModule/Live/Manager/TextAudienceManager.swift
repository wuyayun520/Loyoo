
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let str_timeValue:String = "live/equal make view video top"

/*: "streamerUid" :*/
fileprivate let str_dataTitle:[UInt8] = [0x64,0x69,0x55,0x72,0x65,0x6d,0x61,0x65,0x72,0x74,0x73]

/*: "live/userNum" :*/
fileprivate let str_textTitle:[Character] = ["l","i","v","e","/","u"]
fileprivate let str_viewName:[Character] = ["s","e","r","N","u","m"]

/*: "chatGroupId" :*/
fileprivate let str_picData:[UInt8] = [0x8a,0x81,0x88,0x9d,0xae,0x9b,0x86,0x9c,0x99,0xa0,0x8d]

/*: "live/members" :*/
fileprivate let str_makeDataValue:String = "label colorlive/m"

/*: "live/mute" :*/
fileprivate let str_viewValue:String = "live/mmodel re voice"
fileprivate let str_userData:String = "UTE"

/*: "targetUid" :*/
fileprivate let str_fileTitle:[UInt8] = [0x74,0x61,0x72,0x67,0x65,0x74,0x55,0x69,0x64]

/*: "duration" :*/
fileprivate let str_playerName:[UInt8] = [0xc5,0xd4,0xd3,0xc0,0xd5,0xc8,0xce,0xcf]

/*: "live/unmute" :*/
fileprivate let str_makeMidContent:String = "live/equal make in true"
fileprivate let str_giftName:String = "operationmute"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextAudienceManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class TextAudienceManager: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func actionOfCompletion(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (String(str_timeValue.prefix(5)) + "enter")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: str_dataTitle.reversed(), encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func pin(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (String(str_textTitle) + String(str_viewName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: str_picData.map{$0^233}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func active(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(str_makeDataValue.suffix(6)) + "embers")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: str_picData.map{$0^233}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func appMake(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (String(str_viewValue.prefix(6)) + str_userData.lowercased())
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: str_fileTitle, encoding: .utf8)!: targetUid, String(bytes: str_playerName.map{$0^161}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func stopUnmute(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(str_makeMidContent.prefix(5)) + str_giftName.replacingOccurrences(of: "operation", with: "un"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: str_fileTitle, encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
