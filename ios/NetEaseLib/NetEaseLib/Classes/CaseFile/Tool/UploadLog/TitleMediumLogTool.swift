
//: Declare String Begin

/*: "There is no data to upload" :*/
fileprivate let str_viewContent:String = "Therfalse face with self"
fileprivate let str_modeText:String = "data to button wrap"
fileprivate let str_kindData:String = "transformpload"

/*: "Upload Log successfully!" :*/
fileprivate let str_makeTwoValue:[Character] = ["U","p","l","o","a","d"," ","L","o","g"," "]
fileprivate let str_fieldBitName:String = "suaddadde"
fileprivate let str_sectionName:String = "item makelly!"

/*: "UID:  :*/
fileprivate let str_userContent:[Character] = ["U","I","D",":"," "]

/*: "/com_tencent_imsdk_log" :*/
fileprivate let str_thereName:String = "/"
fileprivate let str_listValue:String = "style return text usercom_t"
fileprivate let str_makeData:String = "digital slide content_imsdk"

/*: "/log" :*/
fileprivate let str_methodData:String = "hung title/log"

/*: "/TempLogZip" :*/
fileprivate let str_paraValue:String = "/TempLphone if total error"

/*: "/LogZip.zip" :*/
fileprivate let str_makeTitle:String = "background load add/LogZ"
fileprivate let str_toStyleText:String = "ip.zipoutside if"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleMediumLogTool.swift
//  Adjust
//
//  Created by DouXiu on 2024/5/22.
//

//: import DXMarsXlog
import DXMarsXlog
//: import UIKit
import UIKit

//: class UploadLogTool: NSObject {
class TitleMediumLogTool: NSObject {
    /// 上传7天内
    //: private let uploadDay = 7
    private let uploadDay = 7
    //: static let shared = UploadLogTool()
    static let shared = TitleMediumLogTool()

    /// 上传日志
    /// - Parameter showTips: 是否展示提示
    //: func uploadLog(_ showTips: Bool = true) {
    func humanActionWrite(_ showTips: Bool = true) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            episode(showMsg: a_userText)
            //: return
            return
        }
        //: if showTips {
        if showTips {
            //: ProgressHUD.show()
            SizeHungReactiveCompatible.picCurrent()
        }
        // im
        //: if let path = UploadLogTool.getIMSDKLogPath() {
        if let path = TitleMediumLogTool.adjourn() {
            //: copyLogToTempPath(logPath: path)
            makePath(logPath: path)
        }
        // trtc
        //: if let path = UploadLogTool.getTRTCLogPath() {
        if let path = TitleMediumLogTool.namePath() {
            //: copyLogToTempPath(logPath: path)
            makePath(logPath: path)
        }
        // xlog
        //: DXMarsXLogger.shared().flush()
        DXMarsXLogger.shared().flush()
        //: copyLogToTempPath(logPath: DXMarsXLogger.getLogPath())
        makePath(logPath: DXMarsXLogger.getLogPath())

        // 压缩上传
        //: if let tempPath = UploadLogTool.getTempUploadLogPath(), let zipPath = UploadLogTool.getZipLogPath() {
        if let tempPath = TitleMediumLogTool.upTick(), let zipPath = TitleMediumLogTool.woodPath() {
            //: SSZipArchive.createZipFile(atPath: zipPath, withContentsOfDirectory: tempPath, keepParentDirectory: true)
            SSZipArchive.createZipFile(atPath: zipPath, withContentsOfDirectory: tempPath, keepParentDirectory: true)
            //: if let file = NSData(contentsOfFile: zipPath) {
            if let file = NSData(contentsOfFile: zipPath) {
                //: if file.length < 10 {
                if file.length < 10 {
                    //: ProgressHUD.dismiss()
                    SizeHungReactiveCompatible.dataMessage()
                    //: if showTips {
                    if showTips {
                        //: self.func__showStatusBarErrorMsg(showMsg: "There is no data to upload".localized)
                        self.episode(showMsg: (String(str_viewContent.prefix(4)) + "e is no " + String(str_modeText.prefix(8)) + str_kindData.replacingOccurrences(of: "transform", with: "u")).localized)
                    }
                    //: return
                    return
                }
                // cos上传
                //: TalkingMomentVideoManager.shared.cos_uploadLog(filePath: zipPath) { succeed, errorMsg in
                MediumLabThen.shared.mediumLabel(filePath: zipPath) { succeed, errorMsg in
                    //: ProgressHUD.dismiss()
                    SizeHungReactiveCompatible.dataMessage()
                    //: guard succeed else {
                    guard succeed else {
                        //: if showTips, errorMsg?.isEmpty == false {
                        if showTips, errorMsg?.isEmpty == false {
                            //: self.func__showStatusBarErrorMsg(showMsg: errorMsg!)
                            self.episode(showMsg: errorMsg!)
                        }
                        //: return
                        return
                    }

                    //: if showTips {
                    if showTips {
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Upload Log successfully!".localized)
                        self.afterTitle(showMsg: (String(str_makeTwoValue) + str_fieldBitName.replacingOccurrences(of: "add", with: "c") + "ssfu" + String(str_sectionName.suffix(4))).localized)
                    }

                    // 移除缓存
                    //: try? FileManager.default.removeItem(atPath: zipPath)
                    try? FileManager.default.removeItem(atPath: zipPath)
                    //: try? FileManager.default.removeItem(atPath: tempPath)
                    try? FileManager.default.removeItem(atPath: tempPath)
                    //: self.clearContentsOfDirectory(atPath: DXMarsXLogger.getLogPath())
                    self.fileIn(atPath: DXMarsXLogger.getLogPath())
                }
            }
        }
    }
}

