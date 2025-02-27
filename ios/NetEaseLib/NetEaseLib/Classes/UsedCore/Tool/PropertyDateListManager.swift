
//: Declare String Begin

/*: "uid" :*/
fileprivate let str_equalMoveValue:[Character] = ["u","i","d"]

/*: "onlineStatus" :*/
fileprivate let str_liveDataValue:String = "image"
fileprivate let str_valueText:String = "pagelipagee"

/*: "isNewUser" :*/
fileprivate let str_scaleLabData:String = "property page valueisNew"
fileprivate let str_mediumText:[Character] = ["U","s","e","r"]

/*: "isTPAuth" :*/
fileprivate let str_makeData:[Character] = ["i","s","T"]
fileprivate let str_routeName:String = "PAuthup field array"

/*: "totalIntimate" :*/
fileprivate let str_bottomAssetData:String = "TOTAL"

/*: "userStatus" :*/
fileprivate let str_modelTitle:[Character] = ["u","s","e","r","S","t"]
fileprivate let str_windowData:[Character] = ["a","t","u","s"]

/*: "intimate" :*/
fileprivate let str_liveValue:String = "error"
fileprivate let str_messageValue:String = "TIMATE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PropertyDateListManager.swift
//  AbroadTalking
//
//  Created by young on 2022/9/16.
//

//: import UIKit
import UIKit

//: enum ChatListSectionTyep: Int {
enum SectionDefaultsSerializable: Int {
    //: case offical  = 0
    case offical = 0 // 官方
    //: case chatRoom = 1
    case chatRoom = 1 // 聊天室
    //: case moreMsg  = 2
    case moreMsg = 2 // 更多消息
    //: case top      = 3
    case top = 3 // 置顶
    //: case normal   = 4
    case normal = 4 // 默认
}

//: enum ChatListSectionIntimateTyep: Int {
enum OnPicNumber: Int {
    //: case top  = 0
    case top = 0 // 置顶
    //: case normal = 1
    case normal = 1 // 默认
}

//: class TalkingChatListManager {
class PropertyDateListManager {
    //: var isHalf = false
    var isHalf = false // 列表控制器是否半屏展示
    // 获取用户在线状态逻辑
    //: var loadedOnlineStatus = false
    var loadedOnlineStatus = false // 首次加载需要延迟3s，防止还未拿到列表数据
    //: var isOnlineStatusReq = false
    var isOnlineStatusReq = false // 防止重复请求
    //: private var normalLastIndex = 0
    private var normalLastIndex = 0 // 在线状态默认数据最后索引
    //: private var moreMsgLastIndex = 0
    private var moreMsgLastIndex = 0 // 在线状态更多数据最后索引

    // MARK: - Lazy Load

    // 更多消息占位model
    //: private var moreMsgModel: TalkingConversationModel = {
    private var moreMsgModel: AdministratorReactiveCompatible = //: return AdministratorReactiveCompatible.getPlaceholderModel(chatType: .moreMsg)
        .finishInShow(chatType: .moreMsg)
    //: }()

    // 初始化数据
    //: func req_initData() {
    func gestureData() {
        //: self.officialArr = TalkingIMManager.shared.getOfficialList()
        self.officialArr = DateThen.shared.split()
        //: self.topArr = TalkingIMManager.shared.topConvList
        self.topArr = DateThen.shared.topConvList
        //: self.normalArr = TalkingIMManager.shared.norConvList
        self.normalArr = DateThen.shared.norConvList
        // 更多数据
        //: req_moreMsgInitData()
        listMore()
    }

    // 请求聊天室
    //: func req_chatRommArr(completion: @escaping (_ succeed: Bool) -> Void) {
    func neighbor(completion: @escaping (_ succeed: Bool) -> Void) {
        //: guard self.isHalf == false else { return }
        guard self.isHalf == false else { return }
        //: TalkingIMManager.shared.getChatRoomData { succeed in
        DateThen.shared.upWith { succeed in
            //: if succeed {
            if succeed {
                //: self.chatRoomArr = TalkingIMManager.shared.chatRoomList
                self.chatRoomArr = DateThen.shared.chatRoomList
                //: completion(true)
                completion(true)
            }
        }
    }

