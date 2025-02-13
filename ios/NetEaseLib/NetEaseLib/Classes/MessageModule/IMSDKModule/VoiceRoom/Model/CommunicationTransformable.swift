
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommunicationTransformable.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/9/20.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomModel: HandyJSON {
class CommunicationTransformable: HandyJSON {
    //: var roomId = ""         // zego房间号
    var roomId = "" // zego房间号
    //: var token = ""          // 进房token
    var token = "" // 进房token
    //: var isCreate = false
    var isCreate = false // 房主创建房间还是再次进入房间, true 表示创建 false 表示进入房间
    //: var chatGroupId = ""    // 腾讯AvChatRoom的群组id，需要客户端操作进群
    var chatGroupId = "" // 腾讯AvChatRoom的群组id，需要客户端操作进群
    //: var notification = ""   // 配置的置顶通知
    var notification = "" // 配置的置顶通知
    //: var userRole = 0
    var userRole = 0 // 1 主播 2 观众 4 管理员
    //: var streamerInfo = TalkingStreamerInfo()
    var streamerInfo = DataModelType() // 主播信息
    //: required public init() {}
    public required init() {}

    // MARK: - 自定义属性

    //: var position = -1
    var position = -1 // 当前用户所处麦位

    // MARK: - 自定义属性

    //: var muteExpireAt = 0
    var muteExpireAt = 0 // 1.8.0 我被禁言的到期时间戳，0表示未禁言
}
