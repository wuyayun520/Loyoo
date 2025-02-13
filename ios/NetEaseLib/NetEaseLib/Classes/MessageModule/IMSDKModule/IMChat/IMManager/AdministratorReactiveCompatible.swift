
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_equalValue:[UInt8] = [0x1f,0x18,0x1f,0x2,0x5e,0x15,0x19,0x12,0x13,0x4,0x4c,0x5f,0x56,0x1e,0x17,0x5,0x56,0x18,0x19,0x2,0x56,0x14,0x13,0x13,0x18,0x56,0x1f,0x1b,0x6,0x1a,0x13,0x1b,0x13,0x18,0x2,0x13,0x12]

/*: "System notification" :*/
fileprivate let str_viewTitle:String = "white manager pushSyst"
fileprivate let str_toName:String = "ificalayerio"
fileprivate let str_playerStyleValue:String = "N"

/*: "http://static. :*/
fileprivate let str_errorName:[Character] = ["h","t","t","p",":"]
fileprivate let str_backgroundText:String = "else any during//st"

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let str_frameAddData:[UInt8] = [0xf2,0xbf,0xb3,0xb1,0xf3,0xbd,0xac,0xac,0xf3,0xb5,0xb1,0xbb,0xf3,0xb1,0xb9,0xaf,0xaf,0xbd,0xbb,0xb9,0xf3,0xa4,0xb5,0xa8,0xb3,0xb2,0xbb,0xf1,0xaa,0xee,0xf2,0xac,0xb2,0xbb]

/*: "Customer Care Center" :*/
fileprivate let str_centerText:String = "Customwindow lab"
fileprivate let str_giftName:String = "plus makeer Ca"
fileprivate let str_appDeviceManagerData:String = "re Cetext let"

/*: .com/app/img/message/cs.png" :*/
fileprivate let str_safetyContent:String = "let name if gift.com/a"
fileprivate let str_userValue:String = "mg/mself job manager var let"
fileprivate let str_loadValue:[Character] = ["e","/","c","s",".","p","n","g"]

/*: "Public Chat Room" :*/
fileprivate let str_toolValue:[Character] = ["P","u","b","l","i","c"," ","C","h","a","t"," ","R","o","o","m"]

/*: "icon_chats_pcr" :*/
fileprivate let str_callUserValue:[Character] = ["i","c","o","n","_","c","h","a","t","s","_","p"]
fileprivate let str_meText:String = "chidden"

/*: "New friends" :*/
fileprivate let str_currentData:String = "New image data failure range background"
fileprivate let str_indexTitle:String = "FRIENDS"

/*: "icon_chats_mm" :*/
fileprivate let str_makeText:String = "viewon"
fileprivate let str_transformText:String = "comment path add to_mm"

/*: " customElem.data is error" :*/
fileprivate let str_requestValue:[Character] = [" ","c","u","s","t","o","m","E","l","e","m",".","d","a","t","a"," ","i","s"," ","e","r"]
fileprivate let str_bottomValue:String = "addr"

/*: "extra" :*/
fileprivate let str_tableTitle:String = "extview"

/*: "msgInfo" :*/
fileprivate let str_imageName:[Character] = ["m","s","g","I","n","f","o"]

/*: "messageType" :*/
fileprivate let str_methodData:String = "mlayersag"
fileprivate let str_valueText:String = "tool"

/*: "msgType" :*/
fileprivate let str_randomName:String = "info head bottom mini iconmsgType"

/*: "tips" :*/
fileprivate let str_succeedMessageUpTitle:String = "withps"

/*: "totalIntimate" :*/
fileprivate let str_valueName:String = "show"
fileprivate let str_labText:String = "otalanguage"
fileprivate let str_colorValue:String = "matsection"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdministratorReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class AdministratorReactiveCompatible: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: CountMediumCacheModel?
    var gj_userInfo: CountMediumCacheModel? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == ImageMacroDefine.getXiaoMiID() {
            if conv.userID == ImageMacroDefine.dataFormatting() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == ImageMacroDefine.getCustomerServiceID() {
            } else if conv.userID == ImageMacroDefine.executeByTitle() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.disposeUpwards(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.placeMsg()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_equalValue.map{$0^118}, encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension AdministratorReactiveCompatible {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func finishInShow(chatType: TalkingIMChatType) -> AdministratorReactiveCompatible {
        //: let model = TalkingConversationModel()
        let model = AdministratorReactiveCompatible()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = ImageMacroDefine.getXiaoMiID()
            model.userID = ImageMacroDefine.dataFormatting()
            //: model.targetId = ImageMacroDefine.getXiaoMiID()
            model.targetId = ImageMacroDefine.dataFormatting()
            //: model.showName = "System notification".localized
            model.showName = (String(str_viewTitle.suffix(4)) + "em not" + str_toName.replacingOccurrences(of: "layer", with: "t") + str_playerStyleValue.lowercased()).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (String(str_errorName) + String(str_backgroundText.suffix(4)) + "atic.") + "\(a_bottomFoundText)" + String(bytes: str_frameAddData.map{$0^220}, encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = ImageMacroDefine.getCustomerServiceID()
            model.userID = ImageMacroDefine.executeByTitle()
            //: model.targetId = ImageMacroDefine.getCustomerServiceID()
            model.targetId = ImageMacroDefine.executeByTitle()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(str_centerText.prefix(6)) + String(str_giftName.suffix(5)) + String(str_appDeviceManagerData.prefix(5)) + "nter").localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (String(str_errorName) + String(str_backgroundText.suffix(4)) + "atic.") + "\(a_bottomFoundText)" + (String(str_safetyContent.suffix(6)) + "pp/i" + String(str_userValue.prefix(4)) + "essag" + String(str_loadValue))

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(str_toolValue)).localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(str_callUserValue) + str_meText.replacingOccurrences(of: "hidden", with: "r"))

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(str_currentData.prefix(4)) + str_indexTitle.lowercased()).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (str_makeText.replacingOccurrences(of: "view", with: "ic") + "_chats" + String(str_transformText.suffix(3)))
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension AdministratorReactiveCompatible {
    //: func func__updateLastShowMsg() {
    func placeMsg() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.disposeUpwards(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.disposeUpwards(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func disposeUpwards(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(str_requestValue) + str_bottomValue.replacingOccurrences(of: "add", with: "ro")))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(str_tableTitle.replacingOccurrences(of: "view", with: "ra"))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(str_imageName))]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(str_methodData.replacingOccurrences(of: "layer", with: "es") + "eTyp" + str_valueText.replacingOccurrences(of: "tool", with: "e"))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo[(String(str_randomName.suffix(7)))].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(str_methodData.replacingOccurrences(of: "layer", with: "es") + "eTyp" + str_valueText.replacingOccurrences(of: "tool", with: "e"))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == (str_succeedMessageUpTitle.replacingOccurrences(of: "with", with: "ti"))) || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func nextConv(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.disposeUpwards(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.stopBlackConv(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.placeMsg()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension AdministratorReactiveCompatible {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func stopBlackConv(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic[(str_tableTitle.replacingOccurrences(of: "view", with: "ra"))].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?[(String(str_imageName))]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(str_valueName.replacingOccurrences(of: "show", with: "t") + str_labText.replacingOccurrences(of: "language", with: "l") + "Inti" + str_colorValue.replacingOccurrences(of: "section", with: "e"))]?.int {
            //: if let model = DBUserInfoManager.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = InfoReactiveCompatible.pointOfReferenceWearerClickCachedGetSubstance(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: DBUserInfoManager.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    InfoReactiveCompatible.showKeyTime(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
