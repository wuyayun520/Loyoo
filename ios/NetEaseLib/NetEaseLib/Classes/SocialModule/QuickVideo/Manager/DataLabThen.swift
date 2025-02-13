
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let str_hiddenValue:[Character] = ["m","f"]
fileprivate let str_textName:String = "view task value print/vid"
fileprivate let str_makeValue:String = "for time self user listenh/switch"

/*: "status" :*/
fileprivate let str_addModeName:[UInt8] = [0x73,0x74,0x61,0x74,0x75,0x73]

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let str_matchData:String = "mf/viwith tar"
fileprivate let str_toShowContent:String = "tch/cmanager outside view"
fileprivate let str_subLogData:[Character] = ["c","h"]

/*: "matchVersion" :*/
fileprivate let str_releaseDomainValue:[UInt8] = [0x6d,0x61,0x74,0x63,0x68,0x56,0x65,0x72,0x73,0x69,0x6f,0x6e]

/*: "v4" :*/
fileprivate let str_dayData:[Character] = ["v","4"]

/*: "enterType" :*/
fileprivate let str_rowText:[UInt8] = [0x65,0x6e,0x74,0x65,0x72,0x54,0x79,0x70,0x65]

/*: "mf/videoMatch/headPics" :*/
fileprivate let str_fileTouchName:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","h","e"]
fileprivate let str_miniText:String = "var return video count sizeadPics"

/*: "mf/videoMatch/matchV3" :*/
fileprivate let str_limitText:[Character] = ["m","f","/","v"]
fileprivate let str_textFrontTitle:[Character] = ["i","d","e","o","M","a","t","c","h","/","m","a","t","c","h","V","3"]

/*: "matchId" :*/
fileprivate let str_imageData:[UInt8] = [0x6d,0x61,0x74,0x63,0x68,0x49,0x64]

/*: "mf/videoMatch/matchV4" :*/
fileprivate let str_moveData:String = "mf/videomodel let live self"
fileprivate let str_requestTitle:String = "Matclabel cell container in"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataLabThen.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class DataLabThen: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func showWith(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(str_hiddenValue) + String(str_textName.suffix(4)) + "eoMatc" + String(str_makeValue.suffix(8)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = [String(bytes: str_addModeName, encoding: .utf8)!: status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func pingCompletion(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(str_matchData.prefix(5)) + "deoMa" + String(str_toShowContent.prefix(5)) + "heckMat" + String(str_subLogData))
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: str_releaseDomainValue, encoding: .utf8)!: "v4", String(bytes: str_rowText, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func mentalPictureTop(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(str_fileTouchName) + String(str_miniText.suffix(6)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func heading(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(str_limitText) + String(str_textFrontTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = [String(bytes: str_imageData, encoding: .utf8)!: matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func actionAt(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(str_moveData.prefix(8)) + String(str_requestTitle.prefix(4)) + "h/matchV4")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
