
//: Declare String Begin

/*: "http://" :*/
fileprivate let str_recommendContent:String = "from"
fileprivate let str_viewConversationValue:[Character] = ["t","t","p",":","/","/"]

/*: "https://" :*/
fileprivate let str_greenName:[Character] = ["h","t","t","p","s",":"]
fileprivate let str_titleValue:String = "viewview"

/*: "platform=iphone&version=%@&packageId=%@&bundleId=%@" :*/
fileprivate let str_rangeTitle:[UInt8] = [0x70,0x6c,0x61,0x74,0x66,0x6f,0x72,0x6d,0x3d,0x69,0x70,0x68,0x6f,0x6e,0x65,0x26,0x76,0x65,0x72,0x73,0x69,0x6f,0x6e,0x3d,0x25,0x40,0x26,0x70,0x61,0x63,0x6b,0x61,0x67,0x65,0x49,0x64,0x3d,0x25,0x40,0x26,0x62,0x75,0x6e,0x64,0x6c,0x65,0x49,0x64,0x3d,0x25,0x40]

/*: "%@%@&%@" :*/
fileprivate let str_lessText:[Character] = ["%","@","%","@","&","%","@"]

/*: "url" :*/
fileprivate let str_modelValue:String = "contextl"

/*: "id" :*/
fileprivate let str_selectedName:[Character] = ["i","d"]

/*: "length" :*/
fileprivate let str_layerText:String = "lenstatet"
fileprivate let str_dayData:String = "full"

