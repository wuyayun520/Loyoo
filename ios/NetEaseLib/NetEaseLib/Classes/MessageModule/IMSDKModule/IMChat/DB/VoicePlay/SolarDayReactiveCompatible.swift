
//: Declare String Begin

/*: ".wav" :*/
fileprivate let str_centerText:String = ".wavtop place"

/*: "Documents/User/voice/" :*/
fileprivate let str_viewData:[Character] = ["D","o","c","u","m","e","n","t","s","/","U","s","e","r","/","v","o","i"]
fileprivate let str_buttonData:[Character] = ["c","e","/"]

/*: "Documents/User/record/" :*/
fileprivate let str_playerData:String = "style cell ifDocume"
fileprivate let str_contentValue:String = "User/relet text play send block"
fileprivate let str_listValue:String = "style view pathcord/"

/*: "voice dataTaskDownloadFinish" :*/
fileprivate let str_layerData:String = "item window labvoice "
fileprivate let str_makeValue:String = "TaskDuser raw make kit"
fileprivate let str_positionValue:[Character] = ["o","w","n","l","o","a","d","F","i","n","i","s","h"]

/*: "voice dataTaskDownloadCancel" :*/
fileprivate let str_willTopData:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o","w","n","l","o","a","d","C"]
fileprivate let str_putTitle:String = "ancenterl"

/*: "voice dataTaskDownloadExpired" :*/
fileprivate let str_roomTitle:String = "vlocationice"
fileprivate let str_styleImageContent:String = "image mode year renderaTas"
fileprivate let str_makeSucceedEqualValue:String = "nbottomoa"

/*: "voice dataTaskDownloadErro" :*/
fileprivate let str_labName:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s"]
fileprivate let str_colorName:String = "model aspect medal tapkDown"

/*: "Play Error,File does not exist" :*/
fileprivate let str_viewGiftName:String = "var equal countPlay E"
fileprivate let str_pageValue:String = "tab background close model workFile d"
fileprivate let str_soundName:String = "oes notshare add content show block"
fileprivate let str_recordValue:String = " existreturn label guard else"

/*: "Play Error,File expired" :*/
fileprivate let str_administratorName:[Character] = ["P","l","a","y"," ","E","r","r","o","r",",","F","i","l","e"," ","e","x"]
fileprivate let str_phoneData:String = "pireedge"

/*: "Play Error，Net error" :*/
fileprivate let str_iconTitle:[Character] = ["P","l","a","y"," ","E"]
fileprivate let str_backTitle:[Character] = ["r","r","o","r","，","N","e","t"," "]
fileprivate let str_modelSharedName:String = "ERROR"

/*: "Currently in mute mode" :*/
fileprivate let str_closeName:[Character] = ["C","u","r","r","e","n","t","l","y"," ","i","n"," "]
fileprivate let str_viewTitle:String = "episode player view name showmute mode"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SolarDayReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/10.
//

//: import UIKit
import UIKit

/// 播放器状态
//: enum AudioMsgPlayStatus {
enum DataPlayStatus {
    //: case Unknown
    case Unknown // 未开始
    //: case Waiting
    case Waiting // 等待中
    //: case Playing
    case Playing // 播放中
}

//: enum AudioPlayingErrorStatus: Int {
enum NameQuickLookable: Int {
    //: case AudioPlayerNil = 0
    case AudioPlayerNil = 0 // audioPlayer初始化失败，多半是路径下文件的问题
    //: case FileExpired = 1
    case FileExpired = 1 // 文件过期
    //: case TaskError = 2
    case TaskError = 2 // 下载报错
    //: case NotFileAtPath = 3
    case NotFileAtPath = 3 // 路径下文件不存在
    //: case FirstMuteTip = 100
    case FirstMuteTip = 100 // 静音提醒
}

//: class TalkingVoiceMsgPlayManager: NSObject {
class SolarDayReactiveCompatible: NSObject {
    //: static let shared = TalkingVoiceMsgPlayManager()
    static let shared = SolarDayReactiveCompatible()

    //: var  voiceDataList: [TalkingVoiceMsgPlayModel] = []
    var voiceDataList: [FrameworkValueModelType] = []

