
//: Declare String Begin

/*: "mf/business/list" :*/
fileprivate let str_makeData:String = "mf/busmode allow edit var"
fileprivate let str_videoContent:String = "self views/list"

/*: "Any" :*/
fileprivate let str_observerValue:[Character] = ["A","n","y"]

/*: "58+" :*/
fileprivate let str_imageData:String = "58+"

/*: "Yes" :*/
fileprivate let str_frameValue:String = "Yesto in mount title"

/*: "tab" :*/
fileprivate let str_defineGroupHeightValue:[UInt8] = [0x74,0x61,0x62]

/*: "page" :*/
fileprivate let str_cardValue:[UInt8] = [0x70,0x61,0x67,0x65]

/*: "minAge" :*/
fileprivate let str_managerAtValue:[UInt8] = [0x6d,0x69,0x6e,0x41,0x67,0x65]

/*: "maxAge" :*/
fileprivate let str_endName:[UInt8] = [0x6d,0x61,0x78,0x41,0x67,0x65]

/*: "datingVideo" :*/
fileprivate let str_topContent:[UInt8] = [0x64,0x61,0x74,0x69,0x6e,0x67,0x56,0x69,0x64,0x65,0x6f]

/*: "uid" :*/
fileprivate let str_gestureValue:[Character] = ["u","i","d"]

/*: "mf/premiumStar/list" :*/
fileprivate let str_rowValue:String = "mf/ppage point"
fileprivate let str_upValue:String = "umStarstring text"
fileprivate let str_contentData:[Character] = ["/","l","i","s","t"]

/*: "mf/business/adBanner" :*/
fileprivate let str_styleName:String = "user always letmf/bus"
fileprivate let str_scaleTitle:String = "name info top indexadBanner"

/*: "position" :*/
fileprivate let str_youText:[UInt8] = [0x70,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e]

/*: "bannerList" :*/
fileprivate let str_ageText:String = "bextrann"
fileprivate let str_equalValue:[Character] = ["t"]

/*: "mf/rank/list" :*/
fileprivate let str_viewText:String = "view self letmf/rank"
fileprivate let str_cellTimeValue:[Character] = ["/","l","i","s","t"]

/*: "name" :*/
fileprivate let str_sinceCompareValue:[UInt8] = [0x65,0x6d,0x61,0x6e]

/*: "period" :*/
fileprivate let str_languageText:[UInt8] = [0x70,0x65,0x72,0x69,0x6f,0x64]

