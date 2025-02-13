
//: Declare String Begin

/*: "id" :*/
fileprivate let str_priceValue:String = "make"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PossibilityTransformable.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: struct TalkingGreetModel: HandyJSON {
struct PossibilityTransformable: HandyJSON {
    //: var greetId = ""            // 自定义打招呼文案/语音/图片id
    var greetId = "" // 自定义打招呼文案/语音/图片id
    //: var content = ""            // 如果是音频或图片，则返回音频或图片url；如果是文案则返回文字；
    var content = "" // 如果是音频或图片，则返回音频或图片url；如果是文案则返回文字；
    //: var status = -1
    var status = -1 // 审核状态，0：审核中；1：审核通过；
    //: var remark = ""             // 如果是音频才返回该字段，音频备注
    var remark = "" // 如果是音频才返回该字段，音频备注
    //: var length = 0
    var length = 0 // 如果是音频才返回该字段，音频长度

    //: mutating func mapping(mapper: HelpingMapper) {
    mutating func mapping(mapper: HelpingMapper) {
        //: mapper <<<
        mapper <<<
            //: self.greetId <-- "id"
            self.greetId <-- "id"
    }
}
