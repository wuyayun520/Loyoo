
//: Declare String Begin

/*: "#AAAAAA" :*/
fileprivate let str_styleValue:[Character] = ["#"]
fileprivate let str_mediumName:[Character] = ["A","A","A","A","A","A"]

/*: " No more than 10 characters" :*/
fileprivate let str_logColorData:String = " No mofirst file"
fileprivate let str_dataTitle:[Character] = ["r","e"," ","t","h","a","n"," ","1","0"," ","c","h","a","r","a","c","t","e","r","s"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_equalData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "exaggerate_image" :*/
fileprivate let str_productUpName:String = "exacolorera"
fileprivate let str_placeValue:[Character] = ["t"]
fileprivate let str_labelShareText:String = "e_imagedata data to self add"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UtilizerViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/14.
//

//: import UIKit
import UIKit

//: public typealias LeftBtn = () -> Void
public typealias LeftBtn = () -> Void
//: public typealias RightBtn = (_ text: String) -> Void
public typealias RightBtn = (_ text: String) -> Void

//: class TalkingEditAlertView: UIView {
class UtilizerViewDelegate: UIView {
	var headAddTotal: Int = 7
	var buildDictionary: [AnyHashable: String] = [:]
	var cellInfoColorTotal: Int = 5
	var statusDictionary: [AnyHashable: String] = [:]

    var tapImageView: UIImageView?
    //: private var alertConfig: ShowAlertConfig
    private var alertConfig: MarkAlertConfig

    //: var leftBlock: LeftBtn?
    var leftBlock: LeftBtn?
    //: var rightBlock: RightBtn?
    var rightBlock: RightBtn?

    //: var popView: MeasurementThen?
    var popView: MeasurementThen?

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = alertConfig.titleColor
        lab.textColor = alertConfig.titleColor
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        lab.font = UIFont.thoughtImage(type: .Semibold, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var inputTView: InputTextView = {
    private lazy var inputTView: CommercialDocumentTextView = {
        //: let input = InputTextView()
        let input = CommercialDocumentTextView()
        //: input.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        input.font = UIFont.thoughtImage(type: .Regular, fontSize: 16)
        //: input.placeholderColor = .init(hex: "#AAAAAA") ?? UIColor.gray
        input.placeholderColor = .init(hex: (String(str_styleValue) + String(str_mediumName))) ?? UIColor.gray
        //: input.placeholder = " No more than 10 characters".localized
        input.placeholder = (String(str_logColorData.prefix(6)) + String(str_dataTitle)).localized
        //: input.returnKeyType = .send
        input.returnKeyType = .send
        //: input.scrollsToTop = false
        input.scrollsToTop = false
        //: input.delegate = self
        input.delegate = self
        //: input.backgroundColor = .appBgColor()
        input.backgroundColor = .playerEqual()
        //: input.textColor = UIColor.appTitleColor()
        input.textColor = UIColor.blockOf()
        //: let attributes = [NSAttributedString.Key.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)]
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.blockOf(), .font: UIFont.thoughtImage(type: .Regular, fontSize: 16)]
        //: input.typingAttributes = attributes as [NSAttributedString.Key: Any]
        input.typingAttributes = attributes as [NSAttributedString.Key: Any]
        //: input.layer.cornerRadius = 20
        input.layer.cornerRadius = 20
        //: return input
        return input
        //: }()
    }()

    //: private lazy var leftBtn: UIButton = {
    private lazy var leftBtn: UIButton = {
        //: let leftBtn = UIButton.init(type: .custom)
        let leftBtn = UIButton(type: .custom)
        //: leftBtn.titleLabel?.font = alertConfig.buttonFont
        leftBtn.titleLabel?.font = alertConfig.buttonFont
        //: leftBtn.setTitleColor(alertConfig.leftColor, for: .normal)
        leftBtn.setTitleColor(alertConfig.leftColor, for: .normal)
        //: leftBtn.layer.cornerRadius = alertConfig.BtncornerRadius
        leftBtn.layer.cornerRadius = alertConfig.BtncornerRadius
        //: leftBtn.layer.borderColor = UIColor.appThemeColor().cgColor
        leftBtn.layer.borderColor = UIColor.offt().cgColor
        //: leftBtn.layer.borderWidth = 1
        leftBtn.layer.borderWidth = 1
        //: leftBtn.addTarget(self, action: #selector(leftClick), for: .touchUpInside)
        leftBtn.addTarget(self, action: #selector(constraint), for: .touchUpInside)
        //: return leftBtn
        return leftBtn
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let rightBtn = UIButton.init(type: .custom)
        let rightBtn = UIButton(type: .custom)
        //: rightBtn.titleLabel?.font = alertConfig.buttonFont
        rightBtn.titleLabel?.font = alertConfig.buttonFont
        //: rightBtn.setTitleColor(alertConfig.rightColor, for: .normal)
        rightBtn.setTitleColor(alertConfig.rightColor, for: .normal)
        //: rightBtn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 267, height: 50)), for: .normal)
        rightBtn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: 267, height: 50)), for: .normal)
        //: rightBtn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientDisableColor(), size: CGSize(width: 267, height: 50)), for: .disabled)
        rightBtn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.lineModel(), size: CGSize(width: 267, height: 50)), for: .disabled)
        //: rightBtn.layer.cornerRadius = 25
        rightBtn.layer.cornerRadius = 25
        //: rightBtn.clipsToBounds = true
        rightBtn.clipsToBounds = true
        //: rightBtn.addTarget(self, action: #selector(rightClick), for: .touchUpInside)
        rightBtn.addTarget(self, action: #selector(occurrentFlag), for: .touchUpInside)
        //: rightBtn.isEnabled = false
        rightBtn.isEnabled = false
        //: return rightBtn
        return rightBtn
        //: }()
    }()

    //: init(title: String?,
    init(title: String?,
         //: leftBtnTitle: String?,
         leftBtnTitle: String?,
         //: rightBtnTitle: String?,
         rightBtnTitle: String?,
         //: config: ShowAlertConfig?) {
         config: MarkAlertConfig?)
    {
        //: let model = config ?? ShowAlertConfig.init()
        let model = config ?? MarkAlertConfig()
        //: alertConfig = model
        alertConfig = model

        //: super.init(frame: UIScreen.main.bounds)
        super.init(frame: UIScreen.main.bounds)

        //: let containerView = UIView.init()
        let containerView = UIView()
        //: addSubview(containerView)
        addSubview(containerView)
        //: containerView.backgroundColor = alertConfig.tintColor
        containerView.backgroundColor = alertConfig.tintColor
        //: containerView.layer.cornerRadius = alertConfig.cornerRadius
        containerView.layer.cornerRadius = alertConfig.cornerRadius
        //: if alertConfig.shadowColor != UIColor.clear.cgColor {
        if alertConfig.shadowColor != UIColor.clear.cgColor {
            //: containerView.layer.shadowColor = alertConfig.shadowColor
            containerView.layer.shadowColor = alertConfig.shadowColor
            //: containerView.layer.shadowOpacity = alertConfig.shadowOpacity
            containerView.layer.shadowOpacity = alertConfig.shadowOpacity
            //: containerView.layer.shadowRadius = alertConfig.shadowRadius
            containerView.layer.shadowRadius = alertConfig.shadowRadius
            //: containerView.layer.shadowOffset = CGSize.zero
            containerView.layer.shadowOffset = CGSize.zero
        }
        //: containerView.snp.makeConstraints { (make) in
        containerView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(alertConfig.width)
            make.width.equalTo(alertConfig.width)
            //: make.height.lessThanOrEqualTo(alertConfig.maxHeight)
            make.height.lessThanOrEqualTo(alertConfig.maxHeight)
        }

        //: titleLabel.text = title
        titleLabel.text = title
        //: containerView.addSubview(titleLabel)

        var atStar: UIView = titleLabel
        if let imageView = self.tapImageView, (atStar.userActivity != nil) && (atStar.contentMode == .left) {
            //: SWIFT_CUSTOM_DANGER
            atStar = imageView
        }
        containerView.addSubview(atStar)
        //: titleLabel.snp.makeConstraints { (make) in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(alertConfig.verticalPadding)
            make.top.equalToSuperview().offset(alertConfig.verticalPadding)
            //: make.leading.equalToSuperview().offset(alertConfig.horizontalPadding)
            make.leading.equalToSuperview().offset(alertConfig.horizontalPadding)
            //: make.trailing.equalToSuperview().offset(-alertConfig.horizontalPadding)
            make.trailing.equalToSuperview().offset(-alertConfig.horizontalPadding)
        }
        //: titleLabel.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        titleLabel.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)

        //: containerView.addSubview(inputTView)

        var colorRowModel: UIView = inputTView
        if let imageView = self.tapImageView, (colorRowModel.intrinsicContentSize.width == 119.71) && (colorRowModel.layer.contentsRect.size.width != 1) {
            //: SWIFT_CUSTOM_DANGER
            colorRowModel = imageView
        }
        containerView.addSubview(colorRowModel)

        //: inputTView.snp.makeConstraints { (make) in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLabel.snp.bottom).offset(alertConfig.space)
            make.top.equalTo(titleLabel.snp.bottom).offset(alertConfig.space)
            //: make.leading.equalTo(containerView).offset(alertConfig.horizontalPadding)
            make.leading.equalTo(containerView).offset(alertConfig.horizontalPadding)
            //: make.trailing.equalTo(containerView.snp.trailing).offset(-alertConfig.horizontalPadding)
            make.trailing.equalTo(containerView.snp.trailing).offset(-alertConfig.horizontalPadding)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
            //: make.bottom.equalTo(containerView.snp.bottom).offset(-80)
            make.bottom.equalTo(containerView.snp.bottom).offset(-80)
        }
        //: inputTView.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        inputTView.setContentCompressionResistancePriority(.defaultLow, for: .vertical)

        //: inputTView.textAlignment = alertConfig.alignment
        inputTView.textAlignment = alertConfig.alignment
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: inputTView.textAlignment = .right
            inputTView.textAlignment = .right
        }

        //: leftBtn.setTitle(leftBtnTitle, for: .normal)
        leftBtn.setTitle(leftBtnTitle, for: .normal)
        //: containerView.addSubview(leftBtn)
        containerView.addSubview(leftBtn)
        //: leftBtn.snp.makeConstraints { (make) in
        leftBtn.snp.makeConstraints { make in
            //: make.top.equalTo(inputTView.snp.bottom).offset(alertConfig.verticalPadding)
            make.top.equalTo(inputTView.snp.bottom).offset(alertConfig.verticalPadding)
            //: make.leading.equalTo(containerView).offset(alertConfig.horizontalPadding)
            make.leading.equalTo(containerView).offset(alertConfig.horizontalPadding)
            //: make.trailing.equalTo(containerView.snp.centerX).offset(-alertConfig.horizontalPadding/2)
            make.trailing.equalTo(containerView.snp.centerX).offset(-alertConfig.horizontalPadding / 2)
            //: make.height.equalTo(alertConfig.buttonHeight)
            make.height.equalTo(alertConfig.buttonHeight)
        }

        //: rightBtn.setTitle(rightBtnTitle, for: .normal)
        rightBtn.setTitle(rightBtnTitle, for: .normal)
        //: containerView.addSubview(rightBtn)

        var inputSignal: UIView = rightBtn
        if let imageView = self.tapImageView, (containerView.mask != nil) && (containerView.tintAdjustmentMode == .dimmed) {
            //: SWIFT_CUSTOM_DANGER
            inputSignal = imageView
        }
        containerView.addSubview(inputSignal)
        //: rightBtn.snp.makeConstraints { (make) in
        rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(leftBtn)
            make.top.equalTo(leftBtn)
            //: make.leading.equalTo( containerView.snp.centerX).offset(alertConfig.horizontalPadding/2)
            make.leading.equalTo(containerView.snp.centerX).offset(alertConfig.horizontalPadding / 2)
            //: make.trailing.equalTo(containerView.snp.trailing).offset(-alertConfig.horizontalPadding)
            make.trailing.equalTo(containerView.snp.trailing).offset(-alertConfig.horizontalPadding)
            //: make.height.equalTo(alertConfig.buttonHeight)
            make.height.equalTo(alertConfig.buttonHeight)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_equalData, encoding: .utf8)!)
    }

    //: func changeRightBtn(title: String, isTouch: Bool) {
    func touch(title: String, isTouch: Bool) {
        //: rightBtn.setTitle(title, for: .normal)
        rightBtn.setTitle(title, for: .normal)
        //: rightBtn.isEnabled = isTouch
        rightBtn.isEnabled = isTouch
        tapImageView = UIImageView(frame: self.frame.insetBy(dx: CGFloat(Int(self.center.x)), dy: CGFloat(0)))
        if let tapImageView = tapImageView {
            self.tapImageView?.image = UIImage(named: (str_productUpName.replacingOccurrences(of: "color", with: "gg") + String(str_placeValue) + String(str_labelShareText.prefix(7))))
            if (tapImageView.center.x == 31.71) && (!tapImageView.autoresizesSubviews) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(tapImageView)
            }
        }

        //: if !isTouch {
        if !isTouch {
            //: rightBtn.setBackgroundImage(UIImage.outsideText(name: alertConfig.rightBackgroundImagefalse), for: .normal)
            rightBtn.setBackgroundImage(UIImage.outsideText(name: alertConfig.rightBackgroundImagefalse), for: .normal)
            //: } else {
        } else {
            //: let image = UIImage.outsideText(name: alertConfig.rightBackgroundImage).withTintColor(.appThemeColor())
            let image = UIImage.outsideText(name: alertConfig.rightBackgroundImage).withTintColor(.offt())
            //: rightBtn.setBackgroundImage(image, for: .normal)
            rightBtn.setBackgroundImage(image, for: .normal)
        }
    }

    //: @objc func leftClick() {
    @objc func constraint() {
        //: dismiss()
        holder()
        //: guard let block = leftBlock else {
        guard let block = leftBlock else {
            //: return
            return
        }
        //: block()
        block()
    
		if var fromValue = inputTView.text { 
	            if (leftBtn.autoresizingMask == .flexibleLeftMargin) && (leftBtn.layer.contentsRect.origin.y != 0) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let blockEqual = StandView(frame: leftBtn.bounds.union(CGRect(x: CGFloat(0), y: CGFloat(97), width: CGFloat(336.97), height: CGFloat(0))))
	            blockEqual.positionTitle = fromValue
	            
	            
	            blockEqual.lastQuantity = { [self] emptyQuantity in
	            self.headAddTotal = emptyQuantity
	            
	            var blockEqual = alertConfig.lengthLimit
	            blockEqual = 0
	            if blockEqual < self.headAddTotal {
	                self.headAddTotal = blockEqual
	            }
	            
	            return self.headAddTotal
	            }
	            blockEqual.pathFrameAcceptDictionary = { [self] abdicateDictionary in
	            self.buildDictionary = abdicateDictionary
	            
	            guard var value = self.buildDictionary as? [String: String] else {
	                return nil
	            }
	            return value
	            }
	                leftBtn.addSubview(blockEqual)
	            }
	
		}
	}

    //: @objc func rightClick() {
    @objc func occurrentFlag() {
        //: dismiss()
        holder()
        //: guard let block = rightBlock else {
        guard let block = rightBlock else {
            //: return
            return
        }
        //: block(inputTView.text)
        block(inputTView.text)
    }

    //: func show() {
    func imageShow() {
        //: popView = MeasurementThen.init(frame: UIScreen.main.bounds)
        popView = MeasurementThen(frame: UIScreen.main.bounds)
        self.tapImageView?.image = UIImage(named: (str_productUpName.replacingOccurrences(of: "color", with: "gg") + String(str_placeValue) + String(str_labelShareText.prefix(7))))
        //: popView?.initWithView(view: self)
        popView?.anInit(view: self)
        //: popView?.showInView(view: ImageMacroDefine.getWindow())
        popView?.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
    }

    //: func dismiss() {
    func holder() {
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    
		if var bindValue = inputTView.text { 
		if let tapImageView = tapImageView {
	
	            if (tapImageView.clipsToBounds) && (tapImageView.layer.contains(CGPoint(x: CGFloat(55), y: CGFloat(98)))) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let takeAwayLet = StandView()
	            takeAwayLet.positionTitle = bindValue
	            
	            
	            takeAwayLet.lastQuantity = { [self] emptyQuantity in
	            self.cellInfoColorTotal = emptyQuantity
	            
	            var takeAwayLet = alertConfig.lengthLimit
	            takeAwayLet /= 5
	            if takeAwayLet < self.cellInfoColorTotal {
	                self.cellInfoColorTotal = takeAwayLet
	            }
	            
	            return self.cellInfoColorTotal
	            }
	            takeAwayLet.pathFrameAcceptDictionary = { [self] abdicateDictionary in
	            self.statusDictionary = abdicateDictionary
	            
	            guard var value = self.statusDictionary as? [String: String] else {
	                return nil
	            }
	            return value
	            }
	                tapImageView.addSubview(takeAwayLet)
	            }
	
		}
	
		}
	}
}

