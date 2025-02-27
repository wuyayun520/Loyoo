
//: Declare String Begin

/*: "id" :*/
fileprivate let str_fatalData:String = "button"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomMeasurable.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import UIKit
import UIKit

//: struct TalkingMomentModel: HandyJSON {
struct CustomMeasurable: HandyJSON {
    //: var uid: String?
    var uid: String?
    //: var sex: String?
    var sex: String?
    //: var age: Int?
    var age: Int?
    //: var headPic: String?
    var headPic: String?
    //: var nickname: String?
    var nickname: String?
    //: var constellation: String?
    var constellation: String?
    //: var isTPAuth = false
    var isTPAuth = false
    //: var isManualGreet: Bool?
    var isManualGreet: Bool?
    //: var isLike: Bool?
    var isLike: Bool?
    //: var isAttention: Bool?
    var isAttention: Bool?
    //: var mid: Int?
    var mid: Int? // 动态的id
    //: var likeNum: Int?
    var likeNum: Int?
    //: var viewNum: Int?
    var viewNum: Int?
    //: var replyNum: Int?
    var replyNum: Int?
    //: var city: String?
    var city: String?
    //: var content: String?
    var content: String?
    //: var addTime: String?
    var addTime: String?
    //: var distance: String?
    var distance: String?
    //: var vipLevel: Int?
    var vipLevel: Int?
    //: var pic = [TalkingMomentPhotoModel]()
    var pic = [GoldObjectMeasurable]()
    //: var momentType: String?
    var momentType: String?
    //: var videoInfo: TalkingMomentVideoModel?
    var videoInfo: UpMeasurable?
    //: var isMomentDetail: Bool?
    var isMomentDetail: Bool?
    //: var isOwnMoment: Bool?
    var isOwnMoment: Bool?
    //: var novice: Bool?
    var novice: Bool? // 新人标记
    //: var identityVerify: Int?
    var identityVerify: Int? // 0：未实名，1：已实名
    //: var remark: String?
    var remark: String? // 备注
    //: var isUserDetail = false
    var isUserDetail = false // 是否个人主页
    //: var itemHeight: CGFloat?
    var itemHeight: CGFloat?
    //: var photoHeight: CGFloat?
    var photoHeight: CGFloat?
    //: var level: Int?
    var level: Int?
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false // 是否订阅
    //: var headPicFrame = ""           // 头像框
    var headPicFrame = "" // 头像框
    //: var pinStatus = false
    var pinStatus = false // 表示动态是否置顶
    //: var pinCount = 0
    var pinCount = 0 // 已置顶动态数量
    //: var reviewing = false
    var reviewing = false // 1.7.2是否审核中

    //: mutating func mapping(mapper: HelpingMapper) {
    mutating func mapping(mapper: HelpingMapper) {
        //: mapper <<<
        mapper <<<
            //: self.mid <-- "id"
            self.mid <-- "id"
    }
}

//: struct TalkingMomentPhotoModel: HandyJSON {
struct GoldObjectMeasurable: HandyJSON {
    //: var thumbUrl: String?
    var thumbUrl: String?
    //: var imgUrl: String?
    var imgUrl: String?
    //: var imagePic: UIImage?
    var imagePic: UIImage?
}

///
//: enum MomentType: String {
enum CellSubqueryConvertible: String {
    //: case nones  = "0"
    case nones = "0"
    //: case Photo = "1"
    case Photo = "1"
    //: case Video = "2"
    case Video = "2"
    //: case Live  = "3"
    case Live = "3"
}

//: struct TalkingMomentVideoModel: HandyJSON {
struct UpMeasurable: HandyJSON {
    //: var videoUrl = ""
    var videoUrl = ""
    //: var imgUrl = ""
    var imgUrl = ""
    //: var thumbUrl = ""
    var thumbUrl = ""
    //: var status: MomentVideoStatus?
    var status: LabelExpressionConvertible?
}

///
//: enum MomentVideoStatus: String {
enum LabelExpressionConvertible: String {
    //: case NoPass = "-1"   // 未通过
    case NoPass = "-1" // 未通过
    //: case Audit = "0"     // 审核中
    case Audit = "0" // 审核中
    //: case Pass  = "1"     // 通过
    case Pass = "1" // 通过
}

//: extension TalkingMomentModel {
extension CustomMeasurable {
    //: mutating func caculateItemHeight(isPost: Bool = false) {
    mutating func eraseAdd(isPost: Bool = false) {
        //: let photoCellWidth = 113
        let photoCellWidth = 113
        // 图片高

        //: let videoCellWidth = 230
        let videoCellWidth = 230

        // 文本高
        //: var textHeight = 0
        var textHeight = 0
        // 图片高
        //: var photesHeight = 0
        var photesHeight = 0

        // 地理位置区域高
        //: let locationHeight = 0
        let locationHeight = 0

        // 上下外边距
        //: let margin = 11
        let margin = 11
        // 图片间隙
        //: let space = 3
        let space = 3

        //: if content!.count>0 {
        if content!.count > 0 {
            //: var lineNumber = 4
            var lineNumber = 4
            //: if isMomentDetail ?? false {
            if isMomentDetail ?? false {
                //: lineNumber = 0
                lineNumber = 0
            }
            //: textHeight = Int(TalkingMomentTextSizeView.caculateSizeWithText(text: content!, size: CGSize.init(width: ScreenWidth-54, height: CGFloat(MAXFLOAT)), font: UIFont.pingfangFont(type: .Regular, fontSize: 17), lineNumber: lineNumber).height + (lineNumber==0 ? 20:0))
            textHeight = Int(GoldView.workInNumber(text: content!, size: CGSize(width: a_blockValue - 54, height: CGFloat(MAXFLOAT)), font: UIFont.thoughtImage(type: .Regular, fontSize: 17), lineNumber: lineNumber).height + (lineNumber == 0 ? 20 : 0))
        }

        //: if momentType == MomentType.Photo.rawValue || momentType == MomentType.Live.rawValue {
        if momentType == CellSubqueryConvertible.Photo.rawValue || momentType == CellSubqueryConvertible.Live.rawValue {
            //: if pic.count==1 {
            if pic.count == 1 {
                //: photesHeight = 212
                photesHeight = 212
                //: photesHeight += margin * 2
                photesHeight += margin * 2
                //: } else {
            } else {
                //: if pic.count == 0 {
                if pic.count == 0 {
                    //: photesHeight = 0
                    photesHeight = 0
                    //: } else {
                } else {
                    //: let lineCount = ((pic.count - 1)/3) + 1
                    let lineCount = ((pic.count - 1) / 3) + 1
                    //: photesHeight = lineCount * photoCellWidth + (lineCount-1)*space + margin*2
                    photesHeight = lineCount * photoCellWidth + (lineCount - 1) * space + margin * 2
                }
            }
            //: photoHeight = CGFloat(photesHeight)
            photoHeight = CGFloat(photesHeight)
            //: } else {
        } else {
            //: photesHeight = videoCellWidth + margin*2
            photesHeight = videoCellWidth + margin * 2
        }
        //: let bottom = 83
        let bottom = 83
        //: itemHeight = CGFloat(68 + textHeight + photesHeight + locationHeight + bottom)
        itemHeight = CGFloat(68 + textHeight + photesHeight + locationHeight + bottom)
        // cell底部间距改为10
        //: itemHeight! += 10
        itemHeight! += 10
        // 他人资料动态列表
        //: if isPost == true {
        if isPost == true {
            //: itemHeight! -= 56
            itemHeight! -= 56
        }
    }
}
