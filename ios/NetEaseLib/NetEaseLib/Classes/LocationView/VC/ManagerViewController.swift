
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_endName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "equal_observe_pic" :*/
fileprivate let str_lineText:[Character] = ["e","q","u","a","l","_","o","b","s","e","r","v","e","_","p","i","c"]

/*: "Resent Code" :*/
fileprivate let str_intervalAppValue:String = "key add tab resultResent"
fileprivate let str_fosterValue:[Character] = [" ","C","o","d","e"]

/*: "#8C7AFF" :*/
fileprivate let str_centerValue:[Character] = ["#","8","C","7","A","F","F"]

/*: " ( :*/
fileprivate let str_phoneBlockData:String = "effect("

/*: s)" :*/
fileprivate let str_textName:String = "s)base data raw"

/*: "+ :*/
fileprivate let str_tableTitle:String = "+"

/*: "mobile" :*/
fileprivate let str_requestVideoName:[UInt8] = [0x65,0x6c,0x69,0x62,0x6f,0x6d]

/*: "vcode" :*/
fileprivate let str_userText:[UInt8] = [0x65,0x64,0x6f,0x63,0x76]

/*: "areaCode" :*/
fileprivate let str_viewText:[UInt8] = [0x61,0x72,0x65,0x61,0x43,0x6f,0x64,0x65]

/*: "email" :*/
fileprivate let str_iconCheckData:[UInt8] = [0x65,0x6d,0x61,0x69,0x6c]

/*: "RSA加密失败" :*/
fileprivate let str_frameValue:String = "RSA加\u{5bc6}失\u{8d25}"

/*: "(+ :*/
fileprivate let str_pathValue:String = "button+"

