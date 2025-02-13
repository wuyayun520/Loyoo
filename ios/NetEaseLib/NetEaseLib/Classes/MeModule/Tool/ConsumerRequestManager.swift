
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let str_itemValue:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","U","s"]
fileprivate let str_playTitle:[Character] = ["e","r","I","n","f","o"]

/*: "uid" :*/
fileprivate let str_minMethodData:[UInt8] = [0x75,0x69,0x64]

/*: "mf/user/getReceivedGifts" :*/
fileprivate let str_mainText:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","R","e","c","e","i","v","e","d","G","i","f","t"]
fileprivate let str_beautyTitle:String = "title"

/*: "mf/crush/send" :*/
fileprivate let str_viewTitle:String = "mf/crclass data"
fileprivate let str_textTitle:String = "D"

/*: "targetUid" :*/
fileprivate let str_infoText:[UInt8] = [0x74,0x61,0x72,0x67,0x65,0x74,0x55,0x69,0x64]

/*: "user/attention" :*/
fileprivate let str_instanceLabName:[UInt8] = [0x75,0x73,0x65,0x72,0x2f,0x61,0x74,0x74,0x65,0x6e,0x74,0x69,0x6f,0x6e]

/*: "user/removeAttention" :*/
fileprivate let str_textDataName:String = "urequestr"
fileprivate let str_toolContent:String = "eAttenfalse add extension range model"
fileprivate let str_succeedContent:String = "tscreenon"

/*: "attentionUid" :*/
fileprivate let str_languageTitle:[UInt8] = [0x61,0x74,0x74,0x65,0x6e,0x74,0x69,0x6f,0x6e,0x55,0x69,0x64]

/*: "removeAttentionUid" :*/
fileprivate let str_upText:[UInt8] = [0x64,0x69,0x55,0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x41,0x65,0x76,0x6f,0x6d,0x65,0x72]

/*: "user/addBlack" :*/
fileprivate let str_colorValue:[UInt8] = [0xe4,0xe2,0xf4,0xe3,0xbe,0xf0,0xf5,0xf5,0xd3,0xfd,0xf0,0xf2,0xfa]

/*: "user/remBlack" :*/
fileprivate let str_dataEqualValue:[Character] = ["u","s","e","r","/"]
fileprivate let str_blockTitle:[Character] = ["r","e"]
fileprivate let str_yesValue:String = "add managermBlack"

/*: "mf/moment/like" :*/
fileprivate let str_nameData:[Character] = ["m","f","/","m","o","m","e"]
fileprivate let str_topLeadingManagerData:[Character] = ["n","t","/","l","i","k","e"]

/*: "momentId" :*/
fileprivate let str_indexName:[UInt8] = [0xbc,0xbe,0xbc,0xb4,0xbf,0xa5,0x98,0xb5]

/*: "type" :*/
fileprivate let str_recordData:[UInt8] = [0x74,0x79,0x70,0x65]

/*: "mf/user/uploadAuthPic" :*/
fileprivate let str_sectionName:[Character] = ["m","f","/","u","s","e","r","/","u","p","l","o","a","d","A","u","t","h"]
fileprivate let str_titleSayName:String = "Picthought extension share"

/*: "auth_pic" :*/
fileprivate let str_messageData:[UInt8] = [0xc9,0xdd,0xdc,0xc0,0xf7,0xd8,0xc1,0xcb]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConsumerRequestManager.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class ConsumerRequestManager: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func emptyEach(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(str_itemValue) + String(str_playTitle))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_minMethodData, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func halogen(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(str_mainText) + str_beautyTitle.replacingOccurrences(of: "title", with: "s"))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_minMethodData, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func tailgate(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(str_viewTitle.prefix(5)) + "ush/sen" + str_textTitle.lowercased())
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: str_infoText, encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func bigTo(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: str_instanceLabName, encoding: .utf8)! : (str_textDataName.replacingOccurrences(of: "request", with: "se") + "/remov" + String(str_toolContent.prefix(6)) + str_succeedContent.replacingOccurrences(of: "screen", with: "i"))
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: str_languageTitle, encoding: .utf8)!: uid] : [String(bytes: str_upText.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func nextIn(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: str_colorValue.map{$0^145}, encoding: .utf8)! : (String(str_dataEqualValue) + String(str_blockTitle) + String(str_yesValue.suffix(6)))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_minMethodData, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    ModelAtListManager.shared.dismissFor(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    ModelAtListManager.shared.someSource(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func inventoryItem(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(str_nameData) + String(str_topLeadingManagerData))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: str_indexName.map{$0^209}, encoding: .utf8)!: mid, String(bytes: str_recordData, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func minAwakeCompletion(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func petite(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(str_sectionName) + String(str_titleSayName.prefix(3)))
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: str_messageData.map{$0^168}, encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
