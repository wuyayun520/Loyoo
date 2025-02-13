
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_targetSubText:[UInt8] = [0xe,0x9,0xe,0x13,0x4f,0x4,0x8,0x3,0x2,0x15,0x5d,0x4e,0x47,0xf,0x6,0x14,0x47,0x9,0x8,0x13,0x47,0x5,0x2,0x2,0x9,0x47,0xe,0xa,0x17,0xb,0x2,0xa,0x2,0x9,0x13,0x2,0x3]

/*: "Nickname" :*/
fileprivate let str_iconData:String = "view request view equalNickn"
fileprivate let str_ageData:[Character] = ["a","m","e"]

/*: "Birthday" :*/
fileprivate let str_reasonImageText:[Character] = ["B","i","r","t","h","d","a","y"]

/*: "F4F4F4" :*/
fileprivate let str_backText:[Character] = ["F","4","F","4","F","4"]

/*: "%.2d" :*/
fileprivate let str_textName:String = "send index equal if%.2d"

/*: - :*/
fileprivate let str_toText:String = "-"

/*: "area_code_down_icon" :*/
fileprivate let str_imageValue:[Character] = ["a","r","e","a","_","c","o","d","e"]
fileprivate let str_eachValue:String = "_dothan mode bottom"
fileprivate let str_modelSkinData:String = "top make indexwn_icon"

/*: "BBBBBB" :*/
fileprivate let str_redTitle:String = "numbernumbernumbernumbernumbernumber"

/*: "0/20" :*/
fileprivate let str_blockData:[Character] = ["0","/","2","0"]

/*: "20/0" :*/
fileprivate let str_makeColorData:String = "model0/0"

/*: "Next" :*/
fileprivate let str_upData:String = "fill statusNext"

/*: "#8C7AFF" :*/
fileprivate let str_toTitle:String = "back if height#8C7AFF"

/*: "Skip" :*/
fileprivate let str_tableText:String = "model m event stringSkip"

/*: "20/ :*/
fileprivate let str_contentData:[Character] = ["2","0","/"]

