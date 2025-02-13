
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CloseMeasurable.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

//: struct TalkingAttentionModel: HandyJSON {
struct CloseMeasurable: HandyJSON {
    //: var uid: String!
    var uid: String! // 对方id
    //: var headPic: String?
    var headPic: String? // 头像
    //: var nickname: String?
    var nickname: String? // 昵称
    //: var addTime: String?
    var addTime: String? // 关注时间
    //: var signature: Int?
    var signature: Int? // 签名
    //: var mutualAtt: Bool?
    var mutualAtt: Bool? // 是否双向关注
    //: var isAttention: Bool?
    var isAttention: Bool? // 是否关注
    //: var sex: Int?
    var sex: Int? // 性别1男2女
    //: var age: Int?
    var age: Int? // 年龄
    //: var isTPAuth = false
    var isTPAuth = false // 身份验证
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false // 是否订阅
    //: var headPicFrame = ""    // 头像框
    var headPicFrame = "" // 头像框
}
