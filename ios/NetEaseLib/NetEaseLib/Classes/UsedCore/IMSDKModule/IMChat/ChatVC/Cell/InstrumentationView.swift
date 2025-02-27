
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_titleData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "extra" :*/
fileprivate let str_valueData:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let str_operationContent:[Character] = ["m","s","g","I","n","f","o"]

/*: "icon_talk_left_voive_3" :*/
fileprivate let str_arrowData:String = "index tableicon_t"
fileprivate let str_pointValue:String = "string coin namet_vo"
fileprivate let str_hiddenTitle:String = "kit split registerive_3"

/*: "icon_talk_right_voive_3" :*/
fileprivate let str_textValue:[Character] = ["i","c","o","n","_","t","a","l","k","_","r","i","g","h","t","_","v","o","i","v","e"]
fileprivate let str_labValue:[Character] = ["_","3"]

/*: "%ld″" :*/
fileprivate let str_imageName:String = "%ld\u{2033}"

/*: "audioLength" :*/
fileprivate let str_actionValue:[Character] = ["a","u","d","i","o","L","e","n","g","t"]
fileprivate let str_curveData:String = "touch"

/*: "isPlayingStatus" :*/
fileprivate let str_sizeName:[Character] = ["i","s","P","l","a","y","i","n","g","S","t","a","t","u","s"]

/*: "activityShowStatus" :*/
fileprivate let str_whyData:[Character] = ["a","c","t","i","v"]
fileprivate let str_dataTitle:[Character] = ["i","t","y","S","h","o","w","S","t","a","t","u","s"]

/*: "0″" :*/
fileprivate let str_toName:[Character] = ["0","″"]

/*: "FF506D" :*/
fileprivate let str_applicationData:String = "FF5make6"
fileprivate let str_channelName:String = "d"

/*: "icon_talk_left_voive_1" :*/
fileprivate let str_popData:String = "icon_tself super"
fileprivate let str_targetValue:[Character] = ["a","l","k","_","l","e","f","t","_","v","o","i","v","e","_","1"]

/*: "icon_talk_left_voive_2" :*/
fileprivate let str_equalData:[Character] = ["i","c","o","n","_","t","a","l","k","_","l"]
fileprivate let str_giftData:String = "block scale make voice filleft_"
fileprivate let str_mainValue:[Character] = ["v","o","i","v","e","_","2"]

/*: "icon_talk_right_voive_1" :*/
fileprivate let str_tapTheName:[Character] = ["i","c","o","n","_","t","a"]
fileprivate let str_storageTotalervalValue:[Character] = ["l","k","_","r","i","g","h","t","_","v","o","i","v","e","_","1"]

/*: "icon_talk_right_voive_2" :*/
fileprivate let str_cameraVideoPlayerName:String = "icbuttonn"
fileprivate let str_requestTitle:String = "pause self finishk_ri"
fileprivate let str_colorName:String = "oive_2device level"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InstrumentationView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/28.
//

//: import UIKit
import UIKit

//: class TalkingChatAudioMsgCell: TalkingChatBaseMsgCell {
class InstrumentationView: ComparableViewCell {
	var bullDoing: Bool = false
	var levelName: String = "frame"
	var modelArray: [AnyHashable] = []
	var atDictionary: [AnyHashable: String] = [:]
	var dataDoing: Bool = true
	var downName: String = "choice"
	var lastTableArray: [AnyHashable] = []
	var constraintDictionary: [AnyHashable: String] = [:]
	var appearOpen: Bool = false
	var iconName: String = "draft"
	var aboutArray: [AnyHashable] = []
	var listDictionary: [AnyHashable: String] = [:]

    var flickImageView: UIImageView?

    //: var audioData: ValueViewReactiveCompatible?
    var audioData: ValueViewReactiveCompatible?

