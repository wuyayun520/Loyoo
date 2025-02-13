
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_shareTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_me_video" :*/
fileprivate let str_makeNameExtensionText:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o"]

/*: "Receive video calls" :*/
fileprivate let str_voiceName:[Character] = ["R","e","c","e","i","v","e"," ","v","i","d","e","o"," ","c","a"]
fileprivate let str_itemContent:[Character] = ["l","l","s"]

/*: "icon_me_voice" :*/
fileprivate let str_clothesTitle:String = "sub"
fileprivate let str_viewData:String = "on_me_room receive make model high"

/*: "Receive voice calls" :*/
fileprivate let str_showTitle:String = "layer as black viewRecei"
fileprivate let str_outsideText:String = "close guard kind post viewice cal"
fileprivate let str_modeValue:String = "lstop"

/*: "icon_me_randomvideo" :*/
fileprivate let str_conversationText:String = "iccelln"
fileprivate let str_aspectValue:String = "rashowd"
fileprivate let str_broadcastValue:String = "image"
fileprivate let str_userValue:String = "MVIDEO"

/*: "Random Video" :*/
fileprivate let str_delayValue:String = "Randomview icon leading data return"
fileprivate let str_lunchValue:String = " Videovalue label to text"

/*: "-1" :*/
fileprivate let str_makeName:String = "-path"

/*: "value" :*/
fileprivate let str_quickData:[Character] = ["v","a","l","u","e"]

/*: "type" :*/
fileprivate let str_requestData:String = "TYPE"

/*: "videoAuth" :*/
fileprivate let str_frameTitle:String = "videdata"
fileprivate let str_videoText:[Character] = ["A","u","t","h"]

/*: "voiceAuth" :*/
fileprivate let str_afterName:[Character] = ["v","o","i","c","e","A","u","t","h"]

/*: "randomVideo" :*/
fileprivate let str_titleGoingName:String = "rto"
fileprivate let str_seatName:[Character] = ["d","o","m","V","i","d","e","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtSheView.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum DateSocialVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class AtSheView: UITableViewCell {
	var detailMagnitude: Double = -33.8
	var imageDictionary: [AnyHashable: String] = [:]

    var dataImageView: UIImageView?
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: DateSocialVideoType = .video
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_shareTitle, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    
            if (icon.contentScaleFactor == 1.63) && (icon.layer.zPosition == 61.80) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let requestDown = ThanOfView()



            
            
            requestDown.allMagnitude = { [self] brandSum in
            self.detailMagnitude = brandSum
            
            self.detailMagnitude = 0
            return self.detailMagnitude
            }
            requestDown.awakeDictionary = { [self] collectionDictionary in
            self.imageDictionary = collectionDictionary
            
            guard var value = self.imageDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                icon.addSubview(requestDown)
            }

	}

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.blockOf()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.offt()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(swageBlockChange), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension AtSheView {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func femaleMammal(type: DateSocialVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.outsideText(name: "icon_me_video")
            icon.image = UIImage.outsideText(name: (String(str_makeNameExtensionText)))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(str_voiceName) + String(str_itemContent)).localized
            //: switchView.isOn = (MeasurementAppManager.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (MeasurementAppManager.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.outsideText(name: "icon_me_voice")
            icon.image = UIImage.outsideText(name: (str_clothesTitle.replacingOccurrences(of: "sub", with: "ic") + String(str_viewData.prefix(6)) + "voice"))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(str_showTitle.suffix(5)) + "ve vo" + String(str_outsideText.suffix(7)) + str_modeValue.replacingOccurrences(of: "stop", with: "s")).localized
            //: switchView.isOn = (MeasurementAppManager.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (MeasurementAppManager.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.outsideText(name: "icon_me_randomvideo")
            icon.image = UIImage.outsideText(name: (str_conversationText.replacingOccurrences(of: "cell", with: "o") + "_me_" + str_aspectValue.replacingOccurrences(of: "show", with: "n") + str_broadcastValue.replacingOccurrences(of: "image", with: "o") + str_userValue.lowercased()))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(str_delayValue.prefix(6)) + String(str_lunchValue.prefix(6))).localized
            //: switchView.isOn = (MeasurementAppManager.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (MeasurementAppManager.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func swageBlockChange() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(String(str_quickData))] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params[(str_requestData.lowercased())] = (str_frameTitle.replacingOccurrences(of: "data", with: "o") + String(str_videoText))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params[(str_requestData.lowercased())] = (String(str_afterName))
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params[(str_requestData.lowercased())] = (str_titleGoingName.replacingOccurrences(of: "to", with: "an") + String(str_seatName))
        }
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        ConstraintRequestTool.maxData(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: MeasurementAppManager.share.loginUserMode.videoAuth = value
                MeasurementAppManager.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: MeasurementAppManager.share.loginUserMode.voiceAuth = value
                MeasurementAppManager.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: MeasurementAppManager.share.appUserConfigMode.randomVideo = value
                MeasurementAppManager.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (ViewLoadKingfisherCompatible.shared as? ViewLoadKingfisherCompatible)?.currency()
        }
    }
}