/*: "user/position" :*/
fileprivate let str_maxText:String = "user/count hidden"
fileprivate let str_buttonValue:String = "equalo"
fileprivate let str_deadlineValue:[Character] = ["s","i","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GoldRequestManager.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: enum SocialTab: Int {
enum ModelCustomReflectable: Int {
    //: case hot = 1
    case hot = 1 // 活跃
    //: case nearby  = 2
    case nearby = 2 // 附近
    //: case new  = 3
    case new = 3 // 新用户
}

//: class SocialRequestManager {
class GoldRequestManager {
    // 列表分页
    //: var listPage = 0
    var listPage = 0
    // 巨星计划分页
    //: var premiumStarPage = 0
    var premiumStarPage = 0
    // 防止重复请求
    //: var premiumStarIsLoading = false
    var premiumStarIsLoading = false
    // 巨星计划是否有更多数据
    //: var premiumStarCanLoadMore = true
    var premiumStarCanLoadMore = true
    // 最大请求次数
    //: let maxReq = 3
    let maxReq = 3
    // 当前已请求次数
    //: var haveReq = 0
    var haveReq = 0
    /// 请求首页列表数据
    /// - Parameters:
    ///   - tab: 1-活跃 2-附近 3-新人 4-同省 5-同城 6-高级用户
    ///   - page: 分页
    ///   - completion: 回调
    //: func req_socialList(tab: SocialTab, completion: @escaping FinishBlock) {
    func societal(tab: ModelCustomReflectable, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/business/list"
        reqModel.requestPath = (String(str_makeData.prefix(6)) + "ines" + String(str_videoContent.suffix(6)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET

        // 筛选条件
        //: var minAge = 0
        var minAge = 0
        //: var maxAge = 0
        var maxAge = 0
        //: var datingVideo = 0
        var datingVideo = 0
        //: if SEARCH_AGE == "Any".localized {
        if a_timeNearbyData == (String(str_observerValue)).localized {
            //: minAge = 18
            minAge = 18
            //: maxAge = 80
            maxAge = 80
            //: } else if SEARCH_AGE == "58+" {
        } else if a_timeNearbyData == "58+" {
            //: minAge = 58
            minAge = 58
            //: maxAge = 80
            maxAge = 80
            //: } else {
        } else {
            //: let arr = SEARCH_AGE.split(separator: "-")
            let arr = a_timeNearbyData.split(separator: "-")
            //: if arr.count > 1 {
            if arr.count > 1 {
                //: minAge = Int(arr[0]) ?? 0
                minAge = Int(arr[0]) ?? 0
                //: maxAge = Int(arr[1]) ?? 0
                maxAge = Int(arr[1]) ?? 0
            }
        }
        //: if SEARCH_VIDEOCOVER == "Yes".localized {
        if a_sessionData == (String(str_frameValue.prefix(3))).localized {
            //: datingVideo = 1
            datingVideo = 1
        }

        //: reqModel.params = ["tab": tab.rawValue,
        reqModel.params = [String(bytes: str_defineGroupHeightValue, encoding: .utf8)!: tab.rawValue,
                           //: "page": listPage,
                           String(bytes: str_cardValue, encoding: .utf8)!: listPage,
                           //: "minAge": minAge,
                           String(bytes: str_managerAtValue, encoding: .utf8)!: minAge,
                           //: "maxAge": maxAge,
                           String(bytes: str_endName, encoding: .utf8)!: maxAge,
                           //: "datingVideo": datingVideo]
                           String(bytes: str_topContent, encoding: .utf8)!: datingVideo]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: var resultArr = result as! [Dictionary<String, Any>]
            var resultArr = result as! [[String: Any]]

            //: if self.listPage == 0 {
            if self.listPage == 0 {
                //: self.section0Data.removeAll()
                self.section0Data.removeAll()
                //: self.section1Data.removeAll()
                self.section1Data.removeAll()
                //: self.bolckRepetData.removeAll()
                self.bolckRepetData.removeAll()
            }

            /// 后台拉黑向上补齐返回数据，客户端拉取下页有重复数据过滤
            //: for uid in self.bolckRepetData {
            for uid in self.bolckRepetData {
                //: for (index, dict) in resultArr.enumerated() {
                for (index, dict) in resultArr.enumerated() {
                    //: let uidstr = dict["uid"] as? Int
                    let uidstr = dict[(String(str_gestureValue))] as? Int
                    //: if uid == String(uidstr ?? 0) {
                    if uid == String(uidstr ?? 0) {
                        //: resultArr.remove(at: index)
                        resultArr.remove(at: index)
                    }
                }
            }

            //: for dict in resultArr {
            for dict in resultArr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = MeasurementHandyJSON.deserialize(from: dict as? Dictionary) {
                    //: if self.section0Data.count < 4 {
                    if self.section0Data.count < 4 {
                        //: self.section0Data.append(model)
                        self.section0Data.append(model)
                        //: } else {
                    } else {
                        //: self.section1Data.append(model)
                        self.section1Data.append(model)
                    }
                    //: self.bolckRepetData.insert("\(model.uid)")
                    self.bolckRepetData.insert("\(model.uid)")
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求巨星计划列表
    /// - Parameter completion: 回调
    //: func req_premiumStarList(completion: @escaping FinishBlock) {
    func fromShoppingList(completion: @escaping FinishBlock) {
        //: if premiumStarIsLoading { return }
        if premiumStarIsLoading { return }

        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/premiumStar/list"
        reqModel.requestPath = (String(str_rowValue.prefix(4)) + "remi" + String(str_upValue.prefix(6)) + String(str_contentData))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["page": premiumStarPage]
        reqModel.params = [String(bytes: str_cardValue, encoding: .utf8)!: premiumStarPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: self.premiumStarIsLoading = false
            self.premiumStarIsLoading = false
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.premiumStarPage == 0 {
            if self.premiumStarPage == 0 {
                //: self.premiumStarListData.removeAll()
                self.premiumStarListData.removeAll()
            }

            //: let arr = result as! [Dictionary<String, Any>]
            let arr = result as! [[String: Any]]
            //: for dict in arr {
            for dict in arr {
                //: if let model = PremiumStarListModel.deserialize(from: dict as? Dictionary) {
                if let model = SuperiorModelType.deserialize(from: dict as? Dictionary) {
                    //: self.premiumStarListData.append(model)
                    self.premiumStarListData.append(model)
                }
            }

            //: if arr.count < 20 {
            if arr.count < 20 {
                //: self.premiumStarCanLoadMore = false
                self.premiumStarCanLoadMore = false
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取广告位banner
    /// - Parameters:
    ///   - position: 广告位标识，1=首页，2=me,3:私聊
    ///   - completion: 回调
    //: func req_adBanner(position: Int, completion: @escaping FinishBlock) {
    func headNet(position: Int, completion: @escaping FinishBlock) {
        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/business/adBanner"
        reqModel.requestPath = (String(str_styleName.suffix(6)) + "iness/" + String(str_scaleTitle.suffix(8)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["position": position]
        reqModel.params = [String(bytes: str_youText, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if position == 2 {
            if position == 2 {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(str_ageText.replacingOccurrences(of: "extra", with: "a") + "erLis" + String(str_equalValue))] ?? []).arrayValue
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = NumerosityMeasurable.deserialize(from: dict.dictionaryObject) {
                    //: self.adBannerListData.append(model)
                    self.adBannerListData.append(model)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 首页榜单

    //: class func getRankListRequest(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
    class func getThroughCompletion(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/rank/list"
        reqModel.requestPath = (String(str_viewText.suffix(7)) + String(str_cellTimeValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["name": topName ?? "", "period": periodName ?? ""]
        reqModel.params = [String(bytes: str_sinceCompareValue.reversed(), encoding: .utf8)!: topName ?? "", String(bytes: str_languageText, encoding: .utf8)!: periodName ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 上传定位

    //: class func req_uploadPosition(params: [String: Any], completion: @escaping FinishBlock) {
    class func betweenName(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "user/position"
        reqModel.requestPath = (String(str_maxText.prefix(5)) + str_buttonValue.replacingOccurrences(of: "equal", with: "p") + String(str_deadlineValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy load

    //: lazy var section0Data: [SocialUserListModel] = {
    lazy var section0Data: [MeasurementHandyJSON] = //: return Array<MeasurementHandyJSON>()
        .init()
    //: }()

    //: lazy var section1Data: [SocialUserListModel] = {
    lazy var section1Data: [MeasurementHandyJSON] = //: return Array<MeasurementHandyJSON>()
        .init()
    //: }()

    //: lazy var bolckRepetData = Set<String>()
    lazy var bolckRepetData = Set<String>()

    //: lazy var premiumStarListData: [PremiumStarListModel] = {
    lazy var premiumStarListData: [SuperiorModelType] = //: return Array<SuperiorModelType>()
        .init()
    //: }()

    //: lazy var adBannerListData: [SocialAdBannerModel] = {
    lazy var adBannerListData: [NumerosityMeasurable] = //: return Array<NumerosityMeasurable>()
        .init()
    //: }()
}
