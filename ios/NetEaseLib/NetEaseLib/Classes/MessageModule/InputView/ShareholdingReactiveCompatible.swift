
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_collectionName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "view_image" :*/
fileprivate let str_valueContent:String = "VIEW"

/*: "Move here to cancel" :*/
fileprivate let str_layerTextData:String = "data view cellMove "
fileprivate let str_finishValue:String = "border call image at inputto ca"
fileprivate let str_addData:String = "nviewel"

/*: "btn_talk_voice_recording_nor" :*/
fileprivate let str_titleDataValue:[Character] = ["b","t","n","_","t","a","l","k","_","v","o","i","c","e","_","r","e","c","o","r","d","i","n","g","_","n","o","r"]

/*: "Release to cancel" :*/
fileprivate let str_labelData:[Character] = ["R","e","l","e","a","s","e"," "]
fileprivate let str_roundName:[Character] = ["t","o"," ","c","a","n","c","e","l"]

/*: "#FF506D" :*/
fileprivate let str_leadingName:String = "#FF506Dcurrent equal image"

/*: "btn_talk_voice_recording_warn_nor" :*/
fileprivate let str_layerTitle:[UInt8] = [0x62,0x74,0x6e,0x5f,0x74,0x61,0x6c,0x6b,0x5f,0x76,0x6f,0x69,0x63,0x65,0x5f,0x72,0x65,0x63,0x6f,0x72,0x64,0x69,0x6e,0x67,0x5f,0x77,0x61,0x72,0x6e,0x5f,0x6e,0x6f,0x72]

/*: "The upper limit is reached" :*/
fileprivate let str_buttonCenterValue:String = "let equalThe "
fileprivate let str_imageData:String = "bind play number any send limit"
fileprivate let str_layerData:String = "acvideod"

/*: "30″" :*/
fileprivate let str_cardValue:String = "30″"

/*: "Under time" :*/
fileprivate let str_mainName:String = "Undeequal view true scale"
fileprivate let str_keyText:[Character] = ["m","e"]

/*: "Talk too short" :*/
fileprivate let str_succeedData:[Character] = ["T","a","l","k"," "]
fileprivate let str_showPushData:String = "talk"
fileprivate let str_scaleName:[Character] = ["o","o"," ","s","h","o","r","t"]

/*: "0″" :*/
fileprivate let str_normalData:[Character] = ["0","\u{2033}"]

/*: "get json error" :*/
fileprivate let str_kitValue:[Character] = ["g","e","t"," ","j","s"]
fileprivate let str_normalName:String = "on type self interval"
fileprivate let str_managerValue:String = "errskinr"

/*: "inside_img" :*/
fileprivate let str_viewText:String = "actionnsaction"
fileprivate let str_minBarText:String = "de_imgsize kit"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShareholdingReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/6.
//

//: import UIKit
import UIKit

//: enum RecordStatus: Int {
enum LimitNameConvertible: Int {
    //: case todefault = 0
    case todefault = 0 // 未开始
    //: case recording
    case recording // 正在录制
    //: case tooShoot
    case tooShoot // 录音时长过短
    //: case tooLong
    case tooLong // 录音时长过长
    //: case cancel
    case cancel // 录音取消
}

//: class TalkingChatRecordView: UIView {
class ShareholdingReactiveCompatible: UIView {
	var atContent: String = "model"
	var voiceText: String = "on"
	var titleSizeName: String = "year"

