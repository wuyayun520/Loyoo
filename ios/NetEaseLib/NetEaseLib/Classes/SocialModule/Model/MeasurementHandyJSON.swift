
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MeasurementHandyJSON.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: class SocialUserListModel: HandyJSON {
class MeasurementHandyJSON: HandyJSON {
    // 用户id
    //: var uid: Int = 0
    var uid: Int = 0
    // 年龄
    //: var age: Int = 0
    var age: Int = 0
    // 头像
    //: var headPic: String = ""
    var headPic: String = ""
    // 昵称
    //: var nickname: String = ""
    var nickname: String = ""
    // 性别
    //: var sex: String = ""
    var sex: String = ""
    // 是否真人认证
    //: var isTPAuth = false
    var isTPAuth = false
    // 在线状态：1-在线;0-不在线
    //: var status: Int = 0
    var status: Int = 0
    // 等级
    //: var level: Int = 0
    var level: Int = 0
    // 是否订阅
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false
    // 星座
    //: var constellation = ""
    var constellation = ""
    // 签名
    //: var signature = ""
    var signature = ""
    // 距离
    //: var distance = ""
    var distance = ""
    // 视频
    //: var videoUrl = ""
    var videoUrl = ""
    // 视频封面
    //: var cover = ""
    var cover = ""
    // 用户活跃国家
    //: var location = ""
    var location = ""
    // 是否在直播
    //: var liveStatus =  false
    var liveStatus = false

    // 是否显示游戏图标
    //: var game =  false
    var game = false

    // MARK: - 自定义字段

    // 是否心动
    //: var isCrush: Bool = false
    var isCrush: Bool = false
    // 1.7.8是否发送快速打招呼 1-已发送;0-未发送
    //: var sendQuickMsg = 0
    var sendQuickMsg = 0
    // v1.8.6点击直播小窗跳转位置；1：跳转直播间，2：跳转个人主页
    var liveWinJumpPos = 0

    //: required init() {}
    required init() {}
}
