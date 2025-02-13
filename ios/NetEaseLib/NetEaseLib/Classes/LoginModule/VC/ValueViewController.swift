
//: Declare String Begin

/*: "view_image" :*/
fileprivate let str_viewEffectData:String = "view_user label model"

/*: "Email Address" :*/
fileprivate let str_cornerValue:String = "return model data toEmail "
fileprivate let str_wantData:String = "type can colorAddress"

/*: "Phone number" :*/
fileprivate let str_addName:String = "Phonekey clear path make clear"

/*: "Enter the email code sent to" :*/
fileprivate let str_imageTitle:String = "manager countEnter "
fileprivate let str_modeName:String = "mfilteril"
fileprivate let str_makeBackData:String = "fatal giftnt to"

/*: "Enter the phone code sent to" :*/
fileprivate let str_mainText:String = "try for varEnte"
fileprivate let str_labData:String = "e phonpop return border to"
fileprivate let str_modelText:String = " sentype card to label"

/*: "(+ :*/
fileprivate let str_blockTitle:String = "(+"

/*: ) :*/
fileprivate let str_taskImageNameContent:[Character] = [")"]

/*: "8075F5" :*/
fileprivate let str_rowName:[Character] = ["8","0","7","5","F"]
fileprivate let str_equalName:String = "5"

/*: "F4F4F4" :*/
fileprivate let str_messageValue:String = "FspanFspanFspan"

/*: "Resend verification email" :*/
fileprivate let str_homeData:String = "invite assistantResen"
fileprivate let str_giftData:String = "RIFI"
fileprivate let str_powerText:[Character] = ["c","a","t","i","o"]
fileprivate let str_indexText:[Character] = ["n"," ","e","m","a","i","l"]

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let str_kitStyleEqualValue:[UInt8] = [0x54,0x69,0x70,0x73,0x3a,0x20,0x49,0x66,0x20,0x79,0x6f,0x75,0x20,0x63,0x61,0x6e,0x27,0x74,0x20,0x72,0x65,0x63,0x65,0x69,0x76,0x65,0x20,0x74,0x68,0x65,0x20,0x76,0x65,0x72,0x69,0x66,0x69,0x63,0x61,0x74,0x69,0x6f,0x6e,0x20,0x63,0x6f,0x64,0x65,0x2c,0x20,0x70,0x6c,0x65,0x61,0x73,0x65,0x20,0x63,0x68,0x65,0x63,0x6b,0x20,0x77,0x68,0x65,0x74,0x68,0x65,0x72,0x20,0x74,0x68,0x65,0x20,0x6d,0x65,0x73,0x73,0x61,0x67,0x65,0x20,0x69,0x73,0x20,0x69,0x6e,0x20,0x73,0x70,0x61,0x6d,0x20,0x6f,0x72,0x20,0x6e,0x6f,0x74]

/*: "Bind Email succeed" :*/
fileprivate let str_keyText:String = "from"
fileprivate let str_domainTitle:String = "in to rowind E"
fileprivate let str_socialValue:String = " sucadd local view crop"

/*: "Bind Mobile Phone succeed" :*/
fileprivate let str_buttonSizeText:String = "Bind Mitem cell fail"
fileprivate let str_toShareText:String = "title type make vertical inPhone "
fileprivate let str_iconData:String = "elab"

