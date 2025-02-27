
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MediaTransformable.swift
//  NetEaseLib
//
//  Created by Hemming on 2024/9/24.
//

//: import Foundation
import Foundation

//: struct PartyListModel: HandyJSON {
struct MediaTransformable: HandyJSON {
    //: var roomId: Int = 0
    var roomId: Int = 0 // 房间id
    //: var name: String = ""       // 用户名称
    var name: String = "" // 用户名称
    //: var pic: String = ""        // 封面/头像
    var pic: String = "" // 封面/头像
    //: var country: String = ""    // 国家
    var country: String = "" // 国家
    //: var flag: String = ""       // 国旗
    var flag: String = "" // 国旗
    //: var score: Int = 0
    var score: Int = 0 // 热度
    //: var uid: Int = 0
    var uid: Int = 0 //  用户ID
}
