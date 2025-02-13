// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameworkValueModelType.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class TalkingVoiceMsgPlayModel: NSObject, HandyJSON {
public class FrameworkValueModelType: NSObject, HandyJSON {
    /// 播放状态 0初始化，1播放，2暂停，BOOL值不行
    //: @objc public dynamic var isPlayingStatus = 0
    @objc public dynamic var isPlayingStatus = 0
    /// 菊花 0初始化，1播放，2暂停
    //: @objc public dynamic var activityShowStatus = 0
    @objc public dynamic var activityShowStatus = 0
    /// 时长
    //: public var audioLength = 0
    public var audioLength = 0
    /// db模型
    //: public var db_voiceCacheWrap = WCDBVoiceMsgTable()
    public var db_voiceCacheWrap = ObjectReactiveCompatible()

    //: public override required init() {}
    public override required init() {}
}