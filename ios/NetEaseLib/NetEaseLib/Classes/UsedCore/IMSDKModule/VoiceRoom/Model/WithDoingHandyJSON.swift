
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithDoingHandyJSON.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMikeListItemModel: HandyJSON {
class WithDoingHandyJSON: HandyJSON {
    //: var uid = 0
    var uid = 0 // 用户Id
    //: var coin = 0
    var coin = 0 // 当前收到的礼物金币数量
    //: var mikeStatus = 0
    var mikeStatus = 0 // 0 自己闭麦，1 房主闭麦, 2 开麦
    //: var posStatus = 0
    var posStatus = 0 // 0 位置开启 1 锁定
    //: var nickname = ""   // 昵称
    var nickname = "" // 昵称
    //: var headPic = ""    // 头像
    var headPic = "" // 头像
    //: required init() {}
    required init() {}

    // MARK: - 自定义参数

    //: var needGift = true
    var needGift = true // 是否选中送礼
}
