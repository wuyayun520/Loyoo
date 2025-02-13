
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableMeasurable.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗Model

//: class TalkingVideoInitivCallModel: HandyJSON {
class TableMeasurable: HandyJSON {
    // 配置通话的视频id
    //: var videoId = 0
    var videoId = 0
    // 配置通话的用户id
    //: var uid = 0
    var uid = 0
    // 弹窗封面视频地址
    //: var winVideoUrl: String = ""
    var winVideoUrl: String = ""
    // 自动接通倒计时
    //: var winCountdown = 5
    var winCountdown = 5
    // 接通视频地址
    //: var callVideoUrl: String = ""
    var callVideoUrl: String = ""
    // 自动挂断倒计时
    //: var callCountdown = 0
    var callCountdown = 0
    // 当前通话的id
    //: var logId = 0
    var logId = 0
    // 弹窗封面地址类型 1 图片 2 视频
    //: var winUrlType = 0
    var winUrlType = 0
    // 视频通话禁用 0 未禁用  1 已禁用
    //: var isBan = 0
    var isBan = 0

    //: required init() {}
    required init() {}
}
