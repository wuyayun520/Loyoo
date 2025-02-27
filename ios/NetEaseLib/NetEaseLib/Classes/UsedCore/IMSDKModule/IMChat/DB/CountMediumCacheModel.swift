
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let str_frameValue:String = "text"
fileprivate let str_requestWithValue:String = "user let var formoUserInfo"

/*: "toUid" :*/
fileprivate let str_translateAppShowName:String = "toUidtext frame space number var"

/*: "nickname" :*/
fileprivate let str_colorRegularValue:String = "makeic"
fileprivate let str_tipCancelData:[Character] = ["k","n","a","m","e"]

/*: "headPic" :*/
fileprivate let str_quickValue:[Character] = ["h","e","a","d","P","i"]
fileprivate let str_modelText:String = "up"

/*: "sex" :*/
fileprivate let str_makeData:String = "topx"

/*: "age" :*/
fileprivate let str_screenSendName:String = "afinanciale"

/*: "tpAuth" :*/
fileprivate let str_modelData:[Character] = ["t"]
fileprivate let str_timeBlockName:String = "equal for play do thoughtpAuth"

/*: "interest" :*/
fileprivate let str_indexData:[Character] = ["i","n","t","e","r","e"]
fileprivate let str_modelSessionTitle:[Character] = ["s","t"]

/*: "picture" :*/
fileprivate let str_viewValueNoName:String = "gift"
fileprivate let str_dataVoiceContent:[Character] = ["c","t","u","r","e"]

/*: "loungePlus" :*/
fileprivate let str_detailName:[Character] = ["l","o","u","n","g","e","P","l"]
fileprivate let str_circleData:String = "link"

/*: "vipSkinId" :*/
fileprivate let str_colorData:[Character] = ["v","i","p","S","k","i","n","I"]
fileprivate let str_roomContent:[Character] = ["d"]

/*: "voicePrice" :*/
fileprivate let str_infoIndexTitle:String = "vviewi"
fileprivate let str_layerData:[Character] = ["c","e","P","r","i","c","e"]

/*: "videoPrice" :*/
fileprivate let str_componentName:[Character] = ["v","i","d","e","o"]
fileprivate let str_viewName:String = "string view view to cameraPrice"

/*: "voiceVIPPrice" :*/
fileprivate let str_pathContentData:[Character] = ["v","o","i","c","e","V"]
fileprivate let str_someoneValue:[Character] = ["I","P","P","r","i","c","e"]

/*: "videoVIPPrice" :*/
fileprivate let str_selectedText:String = "let view space gift pivideoVIP"
fileprivate let str_networkData:[Character] = ["P","r","i","c","e"]

/*: "version" :*/
fileprivate let str_imageValue:String = "versold"
fileprivate let str_countData:[Character] = ["o","n"]

/*: "headPicFrame" :*/
fileprivate let str_policyStyleTitle:String = "table in likeheadPicF"
fileprivate let str_whiteValue:String = "rtextme"

/*: "signature" :*/
fileprivate let str_tableName:String = "SIGNA"

/*: "constellation" :*/
fileprivate let str_imageTitle:String = "toonstell"
fileprivate let str_sexRequestValue:String = "labtion"

/*: "onlineStatus" :*/
fileprivate let str_equalValue:[Character] = ["o","n","l","i","n","e"]
fileprivate let str_hiddenName:[Character] = ["S","t","a","t","u","s"]

/*: "isNewUser" :*/
fileprivate let str_labName:String = "isNewUsermake time"

/*: "isOfficial" :*/
fileprivate let str_iconTitle:String = "isOffilet var"

/*: "userStatus" :*/
fileprivate let str_bottomText:String = "index video inuserSta"
fileprivate let str_equalData:String = "tfinish"

/*: "remarkInfo" :*/
fileprivate let str_removeData:String = "rfilemar"
fileprivate let str_modelImageValue:String = "view newskInfo"

/*: "content" :*/
fileprivate let str_linkContent:[Character] = ["c","o","n","t","e","n"]
fileprivate let str_cellNameTitle:String = "select"

/*: "top" :*/
fileprivate let str_serverModelTitle:String = "togo"

/*: "enableVideoCall" :*/
fileprivate let str_topTitle:String = "framenab"
fileprivate let str_cloudValue:String = "model labdeoCal"
fileprivate let str_attributeData:[Character] = ["l"]

/*: "voiceBean" :*/
fileprivate let str_styleValue:[Character] = ["v","o","i","c","e","B","e","a","n"]

/*: "videoBean" :*/
fileprivate let str_videoName:[Character] = ["v","i","d","e","o","B","e","a"]
fileprivate let str_giftData:String = "app"

/*: "prompt" :*/
fileprivate let str_toText:String = "pmodelompt"

