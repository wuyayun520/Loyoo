
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let str_edgeName:[Character] = ["P","e","r","s","o","n"]
fileprivate let str_liveName:String = "al infshow file"
fileprivate let str_connectionName:String = "tiuniform"

/*: "authPic" :*/
fileprivate let str_firstSectionName:String = "authPiccontent let layer return"

/*: "mic_image" :*/
fileprivate let str_clearTitle:[Character] = ["m","i","c","_","i"]
fileprivate let str_selectedData:[Character] = ["m","a","g","e"]

/*: "Face verification" :*/
fileprivate let str_firstValue:String = "long path wrap bottomFace "
fileprivate let str_managerValueData:[Character] = ["i","c","a","t","i","o","n"]

/*: "icon_zc_userconver" :*/
fileprivate let str_sendData:String = "icopin"
fileprivate let str_lineValue:String = "style card app super center_zc_"
fileprivate let str_itemValue:String = "nvlabel"

/*: "Verify now" :*/
fileprivate let str_backName:String = "at"
fileprivate let str_nextTitle:[Character] = ["e","r","i","f","y"," ","n","o","w"]

/*: "#4A89F3" :*/
fileprivate let str_sourceContent:String = "item level model lab#4A89"
fileprivate let str_addValue:[Character] = ["F","3"]

/*: "Finish" :*/
fileprivate let str_viewTransformName:[Character] = ["F","i","n","i","s","h"]

/*: "#8C7AFF" :*/
fileprivate let str_loadData:[Character] = ["#","8","C","7","A","F","F"]

/*: "Skip" :*/
fileprivate let str_byValue:[Character] = ["S","k","i","p"]

/*: "icon_successfylly" :*/
fileprivate let str_styleTitle:String = "imodeln"
fileprivate let str_modeData:String = "cegift"
fileprivate let str_saveIndexContent:[Character] = ["f","y","l","l","y"]

/*: "Submitted successfully" :*/
fileprivate let str_micData:String = "Submsuper title model else true"
fileprivate let str_equalContent:String = "view self equal viewd suc"
fileprivate let str_trackSizeValue:[Character] = ["f","u","l","l","y"]

/*: "#2ED180" :*/
fileprivate let str_viewData:String = "#2ED180position collection label"

/*: _ :*/
fileprivate let str_mName:String = "score"

/*: "male" :*/
fileprivate let str_greetName:[UInt8] = [0x6d,0x61,0x6c,0x65]

/*: "female" :*/
fileprivate let str_errorFamilyName:[Character] = ["f","e","m","a","l","e"]

