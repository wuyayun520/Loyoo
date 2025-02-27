
//: Declare String Begin

/*: "id" :*/
fileprivate let str_fromData:[Character] = ["i","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingRoomInfoModel.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/7.
//

//: import UIKit
import UIKit

//: enum ChatGiftType: Int {
enum GiftQuickLookable: Int {
    //: case normal = 1
    case normal = 1 // 普通礼物
    //: case myStery  = 2
    case myStery = 2 // 盲盒礼物
    //: case vip  = 3
    case vip = 3 // vip礼物
    //: case king  = 4
    case king = 4 // 帝王礼物
}

//: struct TalkingRoomGiftModel: HandyJSON {
struct WithMeasurable: HandyJSON {
    //: var gid: String!
    var gid: String! // 礼物Id
    //: var price: Int = 0
    var price: Int = 0 // 礼物价格
    //: var sort: String?
    var sort: String?
    //: var name: String = ""           // 礼物名称
    var name: String = "" // 礼物名称
    //: var image: String?
    var image: String?
    //: var imgPreview: String?
    var imgPreview: String? // 礼物图标
    //: var cornerMark: String = ""     // 礼物右上角图标
    var cornerMark: String = "" // 礼物右上角图标
    //: var scene: Int?
    var scene: Int?
    //: var isYear: Bool?
    var isYear: Bool?
    //: var send_level: Int?
    var send_level: Int?
    //: var yyLayout: YYTextLayout?
    var yyLayout: YYTextLayout?
    //: var select: Bool?
    var select: Bool?
    //: var num: Int = 0
    var num: Int = 0 // 礼物数量
    //: var showType: Int?
    var showType: Int?
    //: var description: String?
    var description: String?
    //: var pkgItemsetId: String?
    var pkgItemsetId: String? // 背包Id

    //: mutating func mapping(mapper: HelpingMapper) {
    mutating func mapping(mapper: HelpingMapper) { // 自定义解析规则，日期数字颜色，如果要指定解析格式，子类实现重写此方法即可
        //: mapper <<<
        mapper <<<
            //: self.gid <-- "id"
            self.gid <-- "id"
    }
}

//: struct TalkingGiftNumArrModel: HandyJSON {
struct MediaArrModel: HandyJSON {
    //: var num: Int?
    var num: Int? /// 数量
    //: var tag: String?
    var tag: String? /// 说明
    //: var targetPid: Int?
    var targetPid: Int? /// targetId: 活动礼物 > 0  , 非活动礼物 = 0
}

//: struct TalkingGiftSelectedModel: HandyJSON {
struct ToHandyJSON: HandyJSON {
    //: var hotGiftName: String?
    var hotGiftName: String? /// 热门礼物名称
    //: var hotGiftNum: Int = 1
    var hotGiftNum: Int = 1 /// 记住热门数量
    //: var lastHotIndexPath: IndexPath = IndexPath.init(item: 0, section: 0)
    var lastHotIndexPath: IndexPath = .init(item: 0, section: 0) /// 记住热门选择
    //: var lastHotCell: UICollectionViewCell?
    var lastHotCell: UICollectionViewCell?

    //: var packageGiftName: String?
    var packageGiftName: String? /// 背包礼物名称
    //: var packageGiftNum: Int = 1
    var packageGiftNum: Int = 1 /// 记住背包数量
    //: var lastPackageIndexPath: IndexPath?
    var lastPackageIndexPath: IndexPath? /// 记住背包选择
    //: var lastPackageItemID: Int?
    var lastPackageItemID: Int? ///

    //: var lastShowType: Int?
    var lastShowType: Int?
    //: var lastDescription: String?
    var lastDescription: String?
    //: var isNoChangeGiftNumber = false
    var isNoChangeGiftNumber = false /// 一些特别礼物（盲盒礼物），不可选择数量
}