    /// 根据索引获取模型
    /// - Parameter indexPath: 索引
    /// - Returns: 模型
    //: func req_conversationModel(indexPath: IndexPath) -> TalkingConversationModel? {
    func commentCancel(indexPath: IndexPath) -> AdministratorReactiveCompatible? {
        //: switch indexPath.section {
        switch indexPath.section {
        //: case ChatListSectionTyep.offical.rawValue:
        case SectionDefaultsSerializable.offical.rawValue:
            //: guard indexPath.row < self.officialArr.count else {
            guard indexPath.row < self.officialArr.count else {
                //: return nil
                return nil
            }
            //: return self.officialArr[indexPath.row]
            return self.officialArr[indexPath.row]

        //: case ChatListSectionTyep.chatRoom.rawValue:
        case SectionDefaultsSerializable.chatRoom.rawValue:
            //: guard indexPath.row < self.chatRoomArr.count else {
            guard indexPath.row < self.chatRoomArr.count else {
                //: return nil
                return nil
            }
            //: return self.chatRoomArr[indexPath.row]
            return self.chatRoomArr[indexPath.row]

        //: case ChatListSectionTyep.top.rawValue:
        case SectionDefaultsSerializable.top.rawValue:
            //: guard indexPath.row < self.topArr.count else {
            guard indexPath.row < self.topArr.count else {
                //: return nil
                return nil
            }
            //: return self.topArr[indexPath.row]
            return self.topArr[indexPath.row]

        //: case ChatListSectionTyep.normal.rawValue:
        case SectionDefaultsSerializable.normal.rawValue:
            //: guard indexPath.row < self.normalArr.count else {
            guard indexPath.row < self.normalArr.count else {
                //: return nil
                return nil
            }
            //: return self.normalArr[indexPath.row]
            return self.normalArr[indexPath.row]

        //: default:
        default:
            //: return nil
            return nil
        }
    }

    /// 从缓存中取出单个userInfo赋值给model
    /// - Parameter model: dbmodel
    /// - Returns: 赋值后的模型
    //: func getUserInfoFromCache(model: TalkingConversationModel?) -> TalkingConversationModel? {
    func voiceBackground(model: AdministratorReactiveCompatible?) -> AdministratorReactiveCompatible? {
        //: guard let targetId = model?.targetId, targetId.isEmpty == false else { return model }
        guard let targetId = model?.targetId, targetId.isEmpty == false else { return model }
        //: let userInfo: CountMediumCacheModel? = DBUserInfoManager.cache_getCachedUserInfo(targetId: targetId)
        let userInfo: CountMediumCacheModel? = InfoReactiveCompatible.pointOfReferenceWearerClickCachedGetSubstance(targetId: targetId)
        //: if userInfo != nil && model?.gj_userInfo == nil {
        if userInfo != nil, model?.gj_userInfo == nil {
            //: model?.gj_userInfo = userInfo!
            model?.gj_userInfo = userInfo!
        }

        //: return model
        return model
    }

    /// 从缓存中批量获取userInfo
    /// - Parameters:
    ///   - conversationList: 会话数组
    ///   - finish: 回调
    //: func getUserInfoListFromCache(conversationList: [TalkingConversationModel], finish: (() -> Void)?) {
    func anSub(conversationList: [AdministratorReactiveCompatible], finish: (() -> Void)?) {
        //: var tempArr = [String]()
        var tempArr = [String]()

        //: for model in conversationList {
        for model in conversationList {
            // 只有私信和系统消息更新
            //: if model.chatType == .private ||
            if model.chatType == .private ||
                //: model.chatType == .system ||
                model.chatType == .system ||
                //: model.chatType == .service {
                model.chatType == .service
            {
                //: tempArr.append(model.userID)
                tempArr.append(model.userID)
            }
        }
        //: DBUserInfoManager.cache_getUserInfo(with: tempArr) { _, error in
        InfoReactiveCompatible.alert(with: tempArr) { _, error in
            //: guard error == nil else { return }
            guard error == nil else { return }
            //: finish?()
            finish?()
        }
    }

