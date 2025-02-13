
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_constraintData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "btn_recording" :*/
fileprivate let str_elementData:String = "case view varbtn_"
fileprivate let str_textTitle:String = "NG"

/*: "btn_marching" :*/
fileprivate let str_containerText:[Character] = ["b","t","n","_","m","a","r","c","h","i","n","g"]

/*: "btn_upload" :*/
fileprivate let str_infoData:[Character] = ["b","t"]
fileprivate let str_sortValue:String = "false file type celln_upload"

/*: "btn_audition" :*/
fileprivate let str_fileCellData:[Character] = ["b","t","n","_","a","u","d","i","t","i"]
fileprivate let str_managerItemData:String = "television"

/*: "Click to listen" :*/
fileprivate let str_sharedData:String = "Clickmake top size bottom player"
fileprivate let str_colorData:[Character] = ["i","s","t","e","n"]

/*: "Click to start recording" :*/
fileprivate let str_kitValue:[Character] = ["C","l","i","c","k"," ","t"]
fileprivate let str_equalName:String = "o stalet name start player top"
fileprivate let str_hiddenContent:String = "ecortong"

/*: "00:00" :*/
fileprivate let str_makeName:String = "00:00"

/*: "brn_cycle" :*/
fileprivate let str_tableTitle:String = "brn_cystage if title to"
fileprivate let str_panViewData:String = "CLE"

/*: "Come back" :*/
fileprivate let str_fatalName:String = "Come bafor app tap index"
fileprivate let str_locationValue:[Character] = ["c","k"]

/*: "btn_submit" :*/
fileprivate let str_atValue:[Character] = ["b","t","n","_","s","u","b","m"]
fileprivate let str_makeIndexLetTitle:String = "empty"

/*: "Submit" :*/
fileprivate let str_targetRowTitle:String = "player progress size contentSubmit"

/*: "Click to finish recording" :*/
fileprivate let str_youName:String = "service gesture double selfClick "
fileprivate let str_giftData:[Character] = ["t"]
fileprivate let str_frameData:String = "o finito private more"
fileprivate let str_cellValue:String = "giftding"

/*: "Under time" :*/
fileprivate let str_requestData:String = "extension info type uponUnder"

/*: "Click to pause" :*/
fileprivate let str_matchText:[Character] = ["C","l","i","c","k"," "]
fileprivate let str_equalPadName:[Character] = ["t"]
fileprivate let str_sessionName:String = "false cell equal leto pause"

/*: "Click to play" :*/
fileprivate let str_throughValue:String = "Click video text total split"
fileprivate let str_buttonStopTitle:[Character] = ["t","o"," ","p","l","a","y"]

/*: "filePath" :*/
fileprivate let str_lessValue:[UInt8] = [0x68,0x74,0x61,0x50,0x65,0x6c,0x69,0x66]

/*: "time" :*/
fileprivate let str_canContent:[UInt8] = [0x74,0x69,0x6d,0x65]

/*: "Recording cancelled" :*/
fileprivate let str_recordRequestValue:String = "case if back borderRecordin"
fileprivate let str_customData:String = "play to ifg c"
fileprivate let str_valueTitle:String = "amakeelled"

/*: "get json error" :*/
fileprivate let str_theTitle:String = "to topget j"
fileprivate let str_labData:String = "pricepriceoprice"

/*: "%02d:%02d" :*/
fileprivate let str_fromTitle:[Character] = ["%","0","2","d",":","%","0"]
fileprivate let str_layerCreateData:String = "path color return2d"

/*: "btn_delete" :*/
fileprivate let str_styleText:String = "btn_count view universal call guard"
fileprivate let str_whiteTingName:String = "array"

/*: "Add voice message" :*/
fileprivate let str_indexModeValue:String = "color title thoughtAdd vo"
fileprivate let str_tempData:String = "essatop"

