
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TallyModelType.swift
//  AbroadTalking
//
//  Created by young on 2022/11/15.
//

//: import UIKit
import UIKit

/// 自定义模型，处理socket下发字典
//: class TalkingMatchResultModel: HandyJSON {
class TallyModelType: HandyJSON {
    // 匹配Id
    //: var matchId: Int = 0
    var matchId: Int = 0
    // 用户id
    //: var uid: Int = 0
    var uid: Int = 0
    // 年龄
    //: var age: Int = 0
    var age: Int = 0
    // 头像
    //: var photos = [String]()
    var photos = [String]()
    // 昵称
    //: var nickname: String = ""
    var nickname: String = ""
    // 性别
    //: var sex: String = ""
    var sex: String = ""
    // 是否真人认证
    //: var isTPAuth = false
    var isTPAuth = false
    // 消息类型，0：视频通话，1：语音通话
    //: var type: Int = 0
    var type: Int = 0
    // 通话类型
    //: var source: String = ""
    var source: String = ""
    // 封面视频地址
    //: var videoUrl: String = ""
    var videoUrl: String = ""
    // 封面视频图片地址
    //: var cover: String = ""
    var cover: String = ""
    // 封面头像地址
    //: var headPic: String = ""
    var headPic: String = ""
    //  原价
    //: var originalFee: Int = 0
    var originalFee: Int = 0
    // 现价
    //: var fee: Int = -1
    var fee: Int = -1
    // 直播中原价
    //: var videoPrice: Int = 0
    var videoPrice: Int = 0
    // 直播中现价
    //: var discountVideoPrice: Int = -1
    var discountVideoPrice: Int = -1

    //
    //: var isScroll = false
    var isScroll = false
    // 直播地址
    //: var livePlayUrl: String = ""
    var livePlayUrl: String = ""

    //: required init() {}
    required init() {}
}

//: struct TalkingMatchRemoveRedoModel {
struct BailRedoModel {
    //: var RRedoId: String = ""
    var RRedoId: String = ""
    //: var RTime: TimeInterval
    var RTime: TimeInterval
}

//: extension TalkingMatchRemoveRedoModel: Hashable {
extension BailRedoModel: Hashable {
    //: func hash(into hasher: inout Hasher) {
    func hash(into hasher: inout Hasher) {
        //: hasher.combine(RRedoId)
        hasher.combine(RRedoId)
        //: hasher.combine(RTime)
        hasher.combine(RTime)
    }
}