    //: var playItemDic: Dictionary<String, TalkingVoiceMsgPlayModel> = [:]
    var playItemDic: [String: FrameworkValueModelType] = [:]

    //: var audioPlayer: AVAudioPlayer?
    var audioPlayer: AVAudioPlayer?
    //: var playStatus: AudioMsgPlayStatus = .Unknown
    var playStatus: DataPlayStatus = .Unknown
    //: var playIndex = 0
    var playIndex = 0 // 当前播放的下标
    //: var waitPlayID = ""   // 将要播放的主键id
    var waitPlayID = "" // 将要播放的主键id
    //: var clickCellId = ""   // 记录点击的
    var clickCellId = "" // 记录点击的
    //: var isMute = false
    var isMute = false // 是否静音，默认否

    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: initialization()
        dismissAcross()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func initialization() {
    func dismissAcross() {
        //: self.voiceDataList.removeAll()
        self.voiceDataList.removeAll()
        //: self.playItemDic.removeAll()
        self.playItemDic.removeAll()
        //: self.playIndex = 0
        self.playIndex = 0
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension SolarDayReactiveCompatible {
    //: func stopAudioPlayer() {
    func scorer() {
        //: if playStatus != .Unknown {
        if playStatus != .Unknown {
            //: for  model in voiceDataList {
            for model in voiceDataList {
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
            }
        }
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
    }

    /// 播放引用消息
    //: func starPlayReplyMsg(playModel: TalkingVoiceMsgPlayModel) {
    func viewModel(playModel: FrameworkValueModelType) {
        //: stopAudioPlayer()
        scorer()
        //: initialization()
        dismissAcross()
        //: voiceDataList.append(playModel)
        voiceDataList.append(playModel)
        //: let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        //: waitPlayID = playModel.db_voiceCacheWrap.msgId
        waitPlayID = playModel.db_voiceCacheWrap.msgId
        //: self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        //: let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        //: if status == DownloadTaskStatus.finish.rawValue ||
        if status == LoadStrideable.finish.rawValue ||
            //: !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")  {
            !dbFilePath.isEmpty && dbFilePath.hasSuffix((String(str_centerText.prefix(4))))
        {
            //: starPlayVoiceMsg(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            outsideAdd(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            //: } else {
        } else {
            //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(playModel.db_voiceCacheWrap)
            let taskModel = DutyReactiveCompatible.golfPlayerModel(playModel.db_voiceCacheWrap)
            //: VoiceDownloadTaskManager.shared.addDownloadTasks([taskModel])
            LabelObjectProtocol.shared.camera([taskModel])
        }
    }

    //: func starPlayMsg(msgArr: [TalkingVoiceMsgPlayModel]) {
    func redGiantWithinPlay(msgArr: [FrameworkValueModelType]) {
        //: if msgArr.count == 0 {
        if msgArr.count == 0 {
            //: return
            return
        }
        //: stopAudioPlayer()
        scorer()
        //: initialization()
        dismissAcross()
        //: voiceDataList += msgArr
        voiceDataList += msgArr
        //: var index = 0
        var index = 0
        //: var tempArray: [VoiceDownloadTaskModel] = []
        var tempArray: [DutyReactiveCompatible] = []
        //: var firstModel: TalkingVoiceMsgPlayModel?
        var firstModel: FrameworkValueModelType?
        //: for model in msgArr {
        for model in msgArr {
            //: let bindWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let bindWrap = ObjectReactiveCompatible.hireWith(with: model.db_voiceCacheWrap.msgId)
            //: if bindWrap != nil {
            if bindWrap != nil {
                //: model.db_voiceCacheWrap = bindWrap!
                model.db_voiceCacheWrap = bindWrap!
            }
            //: let isMySend = (model.db_voiceCacheWrap.db_senduid == MeasurementAppManager.share.loginUserMode.userID)
            let isMySend = (model.db_voiceCacheWrap.db_senduid == MeasurementAppManager.share.loginUserMode.userID)
            //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if index == 0 {
            if index == 0 {
                //: waitPlayID = model.db_voiceCacheWrap.msgId
                waitPlayID = model.db_voiceCacheWrap.msgId
                //: if status == DownloadTaskStatus.finish.rawValue || isMySend {
                if status == LoadStrideable.finish.rawValue || isMySend {
                    //: firstModel = model
                    firstModel = model
                }
                //: if (status != DownloadTaskStatus.finish.rawValue) {
                if status != LoadStrideable.finish.rawValue {
                    //: if playStatus != .Unknown {
                    if playStatus != .Unknown {
                        //: model.activityShowStatus = 1
                        model.activityShowStatus = 1
                    }
                }
            }
            //: if status != DownloadTaskStatus.finish.rawValue && !isMySend {
            if status != LoadStrideable.finish.rawValue, !isMySend {
                //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(model.db_voiceCacheWrap)
                let taskModel = DutyReactiveCompatible.golfPlayerModel(model.db_voiceCacheWrap)
                //: tempArray.append(taskModel)
                tempArray.append(taskModel)
            }
            //: index += 1
            index += 1
        }

        //: if firstModel != nil {
        if firstModel != nil {
            //: firstModel?.isPlayingStatus = 1
            firstModel?.isPlayingStatus = 1
            //: starPlayVoiceMsg(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
            outsideAdd(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
        }
        //: VoiceDownloadTaskManager.shared.addDownloadTasks(tempArray)
        LabelObjectProtocol.shared.camera(tempArray)
    }

    //: func starPlayVoiceMsg(filePath: String, msgID: String) {
    func outsideAdd(filePath: String, msgID: String) {
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
        //: let model = self.playItemDic[msgID]
        let model = self.playItemDic[msgID]
        //: if model == nil {
        if model == nil {
            //: return
            return
        }
        //: var temfilePath = filePath
        var temfilePath = filePath
        //: let theFileName = (temfilePath as NSString).lastPathComponent
        let theFileName = (temfilePath as NSString).lastPathComponent

        // 重编译，相对路径会变
        //: if filePath.contains("Documents/User/voice/") {
        if filePath.contains((String(str_viewData) + String(str_buttonData))) {
            //: temfilePath = Talking_Chat_voice_SandboxPath + theFileName
            temfilePath = a_infoName + theFileName
        }
        //: if filePath.contains("Documents/User/record/") {
        if filePath.contains((String(str_playerData.suffix(6)) + "nts/" + String(str_contentValue.prefix(7)) + String(str_listValue.suffix(5)))) {
            //: temfilePath = Talking_Chat_record_SandboxPath + theFileName
            temfilePath = a_successSessionName + theFileName
        }
        //: if !FileManager.fileManager.fileExists(atPath: temfilePath) {
        if !FileManager.fileManager.fileExists(atPath: temfilePath) {
            //: model?.isPlayingStatus = 2
            model?.isPlayingStatus = 2
            //: showToast(status: .NotFileAtPath)
            deed(status: .NotFileAtPath)
            //: return
            return
        }
        //: model?.db_voiceCacheWrap.db_isRead = "1"
        model?.db_voiceCacheWrap.db_isRead = "1"
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(model!.db_voiceCacheWrap)
        ObjectReactiveCompatible.containerMsg(model!.db_voiceCacheWrap)
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.ambient)
            try session.setCategory(AVAudioSession.Category.ambient)
            //: } catch {
        } catch {}
        //: let url = URL.init(fileURLWithPath: temfilePath)
        let url = URL(fileURLWithPath: temfilePath)
        //: do {
        do {
            //: try audioPlayer = AVAudioPlayer.init(contentsOf: url)
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            //: } catch {
        } catch {}
        //: audioPlayer?.delegate = self
        audioPlayer?.delegate = self
        //: audioPlayer?.prepareToPlay()
        audioPlayer?.prepareToPlay()
        //: audioPlayer?.play()
        audioPlayer?.play()
        //: self.playStatus = .Playing
        self.playStatus = .Playing
        //: setMutedDetection()
        modeCellDetection()
    }

    //: func addDaskManagerDelegate() {
    func shrugOff() {
        //: stopAudioPlayer()
        scorer()
        //: VoiceDownloadTaskManager.shared.delegate = self
        LabelObjectProtocol.shared.delegate = self
    }

    //: func removeDaskManagerDelegate() {
    func countDelegate() {
        //: stopAudioPlayer()
        scorer()
        //: VoiceDownloadTaskManager.shared.delegate = nil
        LabelObjectProtocol.shared.delegate = nil
    }
}

//: extension TalkingVoiceMsgPlayManager: AVAudioPlayerDelegate {
extension SolarDayReactiveCompatible: AVAudioPlayerDelegate {
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: let lastModel = voiceDataList[playIndex]
        let lastModel = voiceDataList[playIndex]
        //: lastModel.isPlayingStatus = 2
        lastModel.isPlayingStatus = 2
        //: if flag {
        if flag {
            //: if playIndex < voiceDataList.count - 1 {
            if playIndex < voiceDataList.count - 1 {
                //: playIndex += 1
                playIndex += 1
                //: let model = voiceDataList[playIndex]
                let model = voiceDataList[playIndex]
                //: let bindWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
                let bindWrap = ObjectReactiveCompatible.hireWith(with: model.db_voiceCacheWrap.msgId)
                //: if bindWrap != nil {
                if bindWrap != nil {
                    //: model.db_voiceCacheWrap = bindWrap!
                    model.db_voiceCacheWrap = bindWrap!
                    //: self.waitPlayID = bindWrap!.msgId
                    self.waitPlayID = bindWrap!.msgId
                }
                //: voiceDataList[playIndex] = model
                voiceDataList[playIndex] = model
                //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
                self.playItemDic[model.db_voiceCacheWrap.msgId] = model

                //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
                let status = Int(model.db_voiceCacheWrap.downloadStatus)
                //: if status == DownloadTaskStatus.finish.rawValue {
                if status == LoadStrideable.finish.rawValue {
                    //: model.isPlayingStatus = 1
                    model.isPlayingStatus = 1
                    //: starPlayVoiceMsg(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    outsideAdd(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    //: playStatus = .Waiting
                    playStatus = .Waiting
                    //: } else if (status == DownloadTaskStatus.error.rawValue) {
                } else if status == LoadStrideable.error.rawValue {
                    //: self.showToast(status: .TaskError)
                    self.deed(status: .TaskError)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.expired.rawValue) {
                } else if status == LoadStrideable.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.deed(status: .FileExpired)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.cancel.rawValue) {
                } else if status == LoadStrideable.cancel.rawValue {
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                }

                //: } else {
            } else {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: stopAudioPlayer()
                scorer()
            }
        }
    }