/*: "RegisterSuccess" :*/
fileprivate let str_canName:String = "in current toRegist"
fileprivate let str_fieldData:[Character] = ["e","r","S","u"]
fileprivate let str_allowData:String = "CCESS"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MixRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class MixRecognizerDelegate: PropertyViewController {
	var permissionSum: Int = 56

    var viewImageView: UIImageView?

    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        labUp(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(str_edgeName) + String(str_liveName.prefix(6)) + "orma" + str_connectionName.replacingOccurrences(of: "uniform", with: "on")).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.sign()
        //: self.setupSubViewsConstraint()
        self.kingdomBlock()

        //: if !MeasurementAppManager.share.appConfigMode.skipInputInviteCode {
        if !MeasurementAppManager.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if MeasurementAppManager.share.userFillInfoMode.authImage != nil {
        if MeasurementAppManager.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = MeasurementAppManager.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(String(str_firstSectionName.prefix(7)))] = MeasurementAppManager.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.key()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }

        viewImageView = UIImageView(frame: self.view.frame.offsetBy(dx: CGFloat(Double(self.view.frame.size.height)), dy: CGFloat(0)))
        if let viewImageView = viewImageView {
            self.viewImageView?.image = UIImage(named: (String(str_clearTitle) + String(str_selectedData)))
            if (viewImageView.layer.isDoubleSided != true) && (viewImageView.isFirstResponder) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(viewImageView)
            }
        }
    
	if let viewImageView = viewImageView {

		
		//: if_extract_code "enablelineAbout" begin
		
		var enablelineAbout = false
		if !enablelineAbout {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = viewImageView.editingInteractionConfiguration == .none
		    }
		    enablelineAbout = isValue
		}
		
		//: if_extract_code "enablelineAbout" end
		
            if (enablelineAbout) && (viewImageView.clipsToBounds) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let messageTotalimate = PhoneRateView(frame: viewImageView.bounds.standardized)
            messageTotalimate.passAwayDoing = self.hideNavi

            messageTotalimate.shadowRoomQuantity = { [self] lodestarQuantity in
            self.permissionSum = lodestarQuantity
            
            return self.permissionSum
            }
                viewImageView.addSubview(messageTotalimate)
            }

	}

	}

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .blockOf()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lb.font = UIFont.thoughtImage(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(str_firstValue.suffix(5)) + "verif" + String(str_managerValueData)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.outsideText(name: "icon_zc_userconver")
        imagv.image = UIImage.outsideText(name: (str_sendData.replacingOccurrences(of: "pin", with: "n") + String(str_lineValue.suffix(4)) + "userco" + str_itemValue.replacingOccurrences(of: "label", with: "er")))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(move), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (str_backName.replacingOccurrences(of: "at", with: "V") + String(str_nextTitle)).localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (String(str_sourceContent.suffix(5)) + String(str_addValue)))!, .font: UIFont.thoughtImage(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(str_viewTransformName)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: a_blockValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(button(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_loadData))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(str_byValue)).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(screen), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .pingfangFont(type: .Regular, fontSize: 12)
//        label.textColor = .appValueDetailColor()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension MixRecognizerDelegate {
    //: func setConverView() {
    func key() {
        //: self.converImag.image = UIImage.outsideText(name: "icon_successfylly")
        self.converImag.image = UIImage.outsideText(name: (str_styleTitle.replacingOccurrences(of: "model", with: "co") + "_suc" + str_modeData.replacingOccurrences(of: "gift", with: "ss") + String(str_saveIndexContent)))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(str_micData.prefix(4)) + "itte" + String(str_equalContent.suffix(5)) + "cess" + String(str_trackSizeValue)).localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(str_viewData.prefix(7))))!, .font: UIFont.thoughtImage(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension MixRecognizerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func noNavi() {
        //: super.naviPopback()
        super.noNavi()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(MeasurementAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(a_showBottomValue)_\(MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_greetName, encoding: .utf8)! : (String(str_errorFamilyName)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        a_textTurnName.photoOf(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func move() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(MeasurementAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(a_failData)_\(MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_greetName, encoding: .utf8)! : (String(str_errorFamilyName)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        a_textTurnName.photoOf(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = SocialErrorThen()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: MeasurementAppManager.share.userFillInfoMode.authImage = image
            MeasurementAppManager.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(String(str_firstSectionName.prefix(7)))] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.key()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func screen() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(MeasurementAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(a_noData)_\(MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_greetName, encoding: .utf8)! : (String(str_errorFamilyName)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        a_textTurnName.photoOf(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (String(str_firstSectionName.prefix(7))))
        //: finishBtnClick(isSkip: true)
        button(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func button(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(MeasurementAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(a_ofData)_\(MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_greetName, encoding: .utf8)! : (String(str_errorFamilyName)))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            a_textTurnName.photoOf(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        LoginReactiveCompatible.theEqual(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: a_bottomData, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                RegularAdjustManager.share.windowKey(key: (String(str_canName.suffix(6)) + String(str_fieldData) + str_allowData.lowercased()))

                //: if MeasurementAppManager.share.loginUserMode.remindBindEmail == true {
                if MeasurementAppManager.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: LimitPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        LimitPushManager.share.errorPureBack(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension MixRecognizerDelegate {
    //: func setupSubviews() {
    func sign() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func kingdomBlock() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
