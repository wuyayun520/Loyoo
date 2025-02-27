
//: Declare String Begin

/*: ".db" :*/
fileprivate let str_positionData:String = "please status moment.db"

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let str_videoValue:String = "imageDB"
fileprivate let str_blockText:String = "开失败\u{ff1a}us"

/*: "WCDB/ :*/
fileprivate let str_viewTitle:String = "WCDB/add let message"

/*: "WCDB数据库打开失败： :*/
fileprivate let str_sizeName:[Character] = ["W","C","D","B","数","\u{636e}","\u{5e93}"]
fileprivate let str_rawTitle:String = "打\u{5f00}失败\u{ff1a}"

/*: "WCDB数据库成功打开： :*/
fileprivate let str_netTitle:String = "WCDB\u{6570}"
fileprivate let str_effectScaleData:[Character] = ["打","\u{5f00}","："]

/*: "WCDB数据库成功关闭。" :*/
fileprivate let str_colorValue:String = "return cover make elseWCDB数"
fileprivate let str_popTitle:String = "据库\u{6210}功关\u{95ed}。"

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let str_numberValue:[Character] = ["W","C","D","B","\u{6570}"]
fileprivate let str_arrayTitle:[Character] = ["据","库","\u{ff1a}","创","\u{5efa}","表","失","败","\u{3002}","e","r","r","o","r","："]

/*: ." :*/
fileprivate let str_makeValue:String = "add"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UtiliserManager.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class UtiliserManager: NSObject {
    //: static let shared = WCDBManager()
    static let shared = UtiliserManager()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return MeasurementAppManager.share.loginUserMode.userID + ".db"
        return MeasurementAppManager.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.pastStatusDatabase()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func pastStatusDatabase() {
        //: closeDatabase()
        estimatedShowDatabase()

        //: guard !MeasurementAppManager.share.loginUserMode.userID.isEmpty else {
        guard !MeasurementAppManager.share.loginUserMode.userID.isEmpty else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：userId为空。")
            TitleMediumLogTool.commitMedium(msg: (str_videoValue.replacingOccurrences(of: "image", with: "WC") + "数据\u{5e93}打" + str_blockText + "erId\u{4e3a}\u{7a7a}。"))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent((String(str_viewTitle.prefix(5))) + "\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：\(fileURL.path)")
            TitleMediumLogTool.commitMedium(msg: (String(str_sizeName) + str_rawTitle) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (str_netTitle + "\u{636e}\u{5e93}成功" + String(str_effectScaleData)) + "\(fileURL.path)")
        //: createTables()
        setAbout()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func estimatedShowDatabase() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (String(str_colorValue.suffix(5)) + str_popTitle))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension UtiliserManager {
    /// 创建表
    //: private func createTables() {
    private func setAbout() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: a_barText, of: AmmunitionInfoTable.self)
            // 语音消息表
            //: try database?.create(table: WCDBVoiceMsgTableName, of: WCDBVoiceMsgTable.self)
            try database?.create(table: a_tableWindowData, of: ObjectReactiveCompatible.self)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "WCDB数据库：创建表失败。error：\(error).")
            TitleMediumLogTool.commitMedium(msg: (String(str_numberValue) + String(str_arrayTitle)) + "\(error).")
        }
    }
}