    /// 移除会话模型
    /// - Parameters:
    ///   - conversationModel: 模型
    //: func req_removeConversationModel(conversationModel: TalkingConversationModel) {
    func timeEnd(conversationModel: AdministratorReactiveCompatible) {
        //: if let index = self.topArr.firstIndex(of: conversationModel) {
        if let index = self.topArr.firstIndex(of: conversationModel) {
            //: self.topArr.remove(at: index)
            self.topArr.remove(at: index)
        }
        //: if let index = self.intimateTopArr.firstIndex(of: conversationModel) {
        if let index = self.intimateTopArr.firstIndex(of: conversationModel) {
            //: self.intimateTopArr.remove(at: index)
            self.intimateTopArr.remove(at: index)
        }
        //: if let index = self.normalArr.firstIndex(of: conversationModel) {
        if let index = self.normalArr.firstIndex(of: conversationModel) {
            //: self.normalArr.remove(at: index)
            self.normalArr.remove(at: index)
        }
        //: if let index = self.intimateNorArr.firstIndex(of: conversationModel) {
        if let index = self.intimateNorArr.firstIndex(of: conversationModel) {
            //: self.intimateNorArr.remove(at: index)
            self.intimateNorArr.remove(at: index)
        }
        //: if let index = self.moreMsgArr.firstIndex(of: conversationModel) {
        if let index = self.moreMsgArr.firstIndex(of: conversationModel) {
            //: self.moreMsgArr.remove(at: index)
            self.moreMsgArr.remove(at: index)
        }
    }

    /// 加载会话列表数据
    /// - Parameter completion: 回调
    //: func req_getConversationList(completion: @escaping (_ isFinish: Bool) -> Void) {
    func beforeCell(completion: @escaping (_ isFinish: Bool) -> Void) {
        //: TalkingIMManager.shared.func__getConversationList { arr, leftMore in
        DateThen.shared.listLoadCompletion { _, leftMore in
            //: completion(leftMore)
            completion(leftMore)
        }
    }

    // MARK: - Lazy laod

    //: lazy var officialArr: [TalkingConversationModel] = {
    lazy var officialArr: [AdministratorReactiveCompatible] = //: return Array<AdministratorReactiveCompatible>()
        .init()
    //: }()

    //: lazy var topArr: [TalkingConversationModel] = {
    lazy var topArr: [AdministratorReactiveCompatible] = //: return Array<AdministratorReactiveCompatible>()
        .init()
    //: }()

    //: lazy var normalArr: [TalkingConversationModel] = {
    lazy var normalArr: [AdministratorReactiveCompatible] = //: return Array<AdministratorReactiveCompatible>()
        .init()
    //: }()

    //: lazy var chatRoomArr: [TalkingConversationModel] = {
    lazy var chatRoomArr: [AdministratorReactiveCompatible] = //: return Array<AdministratorReactiveCompatible>()
        .init()
    //: }()

    //: lazy var intimateNorArr: [TalkingConversationModel] = {
    lazy var intimateNorArr: [AdministratorReactiveCompatible] = //: return Array<AdministratorReactiveCompatible>()
        .init()
    //: }()

    //: lazy var intimateTopArr: [TalkingConversationModel] = {
    lazy var intimateTopArr: [AdministratorReactiveCompatible] = //: return Array<AdministratorReactiveCompatible>()
        .init()
    //: }()

    //: lazy var moreMsgArr: [TalkingConversationModel] = {
    lazy var moreMsgArr: [AdministratorReactiveCompatible] = //: return Array<AdministratorReactiveCompatible>()
        .init()
    //: }()
}

