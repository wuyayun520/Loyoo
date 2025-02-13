
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let str_equalMakeData:[Character] = ["D","B","U","s","e","r","V","o"]
fileprivate let str_dataTitle:String = "make view blockiceTable"

/*: "msgId" :*/
fileprivate let str_postBottomViewData:String = "msgIdvar extension"

/*: "toUid" :*/
fileprivate let str_fromValue:String = "view let leading size heighttoUid"

/*: "senderId" :*/
fileprivate let str_serverGroupName:String = "senderIplayer text let intimate"
fileprivate let str_colorInviteTitle:String = "status"

/*: "audioSandbox" :*/
fileprivate let str_textListData:String = "tableudi"
fileprivate let str_popData:String = "OX"

/*: "audioLength" :*/
fileprivate let str_phoneMaxName:[Character] = ["a","u","d","i","o","L","e","n","g","t","h"]

/*: "audioData" :*/
fileprivate let str_firstText:[Character] = ["a","u","d"]
fileprivate let str_meInfoName:String = "ioDatacenter var kind"

/*: "audioUri" :*/
fileprivate let str_managerValue:String = "audview"
fileprivate let str_textValue:String = "Uricurrent net extension error user"

/*: "isRead" :*/
fileprivate let str_makeData:String = "mode tapisRead"

/*: "WCDB表 :*/
fileprivate let str_numberTheData:String = "WCDB\u{8868}"

/*: : 批量插入数据失败。error： :*/
fileprivate let str_emptyName:String = ": 批量插入"
fileprivate let str_imageData:String = "。erropath interval block"
fileprivate let str_sinceData:String = "r：layer interval physics vertical"

/*: ." :*/
fileprivate let str_shareTextValue:String = "."

/*: : 更新数据失败。error： :*/
fileprivate let str_rowTitle:[Character] = [":"," ","更","新","数","据","失","败"]
fileprivate let str_sharedData:[Character] = ["。"]
fileprivate let str_makeValue:String = "icon thirderror："

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObjectReactiveCompatible.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let WCDBVoiceMsgTableName = "DBUserVoiceTable"
let a_tableWindowData = (String(str_equalMakeData) + String(str_dataTitle.suffix(8)))
//: @objcMembers
@objcMembers
//: public final class WCDBVoiceMsgTable: NSObject, TableCodable {
public final class ObjectReactiveCompatible: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = WCDBVoiceMsgTable
        public typealias Root = ObjectReactiveCompatible
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension WCDBVoiceMsgTable {
extension ObjectReactiveCompatible {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> WCDBVoiceMsgTable {
    public class func shankBoard(_ dic: [AnyHashable: Any]) -> ObjectReactiveCompatible {
        //: let cache = WCDBVoiceMsgTable()
        let cache = ObjectReactiveCompatible()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic[(String(str_postBottomViewData.prefix(5)))] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic[(String(str_fromValue.suffix(5)))] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(String(str_serverGroupName.prefix(7)) + str_colorInviteTitle.replacingOccurrences(of: "status", with: "d"))] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(str_textListData.replacingOccurrences(of: "table", with: "a") + "oSandb" + str_popData.lowercased())] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(String(str_phoneMaxName))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((String(str_firstText) + String(str_meInfoName.prefix(6)))) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(String(str_firstText) + String(str_meInfoName.prefix(6)))] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((str_managerValue.replacingOccurrences(of: "view", with: "io") + String(str_textValue.prefix(3)))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(str_managerValue.replacingOccurrences(of: "view", with: "io") + String(str_textValue.prefix(3)))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(String(str_makeData.suffix(6)))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        containerMsg(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func than(_ voiceMsg: ObjectReactiveCompatible) {
        //: WCDBVoiceMsgTable.db_insertVoiceMsgs([voiceMsg])
        ObjectReactiveCompatible.swaddlingClothes([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [WCDBVoiceMsgTable]) {
    class func swaddlingClothes(_ voiceMsgs: [ObjectReactiveCompatible]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? UtiliserManager.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: WCDBVoiceMsgTableName)
                try UtiliserManager.shared.database?.insert(voiceMsgs, intoTable: a_tableWindowData)
                //: } catch {
            } catch {
                TitleMediumLogTool.commitMedium(msg: "WCDB表\(a_tableWindowData): 批量插入数据失败。error：\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> WCDBVoiceMsgTable? {
    public class func hireWith(with msgId: String) -> ObjectReactiveCompatible? {
        //: if let voiceMsgs = WCDBVoiceMsgTable.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = ObjectReactiveCompatible.actionIn(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [WCDBVoiceMsgTable]? {
    class func actionIn(with msgIds: [String]) -> [ObjectReactiveCompatible]? {
        //: do {
        do {
            //: let condition = WCDBVoiceMsgTable.Properties.msgId.in(msgIds)
            let condition = ObjectReactiveCompatible.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [WCDBVoiceMsgTable]? = try WCDBManager.shared.database?.getObjects(on: WCDBVoiceMsgTable.Properties.all, fromTable: WCDBVoiceMsgTableName, where: condition)
            let voiceMsgs: [ObjectReactiveCompatible]? = try UtiliserManager.shared.database?.getObjects(on: ObjectReactiveCompatible.Properties.all, fromTable: a_tableWindowData, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func containerMsg(_ voiceMsg: ObjectReactiveCompatible) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? UtiliserManager.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if WCDBVoiceMsgTable.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if ObjectReactiveCompatible.hireWith(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = WCDBVoiceMsgTable.Properties.msgId == voiceMsg.msgId
                    let condition = ObjectReactiveCompatible.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: WCDBVoiceMsgTableName,
                    try UtiliserManager.shared.database?.update(table: a_tableWindowData,
                                                            //: on: WCDBVoiceMsgTable.Properties.all,
                                                            on: ObjectReactiveCompatible.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 更新数据失败。error：\(error).")
                    TitleMediumLogTool.commitMedium(msg: (str_numberTheData) + "\(a_tableWindowData)" + (String(str_rowTitle) + String(str_sharedData) + String(str_makeValue.suffix(6))) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(voiceMsg)
                ObjectReactiveCompatible.than(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func stackPath(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = WCDBVoiceMsgTable.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = ObjectReactiveCompatible.hireWith(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(dbModel)
        ObjectReactiveCompatible.containerMsg(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func ofView(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? UtiliserManager.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.msgId == msgId
            let condition = ObjectReactiveCompatible.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? UtiliserManager.shared.database?.delete(fromTable: a_tableWindowData,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func footballer(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? UtiliserManager.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.db_senduid == userId && WCDBVoiceMsgTable.Properties.db_touid == toUid
            let condition = ObjectReactiveCompatible.Properties.db_senduid == userId && ObjectReactiveCompatible.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? UtiliserManager.shared.database?.delete(fromTable: a_tableWindowData,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
