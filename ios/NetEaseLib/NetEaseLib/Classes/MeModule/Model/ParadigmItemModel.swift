
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParadigmItemModel.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: enum DailyItemType {
enum EnableeFlushItemType {
    //: case Overdue_NotSignIn
    case Overdue_NotSignIn // 过期未签到
    //: case Overdue_SignIn
    case Overdue_SignIn // 过期已签到
    //: case Today
    case Today // 今天
    //: case Future
    case Future // 将来
}

//: class TalkingDailyItemModel: NSObject {
class ParadigmItemModel: NSObject {
    //: var day = ""                                   // 日期
    var day = "" // 日期
    //: var addIcon = ""                               // 签到添加金币数
    var addIcon = "" // 签到添加金币数
    //: var type: DailyItemType = .Overdue_NotSignIn
    var type: EnableeFlushItemType = .Overdue_NotSignIn // 签到类型
}