// MARK: - 更多消息（超过指定时间未回复）

//: extension TalkingChatListManager {
extension PropertyDateListManager {
    /// 初始化数据
    //: func req_moreMsgInitData() {
    func listMore() {
        //: self.moreMsgArr = TalkingIMManager.shared.moreMsgList
        self.moreMsgArr = DateThen.shared.moreMsgList
    }

    /// 根据索引获取模型（更多消息）
    //: func req_moreMsgConversationModel(indexPath: IndexPath) -> TalkingConversationModel? {
    func slide(indexPath: IndexPath) -> AdministratorReactiveCompatible? {
        //: guard indexPath.row < self.moreMsgArr.count else {
        guard indexPath.row < self.moreMsgArr.count else {
            //: return nil
            return nil
        }
        //: return self.moreMsgArr[indexPath.row]
        return self.moreMsgArr[indexPath.row]
    }

    /// 获取消息列表占位模型
    /// - Returns: 占位模型
    //: func req_moreMsgGetPlaceholderModel() -> TalkingConversationModel {
    func track() -> AdministratorReactiveCompatible {
        // 更新更多消息最新数据
        //: req_moreMsgInitData()
        listMore()
        //: guard let firstModel = self.moreMsgArr.first else {
        guard let firstModel = self.moreMsgArr.first else {
            //: moreMsgModel.listShowMessage = nil
            moreMsgModel.listShowMessage = nil
            //: moreMsgModel.isShowMsgUnread = false
            moreMsgModel.isShowMsgUnread = false
            //: moreMsgModel.unreadCount = 0
            moreMsgModel.unreadCount = 0
            //: return moreMsgModel
            return moreMsgModel
        }
        // 更新占位模型数据
        //: moreMsgModel.listShowMessage = firstModel.listShowMessage
        moreMsgModel.listShowMessage = firstModel.listShowMessage
        //: moreMsgModel.unreadCount = req_moreMsgGetUnredConversationCount()
        moreMsgModel.unreadCount = conversationEqual()
        //: moreMsgModel.isShowMsgUnread = firstModel.isShowMsgUnread
        moreMsgModel.isShowMsgUnread = firstModel.isShowMsgUnread
        //: return moreMsgModel
        return moreMsgModel
    }

    /// 获取未读消息数（更多消息）
    /// - Returns: 未读数
    //: func req_moreMsgGetUnredConversationCount() -> Int {
    func conversationEqual() -> Int {
        //: var unreadConversationCount = 0
        var unreadConversationCount = 0
        //: for model in self.moreMsgArr {
        for model in self.moreMsgArr {
            //: if model.chatType == .private &&
            if model.chatType == .private &&
                //: model.unreadCount > 0 {
                model.unreadCount > 0
            {
                //: unreadConversationCount += Int(model.unreadCount)
                unreadConversationCount += Int(model.unreadCount)
            }
        }
        //: return unreadConversationCount
        return unreadConversationCount
    }
}

// MARK: - 获取用户在线状态