    //: func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    func audioPlayerDecodeErrorDidOccur(_: AVAudioPlayer, error: Error?) {
        //: printLog(message: error)
        printLog(message: error)
    }
}

// MARK: - ToDelegateObjectProtocol

//: extension TalkingVoiceMsgPlayManager: VoiceDownloadTaskManagerDelegate {
extension SolarDayReactiveCompatible: ToDelegateObjectProtocol {
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel) {
    func voiceWith(model: DutyReactiveCompatible) {
        //: printLog(message: "voice dataTaskDownloadFinish")
        printLog(message: (String(str_layerData.suffix(6)) + "data" + String(str_makeValue.prefix(5)) + String(str_positionValue)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        renderData(taskModel: model)
    }

    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel) {
    func voiceScrubPtolemaicSystemDownloadView(model: DutyReactiveCompatible) {
        //: printLog(message: "voice dataTaskDownloadCancel")
        printLog(message: (String(str_willTopData) + str_putTitle.replacingOccurrences(of: "center", with: "ce")))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        renderData(taskModel: model)
    }

    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel) {
    func counto(model: DutyReactiveCompatible) {
        //: printLog(message: "voice dataTaskDownloadExpired")
        printLog(message: (str_roomTitle.replacingOccurrences(of: "location", with: "o") + " dat" + String(str_styleImageContent.suffix(4)) + "kDow" + str_makeSucceedEqualValue.replacingOccurrences(of: "bottom", with: "l") + "dExpired"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        renderData(taskModel: model)
    }

    //: func voiceDownloading(model: VoiceDownloadTaskModel) {
    func destroy(model _: DutyReactiveCompatible) {}

    //: func voiceDownloadError(model: VoiceDownloadTaskModel) {
    func readoutModel(model: DutyReactiveCompatible) {
        //: printLog(message: "voice dataTaskDownloadErro")
        printLog(message: (String(str_labName) + String(str_colorName.suffix(5)) + "loadErro"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        renderData(taskModel: model)
    }

    //: func handleDataTaskDownloadDelegate(taskModel: VoiceDownloadTaskModel) {
    func renderData(taskModel: DutyReactiveCompatible) {
        //: if voiceDataList.count  == 0 {
        if voiceDataList.count == 0 {
            //: return
            return
        }

        //: if self.waitPlayID == taskModel.taskId {
        if self.waitPlayID == taskModel.taskId {
            //: let model = self.voiceDataList[playIndex]
            let model = self.voiceDataList[playIndex]
            //: let warp = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let warp = ObjectReactiveCompatible.hireWith(with: model.db_voiceCacheWrap.msgId)
            //: if warp != nil {
            if warp != nil {
                //: model.db_voiceCacheWrap = warp!
                model.db_voiceCacheWrap = warp!
            }
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if status == DownloadTaskStatus.finish.rawValue {
            if status == LoadStrideable.finish.rawValue {
                //: model.isPlayingStatus = 1
                model.isPlayingStatus = 1
                //: starPlayVoiceMsg(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)
                outsideAdd(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)

                //: } else if status == DownloadTaskStatus.error.rawValue ||
            } else if status == LoadStrideable.error.rawValue ||
                //: status == DownloadTaskStatus.expired.rawValue ||
                status == LoadStrideable.expired.rawValue ||
                //: status == DownloadTaskStatus.cancel.rawValue {
                status == LoadStrideable.cancel.rawValue
            {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
                //: if status == DownloadTaskStatus.expired.rawValue {
                if status == LoadStrideable.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.deed(status: .FileExpired)
                    //: } else {
                } else {
                    //: self.showToast(status: .TaskError)
                    self.deed(status: .TaskError)
                }
            }
            //: } else {
        } else {
            //: let warp = WCDBVoiceMsgTable.db_getVoiceMsg(with: taskModel.taskId)
            let warp = ObjectReactiveCompatible.hireWith(with: taskModel.taskId)
            //: let model = self.playItemDic[taskModel.taskId]
            let model = self.playItemDic[taskModel.taskId]
            //: if warp != nil {
            if warp != nil {
                //: model?.db_voiceCacheWrap = warp!
                model?.db_voiceCacheWrap = warp!
            }
        }
    }

    //: func showToast(status: AudioPlayingErrorStatus) {
    func deed(status: NameQuickLookable) {
        //: var toastStr = ""
        var toastStr = ""
        //: switch status {
        switch status {
        //: case .NotFileAtPath, .AudioPlayerNil:
        case .NotFileAtPath, .AudioPlayerNil:
            //: toastStr = "Play Error,File does not exist".localized
            toastStr = (String(str_viewGiftName.suffix(6)) + "rror," + String(str_pageValue.suffix(6)) + String(str_soundName.prefix(7)) + String(str_recordValue.prefix(6))).localized
        //: break
        //: case .FileExpired:
        case .FileExpired:
            //: toastStr = "Play Error,File expired".localized
            toastStr = (String(str_administratorName) + str_phoneData.replacingOccurrences(of: "edge", with: "d")).localized
        //: break
        //: case .TaskError:
        case .TaskError:
            //: toastStr = "Play Error，Net error".localized
            toastStr = (String(str_iconTitle) + String(str_backTitle) + str_modelSharedName.lowercased()).localized
        //: break
        //: case .FirstMuteTip:
        case .FirstMuteTip:
            //: toastStr = "Currently in mute mode".localized
            toastStr = (String(str_closeName) + String(str_viewTitle.suffix(9))).localized
            //: break
        }

        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: self.func__showStatusBarErrorMsg(showMsg: toastStr)
            self.episode(showMsg: toastStr)
        }
        //: if status.rawValue < 100 {
        if status.rawValue < 100 {
            //: stopAudioPlayer()
            scorer()
        }
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension SolarDayReactiveCompatible {
    //: func setMutedDetection() {
    func modeCellDetection() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        ImageVideoReactiveCompatible.shared.blockApp()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        ImageVideoReactiveCompatible.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
            //: if self.isMute {
            if self.isMute {
                //: self.showToast(status: .FirstMuteTip)
                self.deed(status: .FirstMuteTip)
            }
        }
    }
}
