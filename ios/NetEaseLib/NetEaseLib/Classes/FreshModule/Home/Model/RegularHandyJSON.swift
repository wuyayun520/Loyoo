
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegularHandyJSON.swift
//  NetEaseLib
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: enum BroadcastType: Int {
enum ImageTotalLiteral: Int {
    //: case Unknow  = 0
    case Unknow = 0
    //: case Social  = 1
    case Social = 1 // 社交礼物
    //: case Mystery = 99
    case Mystery = 99 // 盲盒礼物
    //: case Empty  = 100
    case Empty = 100 // 默认展示
}

//: class SocialBroadcastModel: NSObject, HandyJSON {
class RegularHandyJSON: NSObject, HandyJSON {
    //: required override init() {
    override required init() {}

    //: var uid = 0
    var uid = 0
    //: var uNickname = ""
    var uNickname = ""
    //: var toUid = 0
    var toUid = 0
    //: var tNickname = ""
    var tNickname = ""
    //: var giftName = ""
    var giftName = ""
    //: var headPic = ""
    var headPic = ""
    //: var num = 0
    var num = 0
    //: var img = ""
    var img = ""
    //: var totalCoin = 0
    var totalCoin = 0
    //: var lockTime: TimeInterval = 0
    var lockTime: TimeInterval = 0
    //: var toRid = 0
    var toRid = 0
    //: var bgUrl = ""
    var bgUrl = ""

    //: var showType = 0
    var showType = 0
    //: var broadType = -1
    var broadType = -1
    //: var vipLevel = 0
    var vipLevel = 0
    //: var platform = 0
    var platform = 0
    //: var version = ""
    var version = ""

    //: var gameName = ""
    var gameName = ""
    //: var broadStatus = 0
    var broadStatus = 0
    //: var senderUid = 0
    var senderUid = 0
    //: var giftNameI18n = intergiftNameModel()
    var giftNameI18n = intergiftNameModel()
    //: var userCountryType = 0
    var userCountryType = 0 // 1.8.2 0:非中东，1:中东
    //: var userType = 0
    var userType = 0 // 1.8.2 0:特殊用户, 1:S级用户, 2:A级用户, 3:B级用户, 4:C级用户
}

//: class intergiftNameModel: NSObject, HandyJSON {
class intergiftNameModel: NSObject, HandyJSON {
    //: required override init() {
    override required init() {}

    //: var ar = ""
    var ar = ""
    //: var en = ""
    var en = ""
    //: var es = ""
    var es = ""
    //: var pt = ""
    var pt = ""
}