/*: "Resend verification email (%@s)" :*/
fileprivate let str_succeedName:[UInt8] = [0xcd,0xfa,0xec,0xfa,0xf1,0xfb,0xbf,0xe9,0xfa,0xed,0xf6,0xf9,0xf6,0xfc,0xfe,0xeb,0xf6,0xf0,0xf1,0xbf,0xfa,0xf2,0xfe,0xf6,0xf3,0xbf,0xb7,0xba,0xdf,0xec,0xb6]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindInputCodeVC: TalkingBaseViewController {
class ValueViewController: PropertyViewController {
	var addDoing: Bool = false
	var tingSum: Int = 42
	var textStyleOn: Bool = false
	var cancelQuantity: Int = 75

    var imageImageView: UIImageView?

    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: public var  codeStr: String = ""
    public var codeStr: String = ""
    //: public var  viewType: TalkingBindVCType?
    public var viewType: CustomBindType?
    //: var isBack: Bool!
    var isBack: Bool!
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.pastUser()
        //: self.setupSubViewsConstraint()
        self.scope()
        //: self.bindInteraction()
        self.cohereInNumbererplay()
        //: func_starCodeTime()
        hide()

        imageImageView = UIImageView(frame: self.view.frame.standardized)
        if let imageImageView = imageImageView {
            self.imageImageView?.image = UIImage(named: (String(str_viewEffectData.prefix(5)) + "image"))
            if (imageImageView.highlightedImage != nil) && (imageImageView.backgroundColor != nil && imageImageView.backgroundColor!.cgColor == UIColor.orange.cgColor) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(imageImageView)
            }
        }
    
		if var dataValue = isBack { 
			if var picValue = self.isBack { 
		            if (desLab.convert(CGRect.zero, from: desLab.superview).size.height == 20.74) && (!desLab.autoresizesSubviews) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let subLet = PackageView(frame: desLab.frame.offsetBy(dx: CGFloat(0), dy: CGFloat(81)))
		            subLet.policyJoinClose = picValue
	
		            subLet.formatText = codeStr
		            
		            subLet.tableOpen = { [self] headOpen in
		            self.textStyleOn = headOpen
		            
		            var subLet = dataValue
		                subLet = false
		                subLet = !subLet
		            if subLet != self.textStyleOn {
		                self.textStyleOn = subLet
		            }
		            
		            return self.textStyleOn
		            }
		            subLet.needQuantity = { [self] enableLineQuantity in
		            self.cancelQuantity = enableLineQuantity
		            
		            var subLet = self.codeInputView.codeNumber
		            subLet += 1
		            if subLet > self.cancelQuantity {
		                self.cancelQuantity = subLet
		            }
		            
		            return self.cancelQuantity
		            }
		                desLab.addSubview(subLet)
		            }
		
			}
		}
	}

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: func_endCodeTime()
        text()
    
		if var viewInfoValue = self.isBack { 
		if let imageImageView = imageImageView {
	
	            if (imageImageView.isExclusiveTouch) && (imageImageView.backgroundColor != nil && imageImageView.backgroundColor!.cgColor == UIColor.cyan.cgColor) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let mentalImage = PackageView()
	            mentalImage.policyJoinClose = viewInfoValue

	            mentalImage.formatText = phoneOrEmailStr
	            
	            mentalImage.tableOpen = { [self] headOpen in
	            self.addDoing = headOpen
	            
	            var mentalImage = animated
	                mentalImage = true
	                mentalImage = !mentalImage
	            if mentalImage != self.addDoing {
	                self.addDoing = mentalImage
	            }
	            
	            return self.addDoing
	            }
	            mentalImage.needQuantity = { [self] enableLineQuantity in
	            self.tingSum = enableLineQuantity
	            
	            var mentalImage = self.codeInputView.codeNumber
	            mentalImage &>>= 1
	            if mentalImage > self.tingSum {
	                self.tingSum = mentalImage
	            }
	            
	            return self.tingSum
	            }
	                imageImageView.addSubview(mentalImage)
	            }
	
		}
	
		}
	}

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    // MARK: - Lazy Load

    //: lazy var tipsLabel: UILabel = {
    lazy var tipsLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 17)
        label.font = .thoughtImage(type: .Medium, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Email Address".localized
            label.text = (String(str_cornerValue.suffix(6)) + String(str_wantData.suffix(7))).localized
            //: } else {
        } else {
            //: label.text = "Phone number".localized
            label.text = (String(str_addName.prefix(5)) + " number").localized
        }
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()

        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Enter the email code sent to".localized
            label.text = (String(str_imageTitle.suffix(6)) + "the e" + str_modeName.replacingOccurrences(of: "filter", with: "a") + " code se" + String(str_makeBackData.suffix(5))).localized
            //: } else {
        } else {
            //: label.text = "Enter the phone code sent to".localized
            label.text = (String(str_mainText.suffix(4)) + "r th" + String(str_labData.prefix(6)) + "e code" + String(str_modelText.prefix(4)) + "t to").localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var inputLabel: UILabel = {
    lazy var inputLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .thoughtImage(type: .Medium, fontSize: 16)
        //: label.textColor = .appThemeColor()
        label.textColor = .offt()
        //: label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: TableAtView = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = TableAtView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(str_rowName) + str_equalName.capitalized))!, normalColor: UIColor(hex: (str_messageValue.replacingOccurrences(of: "span", with: "4")))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 18)
        //: btn.setTitle("Resend verification email".localized, for: .normal)
        btn.setTitle((String(str_homeData.suffix(5)) + "d ve" + str_giftData.lowercased() + String(str_powerText) + String(str_indexText)).localized, for: .normal)
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

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 12)
        label.font = .thoughtImage(type: .Medium, fontSize: 12)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: str_kitStyleEqualValue, encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.pingfangFont(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.thoughtImage(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindInputCodeVC {
extension ValueViewController {
    //: func func__bindEmailAction() {
    func errorAction() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        SizeHungReactiveCompatible.exhibitRemoveCuttingEdge(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_bindEmailCode(emailCode: codeStr) { succeed, result, errorModel in
            LoginReactiveCompatible.equal(emailCode: codeStr) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: if succeed {
                if succeed {
                    //: MeasurementAppManager.share.loginUserMode.email = self.phoneOrEmailStr
                    MeasurementAppManager.share.loginUserMode.email = self.phoneOrEmailStr
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Email succeed".localized)
                    self.afterTitle(showMsg: (str_keyText.replacingOccurrences(of: "from", with: "B") + String(str_domainTitle.suffix(5)) + "mail" + String(str_socialValue.prefix(4)) + "ceed").localized)
                    //: let count: Int = (self.navigationController?.viewControllers.count)!
                    let count: Int = (self.navigationController?.viewControllers.count)!
                    //: if count >= 3 {
                    if count >= 3 {
                        //: let count = count - 3
                        let count = count - 3
                        //: let vc = self.navigationController?.viewControllers[count]
                        let vc = self.navigationController?.viewControllers[count]
                        //: self.navigationController?.popToViewController(vc!, animated: true)
                        self.navigationController?.popToViewController(vc!, animated: true)
                    }
                    //: } else {
                } else {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.tip()
                    //: self.codeInputView.startEdit()
                    self.codeInputView.error()
                }
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_MobileBind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self]  succeed, result, errorModel in
            LoginReactiveCompatible.straddleCompletion(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: if !succeed {
                if !succeed {
                    //: self.codeInputView.startEdit()
                    self.codeInputView.error()
                    //: return
                    return
                }
                //: MeasurementAppManager.share.loginUserMode.mobile = self.phoneOrEmailStr
                MeasurementAppManager.share.loginUserMode.mobile = self.phoneOrEmailStr
                //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Mobile Phone succeed".localized)
                self.afterTitle(showMsg: (String(str_buttonSizeText.prefix(6)) + "obile " + String(str_toShareText.suffix(6)) + "succe" + str_iconData.replacingOccurrences(of: "lab", with: "d")).localized)
                //: for index in 0..<(self.navigationController?.viewControllers.count)! {
                for index in 0 ..< (self.navigationController?.viewControllers.count)! {
                    //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingSettingsUniversalVC.self) == true {
                    if self.navigationController?.viewControllers[index].isKind(of: CloseCellViewController.self) == true {
                        //: let vc = (self.navigationController?.viewControllers[index] as? TalkingSettingsUniversalVC)!
                        let vc = (self.navigationController?.viewControllers[index] as? CloseCellViewController)!
                        //: self.navigationController?.popToViewController(vc, animated: true)
                        self.navigationController?.popToViewController(vc, animated: true)
                        //: return
                        return
                    }
                }
            }
        }
    }

    //: func func__resendEmailCodeAction() {
    func make() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        SizeHungReactiveCompatible.exhibitRemoveCuttingEdge(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, result, errorModel in
            LoginReactiveCompatible.object(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: if succeed {
                if succeed {
                    //: self.func_starCodeTime()
                    self.hide()
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.tip()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.error()
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            LoginReactiveCompatible.phone(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: if succeed {
                if succeed {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.tip()
                    //: self.func_starCodeTime()
                    self.hide()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.error()
                //: })
            })
        }
    }

    //: func func_starCodeTime() {
    func hide() {
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: var timeCount = 300
        var timeCount = 300
        //: timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: timeCount -= 1
                timeCount -= 1
                //: self.commitButton.isEnabled = (timeCount <= 0)
                self.commitButton.isEnabled = (timeCount <= 0)
                //: if timeCount > 0 {
                if timeCount > 0 {
                    //: self.commitButton.setTitle("Resend verification email (%@s)".localizedArguments(timeCount), for: .normal)
                    self.commitButton.setTitle(String(bytes: str_succeedName.map{$0^159}, encoding: .utf8)!.random(timeCount), for: .normal)
                    //: } else {
                } else {
                    //: self.func_endCodeTime()
                    self.text()
                    //: self.commitButton.setTitle("Resend verification email".localized, for: .normal)
                    self.commitButton.setTitle((String(str_homeData.suffix(5)) + "d ve" + str_giftData.lowercased() + String(str_powerText) + String(str_indexText)).localized, for: .normal)
                }
                //: })
            })
    }

    //: func func_endCodeTime() {
    func text() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }
}

// MARK: - Layout

//: extension TalkingLoginBindInputCodeVC {
extension ValueViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func pastUser() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(tipsLabel)
        view.addSubview(tipsLabel)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(inputLabel)
        view.addSubview(inputLabel)
        //: view.addSubview(codeInputView)
        view.addSubview(codeInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(desLab)
        view.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func scope() {
        //: tipsLabel.snp.makeConstraints { make in
        tipsLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(tipsLabel.snp.bottom).offset(40)
            make.top.equalTo(tipsLabel.snp.bottom).offset(40)
        }
        //: inputLabel.snp.makeConstraints { make in
        inputLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom)
            make.top.equalTo(titleLabel.snp.bottom)
        }
        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(inputLabel.snp.bottom).offset(24)
            make.top.equalTo(inputLabel.snp.bottom).offset(24)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(36)
            make.top.equalTo(commitButton.snp.bottom).offset(36)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cohereInNumbererplay() {
        //: commitButton.rx.controlEvent(.touchUpInside)
        commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__resendEmailCodeAction()
                self.make()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__bindEmailAction()
                self.errorAction()
            }
            //: return
        }
    }
}
