
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableMeasurable.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/13.
//

//: import UIKit
import UIKit

// MARK: 预览的fill数据

//: class TPreviewInfoModel: HandyJSON {
class EnableMeasurable: HandyJSON {
    //: enum TPreviewFormatType: Int {
    enum LimitType: Int {
        //: case userInfoDetailType = 0
        case userInfoDetailType = 0
        //: case momentListType = 1
        case momentListType = 1
    }

    //: var uid: String = ""
    var uid: String = ""
    //: var mid: String = ""
    var mid: String = ""
    //: var mType: String = ""
    var mType: String = ""
    //: var headPic: String = ""
    var headPic: String = ""
    //: var nickname: String = ""
    var nickname: String = ""
    //: var isTPAuth = false
    var isTPAuth = false
    //: var age: String = ""
    var age: String = ""
    //: var sex: String = ""
    var sex: String = ""
    //: var level: String = ""
    var level: String = ""
//    var photosArray: Array<String> = []
    //: var commentContent: String?
    var commentContent: String?
    //: var formatType: TPreviewFormatType?
    var formatType: LimitType?

    //: required init() {}
    required init() {}
}
