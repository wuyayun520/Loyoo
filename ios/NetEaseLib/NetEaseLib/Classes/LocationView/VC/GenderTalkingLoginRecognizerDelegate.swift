
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_removeValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "Personal information" :*/
fileprivate let str_upData:String = "type sizePerso"
fileprivate let str_insideData:String = "video returnnal "
fileprivate let str_equalValue:String = "rowation"

/*: "live_picture" :*/
fileprivate let str_scaleViewName:[Character] = ["l","i","v","e","_","p","i","c","t","u","r","e"]

/*: "SizeCustomReflectable" :*/
fileprivate let str_pageTimeTitle:[Character] = ["G","e","n","d","e","r"]

/*: "Once gender is set, it Cannot be changed." :*/
fileprivate let str_styleSocialTitle:[UInt8] = [0x4f,0x6e,0x63,0x65,0x20,0x67,0x65,0x6e,0x64,0x65,0x72,0x20,0x69,0x73,0x20,0x73,0x65,0x74,0x2c,0x20,0x69,0x74,0x20,0x43,0x61,0x6e,0x6e,0x6f,0x74,0x20,0x62,0x65,0x20,0x63,0x68,0x61,0x6e,0x67,0x65,0x64,0x2e]

/*: "#2ABBFF" :*/
fileprivate let str_roomTitle:String = "#2ABBFFreturn border"

/*: "btn_male_nv_nor" :*/
fileprivate let str_toValue:String = "btn_min user to user else"
fileprivate let str_moonTitle:String = "to in for let resignale_nv"

/*: "btn_male_nv_sel" :*/
fileprivate let str_makeValue:String = "share equalbtn_ma"
fileprivate let str_textShowData:String = "model make style touch returnv_sel"

/*: "Male" :*/
fileprivate let str_managerData:String = "Malevar file self view tap"

/*: "#FF5372" :*/
fileprivate let str_instanceValue:[Character] = ["#","F","F","5","3"]
fileprivate let str_buttonData:String = "7user"

/*: "btn_female_nv_nor" :*/
fileprivate let str_leadingValue:String = "equal input makebtn_"
fileprivate let str_labelName:String = "_nv_nolet border total var"
fileprivate let str_liveContent:String = "count"

/*: "btn_female_nv_sel" :*/
fileprivate let str_fillData:String = "btn_femmedium view true add app"
fileprivate let str_userData:String = "presentle"
fileprivate let str_interactionData:String = "_nv_selfalse table"

/*: "Female" :*/
fileprivate let str_contextTitle:[Character] = ["F","e","m","a","l","e"]

