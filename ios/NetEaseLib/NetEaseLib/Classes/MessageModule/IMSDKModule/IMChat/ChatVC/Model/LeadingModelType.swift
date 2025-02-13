
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LeadingModelType.swift
//  AbroadTalking
//
//  Created by young on 2023/4/6.
//

//: import UIKit
import UIKit

/// 聊天室专用本地model
//: class TalkingChatRoomInfoModel: NSObject, HandyJSON {
class LeadingModelType: NSObject, HandyJSON {
    //: var roomId = ""                 /// 聊天室id
    var roomId = "" /// 聊天室id
    //: var name = ""                   /// 聊天室名称
    var name = "" /// 聊天室名称
    //: var icon = ""                   /// 聊天室icon图片地址
    var icon = "" /// 聊天室icon图片地址
    //: var isOwner = false
    var isOwner = false /// 是否房主
    //: var admin_uids: Array<String>?
    var admin_uids: [String]? /// 管理员uid
    //: var identity = 0
    var identity = 0

    //: required override init() {}
    override required init() {}
}