//: extension TalkingEditAlertView: UITextViewDelegate {
extension UtilizerViewDelegate: UITextViewDelegate {
    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func quantityeractionView(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>alertConfig.lengthLimit || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > alertConfig.lengthLimit || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func sizeReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()
        //: return true
        return true
    }

    //: func textViewDidEndEditing(_ textView: UITextView) {
    func textViewDidEndEditing(_: UITextView) {}

    //: func textViewDidChange(_ textView: UITextView) {
    func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count>0 {
        if textView.text.count > 0 {
            //: rightBtn.isEnabled = true
            rightBtn.isEnabled = true
            //: } else {
        } else {
            //: rightBtn.isEnabled = false
            rightBtn.isEnabled = false
        }

        //: if textView.text.count > alertConfig.lengthLimit {
        if textView.text.count > alertConfig.lengthLimit {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            //: if let selectRange = selectRange {
            if let selectRange = selectRange {
                //: let position =  textView.position(from: (selectRange.start), offset: 0)
                let position = textView.position(from: selectRange.start, offset: 0)
                //: if (position != nil) {
                if position != nil {
                    //: return
                    return
                }
            }
            //: let textContent = textView.text ?? ""
            let textContent = textView.text ?? ""
            //: let textNum = textContent.count
            let textNum = textContent.count
            // 截取
            //: if textNum > alertConfig.lengthLimit && alertConfig.lengthLimit > 0 {
            if textNum > alertConfig.lengthLimit && alertConfig.lengthLimit > 0 {
                //: textView.text = string_prefix(index: alertConfig.lengthLimit, text: textContent)
                textView.text = build(index: alertConfig.lengthLimit, text: textContent)
            }
        }
    }

    //: private func string_prefix(index: Int, text: String) -> String {
    private func build(index: Int, text: String) -> String {
        //: if text.count <= index {
        if text.count <= index {
            //: return text
            return text
            //: } else {
        } else {
            //: let index = text.index(text.startIndex, offsetBy: index)
            let index = text.index(text.startIndex, offsetBy: index)
            //: let str = text.prefix(upTo: index)
            let str = text.prefix(upTo: index)
            //: return String(str)
            return String(str)
        }
    }
}
