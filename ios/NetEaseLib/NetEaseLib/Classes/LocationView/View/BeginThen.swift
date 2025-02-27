
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toDataText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "By tapping Create Account or sign in, you agree to our terms. Learn how we process your data in our Privacy Policy." :*/
fileprivate let str_useNameValue:[UInt8] = [0x42,0x79,0x20,0x74,0x61,0x70,0x70,0x69,0x6e,0x67,0x20,0x43,0x72,0x65,0x61,0x74,0x65,0x20,0x41,0x63,0x63,0x6f,0x75,0x6e,0x74,0x20,0x6f,0x72,0x20,0x73,0x69,0x67,0x6e,0x20,0x69,0x6e,0x2c,0x20,0x79,0x6f,0x75,0x20,0x61,0x67,0x72,0x65,0x65,0x20,0x74,0x6f,0x20,0x6f,0x75,0x72,0x20,0x74,0x65,0x72,0x6d,0x73,0x2e,0x20,0x4c,0x65,0x61,0x72,0x6e,0x20,0x68,0x6f,0x77,0x20,0x77,0x65,0x20,0x70,0x72,0x6f,0x63,0x65,0x73,0x73,0x20,0x79,0x6f,0x75,0x72,0x20,0x64,0x61,0x74,0x61,0x20,0x69,0x6e,0x20,0x6f,0x75,0x72,0x20,0x50,0x72,0x69,0x76,0x61,0x63,0x79,0x20,0x50,0x6f,0x6c,0x69,0x63,0x79,0x2e]

/*: "Agree and Continue" :*/
fileprivate let str_viewBurnName:String = "Agreepost bring block class"
fileprivate let str_buttonValue:String = "ONTINU"
fileprivate let str_iconTitle:String = "temp"

/*: "Disagree and Quit" :*/
fileprivate let str_coverName:String = "start stateDisag"
fileprivate let str_commentContent:String = "and Qufail position player"
fileprivate let str_ofValue:String = "partyt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeginThen.swift
//  AbroadTalking
//
//  Created by young on 2022/8/31.
//

//: import UIKit
import UIKit

//: class LoginPrivacyPolicyView: UIView {
class BeginThen: UIView {
    var toImageView: UIImageView?

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toDataText.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: self.backgroundColor = UIColor.RGBA(0, 0, 0, 0.6)
        self.backgroundColor = UIColor.each(0, 0, 0, 0.6)
        //: self.alpha = 0
        self.alpha = 0
        //: self.setupSubviews()
        self.tingFrom()
        //: self.setupSubViewsConstraint()
        self.conversationSubstitute()
        //: self.bindInteraction()
        self.rubric()
    }

    // MARK: - Lazy load

    //: private lazy var whiteBgV: UIView = {
    private lazy var whiteBgV: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.blockOf()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "By tapping Create Account or sign in, you agree to our terms. Learn how we process your data in our Privacy Policy.".localized
        lab.text = String(bytes: str_useNameValue, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var agreeBtn: UIButton = {
    private lazy var agreeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Agree and Continue".localized, for: .normal)
        btn.setTitle((String(str_viewBurnName.prefix(5)) + " and C" + str_buttonValue.lowercased() + str_iconTitle.replacingOccurrences(of: "temp", with: "e")).localized, for: .normal)
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 245, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: 245, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Disagree and Quit".localized, for: .normal)
        btn.setTitle((String(str_coverName.suffix(5)) + "ree " + String(str_commentContent.prefix(6)) + str_ofValue.replacingOccurrences(of: "party", with: "i")).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.offt(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: btn.backgroundColor = UIColor.white
        btn.backgroundColor = UIColor.white
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.offt().cgColor
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

//: extension LoginPrivacyPolicyView {
extension BeginThen {
    // MARK: - Event

    //: func showView(okHandler: @escaping () -> Void) {
    func restrictionHandler(okHandler: @escaping () -> Void) {
        //: show()
        custom()

        // bind event
        //: agreeBtn.rx.controlEvent(.touchUpInside)
        agreeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.dismiss()
                self.tapDismiss()
                //: okHandler()
                okHandler()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: quitBtn.rx.controlEvent(.touchUpInside)
        quitBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: exit(0)
                exit(0)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    //: private func show() {
    private func custom() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 1
            self.alpha = 1
            //: } completion: { finish in
        } completion: { _ in
            //: ImageMacroDefine.getWindow().addSubview(self)
            ImageMacroDefine.sumHungWindowObject().addSubview(self)
        }
    }

    //: private func dismiss() {
    private func tapDismiss() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 0
            self.alpha = 0
            //: } completion: { finish in
        } completion: { _ in
            //: guard self.superview != nil else { return }
            guard self.superview != nil else { return }
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

//: extension LoginPrivacyPolicyView {
extension BeginThen {
    // 添加视图
    //: private func setupSubviews() {
    private func tingFrom() {
        //: self.addSubview(whiteBgV)
        self.addSubview(whiteBgV)
        //: whiteBgV.snp.makeConstraints { make in
        whiteBgV.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 295, height: 270))
            make.size.equalTo(CGSize(width: 295, height: 270))
        }
        //: whiteBgV.addSubview(textLab)
        whiteBgV.addSubview(textLab)
        //: textLab.snp.makeConstraints { make in
        textLab.snp.makeConstraints { make in
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: whiteBgV.addSubview(agreeBtn)
        whiteBgV.addSubview(agreeBtn)
        //: agreeBtn.snp.makeConstraints { make in
        agreeBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(140)
            make.top.equalToSuperview().offset(140)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: whiteBgV.addSubview(quitBtn)
        whiteBgV.addSubview(quitBtn)
        //: quitBtn.snp.makeConstraints { make in
        quitBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.bottom.equalTo(-18)
            make.bottom.equalTo(-18)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func conversationSubstitute() {}

    // 添加事件
    //: private func bindInteraction() {
    private func rubric() {}
}
