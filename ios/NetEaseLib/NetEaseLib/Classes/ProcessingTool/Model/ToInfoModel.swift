
//: Declare String Begin

/*: "id" :*/
fileprivate let str_promptSexValue:[Character] = ["i","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToInfoModel.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import HandyJSON
import HandyJSON
//: import UIKit
import UIKit

//: struct TalkingUserInfoModel: HandyJSON {
struct ToInfoModel: HandyJSON {
    //: var uid: String = ""
    var uid: String = ""
    //: var nickname: String = ""                               // 昵称
    var nickname: String = "" // 昵称
    //: var headPic: String = ""                                // 头像
    var headPic: String = "" // 头像
    //: var signature: String?
    var signature: String? // 签名
    //: var isTPAuth = false
    var isTPAuth = false // 真人认证
    //: var sex: String = ""
    var sex: String = ""
    //: var age = 18
    var age = 18
    //: var constellation: String = ""                          // 星座
    var constellation: String = "" // 星座
    //: var lastOnlineTime: String = ""                         // 最后登录时间
    var lastOnlineTime: String = "" // 最后登录时间
    //: var momentPic: TalkingUserInfoMomentModel?
    var momentPic: CountelligenceInformationHandyJSON?
    //: var gallery: Array<TalkingUserInfoGalleryModel>?
    var gallery: [CellMeasurable]? // 相册
    //: var aboutMe: Array<String> = []
    var aboutMe: [String] = [] // 关于我
    //: var interest: Array<String> = []
    var interest: [String] = [] // 兴趣
    //: var inMyBlackList: Bool = false
    var inMyBlackList: Bool = false // 是否在我的黑名单里
    //: var isAttention: Bool = false
    var isAttention: Bool = false // 是否在我的关注
    //: var premiumStarBannerUrl: String = ""                   // 巨星计划入口 banner 图
    var premiumStarBannerUrl: String = "" // 巨星计划入口 banner 图
    //: var premiumStarApplyStatus: Int = 0
    var premiumStarApplyStatus: Int = 0 // 巨星申请状态， 0-待审核，1-审核通过，2-审核拒绝
    //: var level: String = ""
    var level: String = ""
    //: var momentPicNum = 0
    var momentPicNum = 0 // 发布post的照片+视频数量
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false // 是否订阅
    //: var onlineStatus = 0
    var onlineStatus = 0 // 在线状态，0-离线，1-在线
    //: var videoPrice: String = ""                             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var voicePrice: String = ""                             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoVIPPrice: String = ""                          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""                          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""                              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""                              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: var videoUrl: String = ""
    var videoUrl: String = ""
    //: var cover: String = ""
    var cover: String = ""
    //: var moment_type: Int = 0
    var moment_type: Int = 0
    //: var attentionNum: String = ""                           // 关注人
    var attentionNum: String = "" // 关注人
    //: var fansNum: String = ""                                // 粉丝数
    var fansNum: String = "" // 粉丝数
    //: var livePlayUrl = ""                                    // 直播视频流地址
    var livePlayUrl = "" // 直播视频流地址
    //: var aiExtraInfo = TalkingAIExtraInfoModel()
    var aiExtraInfo = LoadHandyJSON() // AI模型
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤Id
    //: var isOfficial = false
    var isOfficial = false // 是否官方账号
    //: var location = ""                                       // 用户活跃国家
    var location = "" // 用户活跃国家
    //: var coverVideoReviewing = false
    var coverVideoReviewing = false // 1.7.2封面视频是否审核中
    //: var headPicReviewing = false
    var headPicReviewing = false // 1.7.2封面是否审核中
    //: var intimateUrl = ""                                    // 亲密榜单头像
    var intimateUrl = "" // 亲密榜单头像

    //: var isMute = false
    var isMute = false // 1.7.8 直播间用户是否被禁言

    //: var partyRoomId = 0
    var partyRoomId = 0 // 语音房id，若不为0则在开播中（user/getUserInfo）
    //: var isInRoom = false
    var isInRoom = false // 标识自己是否在语音房里面（user/dataCard）
    //: var isPartyMute = false
    var isPartyMute = false // 1.8.0 Party用户是否被禁言
    //: var isOnMike = false
    var isOnMike = false // 1.8.0 Party用户是否在麦位上
    //: var mikeStatus = 0
    var mikeStatus = 0 // 1.8.0 （0 自己闭麦，1 房主闭麦, 2 开麦）
    //: var mikePosition = -1
    var mikePosition = -1 // isOnMike为true 时的麦位
}

// MARK: - 动态

//: struct TalkingUserInfoMomentModel: HandyJSON {
struct CountelligenceInformationHandyJSON: HandyJSON {
    //: var count: Int = 0
    var count: Int = 0
    //: var list: Array<TalkingUserInfoMomentItemModel>?
    var list: [OneMeasurable]?
}

// MARK: - 动态Item

//: struct TalkingUserInfoMomentItemModel: HandyJSON {
struct OneMeasurable: HandyJSON {
    //: var moment_id: String = ""
    var moment_id: String = ""
    //: var thumb_url: String = ""
    var thumb_url: String = ""
    //: var img_url: String = ""
    var img_url: String = ""
    //: var moment_type: Int = 0
    var moment_type: Int = 0

    // MARK: - 自定义字段

    //: var pinStatus = false
    var pinStatus = false // 表示动态是否置顶
    //: var videoUrl = ""      // 视频地址
    var videoUrl = "" // 视频地址
    //: var reviewing = false
    var reviewing = false // 动态是否在审核中
}

// MARK: - 相册

//: struct TalkingUserInfoGalleryModel: HandyJSON {
struct CellMeasurable: HandyJSON {
    //: var uid = ""
    var uid = ""
    //: var url = ""
    var url = ""
    //: var imagePic: UIImage?
    var imagePic: UIImage?
    //: var isLocal = false
    var isLocal = false
    // 0:通过，1:待审核，2:拒绝
    //: var status: Int = 0
    var status: Int = 0

    //: mutating func mapping(mapper: HelpingMapper) {
    mutating func mapping(mapper: HelpingMapper) {
        //: mapper <<<
        mapper <<<
            //: self.uid <-- "id"
            self.uid <-- "id"
    }

    //: func equals (compareTo: TalkingUserInfoGalleryModel) -> Bool {
    func afterwards(compareTo: CellMeasurable) -> Bool {
        //: return
        return
            //: self.uid == compareTo.uid
            self.uid == compareTo.uid
    }
}

// MARK: - AI拓展信息

//: struct TalkingAIExtraInfoModel: HandyJSON {
struct LoadHandyJSON: HandyJSON {
    //: var height = 0
    var height = 0 // 身高
    //: var weight = 0
    var weight = 0 // 体重
    //: var city = ""             // 城市
    var city = "" // 城市
    //: var aboutMe = ""          // 关于我
    var aboutMe = "" // 关于我
    //: var hobbys = [String]()
    var hobbys = [String]() // 爱好标签
    //: var birthday = ""         // 生日
    var birthday = "" // 生日
}

//: enum GalleryStatus: Int {
enum SheSendable: Int {
    //: case Normal    = 0
    case Normal = 0 // 正常
    //: case Reviewing = 1
    case Reviewing = 1 // 审核中
    //: case Rejected  = 2
    case Rejected = 2 // 违规
}
