
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotalInfoModel.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import Photos
import Photos
//: import UIKit
import UIKit

//: class TalkingVideoInfoModel: HandyJSON {
class TotalInfoModel: HandyJSON {
    //: var source: PHAsset?
    var source: PHAsset?
    //: var image: UIImage?
    var image: UIImage?
    //: var url: URL?
    var url: URL?
    //: var width: CGFloat = 0.0
    var width: CGFloat = 0.0
    //: var height: CGFloat = 0.0
    var height: CGFloat = 0.0
    //: var duration: CGFloat = 0.0
    var duration: CGFloat = 0.0
    //: var coverPath: String = ""
    var coverPath: String = ""
    //: var videoPath: String = ""
    var videoPath: String = ""
    //: var needCut: Bool = false
    var needCut: Bool = false
    //: var fromTime: CGFloat = 0.0
    var fromTime: CGFloat = 0.0
    //: var toTime: CGFloat = 0.0
    var toTime: CGFloat = 0.0

    // MARK: - 私密视频专用

    //: var isBurn: String = "0"    // 是否阅后即焚：1=是，0=否
    var isBurn: String = "0" // 是否阅后即焚：1=是，0=否
    //: var giftId: String = "0"    // 需要用该礼物解锁，0=不需要
    var giftId: String = "0" // 需要用该礼物解锁，0=不需要

    //: required init() {}
    required init() {}
}
