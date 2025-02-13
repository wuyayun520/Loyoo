// __DEBUG__
// __CLOSE_PRINT__
//
//  EnumConst.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation

// MARK: Tabbar

//: enum TarBarControllerViewType {
enum ErrorViewType {
    //: case Unknown
    case Unknown
    //: case Login
    case Login
    //: case Taking
    case Taking
}

/// VC类型
//: enum TabBarItemType: Int {
enum AtScalar: Int {
    //: case Social  = 0
    case Social = 0 // 交友
    //: case Moment  = 1
    case Moment = 1 // 动态
    //: case FreeMoment = 2
    case FreeMoment = 2 // 发布动态
    //: case Message = 3
    case Message = 3 // 消息
    //: case Account = 4
    case Account = 4 // 个人
    //: case Live    = 5
    case Live = 5 // 直播（女性）
    //: case Randow   = 6
    case Randow = 6 // 随机匹配
    //: case meet    = 7
    case meet = 7
    //: case Login = 100
    case Login = 100 // 登录
}

/// 登录方式
//: enum LoginType: String {
enum DifferentiateHashable: String {
    //: case AppleLogin
    case AppleLogin // Apple登陆
    //: case PhoneLogin
    case PhoneLogin // 手机号验证码登陆
    //: case EmailLogin
    case EmailLogin // 邮箱验证码登录
    //: case PwdPhoneLogin
    case PwdPhoneLogin // 手机密码登录
    //: case PwdEmailLogin
    case PwdEmailLogin // 邮箱密码登录
}

/// 字体类型
//: enum PingFangFontType {
enum LabelFontType {
    //: case Regular
    case Regular
    //: case Medium
    case Medium
    //: case Semibold
    case Semibold
    //: case Light
    case Light
    //: case Thin
    case Thin
    //: case Ultralight
    case Ultralight
}

/// 输入框类型
//: enum InputType {
enum ObjectInputType {
    //: case typeDefault
    case typeDefault
    //: case typeButtton
    case typeButtton // 带按钮
}

//: enum TalkingRequestType {
enum RegularTalkingRequestType {
    //: case GET
    case GET
    //: case POST
    case POST
}

//: enum RequestResultCode: Int {
enum LoadUpMeasurable: Int {
    //: case Normal         = 0
    case Normal = 0
    //: case NetError       = -10000
    case NetError = -10000 // w
    //: case NeedReLogin    = -100
    case NeedReLogin = -100 // 需要重新登录
}

/// 登录页面类型
//: enum TalkingLoginVCType {
enum ActualLoginType {
    //: case LoginPhone
    case LoginPhone
    //: case LoginEmail
    case LoginEmail
}

/// 绑定页面类型
//: enum TalkingBindVCType {
enum CustomBindType {
    //: case BindEmail
    case BindEmail
    //: case BindPhone
    case BindPhone
}

/// 性别
//: enum Gender: String {
enum SizeCustomReflectable: String {
    //: case unknown = "0"
    case unknown = "0"
    //: case male    = "1"
    case male = "1"
    //: case female  = "2"
    case female = "2"
}

//: enum TPUserAuth: String {
enum LaterUserValueConvertible: String {
    //: case unknown = "0"        // 未开始
    case unknown = "0" // 未开始
    //: case isOnGoing = "1"      // 进行中
    case isOnGoing = "1" // 进行中
    //: case isSuccessed = "2"    // 成功
    case isSuccessed = "2" // 成功
    //: case isRefused = "3"      // 被拒绝
    case isRefused = "3" // 被拒绝
}

//: enum PStarStatus: String {
enum MarkCloseMirrorPath: String {
    //: case unknown = "-1"       // 未申请
    case unknown = "-1" // 未申请
    //: case isOnGoing = "0"      // 审核中
    case isOnGoing = "0" // 审核中
    //: case isSuccessed = "1"    // 审核通过
    case isSuccessed = "1" // 审核通过
    //: case isRefused = "2"      // 审核拒绝
    case isRefused = "2" // 审核拒绝
}

/// 用户头像
//: enum HeadePicStatus: Int {
enum DocumentTransformable: Int {
    //: case isOnGoing = 0
    case isOnGoing = 0 // 待审核
    //: case isSuccessed = 1
    case isSuccessed = 1 // 审核通过
    //: case unknown = -1
    case unknown = -1 // 表示未上传头像或者第一次上传头像被拒绝
}

/// 礼物类型
//: enum GiftShowType: Int {
enum ImageWidthCount: Int {
    //: case unknown    = 0
    case unknown = 0
    //: case social     = 1
    case social = 1 // 社交礼物
    //: case redPacket  = 4
    case redPacket = 4 // 家族红包类型
    //: case mystery    = 99
    case mystery = 99 // 盲盒礼物
    //: case empty      = 100
    case empty = 100 // 默认展示
}

/// 风控
//: @objc enum AppSkinStatus: Int {
@objc enum LabCustomReflectable: Int {
    //: case normal  = 0
    case normal = 0 // 默认模式
    //: case special = 1
    case special = 1 // 审核模式
}

/// 应用网络状态
//: @objc public enum AppNetworkStatus: Int {
@objc public enum ValuePriorityTarget: Int {
    //: case Unavailable = 0
    case Unavailable = 0 // 不可用
    //: case Wifi
    case Wifi // wifi
    //: case Cellular
    case Cellular // 移动网络
}

/// 个人资料cell枚举
//: enum TUserDetailCellType: CaseIterable {
enum EqualTrivialityCellType: CaseIterable {
    //: case defaultCellType
    case defaultCellType
    //: case nickNameType
    case nickNameType
    //: case postType
    case postType
    //: case profileType
    case profileType
    //: case aboutMeType
    case aboutMeType
    //: case intersetsType
    case intersetsType
    //: case giftType
    case giftType
}

// MARK: 1=普通视频，2=match页视频，4=随机视频，

//: enum EnableFreeCallType: Int {
enum UpMarkContentConvertible: Int {
    //: case nor = 1
    case nor = 1
    //: case match = 2
    case match = 2
    //: case randow = 4
    case randow = 4
}
