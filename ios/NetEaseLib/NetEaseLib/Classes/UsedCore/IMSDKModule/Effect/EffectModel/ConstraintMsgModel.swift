
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConstraintMsgModel.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

/// 动效数据；动效播放的消息数据模型

//: struct TalkingAnimatMsgModel: HandyJSON {
struct ConstraintMsgModel: HandyJSON {
    //: init() {
    init() {}

    //: var top = false
    var top = false //  优先播放
    //: var eid = -1
    var eid = -1 // 如果是本地动效，使用负数
    //: var effectUrl = ""
    var effectUrl = ""
    //: var effectType = TalkingAnimatType.Unknown
    var effectType = NameComparable.Unknown
    //: var needAnimationTimes = 0
    var needAnimationTimes = 0 // 记录需要做几次动画
//    var referObject: Any
}