/*: "getFileSize error : :*/
fileprivate let str_liveTitle:String = "getFilself title text"
fileprivate let str_valueName:String = "e erif view index data"
fileprivate let str_objectViewName:[Character] = [":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DutyReactiveCompatible.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: enum DownloadTaskStatus: Int {
enum LoadStrideable: Int {
    //: case none = 0
    case none = 0 // 未定义
    //: case prepare = 1
    case prepare = 1 // 准备
    //: case running = 10
    case running = 10 // 下载中
    //: case pause = 20
    case pause = 20 // 暂停
    //: case cancel = 30
    case cancel = 30 // 取消
    //: case expired = 40
    case expired = 40 // 过期
    //: case finish = 100
    case finish = 100 // 完成
    //: case error = 1000
    case error = 1000 // 错误
}

//: enum DownloadTaskTypeID: Int {
enum TaskMirrorPath: Int {
    //: case undefined = 0
    case undefined = 0 // 未定义
    //: case chatRecord = 1
    case chatRecord = 1 // 语音聊天
    //: case oneKeyGreet = 2
    case oneKeyGreet = 2 // 一键发送打招呼语音
}

//: class VoiceDownloadTaskModel: NSObject {
class DutyReactiveCompatible: NSObject {
    //: var taskId: String = ""
    var taskId: String = ""
    /// 下载地址
    //: var downloadUri: String = ""
    var downloadUri: String = ""
    /// 输出路径zip包
    //: var zipFilePath: String = ""
    var zipFilePath: String = ""
    /// 已下载大小
    //: var currentSize: Double = 0.0
    var currentSize: Double = 0.0
    /// 总大小
    //: var totalSize: Double = 0.0
    var totalSize: Double = 0.0
    /// 下载状态
    //: var taskStatus: DownloadTaskStatus = .none
    var taskStatus: LoadStrideable = .none
    /// 解压后路径
    //: var unZipFilePath: String = ""
    var unZipFilePath: String = ""
    /// 下载区分标识回调
    //: var taskTypeId: DownloadTaskTypeID = .undefined
    var taskTypeId: TaskMirrorPath = .undefined
    /// 语音id
    //: var vid: String = ""
    var vid: String = ""
    /// 时长
    //: var length = 0
    var length = 0
    /// 输出流
    //: var stream: OutputStream?
    var stream: OutputStream?
    /// session
    //: var dataTask: URLSessionDataTask?
    var dataTask: URLSessionDataTask?

    /// 获取语音下载model
    //: class func getVoiceModel(_ tempModel: WCDBVoiceMsgTable) -> VoiceDownloadTaskModel {
    class func golfPlayerModel(_ tempModel: ObjectReactiveCompatible) -> DutyReactiveCompatible {
        //: let model = VoiceDownloadTaskModel()
        let model = DutyReactiveCompatible()
        //: model.taskTypeId = .chatRecord
        model.taskTypeId = .chatRecord
        //: model.taskId = tempModel.msgId
        model.taskId = tempModel.msgId
        //: model.zipFilePath = tempModel.db_filePath
        model.zipFilePath = tempModel.db_filePath
        //: if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
        if tempModel.db_voiceUri.contains((str_recommendContent.replacingOccurrences(of: "from", with: "h") + String(str_viewConversationValue))) || tempModel.db_voiceUri.contains((String(str_greenName) + str_titleValue.replacingOccurrences(of: "view", with: "/"))) {
            //: model.downloadUri = tempModel.db_voiceUri
            model.downloadUri = tempModel.db_voiceUri
            //: } else {
        } else {
            //: let otherParams = String(format: "platform=iphone&version=%@&packageId=%@&bundleId=%@", ImageMacroDefine.getAppNetVersion(), ImageMacroDefine.getPackageID(), ImageMacroDefine.getAppBundle())
            let otherParams = String(format: String(bytes: str_rangeTitle, encoding: .utf8)!, ImageMacroDefine.appOffVersion(), ImageMacroDefine.electronicNameUser(), ImageMacroDefine.noName())
            //: model.downloadUri = String(format: "%@%@&%@", TalkingRequestAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)
            model.downloadUri = String(format: "%@%@&%@", AddrConstraintReactiveCompatible.share.serverUrlStr, tempModel.db_voiceUri, otherParams)

            //: model.currentSize = VoiceDownloadTaskModel.getFileSize(path: tempModel.db_filePath)
            model.currentSize = DutyReactiveCompatible.duringFire(path: tempModel.db_filePath)
        }
        //: return model
        return model
    }

    /// 获取一键打招呼model
    //: class func getOneKeyGreetModel(_ voiceInfo: [String: Any]) -> VoiceDownloadTaskModel {
    class func noneEffect(_ voiceInfo: [String: Any]) -> DutyReactiveCompatible {
        //: let model = VoiceDownloadTaskModel()
        let model = DutyReactiveCompatible()
        //: model.taskTypeId = .oneKeyGreet
        model.taskTypeId = .oneKeyGreet
        //: model.downloadUri = voiceInfo["url"] as? String ?? ""
        model.downloadUri = voiceInfo[(str_modelValue.replacingOccurrences(of: "context", with: "ur"))] as? String ?? ""
        //: model.vid = voiceInfo["id"] as? String ?? ""
        model.vid = voiceInfo["id"] as? String ?? ""
        //: model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        model.length = Int(voiceInfo[(str_layerText.replacingOccurrences(of: "state", with: "g") + str_dayData.replacingOccurrences(of: "full", with: "h"))] as? String ?? "0") ?? 0
        //: let fileName = (model.downloadUri as NSString).lastPathComponent
        let fileName = (model.downloadUri as NSString).lastPathComponent
        //: let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: model.zipFilePath = "\(ToCacheDefine.getChatVoicePath())\(pathName)\(timeInterval)"
        model.zipFilePath = "\(ToCacheDefine.commemorativePath())\(pathName)\(timeInterval)"
        //: return model
        return model
    }
}

//: extension VoiceDownloadTaskModel {
extension DutyReactiveCompatible {
    /// 获取文件大小
    /// - Parameter path: 文件完整路径
    /// - Returns: 文件size
    //: class func getFileSize(path: String) -> Double {
    class func duringFire(path: String) -> Double {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: guard fileManager.fileExists(atPath: path) else {
        guard fileManager.fileExists(atPath: path) else {
            //: return 0.0
            return 0.0
        }
        //: do {
        do {
            //: let attr = try fileManager.attributesOfItem(atPath: path)
            let attr = try fileManager.attributesOfItem(atPath: path)
            //: let fileSize = attr[FileAttributeKey.size] as! UInt64
            let fileSize = attr[FileAttributeKey.size] as! UInt64
            //: return Double(fileSize)
            return Double(fileSize)
            //: } catch {
        } catch {
            //: printLog(message: "getFileSize error :\(error)")
            printLog(message: (String(str_liveTitle.prefix(6)) + "eSiz" + String(str_valueName.prefix(4)) + "ror " + String(str_objectViewName)) + "\(error)")
            //: return 0.0
            return 0.0
        }
    }

    /// 获取文件本地存储路径
    /// - Returns: 路径
    //: func getDownloadZipFilePath() -> String {
    func stateTo() -> String {
        //: guard self.zipFilePath.isEmpty else {
        guard self.zipFilePath.isEmpty else {
            //: return self.zipFilePath
            return self.zipFilePath
        }
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: return "\(ToCacheDefine.getChatVoicePath())\(self.taskId)\(timeInterval)"
        return "\(ToCacheDefine.commemorativePath())\(self.taskId)\(timeInterval)"
    }
}