/*: "Next" :*/
fileprivate let str_succeedValue:String = "Nextcell view container pic true"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GenderTalkingLoginRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginGenderVC: TalkingBaseViewController {
class GenderTalkingLoginRecognizerDelegate: PropertyViewController {
	var coatButtonEnable: Bool = true
	var giftTitle: String = "block"
	var withDoing: Bool = false
	var playerSectionName: String = "edit"

    var arrayImageView: UIImageView?

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_removeValue, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        labUp(isOpen: false)
    
            if (femaleButton.isHidden) && (femaleButton.layer.shadowRadius == 0.27) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let tableMode = LockColorView()

            
            tableMode.giftConversationOff = { [self] layerInviteOpen in
            self.withDoing = layerInviteOpen
            
            var tableMode = animated
            tableMode = false
            if tableMode != self.withDoing {
                self.withDoing = tableMode
            }
            
                self.withDoing = false
                self.withDoing = !self.withDoing
            return self.withDoing
            }
            tableMode.extraContent = { [self] colorContent in
            self.playerSectionName = colorContent
            
            return self.playerSectionName
            }
                femaleButton.addSubview(tableMode)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(str_upData.suffix(5)) + String(str_insideData.suffix(4)) + "info" + str_equalValue.replacingOccurrences(of: "row", with: "rm")).localized
        //: MeasurementAppManager.share.userFillInfoMode.sex = "1"
        MeasurementAppManager.share.userFillInfoMode.sex = "1"
        //: self.setupSubviews()
        self.send()
        //: self.setupSubViewsConstraint()
        self.localAcross()
        //: self.bindInteraction()
        self.enter()
        //: func__checkNextBtnState()
        need()

        arrayImageView = UIImageView(frame: self.view.bounds.integral)
        if let arrayImageView = arrayImageView {
            self.arrayImageView?.image = UIImage(named: (String(str_scaleViewName)))
		
		//: if_extract_code "doingCell" begin
		
		var doingCell = false
		if !doingCell {
		    var isValue = false
		    if let nextResponder = arrayImageView.next {
		        isValue = nextResponder.inputView != nil
		    }
		    doingCell = isValue
		}
		
		//: if_extract_code "doingCell" end
		
            if doingCell && ((arrayImageView.inputAssistantItem.trailingBarButtonGroups.count == 8) && (arrayImageView.inputAssistantItem.allowsHidingShortcuts != true)) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(arrayImageView)
            }
        }
    
            if (genderTipLabel.isHidden) && (genderTipLabel.layer.shadowRadius == 0.27) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let tableMode = LockColorView()

            
            tableMode.giftConversationOff = { [self] layerInviteOpen in
            self.coatButtonEnable = layerInviteOpen
            
            var tableMode = self.hideNavi
            tableMode = false
            if tableMode != self.coatButtonEnable {
                self.coatButtonEnable = tableMode
            }
            
                self.coatButtonEnable = false
                self.coatButtonEnable = !self.coatButtonEnable
            return self.coatButtonEnable
            }
            tableMode.extraContent = { [self] colorContent in
            self.giftTitle = colorContent
            
            return self.giftTitle
            }
                genderTipLabel.addSubview(tableMode)
            }

	}

    //: deinit {
    deinit {}

    //: private lazy var logoTitleLabel: UILabel = {
    private lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .thoughtImage(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Gender".localized
        label.text = (String(str_pageTimeTitle)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var genderTipLabel: UILabel = {
    private lazy var genderTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .complexion()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Once gender is set, it Cannot be changed.".localized
        label.text = String(bytes: str_styleSocialTitle, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maleButton: TalkingButton = {
    private lazy var maleButton: PathErrorTalkingButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = PathErrorTalkingButton(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.achromaticColour(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#2ABBFF")!, forState: .selected)
        btn.achromaticColour(color: UIColor(hex: (String(str_roomTitle.prefix(7))))!, forState: .selected)
        //: btn.setImage(UIImage.outsideText(name: "btn_male_nv_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_toValue.prefix(5)) + String(str_moonTitle.suffix(6)) + "_nor")), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_male_nv_sel"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_makeValue.suffix(6)) + "le_n" + String(str_textShowData.suffix(5)))), for: .selected)
        //: btn.setTitle("Male".localized, for: .normal)
        btn.setTitle((String(str_managerData.prefix(4))).localized, for: .normal)
        //: btn.setTitle("Male".localized, for: .selected)
        btn.setTitle((String(str_managerData.prefix(4))).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.drogueSize(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var femaleButton: TalkingButton = {
    private lazy var femaleButton: PathErrorTalkingButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = PathErrorTalkingButton(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.achromaticColour(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#FF5372")!, forState: .selected)
        btn.achromaticColour(color: UIColor(hex: (String(str_instanceValue) + str_buttonData.replacingOccurrences(of: "user", with: "2")))!, forState: .selected)
        //: btn.setImage(UIImage.outsideText(name: "btn_female_nv_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_leadingValue.suffix(4)) + "female" + String(str_labelName.prefix(6)) + str_liveContent.replacingOccurrences(of: "count", with: "r"))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_female_nv_sel"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_fillData.prefix(7)) + str_userData.replacingOccurrences(of: "present", with: "a") + String(str_interactionData.prefix(7)))), for: .selected)
        //: btn.setTitle("Female".localized, for: .normal)
        btn.setTitle((String(str_contextTitle)).localized, for: .normal)
        //: btn.setTitle("Female".localized, for: .selected)
        btn.setTitle((String(str_contextTitle)).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.drogueSize(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_succeedValue.prefix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: a_blockValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginGenderVC {
extension GenderTalkingLoginRecognizerDelegate {
    //: private func func__checkNextBtnState() {
    private func need() {
        //: if MeasurementAppManager.share.userFillInfoMode.sex == "1" {
        if MeasurementAppManager.share.userFillInfoMode.sex == "1" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = true
            self.maleButton.isSelected = true
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
            //: } else if MeasurementAppManager.share.userFillInfoMode.sex == "2"{
        } else if MeasurementAppManager.share.userFillInfoMode.sex == "2" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = true
            self.femaleButton.isSelected = true
            //: } else {
        } else {
            //: self.commitButton.isEnabled = false
            self.commitButton.isEnabled = false
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
        }
    }

    //: private func func__pushToNextProgress() {
    private func closing() {
        //        // 1.3 判断用户设备SIM卡归属地是否来自被剔除的国家或地区
        //        // 1.4 判断用户设备是否开启VPN
//        if MeasurementAppManager.share.appConfigMode.vpnSimCardCheck {
//
//            guard  !AddrConstraintReactiveCompatible.isUsedProxy() && !AddrConstraintReactiveCompatible.isUsedVPN() else {
//                self.func__showStatusBarErrorMsg(showMsg: "Network error. Check it and try again.".localized)
//                self.navigationController?.popToRootViewController(animated: true)
//                NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
//                TableReactiveCompatible.func__reportDeviceID()
//                return
//            }
//        }
        /// 清除后面已填写过资料
        //: let sex = MeasurementAppManager.share.userFillInfoMode.sex
        let sex = MeasurementAppManager.share.userFillInfoMode.sex
        //: MeasurementAppManager.share.userFillInfoMode = UserFillInfoModel.init()
        MeasurementAppManager.share.userFillInfoMode = ConcertGoerInfoModel()
        //: MeasurementAppManager.share.userFillInfoMode.sex = sex
        MeasurementAppManager.share.userFillInfoMode.sex = sex
        /// 有邀请码，跳过手动填写
        let VC = DocumentViewController()
        self.navigationController?.pushViewController(VC, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginGenderVC {
extension GenderTalkingLoginRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func send() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(logoTitleLabel)
        view.addSubview(logoTitleLabel)
        //: view.addSubview(genderTipLabel)
        view.addSubview(genderTipLabel)
        //: view.addSubview(maleButton)
        view.addSubview(maleButton)
        //: view.addSubview(femaleButton)
        view.addSubview(femaleButton)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func localAcross() {
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: genderTipLabel.snp.makeConstraints { make in
        genderTipLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(a_blockValue - 60)
            //: make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
            make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
        }
        //: maleButton.snp.makeConstraints { make in
        maleButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: femaleButton.snp.makeConstraints { make in
        femaleButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(a_blockValue - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(maleButton.snp.bottom).offset(40)
            make.top.equalTo(maleButton.snp.bottom).offset(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func enter() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__pushToNextProgress()
                self.closing()

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: femaleButton.rx.tap
        femaleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: MeasurementAppManager.share.userFillInfoMode.sex = "2"
                MeasurementAppManager.share.userFillInfoMode.sex = "2"
                //: self.func__checkNextBtnState()
                self.need()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: maleButton.rx.tap
        maleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: MeasurementAppManager.share.userFillInfoMode.sex = "1"
                MeasurementAppManager.share.userFillInfoMode.sex = "1"
                //: self.func__checkNextBtnState()
                self.need()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