    //: fileprivate lazy var disposeBag = DisposeBag()
    fileprivate lazy var disposeBag = DisposeBag()

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if (voiceTrackPoint.backgroundColor != nil && voiceTrackPoint.backgroundColor!.cgColor == UIColor.systemTeal.cgColor) && (voiceTrackPoint.motionEffects.count == 20) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let submitWith = LeapOutView()
            
            submitWith.falloutDoing = { [self] editOn in
            self.bullDoing = editOn
            
            return self.bullDoing
            }
            submitWith.priceText = { [self] imageSystemName in
            self.levelName = imageSystemName
            
            return self.levelName
            }
            submitWith.dataArray = { [self] halogenArray in
            self.modelArray = halogenArray
            
            guard var value = self.modelArray as? [String] else {
                return nil
            }
            return value
            }
            submitWith.sizeSinceDictionary = { [self] gestureDictionary in
            self.atDictionary = gestureDictionary
            
            guard var value = self.atDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                voiceTrackPoint.addSubview(submitWith)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
	if let flickImageView = flickImageView {

            if (flickImageView.backgroundColor != nil && flickImageView.backgroundColor!.cgColor == UIColor.systemTeal.cgColor) && (flickImageView.motionEffects.count == 20) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let submitWith = LeapOutView()
            
            submitWith.falloutDoing = { [self] editOn in
            self.dataDoing = editOn
            
            var submitWith = animated
                submitWith = false
                submitWith = false
            if submitWith != self.dataDoing {
                self.dataDoing = submitWith
            }
            
            return self.dataDoing
            }
            submitWith.priceText = { [self] imageSystemName in
            self.downName = imageSystemName
            
            return self.downName
            }
            submitWith.dataArray = { [self] halogenArray in
            self.lastTableArray = halogenArray
            
            guard var value = self.lastTableArray as? [String] else {
                return nil
            }
            return value
            }
            submitWith.sizeSinceDictionary = { [self] gestureDictionary in
            self.constraintDictionary = gestureDictionary
            
            guard var value = self.constraintDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                flickImageView.addSubview(submitWith)
            }

	}

	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: designCellView()
        changeForm()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_titleData.reversed(), encoding: .utf8)!)
    }

    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: audioData = data as? ValueViewReactiveCompatible
        audioData = data as? ValueViewReactiveCompatible
        //: guard let newData = audioData else { return }
        guard let newData = audioData else { return }
        //: if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
        if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
            //: let extraDic = JSON(parseJSON: extra)
            let extraDic = JSON(parseJSON: extra)
            //: let conentDic = extraDic["extra"]
            let conentDic = extraDic[(String(str_valueData))]
            //: let msgInfo = conentDic["msgInfo"]
            let msgInfo = conentDic[(String(str_operationContent))]
            //: let voiceModel = newData.voiceModel
            let voiceModel = newData.voiceModel

            //: let isVoiceStyle = TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
            let isVoiceStyle = TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)

            //: if newData.direction == .MsgDirectionIncoming {
            if newData.direction == .MsgDirectionIncoming {
                //: self.lenLB.textColor = UIColor.appTitleColor()
                self.lenLB.textColor = UIColor.blockOf()
                //: self.voiceImageV.image = UIImage.outsideText(name: "icon_talk_left_voive_3")
                self.voiceImageV.image = UIImage.outsideText(name: (String(str_arrowData.suffix(6)) + "alk_lef" + String(str_pointValue.suffix(4)) + String(str_hiddenTitle.suffix(5))))
                //: self.voiceImageV.animationImages = leftVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = emptyEqual()
                //: } else {
            } else {
                //: self.lenLB.textColor = .white
                self.lenLB.textColor = .white
                //: self.voiceImageV.image = UIImage.outsideText(name: "icon_talk_right_voive_3")
                self.voiceImageV.image = UIImage.outsideText(name: (String(str_textValue) + String(str_labValue)))
                //: self.voiceImageV.animationImages = rightVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = comeIn()
            }
            //: if isVoiceStyle {
            if isVoiceStyle {
                //: self.lenLB.text = String.init(format: "%ld″", msgInfo["audioLength"].intValue)
                self.lenLB.text = String(format: "%ld″", msgInfo[(String(str_actionValue) + str_curveData.replacingOccurrences(of: "touch", with: "h"))].intValue)
                //: newData.voiceModel.audioLength = msgInfo["audioLength"].intValue
                newData.voiceModel.audioLength = msgInfo[(String(str_actionValue) + str_curveData.replacingOccurrences(of: "touch", with: "h"))].intValue

                //: voiceModel.rx.observeWeakly(Int.self, "isPlayingStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (String(str_sizeName))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                            //: self.voiceImageV.startAnimating()
                            self.voiceImageV.startAnimating()
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: } else {
                        } else {
                            //: self.voiceImageV.stopAnimating()
                            self.voiceImageV.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: voiceModel.rx.observeWeakly(Int.self, "activityShowStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (String(str_whyData) + String(str_dataTitle))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: self.voiceShowView.startAnimating()
                            self.voiceShowView.startAnimating()
                            //: } else {
                        } else {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: } else {
            } else {
                //: newData.voiceModel.audioLength = -1
                newData.voiceModel.audioLength = -1
                //: self.voiceShowView.stopAnimating()
                self.voiceShowView.stopAnimating()
                //: self.voiceTrackPoint.isHidden = true
                self.voiceTrackPoint.isHidden = true
            }

            //: self.voiceImageV.isHidden = !isVoiceStyle
            self.voiceImageV.isHidden = !isVoiceStyle
        }
    
            if (lenLB.backgroundColor != nil && lenLB.backgroundColor!.cgColor == UIColor.systemTeal.cgColor) && (lenLB.motionEffects.count == 20) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let submitWith = LeapOutView()
            
            submitWith.falloutDoing = { [self] editOn in
            self.appearOpen = editOn
            
            return self.appearOpen
            }
            submitWith.priceText = { [self] imageSystemName in
            self.iconName = imageSystemName
            
            return self.iconName
            }
            submitWith.dataArray = { [self] halogenArray in
            self.aboutArray = halogenArray
            
            guard var value = self.aboutArray as? [String] else {
                return nil
            }
            return value
            }
            submitWith.sizeSinceDictionary = { [self] gestureDictionary in
            self.listDictionary = gestureDictionary
            
            guard var value = self.listDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                lenLB.addSubview(submitWith)
            }

	}

    // MARK: - Lazy load

    //: lazy var voiceBackView: UIView = {
    lazy var voiceBackView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: return view
        return view
        //: }()
    }()

    // 时长
    //: lazy var lenLB: UILabel = {
    lazy var lenLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.blockOf()
        //: label.font = UIFont.pingfangRugularFont(fontSize: 17)
        label.font = UIFont.drogueSize(fontSize: 17)
        //: label.text = "0″"
        label.text = "0″"
        //: return label
        return label
        //: }()
    }()

    // 声波动画
    //: lazy var voiceImageV: UIImageView = {
    lazy var voiceImageV: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: imag.animationDuration = 1
        imag.animationDuration = 1
        //: return imag
        return imag
        //: }()
    }()

    // 未读红点
    //: lazy var voiceTrackPoint: UIImageView = {
    lazy var voiceTrackPoint: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = UIColor.init(hex: "FF506D")
        imag.backgroundColor = UIColor(hex: (str_applicationData.replacingOccurrences(of: "make", with: "0") + str_channelName.uppercased()))
        //: imag.isHidden = true
        imag.isHidden = true
        //: imag.layer.cornerRadius = 9/2
        imag.layer.cornerRadius = 9 / 2
        //: imag.layer.masksToBounds = true
        imag.layer.masksToBounds = true
        //: return imag
        return imag
        //: }()
    }()

    // 转圈
    //: lazy var voiceShowView: UIActivityIndicatorView = {
    lazy var voiceShowView: UIActivityIndicatorView = {
        //: let view = UIActivityIndicatorView.init()
        let view = UIActivityIndicatorView()
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: view.style = .medium
            view.style = .medium
            //: }else {
        } else {
            //: view.style = .gray
            view.style = .gray
        }
        //: view.hidesWhenStopped = true
        view.hidesWhenStopped = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatAudioMsgCell {
extension InstrumentationView {
    //: func leftVoiceAnimImagToCoverColor() -> [UIImage] {
    func emptyEqual() -> [UIImage] {
        //: return [UIImage.outsideText(name: "icon_talk_left_voive_1"), UIImage.outsideText(name: "icon_talk_left_voive_2"), UIImage.outsideText(name: "icon_talk_left_voive_3")]
        return [UIImage.outsideText(name: (String(str_popData.prefix(6)) + String(str_targetValue))), UIImage.outsideText(name: (String(str_equalData) + String(str_giftData.suffix(4)) + String(str_mainValue))), UIImage.outsideText(name: (String(str_arrowData.suffix(6)) + "alk_lef" + String(str_pointValue.suffix(4)) + String(str_hiddenTitle.suffix(5))))]
    }

    //: func rightVoiceAnimImagToCoverColor() -> [UIImage] {
    func comeIn() -> [UIImage] {
        //: return [UIImage.outsideText(name: "icon_talk_right_voive_1"), UIImage.outsideText(name: "icon_talk_right_voive_2"), UIImage.outsideText(name: "icon_talk_right_voive_3")]
        return [UIImage.outsideText(name: (String(str_tapTheName) + String(str_storageTotalervalValue))), UIImage.outsideText(name: (str_cameraVideoPlayerName.replacingOccurrences(of: "button", with: "o") + "_tal" + String(str_requestTitle.suffix(4)) + "ght_v" + String(str_colorName.prefix(6)))), UIImage.outsideText(name: (String(str_textValue) + String(str_labValue)))]
    }
}

// MARK: - UI

//: extension TalkingChatAudioMsgCell {
extension InstrumentationView {
    //: func designCellView() {
    func changeForm() {
        //: self.container.addSubview(voiceBackView)
        self.container.addSubview(voiceBackView)
        //: voiceBackView.addSubview(lenLB)
        voiceBackView.addSubview(lenLB)
        // 语音模块
        //: voiceBackView.addSubview(voiceImageV)
        voiceBackView.addSubview(voiceImageV)
        //: voiceBackView.addSubview(voiceTrackPoint)
        voiceBackView.addSubview(voiceTrackPoint)
        //: voiceBackView.addSubview(voiceShowView)
        voiceBackView.addSubview(voiceShowView)
        //: voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
        voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let newData = self.audioData else { return }
        guard let newData = self.audioData else { return }
        //: let voiceModel = newData.voiceModel
        let voiceModel = newData.voiceModel
        //: let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90
        let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90

        //: voiceBackView.snp.remakeConstraints { (make) in
        voiceBackView.snp.remakeConstraints { make in
            //: make.leading.top.height.equalToSuperview()
            make.leading.top.height.equalToSuperview()
            //: make.width.equalTo(audioWidth)
            make.width.equalTo(audioWidth)
        }

        //: if newData.direction == .MsgDirectionIncoming {
        if newData.direction == .MsgDirectionIncoming {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.leading.equalTo(16)
                make.leading.equalTo(16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: voiceTrackPoint.snp.remakeConstraints { (make) in
            voiceTrackPoint.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(9)
                make.width.height.equalTo(9)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }

            //: } else {
        } else {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.trailing.equalTo(-16)
                make.trailing.equalTo(-16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: lenLB.textAlignment = LanguageManager.shared.direction == .rightToLeft ? .left:.right
            lenLB.textAlignment = ConstraintLanguageManager.shared.direction == .rightToLeft ? .left : .right
            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }
            //: voiceTrackPoint.isHidden = true
            voiceTrackPoint.isHidden = true
        }
    }
}
