
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimitMeasurable.swift
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: let VideoMsgTableViewWidth = actualWidth(w: 275)
let a_nameValue = actualWidth(w: 275)
//: let VideoMsgTableViewHeight =  actualWidth(w: 200)
let a_bottomValue = actualWidth(w: 200)
//: let VideocellLineSpeing = 3
let a_intervalData = 3 /// cell间距

//: struct TalkingVideoCallDanmuModel: HandyJSON {
struct LimitMeasurable: HandyJSON {
    //: var msgId = ""
    var msgId = ""
    //: var senderUid = ""
    var senderUid = ""
    //: var toUid = ""
    var toUid = ""
    //: var nickname = ""
    var nickname = ""
    //: var content = ""
    var content = ""
    //: var transContent = ""
    var transContent = ""
    //: var messageType = 1
    var messageType = 1 // 1.普通弹幕文字消息
    //: var isMySender = false
    var isMySender = false // 是否自己发送的
    //: var msgHeight = 0.0
    var msgHeight = 0.0 // 消息高度
    //: var msgWidth = 0.0
    var msgWidth = 0.0 // 消息宽度
    //: var bgColor = UIColor.init(rgb: 0x000000, alpha: 0.25)
    var bgColor = UIColor(rgb: 0x000000, alpha: 0.25) // 背景颜色
    //: var msgAttribText = NSMutableAttributedString.init()
    var msgAttribText = NSMutableAttributedString()
}