/*: "Record a voice for 3-10s" :*/
fileprivate let str_managerName:String = "false inputRecord"
fileprivate let str_modelData:[Character] = [" ","a"," ","v","o","i","c","e"," ","f","o","r"," ","3","-","1","0","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: enum RecordSoundStatus: Int {
enum LookBackwardConstantTarget: Int {
    //: case Record = 100
    case Record = 100
    //: case Listen
    case Listen
    //: case Reset
    case Reset
    //: case Finish
    case Finish
}

//: enum RecordState: Int {
enum MediumScalar: Int {
    //: case ReadyToRecord = 0
    case ReadyToRecord = 0 /// 准备录音
    //: case Recording
    case Recording /// 录音中
    //: case RecordComplete
    case RecordComplete /// 录音完成
    //: case RecordWaitReply
    case RecordWaitReply /// 录音审核中
    //: case RecordPassed
    case RecordPassed /// 录音审核通过
}

//: typealias AudioFileUpload = (_ info: Dictionary<String, Any>) -> Void
typealias AudioFileUpload = (_ info: [String: Any]) -> Void

//: class TalkingGreetRecordAudioView: UIView {
class MThen: UIView {
    var frameImageView: UIImageView?

    //: var state: RecordState? = .ReadyToRecord
    var state: MediumScalar? = .ReadyToRecord
    //: var didEnterBack = false
    var didEnterBack = false
    //: var tempTime = 0
    var tempTime = 0 /// 录音时长
    //: var filePath = ""
    var filePath = ""
    //: var audioFileUpload: AudioFileUpload?
    var audioFileUpload: AudioFileUpload?
    //: var popView: MeasurementThen?
    var popView: MeasurementThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.withViewSubviews()
        //: self.setupSubViewsConstraint()
        self.withResign()
        //: self.bindInteraction()
        self.stop()
        //: NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(picTo), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_constraintData, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var soundButton: UIButton = {
    lazy var soundButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_recording"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_elementData.suffix(4)) + "recordi" + str_textTitle.lowercased())), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_recording"), for: .highlighted)
        btn.setImage(UIImage.outsideText(name: (String(str_elementData.suffix(4)) + "recordi" + str_textTitle.lowercased())), for: .highlighted)
        //: btn.setImage(UIImage.outsideText(name: "btn_marching"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_containerText))), for: .selected)
        //: btn.tag = RecordSoundStatus.Record.rawValue
        btn.tag = LookBackwardConstantTarget.Record.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(call(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenButton: UIButton = {
    lazy var listenButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_upload"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_infoData) + String(str_sortValue.suffix(8)))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_audition"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_fileCellData) + str_managerItemData.replacingOccurrences(of: "television", with: "on"))), for: .selected)
        //: btn.tag = RecordSoundStatus.Listen.rawValue
        btn.tag = LookBackwardConstantTarget.Listen.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(call(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenLabel: UILabel = {
    lazy var listenLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .observerShared()
        //: lb.text = "Click to listen".localized
        lb.text = (String(str_sharedData.prefix(5)) + " to l" + String(str_colorData)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var soundLabel: UILabel = {
    lazy var soundLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 17)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .observerShared()
        //: lb.text = "Click to start recording".localized
        lb.text = (String(str_kitValue) + String(str_equalName.prefix(5)) + "rt r" + str_hiddenContent.replacingOccurrences(of: "to", with: "di")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 20)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 20)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .blockOf()
        //: lb.text = "00:00"
        lb.text = (str_makeName.capitalized)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var resetButton: UIButton = {
    lazy var resetButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "brn_cycle"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_tableTitle.prefix(6)) + str_panViewData.lowercased())), for: .normal)
        //: btn.tag = RecordSoundStatus.Reset.rawValue
        btn.tag = LookBackwardConstantTarget.Reset.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(call(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var resetLabel: UILabel = {
    lazy var resetLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .observerShared()
        //: lb.text = "Come back".localized
        lb.text = (String(str_fatalName.prefix(7)) + String(str_locationValue)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var finishButton: UIButton = {
    lazy var finishButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_submit"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_atValue) + str_makeIndexLetTitle.replacingOccurrences(of: "empty", with: "it"))), for: .normal)
        //: btn.tag = RecordSoundStatus.Finish.rawValue
        btn.tag = LookBackwardConstantTarget.Finish.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(call(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishLabel: UILabel = {
    lazy var finishLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .observerShared()
        //: lb.text = "Submit".localized
        lb.text = (String(str_targetRowTitle.suffix(6))).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var listenPlayer: SVGAPlayer = {
    lazy var listenPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var leftRecordPlayer: SVGAPlayer = {
    lazy var leftRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRecordPlayer: SVGAPlayer = {
    lazy var rightRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var audioTool: TalkingAudioTool? = {
    lazy var audioTool: MajorReactiveCompatible? = {
        //: let audioT = TalkingAudioTool.shared
        let audioT = MajorReactiveCompatible.shared
        //: audioT.delegate = self
        audioT.delegate = self
        //: return audioT
        return audioT
        //: }()
    }()
}

//: extension TalkingGreetRecordAudioView {
extension MThen {
    //: func showUIViaState() {
    func via() {
        //: switch self.state {
        switch self.state {
        //: case .ReadyToRecord:
        case .ReadyToRecord:
            //: self.listenButton.isHidden = true
            self.listenButton.isHidden = true
            //: self.listenLabel.isHidden = true
            self.listenLabel.isHidden = true
            //: self.resetButton.isHidden = true
            self.resetButton.isHidden = true
            //: self.resetLabel.isHidden = true
            self.resetLabel.isHidden = true
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = false
            self.soundButton.isHidden = false
            //: self.soundLabel.isHidden = false
            self.soundLabel.isHidden = false

        //: break
        //: case .Recording:
        case .Recording:
            //: break
            break
        //: case .RecordComplete:
        case .RecordComplete:
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = false
            self.finishButton.isHidden = false
            //: self.finishLabel.isHidden = false
            self.finishLabel.isHidden = false
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
        //: break
        //: case .RecordWaitReply, .RecordPassed:
        case .RecordWaitReply, .RecordPassed:
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
        //: break
        //: default: break
        default: break
        }
    }

    //: func releaseSoundView() {
    func look() {
        //: self.audioTool?.delegate = nil
        self.audioTool?.delegate = nil
        //: self.audioTool?.stopRecord()
        self.audioTool?.themeOf()
        //: stopPlay()
        query()
        //: self.audioTool?.destroy()
        self.audioTool?.voiceWill()
        //: self.audioTool = nil
        self.audioTool = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func record() {
    func capacity() {
        //: leftRecordSVGAParser()
        load()
        //: rightRecordSVGAParser()
        titleParser()
        //: self.audioTool?.BeginRecord()
        self.audioTool?.toLock()
        //: stopPlay()
        query()
        //: self.soundLabel.text = "Click to finish recording".localized
        self.soundLabel.text = (String(str_youName.suffix(6)) + String(str_giftData) + String(str_frameData.prefix(6)) + "sh rec" + str_cellValue.replacingOccurrences(of: "gift", with: "or")).localized
        //: self.state = .Recording
        self.state = .Recording
    }

    //: func stopRecord() {
    func stopBy() {
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.themeOf()

        //: if self.tempTime >= 3 {
        if self.tempTime >= 3 {
            //: self.state = .RecordComplete
            self.state = .RecordComplete
            //: showUIViaState()
            via()
            //: self.listenLabel.text = "Click to listen".localized
            self.listenLabel.text = (String(str_sharedData.prefix(5)) + " to l" + String(str_colorData)).localized
            //: }else {
        } else {
            //: self.soundLabel.text = "Click to start recording".localized
            self.soundLabel.text = (String(str_kitValue) + String(str_equalName.prefix(5)) + "rt r" + str_hiddenContent.replacingOccurrences(of: "to", with: "di")).localized
            //: self.timeLabel.text = "00:00"
            self.timeLabel.text = (str_makeName.capitalized)
            //: self.state = .ReadyToRecord
            self.state = .ReadyToRecord
            //: self.func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            self.episode(showMsg: (String(str_requestData.suffix(5)) + " time").localized)
        }
    }

    //: func play() {
    func header() {
        //: if filePath.count>1 {
        if filePath.count > 1 {
            //: self.audioTool?.play()
            self.audioTool?.isApp()
            //: self.listenLabel.text = "Click to pause".localized
            self.listenLabel.text = (String(str_matchText) + String(str_equalPadName) + String(str_sessionName.suffix(7))).localized
            //: listenSVGAParser()
            pointBlank()
            //: }else {
        } else {
            //: tryToPlayRemoteAudio()
            memoryImage()
        }
    }

    //: func stopPlay() {
    func query() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.gambleFrom()
        //: var text = "Click to play".localized
        var text = (String(str_throughValue.prefix(6)) + String(str_buttonStopTitle)).localized
        //: if self.state == .RecordComplete {
        if self.state == .RecordComplete {
            //: text = "Click to listen".localized
            text = (String(str_sharedData.prefix(5)) + " to l" + String(str_colorData)).localized
        }
        //: self.listenLabel.text = text
        self.listenLabel.text = text
    }

    //: func reset() {
    func appear() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.audioTool?.stopPlay()
        self.audioTool?.gambleFrom()
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(str_kitValue) + String(str_equalName.prefix(5)) + "rt r" + str_hiddenContent.replacingOccurrences(of: "to", with: "di")).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (str_makeName.capitalized)

        //: showUIViaState()
        via()
    }

    //: func finish() {
    func showRun() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.gambleFrom()
        //: self.listenLabel.text = "Click to listen".localized
        self.listenLabel.text = (String(str_sharedData.prefix(5)) + " to l" + String(str_colorData)).localized
        //: if self.audioFileUpload != nil {
        if self.audioFileUpload != nil {
            //: let dict = ["filePath": self.filePath, "time": (self.tempTime).description]
            let dict = [String(bytes: str_lessValue.reversed(), encoding: .utf8)!: self.filePath, String(bytes: str_canContent, encoding: .utf8)!: (self.tempTime).description]
            //: self.audioFileUpload!(dict)
            self.audioFileUpload!(dict)
        }
    }

    //: func tryToPlayRemoteAudio() {
    func memoryImage() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            episode(showMsg: a_userText)
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: return
            return
        }
        //: self.listenLabel.text = "Click to pause".localized
        self.listenLabel.text = (String(str_matchText) + String(str_equalPadName) + String(str_sessionName.suffix(7))).localized
        //: listenSVGAParser()
        pointBlank()
    }

    //: @objc func soundButtonAction(sender: UIButton) {
    @objc func call(sender: UIButton) {
        //: switch (sender.tag) {
        switch sender.tag {
        //: case RecordSoundStatus.Record.rawValue:
        case LookBackwardConstantTarget.Record.rawValue:

            //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
            PrefaceReactiveCompatible.pryUpward(true) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                    self.episode(showMsg: a_matchData)
                    //: return
                    return
                }
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if (sender.isSelected) {
                if sender.isSelected {
                    //: guard !TalkingSocketManager.shared.isTalking else {
                    guard !SocketReactiveCompatible.shared.isTalking else {
                        //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                        self.episode(showMsg: a_viewNetValue)
                        //: sender.isSelected = false
                        sender.isSelected = false
                        //: return
                        return
                    }
                    //: self.record()
                    self.capacity()
                    //: }else {
                } else {
                    //: self.stopRecord()
                    self.stopBy()
                }
            }
            //: break

        //: case RecordSoundStatus.Listen.rawValue:
        case LookBackwardConstantTarget.Listen.rawValue:
            //: sender.isSelected = !sender.isSelected
            sender.isSelected = !sender.isSelected
            //: if sender.isSelected {
            if sender.isSelected {
                //: self.play()
                self.header()
                //: }else {
            } else {
                //: self.stopPlay()
                self.query()
            }
                //: break

        //: case RecordSoundStatus.Reset.rawValue:
        case LookBackwardConstantTarget.Reset.rawValue:
            //: reset()
            appear()
                //: break

        //: case RecordSoundStatus.Finish.rawValue:
        case LookBackwardConstantTarget.Finish.rawValue:
            //: finish()
            showRun()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc func closeButtonAction() {
    @objc func fastening() {
        //: stopPlay()
        query()
        //: dismiss()
        route()
    }

    //: @objc func appDidEnterBack() {
    @objc func picTo() {
        //: if self.state != .Recording {
        if self.state != .Recording {
            //: return
            return
        }
        //: self.func__showStatusBarErrorMsg(showMsg: "Recording cancelled")
        self.episode(showMsg: (String(str_recordRequestValue.suffix(8)) + String(str_customData.suffix(3)) + str_valueTitle.replacingOccurrences(of: "make", with: "nc")))
        //: self.didEnterBack = true
        self.didEnterBack = true
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.themeOf()

        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(str_kitValue) + String(str_equalName.prefix(5)) + "rt r" + str_hiddenContent.replacingOccurrences(of: "to", with: "di")).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (str_makeName.capitalized)
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: showUIViaState()
        via()
    }

    //: func show() {
    func large() {
        //: popView = MeasurementThen.init(frame: UIScreen.main.bounds)
        popView = MeasurementThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.anInit(view: self)
        //: popView?.showInView(view: ImageMacroDefine.getWindow())
        popView?.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
    }

    //: func dismiss() {
    func route() {
        //: releaseSoundView()
        look()
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }

    /// 试听动效
    //: func listenSVGAParser() {
    func pointBlank() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            let url = MonochromeThen.default.telecasting(type: .Greet_Corrugated_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.listenPlayer.videoItem = videoItem
                self.listenPlayer.videoItem = videoItem
                //: self.listenPlayer.startAnimation()
                self.listenPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_theTitle.suffix(5)) + "son e" + str_labData.replacingOccurrences(of: "price", with: "r")))
        }
    }

    /// 录音动效
    //: func leftRecordSVGAParser() {
    func load() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = MonochromeThen.default.telecasting(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.leftRecordPlayer.videoItem = videoItem
                self.leftRecordPlayer.videoItem = videoItem
                //: self.leftRecordPlayer.startAnimation()
                self.leftRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_theTitle.suffix(5)) + "son e" + str_labData.replacingOccurrences(of: "price", with: "r")))
        }
    }

    ///
    //: func rightRecordSVGAParser() {
    func titleParser() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = MonochromeThen.default.telecasting(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.rightRecordPlayer.videoItem = videoItem
                self.rightRecordPlayer.videoItem = videoItem
                //: self.rightRecordPlayer.startAnimation()
                self.rightRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_theTitle.suffix(5)) + "son e" + str_labData.replacingOccurrences(of: "price", with: "r")))
        }
    }
}