//: extension TalkingChatListManager {
extension PropertyDateListManager {
    /// 获取用户在线状态
    /// - Parameters:
    ///   - isFirst: 是否首页
    ///   - completion: 回调
    //: func getConversationListOnlineStatus(isFirst: Bool, completion: @escaping (_ succeed: Bool) -> Void) {
    func fileModel(isFirst: Bool, completion: @escaping (_ succeed: Bool) -> Void) {
        //: guard isOnlineStatusReq == false else { return }
        guard isOnlineStatusReq == false else { return }
        //: isOnlineStatusReq = true
        isOnlineStatusReq = true

        //: var data = Array<String>()
        var data = [String]()
        //: if isFirst {
        if isFirst { // 下拉刷新
            //: self.topArr.forEach({ model in
            self.topArr.forEach { model in
                //: if model.userID.count > 0 {
                if model.userID.count > 0 {
                    //: data.append(model.userID)
                    data.append(model.userID)
                }
                //: })
            }
            //: self.normalArr.forEach { model in
            self.normalArr.forEach { model in
                //: if model.userID.count > 0 {
                if model.userID.count > 0 {
                    //: data.append(model.userID)
                    data.append(model.userID)
                }
            }
            //: self.moreMsgArr.forEach { model in
            self.moreMsgArr.forEach { model in
                //: if model.userID.count > 0 {
                if model.userID.count > 0 {
                    //: data.append(model.userID)
                    data.append(model.userID)
                }
            }
            //: normalLastIndex = self.normalArr.count
            normalLastIndex = self.normalArr.count
            //: moreMsgLastIndex = self.moreMsgArr.count
            moreMsgLastIndex = self.moreMsgArr.count

            //: } else {
        } else { // 上拉加载更多
            //: if normalLastIndex < self.normalArr.count {
            if normalLastIndex < self.normalArr.count {
                //: for idx in normalLastIndex..<self.normalArr.count {
                for idx in normalLastIndex ..< self.normalArr.count {
                    //: let model = self.normalArr[idx]
                    let model = self.normalArr[idx]
                    //: if model.userID.count > 0 {
                    if model.userID.count > 0 {
                        //: data.append(model.userID)
                        data.append(model.userID)
                    }
                }
            }
            //: if moreMsgLastIndex < self.moreMsgArr.count {
            if moreMsgLastIndex < self.moreMsgArr.count {
                //: for idx in moreMsgLastIndex..<self.moreMsgArr.count {
                for idx in moreMsgLastIndex ..< self.moreMsgArr.count {
                    //: let model = self.moreMsgArr[idx]
                    let model = self.moreMsgArr[idx]
                    //: if model.userID.count > 0 {
                    if model.userID.count > 0 {
                        //: data.append(model.userID)
                        data.append(model.userID)
                    }
                }
            }
        }

        //: if data.count <= 0 {
        if data.count <= 0 {
            //: isOnlineStatusReq = false
            isOnlineStatusReq = false
            //: completion(false)
            completion(false)
            //: return
            return
        }
        // 批量请求在线状态
        //: DBUserInfoManager.cache_getChatUserStatus(with: data) { resultArr, _ in
        InfoReactiveCompatible.addEqual(with: data) { resultArr, _ in
            //: self.isOnlineStatusReq = false
            self.isOnlineStatusReq = false
            //: if resultArr?.count ?? 0 <= 0 {
            if resultArr?.count ?? 0 <= 0 { // 无数据
                //: [self.topArr, self.normalArr, self.moreMsgArr].forEach { arr in
                [self.topArr, self.normalArr, self.moreMsgArr].forEach { arr in
                    //: arr.forEach { model in
                    arr.forEach { model in
                        //: model.listOnlineStatus = 0
                        model.listOnlineStatus = 0
                        //: model.isNewUser = false
                        model.isNewUser = false
                    }
                }
                //: } else {
            } else {
                //: resultArr?.forEach({ dict in
                resultArr?.forEach { dict in
                    //: let json = JSON(dict)
                    let json = JSON(dict)
                    //: let uid = json["uid"].stringValue
                    let uid = json[(String(str_equalMoveValue))].stringValue
                    //: let onlineStatus = json["onlineStatus"].intValue
                    let onlineStatus = json[(str_liveDataValue.replacingOccurrences(of: "image", with: "o") + str_valueText.replacingOccurrences(of: "page", with: "n") + "Status")].intValue
                    //: let isNewUser = json["isNewUser"].boolValue
                    let isNewUser = json[(String(str_scaleLabData.suffix(5)) + String(str_mediumText))].boolValue
                    //: let istpAuth = json["isTPAuth"].boolValue
                    let istpAuth = json[(String(str_makeData) + String(str_routeName.prefix(5)))].boolValue
                    //: let totalIntimate = json["totalIntimate"].int ?? 0
                    let totalIntimate = json[(str_bottomAssetData.lowercased() + "Intimate")].int ?? 0
                    //: let userStatus = json["userStatus"].int ?? 1
                    let userStatus = json[(String(str_modelTitle) + String(str_windowData))].int ?? 1

                    //: if let topModel = self.topArr.filter({ $0.userID == uid }).first {

                    if let topModel = self.topArr.filter({ $0.userID == uid }).first {
                        //: topModel.listOnlineStatus = onlineStatus
                        topModel.listOnlineStatus = onlineStatus
                        //: topModel.isNewUser = isNewUser
                        topModel.isNewUser = isNewUser
                        //: topModel.ismoreAPAuto = istpAuth
                        topModel.ismoreAPAuto = istpAuth
                        //: topModel.totalIntimate = totalIntimate
                        topModel.totalIntimate = totalIntimate
                        //: topModel.userStatus = userStatus
                        topModel.userStatus = userStatus
                    }
                    //: if let normalModel = self.normalArr.filter({ $0.userID == uid }).first {

                    if let normalModel = self.normalArr.filter({ $0.userID == uid }).first {
                        //: normalModel.listOnlineStatus = onlineStatus
                        normalModel.listOnlineStatus = onlineStatus
                        //: normalModel.isNewUser = isNewUser
                        normalModel.isNewUser = isNewUser
                        //: normalModel.ismoreAPAuto = istpAuth
                        normalModel.ismoreAPAuto = istpAuth
                        //: normalModel.totalIntimate = totalIntimate
                        normalModel.totalIntimate = totalIntimate
                        //: normalModel.userStatus = userStatus
                        normalModel.userStatus = userStatus
                    }
                    //: if let moreModel = self.moreMsgArr.filter({ $0.userID == uid }).first {

                    if let moreModel = self.moreMsgArr.filter({ $0.userID == uid }).first {
                        //: moreModel.listOnlineStatus = onlineStatus
                        moreModel.listOnlineStatus = onlineStatus
                        //: moreModel.isNewUser = isNewUser
                        moreModel.isNewUser = isNewUser
                        //: moreModel.ismoreAPAuto = istpAuth
                        moreModel.ismoreAPAuto = istpAuth
                        //: moreModel.totalIntimate = totalIntimate
                        moreModel.totalIntimate = totalIntimate
                        //: moreModel.userStatus = userStatus
                        moreModel.userStatus = userStatus
                    }
                    /// 更新
                    //: self.update_userIntimateDB(uid: uid, intimate: totalIntimate)
                    self.vampirism(uid: uid, intimate: totalIntimate)
                    //: })
                }
            }
            //: completion(true)
            completion(true)
        }
    }