// MARK: - 写入用户行为日志到本地文件

//: extension UploadLogTool {
extension TitleMediumLogTool {
    /// 写入用户行为日志到本地文件
    /// - Parameter msg: 日志
    //: static func writeLog<T>(msg: T,
    static func commitMedium<T>(msg: T,
                                //: file: String = #file,
                                file: String = #file,
                                //: method: String = #function,
                                method: String = #function,
                                //: line: Int = #line) {
                                line: Int = #line)
    {
        //: DXMarsXLogger.logInfo("UID: \(MeasurementAppManager.share.loginUserMode.userID)",
        DXMarsXLogger.logInfo((String(str_userContent)) + "\(MeasurementAppManager.share.loginUserMode.userID)",
                              //: message: "\(msg)",
                              message: "\(msg)",
                              //: file: file,
                              file: file,
                              //: line: line,
                              line: line,
                              //: function: method)
                              function: method)
        //: DXMarsXLogger.shared().flush()
        DXMarsXLogger.shared().flush()
    }
}

// MARK: - 日志路径操作

//: extension UploadLogTool {
extension TitleMediumLogTool {
    /// Copy符合条件的日志到指定路径
    //: private func copyLogToTempPath(logPath: String) {
    private func makePath(logPath: String) {
        //: guard let subpaths = FileManager.default.subpaths(atPath: logPath) else { return }
        guard let subpaths = FileManager.default.subpaths(atPath: logPath) else { return }
        // 获取当前日期和指定天数前的日期
        //: let calendar = Calendar.current
        let calendar = Calendar.current
        //: let today = Date()
        let today = Date()
        //: guard let daysAgo = calendar.date(byAdding: .day, value: -uploadDay, to: calendar.startOfDay(for: today)) else { return }
        guard let daysAgo = calendar.date(byAdding: .day, value: -uploadDay, to: calendar.startOfDay(for: today)) else { return }
        //: subpaths.forEach { fileName in
        subpaths.forEach { fileName in
            //: let fullPath = logPath + "/" + fileName
            let fullPath = logPath + "/" + fileName
            //: guard let dict = try? FileManager.default.attributesOfItem(atPath: fullPath),
            guard let dict = try? FileManager.default.attributesOfItem(atPath: fullPath),
                  //: let modificationDate = dict[FileAttributeKey.modificationDate] as? Date else { return }
                  let modificationDate = dict[FileAttributeKey.modificationDate] as? Date else { return }
            // 获取文件修改日期的开始时间
            //: let fileDate = calendar.startOfDay(for: modificationDate)
            let fileDate = calendar.startOfDay(for: modificationDate)
            // 判断文件日期是否在指定天数范围内
            //: if fileDate > daysAgo,
            if fileDate > daysAgo,
               //: let tempPath = UploadLogTool.getTempUploadLogPath() {
               let tempPath = TitleMediumLogTool.upTick()
            {
                //: try? FileManager.default.copyItem(atPath: fullPath, toPath: tempPath + "/" + fileName)
                try? FileManager.default.copyItem(atPath: fullPath, toPath: tempPath + "/" + fileName)
            }
        }
    }

    /// 清空指定路径下的所有文件
    //: private func clearContentsOfDirectory(atPath path: String) {
    private func fileIn(atPath path: String) {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if let files = try? fileManager.contentsOfDirectory(atPath: path) {
        if let files = try? fileManager.contentsOfDirectory(atPath: path) {
            //: for file in files {
            for file in files {
                //: let filePath = path + "/" + file
                let filePath = path + "/" + file
                //: try? fileManager.removeItem(atPath: filePath)
                try? fileManager.removeItem(atPath: filePath)
            }
        }
    }
}

// MARK: - 日志本地路径

//: extension UploadLogTool {
extension TitleMediumLogTool {
    /// 获取腾讯IM日志路径
    //: private static func getIMSDKLogPath() -> String? {
    private static func adjourn() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first?.appending("/com_tencent_imsdk_log")
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first?.appending((str_thereName.capitalized + String(str_listValue.suffix(5)) + "encent" + String(str_makeData.suffix(6)) + "_log"))
    }

    /// 获取腾讯TRTC日志路径
    //: private static func getTRTCLogPath() -> String? {
    private static func namePath() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/log")
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(str_methodData.suffix(4))))
    }

    /// copy临时路径
    //: private static func getTempUploadLogPath() -> String? {
    private static func upTick() -> String? {
        //: if let logPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/TempLogZip") {
        if let logPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(str_paraValue.prefix(6)) + "ogZip")) {
            //: if FileManager.default.fileExists(atPath: logPath) == false {
            if FileManager.default.fileExists(atPath: logPath) == false {
                //: try? FileManager.default.createDirectory(atPath: logPath, withIntermediateDirectories: true)
                try? FileManager.default.createDirectory(atPath: logPath, withIntermediateDirectories: true)
            }
            //: return logPath
            return logPath
        }
        //: return nil
        return nil
    }

    /// 压缩日志文件路径
    //: private static func getZipLogPath() -> String? {
    private static func woodPath() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/LogZip.zip")
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(str_makeTitle.suffix(5)) + String(str_toStyleText.prefix(6))))
    }
}