    var viewImageView: UIImageView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: customUI()
        barUi()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_collectionName, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(252+kDeviceSafeBottomHeight)
            make.height.equalTo(252 + a_agentData)
        }

        //: topTipLabel.snp.makeConstraints { make in
        topTipLabel.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalToSuperview().offset(21)
            make.top.equalToSuperview().offset(21)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: durationLabel.snp.makeConstraints { make in
        durationLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(18)
            make.top.equalTo(topTipLabel.snp.bottom).offset(18)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }

        //: leftPlayer.snp.makeConstraints { make in
        leftPlayer.snp.makeConstraints { make in
            //: make.trailing.equalTo(durationLabel.snp.leading).offset(-30)
            make.trailing.equalTo(durationLabel.snp.leading).offset(-30)
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }

        //: rightPlayer.snp.makeConstraints { make in
        rightPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLabel.snp.trailing).offset(30)
            make.leading.equalTo(durationLabel.snp.trailing).offset(30)
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: micImageView.snp.makeConstraints { make in
        micImageView.snp.makeConstraints { make in
            //: make.centerX.equalTo(contentView)
            make.centerX.equalTo(contentView)
            //: make.top.equalTo(durationLabel.snp.bottom).offset(32)
            make.top.equalTo(durationLabel.snp.bottom).offset(32)
            //: make.width.height.equalTo(99)
            make.width.height.equalTo(99)
        }

        //: microphonePlayer.snp.makeConstraints { make in
        microphonePlayer.snp.makeConstraints { make in
            //: make.center.equalTo(micImageView)
            make.center.equalTo(micImageView)
            //: make.width.height.equalTo(150)
            make.width.height.equalTo(150)
        }
        //: microphoneRedPlayer.snp.makeConstraints { make in
        microphoneRedPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(micImageView)
            make.center.equalTo(micImageView)
            //: make.width.height.equalTo(150)
            make.width.height.equalTo(150)
        }

        //: leftRedPlayer.snp.makeConstraints { make in
        leftRedPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(leftPlayer)
            make.edges.equalTo(leftPlayer)
        }
        //: rightRedPlayer.snp.makeConstraints { make in
        rightRedPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(rightPlayer)
            make.edges.equalTo(rightPlayer)
        }
    }

    //: public func customUI () {
    public func barUi() {
        //: self.addSubview(contentView)

        var laminateTitle: UIView = contentView
        if let imageView = self.viewImageView, (self.alpha != 1.0) && (self.layer.isHidden != false) {
            //: SWIFT_CUSTOM_DANGER
            laminateTitle = imageView
        }
        self.addSubview(laminateTitle)
        //: contentView.addSubview(topTipLabel)
        contentView.addSubview(topTipLabel)
        //: contentView.addSubview(durationLabel)
        contentView.addSubview(durationLabel)
        //: contentView.addSubview(leftPlayer)

        var statusTrack: UIView = leftPlayer
        if let imageView = self.viewImageView, (!statusTrack.isOpaque) && (!statusTrack.transform.isIdentity) {
            //: SWIFT_CUSTOM_DANGER
            statusTrack = imageView
        }
        contentView.addSubview(statusTrack)
        //: contentView.addSubview(rightPlayer)

        var startShow: UIView = rightPlayer
        if let imageView = self.viewImageView, (startShow.semanticContentAttribute == .spatial) && (!startShow.isUserInteractionEnabled) {
            //: SWIFT_CUSTOM_DANGER
            startShow = imageView
        }
        contentView.addSubview(startShow)
        //: contentView.addSubview(micImageView)

        var colorSelf: UIView = micImageView
        if let imageView = self.viewImageView, (contentView.frame.origin.x == 31.65) && ((contentView.inputAssistantItem.allowsHidingShortcuts != true) && (contentView.inputAssistantItem.trailingBarButtonGroups.count == 5)) {
            //: SWIFT_CUSTOM_DANGER
            colorSelf = imageView
        }
        contentView.addSubview(colorSelf)
        //: contentView.addSubview(microphonePlayer)
        contentView.addSubview(microphonePlayer)
        //: contentView.addSubview(microphoneRedPlayer)
        contentView.addSubview(microphoneRedPlayer)
        //: contentView.addSubview(leftRedPlayer)
        contentView.addSubview(leftRedPlayer)
        //: contentView.addSubview(rightRedPlayer)

        var insidePhoto: UIView = rightRedPlayer
        if let imageView = self.viewImageView, ((contentView.inputAssistantItem.leadingBarButtonGroups.count == 6) && (contentView.inputAssistantItem.trailingBarButtonGroups.count == 9)) && (contentView.restorationIdentifier != nil) {
            //: SWIFT_CUSTOM_DANGER
            insidePhoto = imageView
        }
        contentView.addSubview(insidePhoto)
    }

    //: public func setRecordStatus (status: RecordStatus) {
    public func rejoin(status: LimitNameConvertible) {
        //: leftRedPlayer.isHidden = status.rawValue <= 1
        leftRedPlayer.isHidden = status.rawValue <= 1
        viewImageView = UIImageView(frame: self.frame.union(CGRect(x: CGFloat(Int(self.contentScaleFactor)), y: CGFloat(Double(self.bounds.size.height)), width: CGFloat(Int(self.frame.origin.x)), height: CGFloat(Double(self.center.x)))))
        if let viewImageView = viewImageView {
            self.viewImageView?.image = UIImage(named: (str_valueContent.lowercased() + "_image"))
            if (viewImageView.alignmentRectInsets.left == 16) && (viewImageView.backgroundColor != nil && viewImageView.backgroundColor!.cgColor == UIColor.systemYellow.cgColor) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(viewImageView)
            }
        }

        //: rightRedPlayer.isHidden = status.rawValue <= 1
        rightRedPlayer.isHidden = status.rawValue <= 1
        //: microphoneRedPlayer.isHidden = status.rawValue <= 1
        microphoneRedPlayer.isHidden = status.rawValue <= 1
        //: microphonePlayer.isHidden = status.rawValue > 1
        microphonePlayer.isHidden = status.rawValue > 1

        //: switch status {
        switch status {
        //: case .recording:
        case .recording:
            //: topTipLabel.text = "Move here to cancel".localized
            topTipLabel.text = (String(str_layerTextData.suffix(5)) + "here " + String(str_finishValue.suffix(5)) + str_addData.replacingOccurrences(of: "view", with: "c")).localized
            //: durationLabel.textColor = UIColor.appTitleColor()
            durationLabel.textColor = UIColor.blockOf()
            //: micImageView.image = UIImage.outsideText(name: "btn_talk_voice_recording_nor")
            micImageView.image = UIImage.outsideText(name: (String(str_titleDataValue)))
        //: break
        //: case .cancel:
        case .cancel:
            //: topTipLabel.text = "Release to cancel".localized
            topTipLabel.text = (String(str_labelData) + String(str_roundName)).localized
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(str_leadingName.prefix(7))))
            //: micImageView.image = UIImage.outsideText(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.outsideText(name: String(bytes: str_layerTitle, encoding: .utf8)!)
            //: break

        //: case .tooLong:
        case .tooLong:
            //: topTipLabel.text = "The upper limit is reached".localized
            topTipLabel.text = (String(str_buttonCenterValue.suffix(4)) + "upper" + String(str_imageData.suffix(6)) + " is re" + str_layerData.replacingOccurrences(of: "video", with: "he")).localized
            //: durationLabel.text = "30″"
            durationLabel.text = "30″"
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(str_leadingName.prefix(7))))
            //: micImageView.image = UIImage.outsideText(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.outsideText(name: String(bytes: str_layerTitle, encoding: .utf8)!)
            //: break

        //: case .tooShoot:
        case .tooShoot:
            //: func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            episode(showMsg: (String(str_mainName.prefix(4)) + "r ti" + String(str_keyText)).localized)
            //: topTipLabel.text = "Talk too short".localized
            topTipLabel.text = (String(str_succeedData) + str_showPushData.replacingOccurrences(of: "talk", with: "t") + String(str_scaleName)).localized
            //: durationLabel.text = "30″"
            durationLabel.text = "30″"
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(str_leadingName.prefix(7))))
            //: micImageView.image = UIImage.outsideText(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.outsideText(name: String(bytes: str_layerTitle, encoding: .utf8)!)
            //: break

        //: default:
        default:
            //: topTipLabel.text = "Move here to cancel".localized
            topTipLabel.text = (String(str_layerTextData.suffix(5)) + "here " + String(str_finishValue.suffix(5)) + str_addData.replacingOccurrences(of: "view", with: "c")).localized
            //: durationLabel.text = "0″"
            durationLabel.text = "0″"
            //: durationLabel.textColor = UIColor.appTitleColor()
            durationLabel.textColor = UIColor.blockOf()
            //: micImageView.image = UIImage.outsideText(name: "btn_talk_voice_recording_nor")
            micImageView.image = UIImage.outsideText(name: (String(str_titleDataValue)))
            //: break
        }
    
            if (microphoneRedPlayer.layer.mask != nil) && (microphoneRedPlayer.bounds.origin.y == 63.97) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let picLet = PlayerReasonView()


            picLet.giftContent = { [self] progressContent in
            self.atContent = progressContent
            
            return self.atContent
            }
                microphoneRedPlayer.addSubview(picLet)
            }

	}

    //: public func showView () {
    public func vanguardView() {
        //: durationLabel.text = "0″"
        durationLabel.text = "0″"
        //: durationLabel.textColor = UIColor.appTitleColor()
        durationLabel.textColor = UIColor.blockOf()
    
            if (contentView.layer.mask != nil) && (contentView.bounds.origin.y == 63.97) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let picLet = PlayerReasonView()


            picLet.giftContent = { [self] progressContent in
            self.titleSizeName = progressContent
            
            return self.titleSizeName
            }
                contentView.addSubview(picLet)
            }

	}

    //: public func hidenView () {
    public func hiden() {
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    //: public func startAnimation () {
    public func cellListen() {
        //: setRecordStatus(status: .todefault)
        rejoin(status: .todefault)
    }

    //: public func setPlayer (player: SVGAPlayer, status: RecordStatus) {
    public func slot(player: SVGAPlayer, status: LimitNameConvertible) {
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            var url = MonochromeThen.default.telecasting(type: .Chat_Record_Yellow)
            //: if  status.rawValue > 1 {
            if status.rawValue > 1 {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Red)
                url = MonochromeThen.default.telecasting(type: .Chat_Record_Red)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_kitValue) + String(str_normalName.prefix(3)) + str_managerValue.replacingOccurrences(of: "skin", with: "o")))
        }
    }

    //: public func setMicrophonePlayer (player: SVGAPlayer, status: RecordStatus) {
    public func observer(player: SVGAPlayer, status: LimitNameConvertible) {
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            var url = MonochromeThen.default.telecasting(type: .Greet_Corrugated_Yellow)
            self.viewImageView?.image = UIImage(named: (str_viewText.replacingOccurrences(of: "action", with: "i") + String(str_minBarText.prefix(6))))
            //: if  status.rawValue > 1 {
            if status.rawValue > 1 {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Red)
                url = MonochromeThen.default.telecasting(type: .Greet_Corrugated_Red)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_kitValue) + String(str_normalName.prefix(3)) + str_managerValue.replacingOccurrences(of: "skin", with: "o")))
        }
	}

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let content = UIView.init()
        let content = UIView()
        //: content.backgroundColor = UIColor.init(red: 234/255.0, green: 234/255.0, blue: 234/255.0, alpha: 1.0)
        content.backgroundColor = UIColor(red: 234 / 255.0, green: 234 / 255.0, blue: 234 / 255.0, alpha: 1.0)
        //: return content
        return content
        //: }()
    }()

    //: lazy var topTipLabel: UILabel = {
    lazy var topTipLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appValueDetailColor()
        lb.textColor = UIColor.observerShared()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Move here to cancel".localized
        lb.text = (String(str_layerTextData.suffix(5)) + "here " + String(str_finishValue.suffix(5)) + str_addData.replacingOccurrences(of: "view", with: "c")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var leftPlayer: SVGAPlayer = {
    lazy var leftPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .todefault)
        slot(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var durationLabel: UILabel = {
    lazy var durationLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.blockOf()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "0″"
        lb.text = "0″"
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var rightPlayer: SVGAPlayer = {
    lazy var rightPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .todefault)
        slot(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var microphonePlayer: SVGAPlayer = {
    lazy var microphonePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setMicrophonePlayer(player: player, status: .todefault)
        observer(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var microphoneRedPlayer: SVGAPlayer = {
    lazy var microphoneRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setMicrophonePlayer(player: player, status: .tooLong)
        observer(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()

    //: lazy var micImageView: UIImageView = {
    lazy var micImageView: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "btn_talk_voice_recording_nor")
        img.image = UIImage.outsideText(name: (String(str_titleDataValue)))
        //: return img
        return img
        //: }()
    }()

    //: lazy var leftRedPlayer: SVGAPlayer = {
    lazy var leftRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .tooLong)
        slot(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRedPlayer: SVGAPlayer = {
    lazy var rightRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .tooLong)
        slot(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()
}