    /// 更新消息列表单个用户在线状态
    /// - Parameter userInfo: 用户信息 ["uid": xxx, "onlineStatus": xxx]
    /// - Returns: 是否更新成功
    //: func update_userOnlineStatus(userInfo: [String: Any]) -> Bool {
    func userNumber(userInfo: [String: Any]) -> Bool {
        //: let uid = userInfo["uid"] as! String
        let uid = userInfo[(String(str_equalMoveValue))] as! String
        //: let onlineStatus = userInfo["onlineStatus"] as! Int
        let onlineStatus = userInfo[(str_liveDataValue.replacingOccurrences(of: "image", with: "o") + str_valueText.replacingOccurrences(of: "page", with: "n") + "Status")] as! Int
        //: let isNewUser = userInfo["isNewUser"] as! Bool
        let isNewUser = userInfo[(String(str_scaleLabData.suffix(5)) + String(str_mediumText))] as! Bool

        /// 用户状态更新
        //: let userStatus = userInfo["userStatus"] as? Int ?? 1
        let userStatus = userInfo[(String(str_modelTitle) + String(str_windowData))] as? Int ?? 1
        //: var needuserStatus = false
        var needuserStatus = false
        //: if userInfo.keys.contains("userStatus") {
        if userInfo.keys.contains((String(str_modelTitle) + String(str_windowData))) {
            //: needuserStatus = true
            needuserStatus = true
        }

        //: var updateSucceed = false
        var updateSucceed = false
        //: if let topModel = self.topArr.filter({ $0.userID == uid }).first {

        if let topModel = self.topArr.filter({ $0.userID == uid }).first {
            //: topModel.listOnlineStatus = onlineStatus
            topModel.listOnlineStatus = onlineStatus
            //: topModel.isNewUser = isNewUser
            topModel.isNewUser = isNewUser
            //: if needuserStatus {
            if needuserStatus {
                //: topModel.userStatus = userStatus
                topModel.userStatus = userStatus
            }
            //: updateSucceed = true
            updateSucceed = true
        }
        //: if let normalModel = self.normalArr.filter({ $0.userID == uid }).first {

        if let normalModel = self.normalArr.filter({ $0.userID == uid }).first {
            //: normalModel.listOnlineStatus = onlineStatus
            normalModel.listOnlineStatus = onlineStatus
            //: normalModel.isNewUser = isNewUser
            normalModel.isNewUser = isNewUser
            //: if needuserStatus {
            if needuserStatus {
                //: normalModel.userStatus = userStatus
                normalModel.userStatus = userStatus
            }
            //: updateSucceed = true
            updateSucceed = true
        }
        //: if let moreModel = self.moreMsgArr.filter({ $0.userID == uid }).first {

        if let moreModel = self.moreMsgArr.filter({ $0.userID == uid }).first {
            //: moreModel.listOnlineStatus = onlineStatus
            moreModel.listOnlineStatus = onlineStatus
            //: moreModel.isNewUser = isNewUser
            moreModel.isNewUser = isNewUser
            //: if needuserStatus {
            if needuserStatus {
                //: moreModel.userStatus = userStatus
                moreModel.userStatus = userStatus
            }
            //: updateSucceed = true
            updateSucceed = true
        }
        //: return updateSucceed
        return updateSucceed
    }
}