/*: ) :*/
fileprivate let str_beValue:String = "make"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingLoginCodeVC: TalkingBaseViewController {
class ManagerViewController: PropertyViewController {
	var militaryPostSum: Double = -96.9
	var labelArray: [AnyHashable] = []
	var playUserEnable: Bool = true
	var appContent: String = "fill"

    var equalBottomImageView: UIImageView?

    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: private var codeStr: String = ""
    private var codeStr: String = ""
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var loginType: TalkingLoginVCType?
    private var loginType: ActualLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: ActualLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.loginType = type
        self.loginType = type
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_endName, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    
            if (self.childForStatusBarHidden != nil && self.childForStatusBarHidden!.edgesForExtendedLayout == .right) && (self.transitioningDelegate != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let getStartedModel = PlayerReasonController()
            getStartedModel.limitOn = self.hideNavi
            getStartedModel.colorCount = codeView.codeInputView.codeNumber

            
            getStartedModel.imageCount = { [self] pagingNumber in
            self.militaryPostSum = pagingNumber
            
            return self.militaryPostSum
            }
            getStartedModel.priceArray = { [self] constraintLiveArray in
            self.labelArray = constraintLiveArray
            
            guard var value = self.labelArray as? [String] else {
                return nil
            }
            return value
            }
                self.navigationController?.present(getStartedModel.self, animated: false) { [self] in
            self.playUserEnable = false
                }
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.setupSubviews()
        self.to()
        //: self.setupSubViewsConstraint()
        self.noEqual()
        //: self.bindInteraction()
        self.clean()

        equalBottomImageView = UIImageView(frame: self.view.frame.standardized)
        if let equalBottomImageView = equalBottomImageView {
            self.equalBottomImageView?.image = UIImage(named: (String(str_lineText)))
            if (equalBottomImageView.isExclusiveTouch) && (equalBottomImageView.isHighlighted == true) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(equalBottomImageView)
            }
        }
    
	if let equalBottomImageView = equalBottomImageView {

            if (equalBottomImageView.tag == 8827) && (equalBottomImageView.intrinsicContentSize.height == 291.34) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let mainCell = PlayerReasonView(frame: equalBottomImageView.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(274.87), width: CGFloat(406.64), height: CGFloat(83))))
            mainCell.gestureOff = self.hideNavi
            mainCell.tableInterval = codeView.codeInputView.codeNumber
            mainCell.giftContent = { [self] progressContent in
            self.appContent = progressContent
            
            var mainCell = areaCodeNum
            mainCell = mainCell.capitalized + "display" + mainCell
            if mainCell.hasSuffix(self.appContent) {
                self.appContent = mainCell
            }
            
            return self.appContent
            }
                equalBottomImageView.addSubview(mainCell)
            }

	}

	}

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: lazy var codeView: TalkingLoginCodeView = {
    lazy var codeView: AppView = {
        //: let codeView = TalkingLoginCodeView()
        let codeView = AppView()
        //: return codeView
        return codeView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginCodeVC {
extension ManagerViewController {
    //: func func_starCodeTime() {
    func iconTime() {
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
                //: self.func_setReCodeButton(timeCount: timeCount)
                self.scaleOfTotal(timeCount: timeCount)
                //: })
            })
    }

    //: func func_endCodeTime() {
    func collection() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: func func_setReCodeButton(timeCount: Int) {
    func scaleOfTotal(timeCount: Int) {
        //: self.codeView.reSendButton.isEnabled = (timeCount <= 0)
        self.codeView.reSendButton.isEnabled = (timeCount <= 0)
        //: let btnStr = "Resent Code".localized
        let btnStr = (String(str_intervalAppValue.suffix(6)) + String(str_fosterValue)).localized

        //: var attributes = [.foregroundColor: UIColor(hex: "#8C7AFF")!, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        var attributes = [.foregroundColor: UIColor(hex: (String(str_centerValue)))!, .font: UIFont.thoughtImage(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: var newStr = btnStr
        var newStr = btnStr
        //: if timeCount > 0 {
        if timeCount > 0 {
            //: newStr = newStr.appending(" (\(timeCount)s)")
            newStr = newStr.appending(" (\(timeCount)s)")
            //: } else {
        } else {
            //: func_endCodeTime()
            collection()
            //: attributes[.underlineStyle] = 1
            attributes[.underlineStyle] = 1
        }
        //: let attributeString = NSMutableAttributedString(string: newStr, attributes: attributes)
        let attributeString = NSMutableAttributedString(string: newStr, attributes: attributes)
        //: if timeCount > 0 {
        if timeCount > 0 {
            //: let theRange = NSString(string: btnStr).range(of: btnStr)
            let theRange = NSString(string: btnStr).range(of: btnStr)
            //: attributeString.addAttribute(.foregroundColor, value: UIColor.appTitleColor(), range: theRange)
            attributeString.addAttribute(.foregroundColor, value: UIColor.blockOf(), range: theRange)
        }
        //: self.codeView.reSendButton.setAttributedTitle(attributeString, for: .normal)
        self.codeView.reSendButton.setAttributedTitle(attributeString, for: .normal)
    }

    /// 手机号登录
    //: func func__loginAction() {
    func list() {
        //: var reslutStr = ""
        var reslutStr = ""
        //: var reslutCodeStr = ""
        var reslutCodeStr = ""

        //: do {
        do {
            //: let rsa_publicKey = try PublicKey(pemEncoded: LoginRsaPublicKey)
            let rsa_publicKey = try PublicKey(pemEncoded: a_halfObjectScreenValue)
            //: let clear = try ClearMessage(string: phoneOrEmailStr, using: .utf8)
            let clear = try ClearMessage(string: phoneOrEmailStr, using: .utf8)
            //: reslutStr = try clear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            reslutStr = try clear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String

            //: let codeClear = try ClearMessage(string: "+\(areaCodeNum)", using: .utf8)
            let codeClear = try ClearMessage(string: "+\(areaCodeNum)", using: .utf8)
            //: reslutCodeStr = try codeClear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            reslutCodeStr = try codeClear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String

            //: self.view.endEditing(true)
            self.view.endEditing(true)
            //: ProgressHUD.show()
            SizeHungReactiveCompatible.picCurrent()
            //: if loginType == .LoginPhone {
            if loginType == .LoginPhone {
                //: let params = ["mobile": reslutStr, "vcode": codeStr, "areaCode": reslutCodeStr]
                let params = [String(bytes: str_requestVideoName.reversed(), encoding: .utf8)!: reslutStr, String(bytes: str_userText.reversed(), encoding: .utf8)!: codeStr, String(bytes: str_viewText, encoding: .utf8)!: reslutCodeStr]
                //: let content = codeView.phoneLabel.text ?? ""
                let content = codeView.phoneLabel.text ?? ""
                //: TalkingLoginRequestTool.req_thirdLogin(type: .PhoneLogin, content: content, params: params) { [self]  succeed, result, errorModel in
                LoginReactiveCompatible.block(type: .PhoneLogin, content: content, params: params) { [self] succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    SizeHungReactiveCompatible.dataMessage()
                    //: if !succeed {
                    if !succeed {
                        //: self.codeView.codeInputView.startEdit()
                        self.codeView.codeInputView.error()
                    }
                }
                //: }else{
            } else {
                //: let params = ["email": reslutStr, "vcode": codeStr]
                let params = [String(bytes: str_iconCheckData, encoding: .utf8)!: reslutStr, String(bytes: str_userText.reversed(), encoding: .utf8)!: codeStr]

                //: let content = codeView.phoneLabel.text ?? ""
                let content = codeView.phoneLabel.text ?? ""
                //: TalkingLoginRequestTool.req_thirdLogin(type: .EmailLogin, content: content, params: params) { [self]  succeed, result, errorModel in
                LoginReactiveCompatible.block(type: .EmailLogin, content: content, params: params) { [self] succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    SizeHungReactiveCompatible.dataMessage()
                    //: if !succeed {
                    if !succeed {
                        //: self.codeView.codeInputView.startEdit()
                        self.codeView.codeInputView.error()
                    }
                }
            }

            //: } catch {
        } catch {
            //: printLog(message: "RSA加密失败")
            printLog(message: (str_frameValue))
        }
    }

    //: func func__reSendloginCodeAction() {
    func translate() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: if loginType == .LoginPhone {
        if loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            LoginReactiveCompatible.month(phoneStr: phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: if succeed {
                if succeed {
                    //: self.codeView.codeInputView.func__resetCodeInputView()
                    self.codeView.codeInputView.tip()
                    //: self.func_starCodeTime()
                    self.iconTime()
                }
                //: self.codeView.codeInputView.startEdit()
                self.codeView.codeInputView.error()
                //: })
            })
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: phoneOrEmailStr, isBind: false) { succeed, result, errorModel in
            LoginReactiveCompatible.object(emailStr: phoneOrEmailStr, isBind: false) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: if succeed {
                if succeed {
                    //: self.codeView.codeInputView.func__resetCodeInputView()
                    self.codeView.codeInputView.tip()
                    //: self.func_starCodeTime()
                    self.iconTime()
                }
            }
            //: self.codeView.codeInputView.startEdit()
            self.codeView.codeInputView.error()
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginCodeVC {
extension ManagerViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func to() {
        //: view.addSubview(codeView)
        view.addSubview(codeView)
        //: codeView.phoneLabel.text = self.loginType == .LoginPhone ? "(+\(areaCodeNum))\(phoneOrEmailStr)" : "\(phoneOrEmailStr)"
        codeView.phoneLabel.text = self.loginType == .LoginPhone ? "(+\(areaCodeNum))\(phoneOrEmailStr)" : "\(phoneOrEmailStr)"
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func noEqual() {
        //: codeView.snp.makeConstraints { make in
        codeView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalToSuperview()
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func clean() {
        //: codeView.codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeView.codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.codeView.commitButton.isEnabled = (codeStr.count == 6)
            self.codeView.commitButton.isEnabled = (codeStr.count == 6)
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__loginAction()
                self.list()
            }
            //: return
        }
        //: codeView.commitButton.rx.controlEvent(.touchUpInside)
        codeView.commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__loginAction()
                self.list()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeView.reSendButton.rx.controlEvent(.touchUpInside)
        codeView.reSendButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__reSendloginCodeAction()
                self.translate()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: self.func_starCodeTime()
        self.iconTime()
    }
}
