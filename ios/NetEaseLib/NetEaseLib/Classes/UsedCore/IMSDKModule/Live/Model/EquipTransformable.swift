
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EquipTransformable.swift
//  AbroadTalking
//
//  Created by young on 2023/8/10.
//

//: import UIKit
import UIKit

//: class TalkingFloatingScreenModel: HandyJSON {
class EquipTransformable: HandyJSON {
    // 头像
    //: var headPic = ""
    var headPic = ""
    // 背景
    //: var bgPic = ""
    var bgPic = ""
    // 内容
    //: var content = ""
    var content = ""
    // -1=不跳转，1=个人中心，2=直播间，3=h5页面（此时下发的jumpKey是url，需要客户端拼接H5域名）
    //: var jumpType = ""
    var jumpType = ""
    // 跳转参数
    //: var jumpKey = ""
    var jumpKey = ""

    //: required init() {}
    required init() {}
}
