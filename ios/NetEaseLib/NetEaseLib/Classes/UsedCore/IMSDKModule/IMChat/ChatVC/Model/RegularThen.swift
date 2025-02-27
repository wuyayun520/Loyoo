
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegularThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/6.
//

//: import UIKit
import UIKit

/// 聊天室成员信息

//: class TalkingChatRoomMemberModel: NSObject, HandyJSON {
class RegularThen: NSObject, HandyJSON {
    //: var uid = ""                    /// 用户uid
    var uid = "" /// 用户uid
    //: var nickname = ""               /// 昵称
    var nickname = "" /// 昵称
    //: var headPic = ""               /// 头像地址
    var headPic = "" /// 头像地址
    //: var isOwner = false
    var isOwner = false /// 是否为族长：1-是；0-否
    //: var age = 0
    var age = 0 /// 年龄
    //: var sex = 0
    var sex = 0 /// 性别：1-男性；2-女性
    //: var signature = ""             /// 个性签名
    var signature = "" /// 个性签名
    //: var identity = 0
    var identity = 0 /// 在家族中的身份：1-族长；2-管理员；3-普通成员；4-副族长；5-长老
    //: var familyFrame = ""           /// 家族头像框url，空表示无
    var familyFrame = "" /// 家族头像框url，空表示无
    //: var familyMedal = ""           /// 家族勋章url，空表示无
    var familyMedal = "" /// 家族勋章url，空表示无
    //: var isVisitor = false
    var isVisitor = false /// 是否为游客

    //: required override init() {}
    override required init() {}
}
