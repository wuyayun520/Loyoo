
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_smallText:[UInt8] = [0x3d,0x3a,0x3d,0x20,0x7c,0x37,0x3b,0x30,0x31,0x26,0x6e,0x7d,0x74,0x3c,0x35,0x27,0x74,0x3a,0x3b,0x20,0x74,0x36,0x31,0x31,0x3a,0x74,0x3d,0x39,0x24,0x38,0x31,0x39,0x31,0x3a,0x20,0x31,0x30]

/*: "icon_me_voice_white" :*/
fileprivate let str_toData:String = "succeed background color indexicon_me_v"
fileprivate let str_upSizeData:[Character] = ["o","i","c","e","_","w","h","i","t","e"]

/*: "btn_auto_write" :*/
fileprivate let str_makeValue:String = "make voice lab framebtn_au"
fileprivate let str_actionName:String = "button"

/*: "Pending review" :*/
fileprivate let str_textValue:[Character] = ["P","e","n","d","i","n"]
fileprivate let str_callTitle:[Character] = ["g"," ","r","e","v","i","e","w"]

/*: "%d″" :*/
fileprivate let str_touchValue:String = "%d″true name else self"

/*: "get json error" :*/
fileprivate let str_giftData:String = "get jmanager view true task"
fileprivate let str_viewData:String = "in colorson "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegularViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: typealias AudioPlayActionBlock = () -> Void
typealias AudioPlayActionBlock = () -> Void
//: typealias EditActionBlock = () -> Void
typealias EditActionBlock = () -> Void

//: class TalkingGreetAudioCell: UITableViewCell {
class RegularViewCell: UITableViewCell {
	var sizeAtContent: String = "table"
	var replyLocalFrameTitle: String = "capacity"

    var sizeImageView: UIImageView?

    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false

    //: var audioPlayActionBlock: AudioPlayActionBlock?
    var audioPlayActionBlock: AudioPlayActionBlock?
    //: var editActionBlock: EditActionBlock?
    var editActionBlock: EditActionBlock?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
            if (statusLb.tag == 8827) && (statusLb.intrinsicContentSize.height == 291.34) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let mainCell = PlayerReasonView(frame: statusLb.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(274.87), width: CGFloat(406.64), height: CGFloat(83))))
            mainCell.gestureOff = islast
            mainCell.tableInterval = index
            mainCell.giftContent = { [self] progressContent in
            self.sizeAtContent = progressContent
            
            return self.sizeAtContent
            }
                statusLb.addSubview(mainCell)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    
            if (audioBtn.layer.mask != nil) && (audioBtn.bounds.origin.y == 63.97) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let picLet = PlayerReasonView()
            picLet.gestureOff = islast
            picLet.tableInterval = index
            picLet.giftContent = { [self] progressContent in
            self.replyLocalFrameTitle = progressContent
            
            return self.replyLocalFrameTitle
            }
                audioBtn.addSubview(picLet)
            }

	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.setupSubviews()
        self.listBlock()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_smallText.map{$0^84}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    // 懒加载初始化
    //: lazy var titleLb: UILabel = {
    lazy var titleLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .blockOf()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var statusLb: UILabel = {
    lazy var statusLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 16)
        //: lb.textAlignment = .right
        lb.textAlignment = .right
        //: lb.textColor = UIColor.msgTipsColor()
        lb.textColor = UIColor.atAfterPosition()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var audioBtn: UIButton = {
    lazy var audioBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.init(), for: .normal)
        btn.setImage(UIImage(), for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 155, height: 35)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: 155, height: 35)), for: .normal)
        //: btn.layer.cornerRadius = 17.5
        btn.layer.cornerRadius = 17.5
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(recordBtnAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tableSearchStub), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var lengthLabel: UILabel = {
    lazy var lengthLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 14)
        //: lb.textColor = .white
        lb.textColor = .white
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var playIconView: UIImageView = {
    lazy var playIconView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.outsideText(name: "icon_me_voice_white"))
        let imag = UIImageView(image: UIImage.outsideText(name: (String(str_toData.suffix(9)) + String(str_upSizeData))))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var recordPlayer: SVGAPlayer = {
    lazy var recordPlayer: SVGAPlayer = {
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

    //: lazy var editBtn: UIButton = {
    lazy var editBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_auto_write"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_makeValue.suffix(6)) + "to_wri" + str_actionName.replacingOccurrences(of: "button", with: "te"))), for: .normal)
        //: btn.addTarget(self, action: #selector(editBtnAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(picNext), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingGreetAudioCell {
extension RegularViewCell {
    //: @objc func recordBtnAction() {
    @objc func tableSearchStub() {
        //: if audioPlayActionBlock != nil {
        if audioPlayActionBlock != nil {
            //: audioPlayActionBlock!()
            audioPlayActionBlock!()
        }
    }

    //: @objc func editBtnAction() {
    @objc func picNext() {
        //: if editActionBlock != nil {
        if editActionBlock != nil {
            //: editActionBlock!()
            editActionBlock!()
        }
    }

    //: func setGreetAudioCell(model: TalkingGreetModel, row: Int, isLast: Bool) {
    func titleLast(model: PossibilityTransformable, row: Int, isLast: Bool) {
        //: index = row
        index = row
        //: islast = isLast
        islast = isLast
        //: titleLb.text = model.remark
        titleLb.text = model.remark
        //: if model.status == 0 {
        if model.status == 0 {
            //: statusLb.text = "Pending review".localized
            statusLb.text = (String(str_textValue) + String(str_callTitle)).localized
            //: statusLb.isHidden = false
            statusLb.isHidden = false
            //: }else {
        } else {
            //: statusLb.isHidden = true
            statusLb.isHidden = true
        }
        //: lengthLabel.text = String.init(format: "%d″", model.length)
        lengthLabel.text = String(format: "%d″", model.length)
    }

    //: func syncPlayState(isPlaying: Bool) {
    func currencyOn(isPlaying: Bool) {
        //: self.recordPlayer.isHidden = !isPlaying
        self.recordPlayer.isHidden = !isPlaying
        //: self.playIconView.isHidden = isPlaying
        self.playIconView.isHidden = isPlaying
        //: if (isPlaying) {
        if isPlaying {
            //: audioPlayEffect()
            objectEffect()
            //: }else {
        } else {
            //: self.recordPlayer.stopAnimation()
            self.recordPlayer.stopAnimation()
        }
    }

    //: func audioPlayEffect() {
    func objectEffect() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Play_Audio_Wave)
            let url = MonochromeThen.default.telecasting(type: .Play_Audio_Wave)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.recordPlayer.videoItem = videoItem
                self.recordPlayer.videoItem = videoItem
                //: self.recordPlayer.startAnimation()
                self.recordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_giftData.prefix(5)) + String(str_viewData.suffix(4)) + "error"))
        }
    }
}

