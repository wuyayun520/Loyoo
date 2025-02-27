
//: Declare String Begin

/*: "id" :*/
fileprivate let str_topMakeData:String = "colord"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextAppHandyJSON.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

//: struct TalkingWhoLikeMeModel: HandyJSON {
struct TextAppHandyJSON: HandyJSON {
    //: var likeId: String!
    var likeId: String! // 心动记录id
    //: var uid: String!
    var uid: String!
    //: var sex: Int?
    var sex: Int?
    //: var message: String?
    var message: String?
    //: var add_time: String?
    var add_time: String?
    //: var status: Int?
    var status: Int? // -1=不喜欢，0=未处理，1=喜欢
    //: var nickname: String?
    var nickname: String?
    //: var headPic: String?
    var headPic: String?
    //: var isTPAuth: Bool?
    var isTPAuth: Bool?
    //: var age: Int?
    var age: Int?
    //: var timeFormat: String?
    var timeFormat: String?
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false // 是否订阅
    //: var headPicFrame = ""    // 头像框
    var headPicFrame = "" // 头像框

    //: mutating func mapping(mapper: HelpingMapper) {
    mutating func mapping(mapper: HelpingMapper) {
        //: mapper <<<
        mapper <<<
            //: self.likeId <-- "id"
            self.likeId <-- "id"
    }
}
