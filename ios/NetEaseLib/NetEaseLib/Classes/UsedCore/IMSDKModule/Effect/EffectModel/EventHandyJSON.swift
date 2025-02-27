
//: Declare String Begin

/*: "id" :*/
fileprivate let str_barName:String = "iimage"

/*: "num" :*/
fileprivate let str_labelValue:[Character] = ["n","u","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EventHandyJSON.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

//: import UIKit
import UIKit

//: @objc public enum ChatGiftAnimatType: Int {
@objc public enum UpAppSendable: Int {
    //: case normal  = 1
    case normal = 1 // 普通礼物
    //: case myStery = 2
    case myStery = 2 // 盲盒礼物
    //: case vip = 3
    case vip = 3 // vip礼物
    //: case king  = 5
    case king = 5 // 帝王礼物
}

//: struct TalkingGiftMsgAnimatModel: HandyJSON {
struct EventHandyJSON: HandyJSON {
    //: init() {
    init() {}

    //: var fromUid: Int?
    var fromUid: Int?
    //: var fromNickname = ""
    var fromNickname = ""
    //: var fromHeadPic = ""
    var fromHeadPic = ""
    //: var pid: Int?
    var pid: Int? // 礼物ID
    //: var giftPic = ""
    var giftPic = ""
    //: var time: Int?
    var time: Int?
    //: var pname = ""
    var pname = ""
    //: var iosEffect = ""
    var iosEffect = ""
    //: var iosVapEffect = ""
    var iosVapEffect = ""
    //: var num = 0
    var num = 0 // 送礼数量
    //: var sendNum = 0
    var sendNum = 0 // 送礼人数
    //: var comboNum = 0
    var comboNum = 0 // 连击数量
    //: var isDisplay = false
    var isDisplay = false // 是否展示
    //: var animationTimes = 0
    var animationTimes = 0
    //: var showType = 0
    var showType = 0 /// UpAppSendable
    //: var nameI18n = intergiftNameModel()
    var nameI18n = intergiftNameModel()
    //: var giftImg: UIImage?
    var giftImg: UIImage?

    //: mutating func setGiftNum(giftNum: Int) {
    mutating func totaleraction(giftNum: Int) {
        //: self.num = giftNum
        self.num = giftNum
    }
}

//: struct TalkingGiftChatMsgAnimatModel: HandyJSON {
struct ViewAnimatModel: HandyJSON {
    //: init() {
    init() {}

    //: var giftId = ""
    var giftId = ""
    //: var name = ""               /// 礼物名称
    var name = "" /// 礼物名称
    //: var price = ""              /// 礼物价格
    var price = "" /// 礼物价格
    //: var imgPreview = ""
    var imgPreview = ""
    //: var giftNum = 0
    var giftNum = 0 /// 礼物数量
    //: var effect = ""             /// 礼物动效地址
    var effect = "" /// 礼物动效地址
    //: var comboNum = 0
    var comboNum = 0 /// 连击次数：0则是没有连击
    //: var iosEffect = ""          /// 动效地址 换了名称 (才有值)
    var iosEffect = "" /// 动效地址 换了名称 (才有值)
    //: var animationTimes = 0
    var animationTimes = 0
    //: var showType = 0
    var showType = 0
    //: var iosEmperorEffect: NSArray?
    var iosEmperorEffect: NSArray? /// 帝王动效组合
    //: var iosVapEffect = ""       /// VAP 动效
    var iosVapEffect = "" /// VAP 动效
    //: var sendNum = 0
    var sendNum = 0 ///  送礼人数

    //: mutating func mapping(mapper: HelpingMapper) {
    mutating func mapping(mapper: HelpingMapper) {
        //: mapper <<<
        mapper <<<
            //: self.giftId <-- "id"
            self.giftId <-- "id"
        //: mapper <<<
        mapper <<<
            //: self.giftNum <-- "num"
            self.giftNum <-- (String(str_labelValue))
    }
}