//: extension TalkingGreetAudioCell {
extension RegularViewCell {
    // 添加视图
    //: private func setupSubviews() {
    private func listBlock() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        //: self.contentView.addSubview(backView)
        self.contentView.addSubview(backView)
        //: backView.addSubview(titleLb)
        backView.addSubview(titleLb)
        //: backView.addSubview(statusLb)
        backView.addSubview(statusLb)
        //: backView.addSubview(audioBtn)
        backView.addSubview(audioBtn)
        //: backView.addSubview(editBtn)
        backView.addSubview(editBtn)
        //: self.audioBtn.addSubview(lengthLabel)
        self.audioBtn.addSubview(lengthLabel)
        //: self.audioBtn.addSubview(playIconView)
        self.audioBtn.addSubview(playIconView)
        //: self.audioBtn.addSubview(recordPlayer)
        self.audioBtn.addSubview(recordPlayer)
    }

    // 添加约束
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(16)
            make.leading.equalTo(self).offset(16)
            //: make.trailing.equalTo(self.snp.trailing).offset(-14)
            make.trailing.equalTo(self.snp.trailing).offset(-14)
            //: make.top.bottom.equalTo(self)
            make.top.bottom.equalTo(self)
        }
        //: statusLb.snp.makeConstraints { make in
        statusLb.snp.makeConstraints { make in
            //: make.top.equalTo(18)
            make.top.equalTo(18)
            //: make.trailing.equalTo(-14)
            make.trailing.equalTo(-14)
        }

        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(18)
            make.top.equalTo(18)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(statusLb.snp.leading).offset(-9)
            make.trailing.equalTo(statusLb.snp.leading).offset(-9)
        }

        //: audioBtn.snp.makeConstraints { make in
        audioBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-18)
            make.bottom.equalTo(-18)
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.height.equalTo(35)
            make.height.equalTo(35)
            //: make.width.equalTo(155)
            make.width.equalTo(155)
        }

        //: lengthLabel.snp.makeConstraints { make in
        lengthLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(88)
            make.leading.equalTo(88)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: playIconView.snp.makeConstraints { make in
        playIconView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: recordPlayer.snp.makeConstraints { make in
        recordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(self.playIconView)
            make.size.equalTo(self.playIconView)
        }

        //: editBtn.snp.makeConstraints { make in
        editBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-14)
            make.trailing.equalTo(-14)
            //: make.bottom.equalTo(-26)
            make.bottom.equalTo(-26)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
            //: make.width.equalTo(22)
            make.width.equalTo(22)
        }

        //: self.layoutIfNeeded()
        self.layoutIfNeeded()

        //: if index == 0 && islast {
        if index == 0, islast {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 8, height: 8))
            backView.barRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 8, height: 8))
            //: } else if index == 0 {
        } else if index == 0 {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
            backView.barRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
            //: } else if islast {
        } else if islast {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 8, height: 8))
            backView.barRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 8, height: 8))
            //: } else {
        } else {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 0, height: 0))
            backView.barRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 0, height: 0))
        }
    }
}
