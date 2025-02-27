
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SheHandyJSON.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/6.
//

//: import UIKit
import UIKit

//: class TalkingChatRoomListModel: NSObject, HandyJSON {
class SheHandyJSON: NSObject, HandyJSON {
    //: var roomId = ""             /// 聊天室id
    var roomId = "" /// 聊天室id
    //: var name = ""               /// 聊天室名称
    var name = "" /// 聊天室名称
    //: var icon = ""               /// 聊天室icon图片地址
    var icon = "" /// 聊天室icon图片地址
    //: var num = ""                /// 在线人数
    var num = "" /// 在线人数
    //: var msg = ""                /// 最近一条消息
    var msg = "" /// 最近一条消息
    //: var adminUids: Array<String>?
    var adminUids: [String]? /// 管理员uid
    //: var isFull = false
    var isFull = false /// 是否爆满：true-是；false-否

    //: required override init() {}
    override required init() {}
}