// MARK: - 亲密度和Intimate栏目

//: extension TalkingChatListManager {
extension PropertyDateListManager {
    // intimate数据
    //: func req_intimateData() {
    func emptyCapture() {
        //: guard self.isHalf == false else { return }
        guard self.isHalf == false else { return }
        //: self.intimateNorArr.removeAll()
        self.intimateNorArr.removeAll()
        //: self.intimateTopArr.removeAll()
        self.intimateTopArr.removeAll()
        //: for model in TalkingIMManager.shared.norConvList {
        for model in DateThen.shared.norConvList {
            //: if model.totalIntimate >= MeasurementAppManager.share.appUserConfigMode.intimateLimit.enterTab {
            if model.totalIntimate >= MeasurementAppManager.share.appUserConfigMode.intimateLimit.enterTab {
                //: let userModel = self.getUserInfoFromCache(model: model)
                let userModel = self.voiceBackground(model: model)
                //: self.intimateNorArr.append(userModel!)
                self.intimateNorArr.append(userModel!)
            }
        }
        //: for model in TalkingIMManager.shared.topConvList {
        for model in DateThen.shared.topConvList {
            //: if model.totalIntimate >= MeasurementAppManager.share.appUserConfigMode.intimateLimit.enterTab {
            if model.totalIntimate >= MeasurementAppManager.share.appUserConfigMode.intimateLimit.enterTab {
                //: let userModel = self.getUserInfoFromCache(model: model)
                let userModel = self.voiceBackground(model: model)
                //: self.intimateTopArr.append(userModel!)
                self.intimateTopArr.append(userModel!)
            }
        }
    }