//: extension TalkingGreetRecordAudioView: TalkingAudioToolDelegate {
extension MThen: LabToolDelegate {
    /// 录音时间
    //: func func__recordTime(currentTime: Double) {
    func recordBlock(currentTime: Double) {
        //: if currentTime > 10 {
        if currentTime > 10 {
            //: stopRecord()
            stopBy()
        }
        //: self.tempTime = Int(round(currentTime)) % 60
        self.tempTime = Int(round(currentTime)) % 60
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: if self.tempTime > 10 {
        if self.tempTime > 10 {
            //: return
            return
        }
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 播放时间
    //: func func__playTime(currentTime: Double) {
    func clipTime(currentTime: Double) {
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 录音完毕的回调
    //: func func__recordFinishWithFile(filePath: String) {
    func messagePath(filePath: String) {
        //: if self.didEnterBack {
        if self.didEnterBack {
            //: self.didEnterBack = false
            self.didEnterBack = false
            //: return
            return
        }
        //: self.filePath = filePath
        self.filePath = filePath
        //: stopRecord()
        stopBy()
    }

    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func master(status: SheInsetTarget) {
        //: self.timeLabel.text = ""
        self.timeLabel.text = ""
        //: if status == .PlayerFinish {
        if status == .PlayerFinish {
            //: self.audioTool?.finishPlay()
            self.audioTool?.logTextPlay()
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: self.listenPlayer.stopAnimation()
            self.listenPlayer.stopAnimation()
            //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
            self.listenLabel.text = self.state == .RecordComplete ? (String(str_sharedData.prefix(5)) + " to l" + String(str_colorData)).localized : (String(str_throughValue.prefix(6)) + String(str_buttonStopTitle)).localized
            //: }else if status == .PlayerInterruption {
        } else if status == .PlayerInterruption {
            //: if self.filePath.count > 1 {
            if self.filePath.count > 1 {
                //: self.listenButton.isSelected = false
                self.listenButton.isSelected = false
                //: self.listenPlayer.stopAnimation()
                self.listenPlayer.stopAnimation()
                //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
                self.listenLabel.text = self.state == .RecordComplete ? (String(str_sharedData.prefix(5)) + " to l" + String(str_colorData)).localized : (String(str_throughValue.prefix(6)) + String(str_buttonStopTitle)).localized
            }
        }
    }
}

//: extension TalkingGreetRecordAudioView {
extension MThen {
    // 添加视图
    //: private func setupSubviews() {
    private func withViewSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(soundButton)
        contentView.addSubview(soundButton)
        //: contentView.addSubview(listenButton)
        contentView.addSubview(listenButton)
        //: contentView.addSubview(soundLabel)
        contentView.addSubview(soundLabel)
        //: contentView.addSubview(listenLabel)
        contentView.addSubview(listenLabel)
        //: contentView.addSubview(timeLabel)
        contentView.addSubview(timeLabel)
        //: contentView.addSubview(resetButton)
        contentView.addSubview(resetButton)
        //: contentView.addSubview(resetLabel)
        contentView.addSubview(resetLabel)
        //: contentView.addSubview(finishButton)
        contentView.addSubview(finishButton)
        //: contentView.addSubview(finishLabel)
        contentView.addSubview(finishLabel)
        //: contentView.addSubview(listenPlayer)
        contentView.addSubview(listenPlayer)
        //: contentView.addSubview(leftRecordPlayer)
        contentView.addSubview(leftRecordPlayer)
        //: contentView.addSubview(rightRecordPlayer)
        contentView.addSubview(rightRecordPlayer)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func withResign() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 275), height: actualWidth(w: 313)))
            make.size.equalTo(CGSize(width: actualWidth(w: 275), height: actualWidth(w: 313)))
        }
        //: let closeBtn = UIButton.init()
        let closeBtn = UIButton()
        //: closeBtn.setImage(UIImage.outsideText(name: "btn_delete"), for: .normal)
        closeBtn.setImage(UIImage.outsideText(name: (String(str_styleText.prefix(4)) + "dele" + str_whiteTingName.replacingOccurrences(of: "array", with: "te"))), for: .normal)
        //: closeBtn.addTarget(self, action: #selector(closeButtonAction), for: .touchUpInside)
        closeBtn.addTarget(self, action: #selector(fastening), for: .touchUpInside)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.trailing.equalTo(-11)
            make.trailing.equalTo(-11)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: let titleLb = UILabel.init()
        let titleLb = UILabel()
        //: titleLb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        titleLb.font = UIFont.thoughtImage(type: .Semibold, fontSize: 20)
        //: titleLb.textColor = .appTitleColor()
        titleLb.textColor = .blockOf()
        //: titleLb.text = "Add voice message".localized
        titleLb.text = (String(str_indexModeValue.suffix(6)) + "ice m" + str_tempData.replacingOccurrences(of: "top", with: "ge")).localized
        //: contentView.addSubview(titleLb)
        contentView.addSubview(titleLb)
        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: let explainLb = UILabel.init()
        let explainLb = UILabel()
        //: explainLb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        explainLb.font = UIFont.thoughtImage(type: .Regular, fontSize: 17)
        //: explainLb.textColor = .appValueDetailColor()
        explainLb.textColor = .observerShared()
        //: explainLb.text = "Record a voice for 3-10s".localized
        explainLb.text = (String(str_managerName.suffix(6)) + String(str_modelData)).localized
        //: contentView.addSubview(explainLb)
        contentView.addSubview(explainLb)
        //: explainLb.snp.makeConstraints { make in
        explainLb.snp.makeConstraints { make in
            //: make.top.equalTo(titleLb.snp.bottom).offset(9)
            make.top.equalTo(titleLb.snp.bottom).offset(9)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: soundButton.snp.makeConstraints { make in
        soundButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: listenButton.snp.makeConstraints { make in
        listenButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: soundLabel.snp.makeConstraints { make in
        soundLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: listenLabel.snp.makeConstraints { make in
        listenLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(explainLb.snp.bottom).offset(36)
            make.top.equalTo(explainLb.snp.bottom).offset(36)
        }
        //: resetButton.snp.makeConstraints { make in
        resetButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-27)
            make.trailing.equalTo(soundButton.snp.leading).offset(-27)
        }
        //: resetLabel.snp.makeConstraints { make in
        resetLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(resetButton)
            make.centerX.equalTo(resetButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: finishButton.snp.makeConstraints { make in
        finishButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.leading.equalTo(soundButton.snp.trailing).offset(27)
            make.leading.equalTo(soundButton.snp.trailing).offset(27)
        }
        //: finishLabel.snp.makeConstraints { make in
        finishLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(finishButton)
            make.centerX.equalTo(finishButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: listenPlayer.snp.makeConstraints { make in
        listenPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(soundButton)
            make.center.equalTo(soundButton)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 123), height: actualWidth(w: 123)))
            make.size.equalTo(CGSize(width: actualWidth(w: 123), height: actualWidth(w: 123)))
        }
        //: leftRecordPlayer.snp.makeConstraints { make in
        leftRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
        //: rightRecordPlayer.snp.makeConstraints { make in
        rightRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.leading.equalTo(soundButton.snp.trailing).offset(12)
            make.leading.equalTo(soundButton.snp.trailing).offset(12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func stop() {
        //: showUIViaState()
        via()
    }
}