/*: "matchRate" :*/
fileprivate let str_imageKindValue:String = "matcorner"
fileprivate let str_normalName:[Character] = ["e"]

/*: "existSess" :*/
fileprivate let str_picStyleName:[Character] = ["e","x","i"]
fileprivate let str_handleContent:String = "true selected between else upstSess"

/*: "totalIntimate" :*/
fileprivate let str_clickMakeText:String = "totsucceed"
fileprivate let str_pathValue:String = "magreet"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountMediumCacheModel.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class CountMediumCacheModel: NSObject, HandyJSON {
public class CountMediumCacheModel: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> CountMediumCacheModel {
    public class func funcWith(userDic: [String: Any]) -> CountMediumCacheModel {
        //: let wrap = CountMediumCacheModel.init()
        let wrap = CountMediumCacheModel()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((str_frameValue.replacingOccurrences(of: "text", with: "t") + String(str_requestWithValue.suffix(9)))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(str_frameValue.replacingOccurrences(of: "text", with: "t") + String(str_requestWithValue.suffix(9)))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains((String(str_translateAppShowName.prefix(5)))) {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic[(String(str_translateAppShowName.prefix(5)))] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(str_colorRegularValue.replacingOccurrences(of: "make", with: "n") + String(str_tipCancelData))] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(String(str_quickValue) + str_modelText.replacingOccurrences(of: "up", with: "c"))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic[(str_makeData.replacingOccurrences(of: "top", with: "se"))] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic[(str_screenSendName.replacingOccurrences(of: "financial", with: "g"))] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(str_modelData) + String(str_timeBlockName.suffix(5)))] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(String(str_indexData) + String(str_modelSessionTitle))] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(str_viewValueNoName.replacingOccurrences(of: "gift", with: "pi") + String(str_dataVoiceContent))] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(String(str_detailName) + str_circleData.replacingOccurrences(of: "link", with: "us"))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(str_colorData) + String(str_roomContent))] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(str_infoIndexTitle.replacingOccurrences(of: "view", with: "o") + String(str_layerData))] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(String(str_componentName) + String(str_viewName.suffix(5)))] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(String(str_pathContentData) + String(str_someoneValue))] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(String(str_selectedText.suffix(8)) + String(str_networkData))] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(str_imageValue.replacingOccurrences(of: "old", with: "i") + String(str_countData))] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(String(str_policyStyleTitle.suffix(8)) + str_whiteValue.replacingOccurrences(of: "text", with: "a"))] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(str_tableName.lowercased() + "ture")] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(str_imageTitle.replacingOccurrences(of: "to", with: "c") + str_sexRequestValue.replacingOccurrences(of: "lab", with: "a"))] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(String(str_equalValue) + String(str_hiddenName))] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(str_labName.prefix(9)))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(String(str_iconTitle.prefix(6)) + "cial")] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(String(str_bottomText.suffix(7)) + str_equalData.replacingOccurrences(of: "finish", with: "us"))] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((str_removeData.replacingOccurrences(of: "file", with: "e") + String(str_modelImageValue.suffix(5)))) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(str_removeData.replacingOccurrences(of: "file", with: "e") + String(str_modelImageValue.suffix(5)))] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(String(str_linkContent) + str_cellNameTitle.replacingOccurrences(of: "select", with: "t"))] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict[(str_serverModelTitle.replacingOccurrences(of: "go", with: "p"))] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((str_topTitle.replacingOccurrences(of: "frame", with: "e") + "leVi" + String(str_cloudValue.suffix(6)) + String(str_attributeData))) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(str_topTitle.replacingOccurrences(of: "frame", with: "e") + "leVi" + String(str_cloudValue.suffix(6)) + String(str_attributeData))] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((String(str_styleValue))) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(String(str_styleValue))] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((String(str_videoName) + str_giftData.replacingOccurrences(of: "app", with: "n"))) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(String(str_videoName) + str_giftData.replacingOccurrences(of: "app", with: "n"))] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((str_toText.replacingOccurrences(of: "model", with: "r"))) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(str_toText.replacingOccurrences(of: "model", with: "r"))] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((str_imageKindValue.replacingOccurrences(of: "corner", with: "c") + "hRat" + String(str_normalName))) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(str_imageKindValue.replacingOccurrences(of: "corner", with: "c") + "hRat" + String(str_normalName))] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((String(str_picStyleName) + String(str_handleContent.suffix(6)))) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(String(str_picStyleName) + String(str_handleContent.suffix(6)))] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((str_clickMakeText.replacingOccurrences(of: "succeed", with: "al") + "Inti" + str_pathValue.replacingOccurrences(of: "greet", with: "te"))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(str_clickMakeText.replacingOccurrences(of: "succeed", with: "al") + "Inti" + str_pathValue.replacingOccurrences(of: "greet", with: "te"))] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}