    /// 置顶
    //: func top_intimateData(convModel: TalkingConversationModel, isTop: Bool) {
    func aware(convModel: AdministratorReactiveCompatible, isTop: Bool) {
        //: if isTop {
        if isTop {
            //: self.intimateTopArr.insert(convModel, at: 0)
            self.intimateTopArr.insert(convModel, at: 0)
            //: if let index = self.intimateNorArr.firstIndex(of: convModel) {
            if let index = self.intimateNorArr.firstIndex(of: convModel) {
                //: self.intimateNorArr.remove(at: index)
                self.intimateNorArr.remove(at: index)
            }
            //: } else {
        } else {
            //: self.intimateNorArr.insert(convModel, at: 0)
            self.intimateNorArr.insert(convModel, at: 0)
            //: if let index = self.intimateTopArr.firstIndex(of: convModel) {
            if let index = self.intimateTopArr.firstIndex(of: convModel) {
                //: self.intimateTopArr.remove(at: index)
                self.intimateTopArr.remove(at: index)
            }
        }
    }

    //: func req_IntimateConversationModel(indexPath: IndexPath) -> TalkingConversationModel? {
    func imageClose(indexPath: IndexPath) -> AdministratorReactiveCompatible? {
        //: switch indexPath.section {
        switch indexPath.section {
        //: case ChatListSectionIntimateTyep.top.rawValue:
        case OnPicNumber.top.rawValue:
            //: guard indexPath.row < self.intimateTopArr.count else {
            guard indexPath.row < self.intimateTopArr.count else {
                //: return nil
                return nil
            }
            //: return self.intimateTopArr[indexPath.row]
            return self.intimateTopArr[indexPath.row]

        //: case ChatListSectionIntimateTyep.normal.rawValue:
        case OnPicNumber.normal.rawValue:
            //: guard indexPath.row < self.intimateNorArr.count else {
            guard indexPath.row < self.intimateNorArr.count else {
                //: return nil
                return nil
            }
            //: return self.intimateNorArr[indexPath.row]
            return self.intimateNorArr[indexPath.row]

        //: default:
        default:
            //: return nil
            return nil
        }
    }

    /// 更新数据库单个用户亲密度
    //: func update_userIntimateDB(uid: String, intimate: Int) {
    func vampirism(uid: String, intimate: Int) {
        //: guard intimate > 0 else { return }
        guard intimate > 0 else { return }
        //: DBUserInfoManager.cache_updateIntimate(with: uid, intimate: intimate, currTime: Int(Date().timeIntervalSince1970))
        InfoReactiveCompatible.showKeyTime(with: uid, intimate: intimate, currTime: Int(Date().timeIntervalSince1970))
    }

    /// 更新消息列表单个用户亲密度
    //: func update_userIntimate(userInfo: [String: Any]) -> Bool {
    func sumimateDoing(userInfo: [String: Any]) -> Bool {
        //: let uid = userInfo["uid"] as! String
        let uid = userInfo[(String(str_equalMoveValue))] as! String
        //: let intimate = userInfo["intimate"] as! Int
        let intimate = userInfo[(str_liveValue.replacingOccurrences(of: "error", with: "in") + str_messageValue.lowercased())] as! Int
        //: var updateSucceed = false
        var updateSucceed = false
        //: if let topModel = self.topArr.filter({ $0.userID == uid }).first {

        if let topModel = self.topArr.filter({ $0.userID == uid }).first {
            //: topModel.totalIntimate = intimate
            topModel.totalIntimate = intimate
            //: updateSucceed = true
            updateSucceed = true
        }
        //: if let normalModel = self.normalArr.filter({ $0.userID == uid }).first {

        if let normalModel = self.normalArr.filter({ $0.userID == uid }).first {
            //: normalModel.totalIntimate = intimate
            normalModel.totalIntimate = intimate
            //: updateSucceed = true
            updateSucceed = true
        }
        //: if let moreModel = self.moreMsgArr.filter({ $0.userID == uid }).first {

        if let moreModel = self.moreMsgArr.filter({ $0.userID == uid }).first {
            //: moreModel.totalIntimate = intimate
            moreModel.totalIntimate = intimate
            //: updateSucceed = true
            updateSucceed = true
        }
        //: return updateSucceed
        return updateSucceed
    }
}
