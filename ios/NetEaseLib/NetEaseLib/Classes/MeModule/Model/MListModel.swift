
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MListModel.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingUserSignListModel: HandyJSON {
class MListModel: HandyJSON {
    //: var start = ""          // 开始日期
    var start = "" // 开始日期
    //: var end = ""            // 结束日期
    var end = "" // 结束日期
    //: var curr = ""           // 当前日期
    var curr = "" // 当前日期
    //: var sign = [Int]()
    var sign = [Int]() // 已经签到的位置
    //: var coin = 0
    var coin = 0 // 签到的金币
    //: var totalCoin = 0.0
    var totalCoin = 0.0 // 用户当前余额

    //: required init() {}
    required init() {}
}
