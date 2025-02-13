
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableTransformable.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/8.
//

//: import UIKit
import UIKit

//: struct TalkingVideoCallRecordModel: HandyJSON {
struct EnableTransformable: HandyJSON {
    //: var uid = 0
    var uid = 0 // 用户id
    //: var headPic = ""    // 头像
    var headPic = "" // 头像
    //: var headPicFrame = ""    // 头像框
    var headPicFrame = "" // 头像框
    //: var nickname = ""    // 昵称
    var nickname = "" // 昵称
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 0 离线 1 在线
    //: var duration = 0
    var duration = 0 // 通话时长 单位 s
    //: var startTime = ""   // 通话开始时间
    var startTime = "" // 通话开始时间
    //: var callStatus = 0
    var callStatus = 0 // 0 接通电话 1 拨打电话
}
