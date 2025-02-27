
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoequalListModel.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/7/25.
//

//: import UIKit
import UIKit

//: struct TalkingRemindListModel: HandyJSON {
struct CoequalListModel: HandyJSON {
    //: var uid = 0
    var uid = 0 // 动态用户Id
    //: var momentId = 0
    var momentId = 0 // 动态Id
    //: var headPic = ""         // 头像
    var headPic = "" // 头像
    //: var nickname = ""        // 昵称
    var nickname = "" // 昵称
    //: var replyNickname = ""   // 回复方昵称
    var replyNickname = "" // 回复方昵称
    //: var headPicFrame = ""    // 回复方头像框
    var headPicFrame = "" // 回复方头像框
    //: var addTime = ""         // 时间
    var addTime = "" // 时间
    //: var type = 0
    var type = 0 // 0 点赞 1 评论 2 回复
    //: var imageUrl = ""        // 动态第一张图片或者动态视频封面
    var imageUrl = "" // 动态第一张图片或者动态视频封面
    //: var momentType = 0
    var momentType = 0 // '1 图片动态 2 视频动态',
    //: var content = ""         // 主体内容
    var content = "" // 主体内容
    //: var replyContent = ""    // 回复内容
    var replyContent = "" // 回复内容
    //: var status = 1
    var status = 1 // 1 正常 0 已删除
}
