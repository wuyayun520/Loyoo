
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "#999999" :*/
fileprivate let str_directionValue:String = "#999999"

/*: "0/20" :*/
fileprivate let str_partyTitle:String = "0/view0"

/*: "Nickname" :*/
fileprivate let str_equalContent:[Character] = ["N","i","c","k","n","a","m","e"]

/*: "enter your name" :*/
fileprivate let str_toText:[Character] = ["e","n","t","e","r"," ","y","o","u","r"," ","n","a","m","e"]

/*: /20" :*/
fileprivate let str_titleValue:String = "/20"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MediumViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: typealias EditNameBlock = (String) ->(Void)
typealias EditNameBlock = (String) -> Void

//: class TalkingEditNameCell: UITableViewCell {
class MediumViewCell: UITableViewCell {
	var modeOn: Bool = false
	var liveMagnitude: Double = 30.6
	var statusArray: [AnyHashable] = []
	var screenDictionary: [AnyHashable: String] = [:]
	var telephoneMessageDoing: Bool = true
	var windowSum: Double = 6.9
	var viewArray: [AnyHashable] = []
	var ladenDictionary: [AnyHashable: String] = [:]

    var designateImageView: UIImageView?

    //: var nameBlock: EditNameBlock!
    var nameBlock: EditNameBlock!

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if ((numberLB.inputAssistantItem.trailingBarButtonGroups.count == 8) && (numberLB.inputAssistantItem.leadingBarButtonGroups.count == 5)) && (numberLB.layer.contentsRect.size.width != 1) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let saveData = UpwardlyView()


            saveData.viewUserDoing = { [self] contentViewSwitch in
            self.modeOn = contentViewSwitch
            
            return self.modeOn
            }
            saveData.valueInterval = { [self] mSayMagnitude in
            self.liveMagnitude = mSayMagnitude
            
            return self.liveMagnitude
            }
            saveData.nameArray = { [self] freeArray in
            self.statusArray = freeArray
            
            guard var value = self.statusArray as? [String] else {
                return nil
            }
            return value
            }
            saveData.bottomDictionary = { [self] windowDictionary in
            self.screenDictionary = windowDictionary
            
            guard var value = self.screenDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                numberLB.addSubview(saveData)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

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
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView .addSubview(nameTF)

        var whenSectionApp: UIView = nameTF
        if let imageView = self.designateImageView, (backView.window != nil && backView.window!.windowLevel == .statusBar) && (backView.layer.anchorPoint.x != 0.5) {
            //: SWIFT_CUSTOM_DANGER
            whenSectionApp = imageView
        }
        backView.addSubview(whenSectionApp)
        //: backView.addSubview(numberLB)
        backView.addSubview(numberLB)
        //: backView.addSubview(titleLB)

        var showBorder: UIView = titleLB
        if let imageView = self.designateImageView, (showBorder.superview != nil && showBorder.superview!.isHidden) && (showBorder.layer.contentsRect.origin.x != 0) {
            //: SWIFT_CUSTOM_DANGER
            showBorder = imageView
        }
        backView.addSubview(showBorder)

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(effect(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelValue, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self).offset(-15)
            make.bottom.equalTo(self).offset(-15)
        }
        //: nameTF.snp.makeConstraints { make in
        nameTF.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.top.equalTo(backView).offset(46)
            make.top.equalTo(backView).offset(46)
            //: make.bottom.equalTo(backView.snp.bottom).offset(-12)
            make.bottom.equalTo(backView.snp.bottom).offset(-12)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }
    
	if let designateImageView = designateImageView {

            if (designateImageView.intrinsicContentSize.height == 268.60) && (designateImageView.convert(CGPoint(x: CGFloat(0), y: 0), from: designateImageView.superview).x == 42.78) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let renewLet = UpwardlyView(frame: designateImageView.bounds.insetBy(dx: CGFloat(478.60), dy: CGFloat(66)))


            renewLet.viewUserDoing = { [self] contentViewSwitch in
            self.telephoneMessageDoing = contentViewSwitch
            
            return self.telephoneMessageDoing
            }
            renewLet.valueInterval = { [self] mSayMagnitude in
            self.windowSum = mSayMagnitude
            
            return self.windowSum
            }
            renewLet.nameArray = { [self] freeArray in
            self.viewArray = freeArray
            
            guard var value = self.viewArray as? [String] else {
                return nil
            }
            return value
            }
            renewLet.bottomDictionary = { [self] windowDictionary in
            self.ladenDictionary = windowDictionary
            
            guard var value = self.ladenDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                designateImageView.addSubview(renewLet)
            }

	}

	}

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: (str_directionValue.capitalized))
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        LB.font = UIFont.thoughtImage(type: .Regular, fontSize: 14)
        //: LB.text = "0/20"
        LB.text = (str_partyTitle.replacingOccurrences(of: "view", with: "2"))
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.appTitleColor()
        LB.textColor = UIColor.blockOf()
        //: LB.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        LB.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: LB.text = "Nickname".localized
        LB.text = (String(str_equalContent)).localized
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var nameTF: UITextField = {
    lazy var nameTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.backgroundColor = .appBgColor()
        tf.backgroundColor = .playerEqual()
        //: tf.textColor = UIColor.appTitleColor()
        tf.textColor = UIColor.blockOf()
        //: tf.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        tf.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: tf.textAlignment = .center
        tf.textAlignment = .center
        //: tf.attributedPlaceholder = NSAttributedString.init(string: "enter your name".localized, attributes: [
        tf.attributedPlaceholder = NSAttributedString(string: (String(str_toText)).localized, attributes: [
            //: NSAttributedString.Key.foregroundColor: UIColor.init(hex: "#999999")!])
            NSAttributedString.Key.foregroundColor: UIColor(hex: (str_directionValue.capitalized))!])
        //: tf.delegate = self
        tf.delegate = self
        //: tf.returnKeyType = UIReturnKeyType.done
        tf.returnKeyType = UIReturnKeyType.done
        //: tf.text = MeasurementAppManager.share.loginUserMode.nickname
        tf.text = MeasurementAppManager.share.loginUserMode.nickname
        //: numberLB.text = "\(MeasurementAppManager.share.loginUserMode.nickname?.count ?? 0)/20"
        numberLB.text = "\(MeasurementAppManager.share.loginUserMode.nickname?.count ?? 0)/20"
        //: return tf
        return tf
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditNameCell {
extension MediumViewCell {
    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func effect(notification _: NSNotification) {
        //: if self.nameBlock != nil {
        if self.nameBlock != nil {
            //: self.nameBlock(nameTF.text ?? "")
            self.nameBlock(nameTF.text ?? "")
        }
    }
}

// MARK: - UITextFieldDelegate

//: extension TalkingEditNameCell: UITextFieldDelegate {
extension MediumViewCell: UITextFieldDelegate {
    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func textField(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>20 || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > 20 || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }

        //: numberLB.text = "\(textField.text!.count+string.count)/20"
        numberLB.text = "\(textField.text!.count + string.count)/20"
        //: return true
        return true
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()

        //: return true
        return true
    }
}