/*: /20" :*/
fileprivate let str_attributeSendText:[Character] = ["/","2","0"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AfterwardInfoView.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: enum EditInfoType {
enum DataInfoType {
    //: case NickName
    case NickName
    //: case Birth
    case Birth
    //: case HeadPic
    case HeadPic
    //: case Finish
    case Finish
    //: case Skip
    case Skip
}

//: class TalkingLoginEditInfoView: UIView {
class AfterwardInfoView: UIView {
    var showImageView: UIImageView?

    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: DataInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: MeasurementAppManager.share.userFillInfoMode.nickName = MeasurementAppManager.share.loginUserMode.nickname ?? ""
        MeasurementAppManager.share.userFillInfoMode.nickName = MeasurementAppManager.share.loginUserMode.nickname ?? ""

        if let inviteCode = UserDefaults.standard.string(forKey: a_noName) {
            MeasurementAppManager.share.userFillInfoMode.inviteCode = inviteCode
            inviteCodeInputView.text = inviteCode
        }
        
        //: self.setupSubviews()
        self.upSubviews()
        //: self.setupSubViewsConstraint()
        self.substance()
        //: self.bindInteraction()
        self.data()
        // 先执行一下该方法，昵称可能有默认值
        //: textChage(nameInputView)
        publication(nameInputView)

        if (MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.female.rawValue && !MeasurementAppManager.share.appConfigMode.skipInputInviteCodeFemale) ||
            (MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue && !MeasurementAppManager.share.appConfigMode.skipInputInviteCodeMale) {
                     skipButton.isHidden = true
        //            skipTipLabel.isHidden = skipButton.isHidden
        }
        func__checkFinishBtnState()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_targetSubText.map{$0^103}, encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var nameTitleLab: UILabel = {
    lazy var nameTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .thoughtImage(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Nickname".localized
        label.text = (String(str_iconData.suffix(5)) + String(str_ageData)).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var birthTitleLab: UILabel = {
    lazy var birthTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .thoughtImage(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Birthday".localized
        label.text = (String(str_reasonImageText)).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var birthControl: UIControl = {
    lazy var birthControl: UIControl = {
        //: let control = UIControl()
        let control = UIControl()
        //: control.backgroundColor = UIColor(hex: "F4F4F4")
        control.backgroundColor = UIColor(hex: (String(str_backText)))
        //: control.layer.cornerRadius = 25
        control.layer.cornerRadius = 25
        //: control.clipsToBounds = true
        control.clipsToBounds = true
        //: return control
        return control
        //: }()
    }()

    //: lazy var birthLabel: UILabel = {
    lazy var birthLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: let day = MeasurementAppManager.share.userFillInfoMode.birthDay
        let day = MeasurementAppManager.share.userFillInfoMode.birthDay
        //: let month = MeasurementAppManager.share.userFillInfoMode.birthMonth
        let month = MeasurementAppManager.share.userFillInfoMode.birthMonth
        //: let year = MeasurementAppManager.share.userFillInfoMode.birthYear
        let year = MeasurementAppManager.share.userFillInfoMode.birthYear

        //: label.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        label.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"

        //: return label
        return label
        //: }()
    }()

    //: lazy var birthDownImgView: UIImageView = {
    lazy var birthDownImgView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.image = UIImage.outsideText(name: "area_code_down_icon")
        imageView.image = UIImage.outsideText(name: (String(str_imageValue) + String(str_eachValue.prefix(3)) + String(str_modelSkinData.suffix(7))))
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var nameInputView: UITextField = {
    lazy var nameInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (String(str_backText)))
        //: textField.font = .pingfangFont(type: .Regular, fontSize: 15)
        textField.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .blockOf()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.delegate = self
        textField.delegate = self
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.thoughtImage(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (str_redTitle.replacingOccurrences(of: "number", with: "B")))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .always
        textField.rightViewMode = .always
        //: rightView.addSubview(nameCountLab)
        rightView.addSubview(nameCountLab)
        //: textField.addTarget(self, action: #selector(textChage( _:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(publication(_:)), for: .editingChanged)
        //: textField.text = MeasurementAppManager.share.userFillInfoMode.nickName
        textField.text = MeasurementAppManager.share.userFillInfoMode.nickName
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var nameCountLab: UILabel = {
    lazy var nameCountLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        label.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: label.textAlignment = .right
        label.textAlignment = .right
        //: label.text = "0/20"
        label.text = (String(str_blockData))
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: label.text = "20/0"
            label.text = (str_makeColorData.replacingOccurrences(of: "model", with: "2"))
        }
        //: return label
        return label
        //: }()
    }()
    
    private lazy var inviteCodeTitleLab: UILabel = {
        let label = UILabel()
        label.font = .thoughtImage(type: .Semibold, fontSize: 17)
        label.textColor = .blockOf()
        label.textAlignment = .center
        label.text = "Invitation code".localized
        return label
    }()
    
    private lazy var inviteCodeCleanBtn: UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        btn.setImage(UIImage.outsideText(name: "btn_field_delete_icon"), for: .normal)
        btn.addTarget(self, action: #selector(inviteCodeCleanButtonEvent), for: .touchUpInside)
        return btn
    }()

    lazy var inviteCodeInputView: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.font = .thoughtImage(type: .Regular, fontSize: 15)
        textField.textColor = .blockOf()
        textField.layer.cornerRadius = 25
        textField.clipsToBounds = true
        textField.delegate = self
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.thoughtImage(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.keyboardType = .default
        textField.returnKeyType = .done
        let leftView = UIView()
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        textField.leftView = leftView
        textField.leftViewMode = .always
        let rightView = UIView()
        rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        textField.rightView = rightView
        textField.rightViewMode = .always
        rightView.addSubview(inviteCodeCleanBtn)
        textField.addTarget(self, action: #selector(inviteCodeTextChage(_:)), for: .editingChanged)
        return textField
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_upData.suffix(4))).localized, for: .normal)
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

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_toTitle.suffix(7)))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(str_tableText.suffix(4))).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event
extension AfterwardInfoView {
    /// 更新Next按钮状态
    private func func__checkFinishBtnState() {
        if (MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.female.rawValue && !MeasurementAppManager.share.appConfigMode.skipInputInviteCodeFemale) ||
            (MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue && !MeasurementAppManager.share.appConfigMode.skipInputInviteCodeMale) { // 全部必填
            let nickName = MeasurementAppManager.share.userFillInfoMode.nickName
            let inviteCode = MeasurementAppManager.share.userFillInfoMode.inviteCode
            commitButton.isEnabled = (nickName.count > 0 && inviteCode.count > 0)
        } else {
            commitButton.isEnabled = true
        }
    }
    
    /// 清除邀请码事件
    @objc private func inviteCodeCleanButtonEvent() {
        inviteCodeInputView.text = ""
        MeasurementAppManager.share.userFillInfoMode.inviteCode = ""
        func__checkFinishBtnState()
    }
}

//: extension TalkingLoginEditInfoView: UITextFieldDelegate {
extension AfterwardInfoView: UITextFieldDelegate {
    // 当输入内容等于验证码的长度时候，把输入的验证码回调
    //: @objc func textChage(_ textField: UITextField) {
    @objc func publication(_: UITextField) {
        //: func__changeCodeInputView()
        pull()
    }

    //: func func__changeCodeInputView() {
    func pull() {
        //: let verStr: String = nameInputView.text ?? ""
        let verStr: String = nameInputView.text ?? ""
        //: if verStr.count > nameCount {
        if verStr.count > nameCount {
            //: let substring = nameInputView.text?.prefix(nameCount)
            let substring = nameInputView.text?.prefix(nameCount) // 控制输入文字的长度
            //: nameInputView.text = String(substring ?? "")
            nameInputView.text = String(substring ?? "")
        }

        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: nameCountLab.text = "20/\(nameInputView.text!.count)"
            nameCountLab.text = "20/\(nameInputView.text!.count)"
            //: } else {
        } else {
            //: nameCountLab.text = "\(nameInputView.text!.count)/20"
            nameCountLab.text = "\(nameInputView.text!.count)/20"
        }
        //: MeasurementAppManager.share.userFillInfoMode.nickName = nameInputView.text ?? ""
        MeasurementAppManager.share.userFillInfoMode.nickName = nameInputView.text ?? ""
        func__checkFinishBtnState()
    }
    
    @objc private func inviteCodeTextChage(_ textField: UITextField) {
        let verStr: String = inviteCodeInputView.text ?? ""
        if verStr.count > 6 {
            let substring = inviteCodeInputView.text?.prefix(6)
            inviteCodeInputView.text = String(substring ?? "")
        }
        MeasurementAppManager.share.userFillInfoMode.inviteCode = inviteCodeInputView.text ?? ""
        func__checkFinishBtnState()
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()
    }
}

//: extension TalkingLoginEditInfoView: DateViewDelegate {
extension AfterwardInfoView: ScienceLaboratoryObjectProtocol {
    //: func func__birthControlClickAction() {
    func giftAction() {
        //: nameInputView.resignFirstResponder()
        nameInputView.resignFirstResponder()
        inviteCodeInputView.resignFirstResponder()
        //: let myDateView = TalkingDateView()
        let myDateView = CuttingEdgeReactiveCompatible()
        //: myDateView.delegate = self
        myDateView.delegate = self
        //: let day = MeasurementAppManager.share.userFillInfoMode.birthDay
        let day = MeasurementAppManager.share.userFillInfoMode.birthDay
        //: let month = MeasurementAppManager.share.userFillInfoMode.birthMonth
        let month = MeasurementAppManager.share.userFillInfoMode.birthMonth
        //: let year = MeasurementAppManager.share.userFillInfoMode.birthYear
        let year = MeasurementAppManager.share.userFillInfoMode.birthYear
        //: myDateView.showView()
        myDateView.mugShot()
        //: DispatchQueue.main.asyncAfter(deadline: .now()+0.8) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            //: myDateView.setDefaultDate(year: year, month: month, day: day)
            myDateView.randomShared(year: year, month: month, day: day)
        }
    }

    //: func pickDateView(year: Int, month: Int, day: Int) {
    func dayPop(year: Int, month: Int, day: Int) {
        //: birthLabel.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        birthLabel.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        //: MeasurementAppManager.share.userFillInfoMode.birthDay = day
        MeasurementAppManager.share.userFillInfoMode.birthDay = day
        //: MeasurementAppManager.share.userFillInfoMode.birthMonth = month
        MeasurementAppManager.share.userFillInfoMode.birthMonth = month
        //: MeasurementAppManager.share.userFillInfoMode.birthYear = year
        MeasurementAppManager.share.userFillInfoMode.birthYear = year
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoView {
extension AfterwardInfoView {
    // 添加视图
    //: private func setupSubviews() {
    private func upSubviews() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(nameTitleLab)
        contentView.addSubview(nameTitleLab)
        //: contentView.addSubview(nameInputView)
        contentView.addSubview(nameInputView)
        //: contentView.addSubview(birthTitleLab)
        contentView.addSubview(birthTitleLab)
        //: contentView.addSubview(birthControl)
        contentView.addSubview(birthControl)
        //: birthControl.addSubview(birthLabel)
        birthControl.addSubview(birthLabel)
        //: birthControl.addSubview(birthDownImgView)
        birthControl.addSubview(birthDownImgView)
        contentView.addSubview(inviteCodeTitleLab)
        contentView.addSubview(inviteCodeInputView)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(skipButton)
        contentView.addSubview(skipButton)
//        contentView.addSubview(skipTipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func substance() {
        //: contentView.snp.makeConstraints { (make) in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: nameTitleLab.snp.makeConstraints { make in
        nameTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            make.leading.equalTo(30)
            make.height.equalTo(28)
        }
        //: nameInputView.snp.makeConstraints { make in
        nameInputView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(nameTitleLab.snp.bottom).offset(20)
            make.top.equalTo(nameTitleLab.snp.bottom).offset(16)
        }
        //: birthTitleLab.snp.makeConstraints { make in
        birthTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            //: make.top.equalTo(nameInputView.snp.bottom).offset(30)
            make.top.equalTo(nameInputView.snp.bottom).offset(30)
            make.leading.height.equalTo(nameTitleLab)
        }
        //: birthControl.snp.makeConstraints { make in
        birthControl.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(birthTitleLab.snp.bottom).offset(16)
            make.top.equalTo(birthTitleLab.snp.bottom).offset(16)
        }
        //: birthLabel.snp.makeConstraints { make in
        birthLabel.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalToSuperview().offset(-40)
            make.trailing.equalToSuperview().offset(-40)
        }
        //: birthDownImgView.snp.makeConstraints { make in
        birthDownImgView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.width.equalTo(20)
            make.height.width.equalTo(20)
            //: make.trailing.equalToSuperview().offset(-18)
            make.trailing.equalToSuperview().offset(-18)
        }
        
        inviteCodeTitleLab.snp.makeConstraints { make in
            make.top.equalTo(birthControl.snp.bottom).offset(30)
            make.leading.height.equalTo(nameTitleLab)
        }
        
        inviteCodeInputView.snp.makeConstraints { make in
            make.trailing.equalTo(-30)
            make.leading.equalTo(30)
            make.height.equalTo(50)
            make.top.equalTo(inviteCodeTitleLab.snp.bottom).offset(16)
        }


        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth - 60)
            make.width.equalTo(a_blockValue - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            make.top.equalTo(inviteCodeInputView.snp.bottom).offset(30)
        }

        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(20)
            make.top.equalTo(commitButton.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func data() {
        //: skipButton.rx.tap
        skipButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Skip)
                    self.btnBlock!(.Skip)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: birthControl.rx.controlEvent(.touchUpInside)
        birthControl.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__birthControlClickAction()
                self.giftAction()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
