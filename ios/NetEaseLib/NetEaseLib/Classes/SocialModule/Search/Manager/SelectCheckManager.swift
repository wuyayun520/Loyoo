
//: Declare String Begin

/*: "mf/user/recommendUser" :*/
fileprivate let str_imageText:[Character] = ["m","f","/","u","s","e","r","/","r","e","c","o","m","m","e","n","d","U","s","e"]
fileprivate let str_colorData:[Character] = ["r"]

/*: "page" :*/
fileprivate let str_dataListName:[UInt8] = [0x70,0x61,0x67,0x65]

/*: "mf/user/singleUser" :*/
fileprivate let str_showBlockTickName:[Character] = ["m","f","/","u","s","e","r","/"]
fileprivate let str_withData:[Character] = ["s","i","n"]
fileprivate let str_layerTrackReturnTitle:String = "gleUsersize self title gift"

/*: "uid" :*/
fileprivate let str_sizeName:[UInt8] = [0x75,0x69,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SelectCheckManager.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchManager: NSObject {
class SelectCheckManager: NSObject {
    // 列表分页
    //: var recommendListPage = 0
    var recommendListPage = 0

    /// 推荐用户列表
    /// - Parameter completion: 回调
    //: func req_recommendUser(completion: @escaping FinishBlock) {
    func nameValue(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/user/recommendUser"
        reqModel.requestPath = (String(str_imageText) + String(str_colorData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["page": recommendListPage]
        reqModel.params = [String(bytes: str_dataListName, encoding: .utf8)!: recommendListPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.recommendListPage == 0 {
            if self.recommendListPage == 0 {
                //: self.recommendDataArr.removeAll()
                self.recommendDataArr.removeAll()
            }

            //: for dict in result as! [Dictionary<String, Any>] {
            for dict in result as! [[String: Any]] {
                //: if let model = TalkingRecommendUserModel.deserialize(from: dict as? Dictionary) {
                if let model = GoldTransformable.deserialize(from: dict as? Dictionary) {
                    //: self.recommendDataArr.append(model)
                    self.recommendDataArr.append(model)
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 搜索uid
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - completion: 回调
    //: func req_singleUser(uid: String, completion: @escaping FinishBlock) {
    func cardTable(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "mf/user/singleUser"
        reqModel.requestPath = (String(str_showBlockTickName) + String(str_withData) + String(str_layerTrackReturnTitle.prefix(7)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_sizeName, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: self.searchListDataArr.removeAll()
            self.searchListDataArr.removeAll()
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

            //: if let model = TalkingRecommendUserModel.deserialize(from: result) {
            if let model = GoldTransformable.deserialize(from: result) {
                //: self.searchListDataArr.append(model)
                self.searchListDataArr.append(model)
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy Load

    //: lazy var recommendDataArr: [TalkingRecommendUserModel] = {
    lazy var recommendDataArr: [GoldTransformable] = //: return Array<GoldTransformable>()
        .init()
    //: }()

    //: lazy var searchListDataArr: [TalkingRecommendUserModel] = {
    lazy var searchListDataArr: [GoldTransformable] = //: return Array<GoldTransformable>()
        .init()
    //: }()
}
