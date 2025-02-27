
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_valueName:[UInt8] = [0x17,0x10,0x17,0xa,0x56,0x1d,0x11,0x1a,0x1b,0xc,0x44,0x57,0x5e,0x16,0x1f,0xd,0x5e,0x10,0x11,0xa,0x5e,0x1c,0x1b,0x1b,0x10,0x5e,0x17,0x13,0xe,0x12,0x1b,0x13,0x1b,0x10,0xa,0x1b,0x1a]

/*: "Cancel" :*/
fileprivate let str_menuData:[Character] = ["C","a","n","c","e","l"]

/*: "Sure" :*/
fileprivate let str_modelMoreName:String = "Sureself application make"

/*: "midfield_img" :*/
fileprivate let str_hereName:String = "miplay"
fileprivate let str_imageData:[Character] = ["f","i","e","l","d","_","i","m","g"]

/*: "live_picture" :*/
fileprivate let str_locationTitle:String = "ligroup"
fileprivate let str_loadText:String = "tuvalue"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualPickView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingBasePickView: UIView {
class EqualPickView: UIView {
	var willClose: Bool = false
	var bestirCloseeselfQuantity: Int = 30
	var headNumber: Double = 28.2
	var searchName: String = "block"
	var liveArray: [AnyHashable] = []
	var cellDeadlineOff: Bool = false
	var overdoSum: Int = 47
	var layerBioMagnitude: Double = -22.4
	var gesturePhoneText: String = "on"
	var iconItemViewArray: [AnyHashable] = []
	var cellOpen: Bool = false
	var squareQuantity: Int = 70
	var overchargeQuantity: Double = 62.4
	var levelName: String = "cell"
	var rankArray: [AnyHashable] = []

    var toImageView: UIImageView?
    // 背景视图
    //: private var contentView: UIView!
    private var contentView: UIView!
    // 选择器
    //: var pickView: UIPickerView!
    var pickView: UIPickerView!
    // 取消按钮
    //: private var cancelButton: UIButton!
    private var cancelButton: UIButton!
    // 确定按钮
    //: private var confirmButton: UIButton!
    private var confirmButton: UIButton!
    // 选择器高度
    //: var pickerViewHeight: CGFloat = 280 {
    var pickerViewHeight: CGFloat = 280 {
        //: didSet {
        didSet {
            //: undateView()
            moveView()
        }
    }

    //: private var titleLabel: UILabel!
    private var titleLabel: UILabel!
    // 显示title名字
    //: var titleString: String? {
    var titleString: String? {
        //: didSet {
        didSet {
            //: titleLabel.text = titleString
            titleLabel.text = titleString
        }
    }

    //: init() {
    init() {
        //: super.init(frame: UIScreen.main.bounds)
        super.init(frame: UIScreen.main.bounds)
        //: setupView()
        bottomView()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_valueName.map{$0^126}, encoding: .utf8)!)
    }

    //: private func setupView() {
    private func bottomView() {
        //: self.isUserInteractionEnabled = true
        self.isUserInteractionEnabled = true
        //: self.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.1)
        self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1)
        //: contentView = UIView.init(frame: CGRect.init(x: 0, y: self.frame.size.height, width: self.frame.size.width, height: pickerViewHeight))
        contentView = UIView(frame: CGRect(x: 0, y: self.frame.size.height, width: self.frame.size.width, height: pickerViewHeight))
        //: contentView.backgroundColor = UIColor.white
        contentView.backgroundColor = UIColor.white
        //: contentView.addGestureRecognizer(UITapGestureRecognizer.init())
        contentView.addGestureRecognizer(UITapGestureRecognizer())
        //: addSubview(contentView)
        addSubview(contentView)
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(dismissView))
        let tap = UITapGestureRecognizer(target: self, action: #selector(capacityView))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)

        //: pickView = UIPickerView.init(frame: CGRect.init(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height))
        pickView = UIPickerView(frame: CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height))
        //: contentView.addSubview(pickView)

        var attributeLess: UIView = pickView
        if let imageView = self.toImageView, (contentView.convert(CGPoint(x: 0, y: 0), from: contentView.superview).x == 39.37) && (contentView.contentMode == .bottomLeft) {
            //: SWIFT_CUSTOM_DANGER
            attributeLess = imageView
        }
        contentView.addSubview(attributeLess)

        //: let topViewHeight: CGFloat = 40
        let topViewHeight: CGFloat = 40
        //: let topView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: contentView.frame.size.width, height: topViewHeight))
        let topView = UIView(frame: CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: topViewHeight))
        //: topView.backgroundColor = UIColor.white
        topView.backgroundColor = UIColor.white
        //: contentView.addSubview(topView)

        var dataConverter: UIView = topView
        if let imageView = self.toImageView, (dataConverter.constraintsAffectingLayout(for: .horizontal).count == 79) && (dataConverter.viewWithTag(2677) != nil) {
            //: SWIFT_CUSTOM_DANGER
            dataConverter = imageView
        }
        contentView.addSubview(dataConverter)
        //: titleLabel = UILabel.init(frame: topView.bounds)
        titleLabel = UILabel(frame: topView.bounds)
        //: titleLabel.text = titleString
        titleLabel.text = titleString
        //: titleLabel.textColor = UIColor.black
        titleLabel.textColor = UIColor.black
        //: titleLabel.font = UIFont.systemFont(ofSize: 16)
        titleLabel.font = UIFont.systemFont(ofSize: 16)
        //: titleLabel.textAlignment = .center
        titleLabel.textAlignment = .center
        //: topView.addSubview(titleLabel)

        var oldWhite: UIView = titleLabel
        if let imageView = self.toImageView, (topView.layer.position.y == 67.83) && (topView.clearsContextBeforeDrawing) {
            //: SWIFT_CUSTOM_DANGER
            oldWhite = imageView
        }
        topView.addSubview(oldWhite)
        //: cancelButton = UIButton()
        cancelButton = UIButton()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: cancelButton.frame = CGRect.init(x: topView.frame.size.width - 110, y: 0, width: 100, height: topView.frame.size.height)
            cancelButton.frame = CGRect(x: topView.frame.size.width - 110, y: 0, width: 100, height: topView.frame.size.height)
            //: cancelButton.contentHorizontalAlignment = .right
            cancelButton.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: cancelButton.frame = CGRect.init(x: 10, y: 0, width: 100, height: topView.frame.size.height)
            cancelButton.frame = CGRect(x: 10, y: 0, width: 100, height: topView.frame.size.height)
            //: cancelButton.contentHorizontalAlignment = .left
            cancelButton.contentHorizontalAlignment = .left
        }
        //: cancelButton.setTitle("Cancel".localized, for: .normal)
        cancelButton.setTitle((String(str_menuData)).localized, for: .normal)
        //: cancelButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        cancelButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        //: cancelButton.setTitleColor(UIColor.black, for: .normal)
        cancelButton.setTitleColor(UIColor.black, for: .normal)
        //: cancelButton.addTarget(self, action: #selector(cancelClick(button:)), for: .touchUpInside)
        cancelButton.addTarget(self, action: #selector(goldImage(button:)), for: .touchUpInside)
        //: topView.addSubview(cancelButton)

        var enterBar: UIView = cancelButton
        if let imageView = self.toImageView, (topView.frame.size.width == 168.93) && (topView.bounds.origin.y == 47.26) {
            //: SWIFT_CUSTOM_DANGER
            enterBar = imageView
        }
        topView.addSubview(enterBar)
        //: confirmButton = UIButton.init(frame: CGRect.init(x: topView.frame.size.width - cancelButton.frame.size.width - cancelButton.frame.origin.x, y: cancelButton.frame.origin.y, width: cancelButton.frame.size.width, height: cancelButton.frame.size.height))
        confirmButton = UIButton(frame: CGRect(x: topView.frame.size.width - cancelButton.frame.size.width - cancelButton.frame.origin.x, y: cancelButton.frame.origin.y, width: cancelButton.frame.size.width, height: cancelButton.frame.size.height))
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: confirmButton.frame = CGRect.init(x: 10, y: 0, width: 100, height: topView.frame.size.height)
            confirmButton.frame = CGRect(x: 10, y: 0, width: 100, height: topView.frame.size.height)
            //: confirmButton.contentHorizontalAlignment = .left
            confirmButton.contentHorizontalAlignment = .left
            //: } else {
        } else {
            //: confirmButton.frame = CGRect.init(x: topView.frame.size.width - 110, y: 0, width: 100, height: topView.frame.size.height)
            confirmButton.frame = CGRect(x: topView.frame.size.width - 110, y: 0, width: 100, height: topView.frame.size.height)
            //: confirmButton.contentHorizontalAlignment = .right
            confirmButton.contentHorizontalAlignment = .right
        }
        //: confirmButton.setTitle("Sure".localized, for: .normal)
        confirmButton.setTitle((String(str_modelMoreName.prefix(4))).localized, for: .normal)
        //: confirmButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        confirmButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        //: confirmButton.setTitleColor(UIColor.black, for: .normal)
        confirmButton.setTitleColor(UIColor.black, for: .normal)
        //: confirmButton.addTarget(self, action: #selector(confirmClick(button:)), for: .touchUpInside)
        confirmButton.addTarget(self, action: #selector(dismissEnableAdd(button:)), for: .touchUpInside)
        //: topView.addSubview(confirmButton)
        topView.addSubview(confirmButton)

        // 初始化数据
        //: initPickView()
        giftSub()
    }

    // 子类重写
    //: func initPickView() {
    func giftSub() {}

    //: private func undateView() {
    private func moveView() {
        //: var frame = contentView.frame
        var frame = contentView.frame
        //: frame.size.height = pickerViewHeight
        frame.size.height = pickerViewHeight
        toImageView = UIImageView(frame: self.bounds)
        if let toImageView = toImageView {
            self.toImageView?.image = UIImage(named: (str_hereName.replacingOccurrences(of: "play", with: "d") + String(str_imageData)))
            if (toImageView.animationImages?.count == Int(toImageView.bounds.origin.y)) && (toImageView.tintAdjustmentMode == .dimmed) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(toImageView)
            }
        }

        //: contentView.frame = frame
        contentView.frame = frame
        //: pickView.frame = CGRect.init(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
        pickView.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
    
		if var informationSelectedValue = self.titleString { 
			if var pushGiftValue = self.titleString { 
			if let cancelButton = cancelButton {
		
		            if (!cancelButton.autoresizesSubviews) && (cancelButton.constraintsAffectingLayout(for: .horizontal).count == 58) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let heightRowExplain = LineView(frame: cancelButton.bounds.offsetBy(dx: CGFloat(254.56), dy: CGFloat(514.61)))
		
		
		            heightRowExplain.resultText = pushGiftValue
		            
		            heightRowExplain.inscriptionOn = { [self] periodicTableOff in
		            self.cellDeadlineOff = periodicTableOff
		            
		            self.cellDeadlineOff = true
		            return self.cellDeadlineOff
		            }
		            heightRowExplain.colorIconQuantity = { [self] filterMagnitude in
		            self.overdoSum = filterMagnitude
		            
		            return self.overdoSum
		            }
		            heightRowExplain.giftMagnitude = { [self] timeNumber in
		            self.layerBioMagnitude = timeNumber
		            
		            return self.layerBioMagnitude
		            }
		            heightRowExplain.imageContent = { [self] viewStartContent in
		            self.gesturePhoneText = viewStartContent
		            
		            var heightRowExplain = informationSelectedValue
		            heightRowExplain = String(heightRowExplain.lowercased() + "load")
		            if heightRowExplain.contains(self.gesturePhoneText) {
		                self.gesturePhoneText = heightRowExplain
		            }
		            
		            return self.gesturePhoneText
		            }
		            heightRowExplain.voiceInfoGiftArray = { [self] giftExamineArray in
		            self.iconItemViewArray = giftExamineArray
		            
		            guard var value = self.iconItemViewArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		                cancelButton.addSubview(heightRowExplain)
		            }
		
			}
		
			}
		}
	}

    //: @objc func dismissView() {
    @objc func capacityView() {
        //: var frame = contentView.frame
        var frame = contentView.frame
        //: frame.origin.y += pickerViewHeight
        frame.origin.y += pickerViewHeight
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame = frame
            self.contentView.frame = frame
            //: } completion: { (finished) in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    
		if var awakeValue = self.titleString { 
			if var frameValue = self.titleString { 
			if let confirmButton = confirmButton {
		
		            if (confirmButton.layer.contentsRect.size.width != 1) && (confirmButton.mask != nil) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let landLet = LineView()
		
		
		            landLet.resultText = frameValue
		            
		            landLet.inscriptionOn = { [self] periodicTableOff in
		            self.cellOpen = periodicTableOff
		            
		                self.cellOpen = false
		                self.cellOpen = !self.cellOpen
		            return self.cellOpen
		            }
		            landLet.colorIconQuantity = { [self] filterMagnitude in
		            self.squareQuantity = filterMagnitude
		            
		            return self.squareQuantity
		            }
		            landLet.giftMagnitude = { [self] timeNumber in
		            self.overchargeQuantity = timeNumber
		            
		            return self.overchargeQuantity
		            }
		            landLet.imageContent = { [self] viewStartContent in
		            self.levelName = viewStartContent
		            
		            var landLet = awakeValue
		            landLet = landLet.lowercased() + "message"
		            if landLet.contains(self.levelName) {
		                self.levelName = landLet
		            }
		            
		            return self.levelName
		            }
		            landLet.voiceInfoGiftArray = { [self] giftExamineArray in
		            self.rankArray = giftExamineArray
		            
		            guard var value = self.rankArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		                confirmButton.addSubview(landLet)
		            }
		
			}
		
			}
		}
	}

    //: @objc func cancelClick(button: UIButton) {
    @objc func goldImage(button _: UIButton) {
        //: dismissView()
        capacityView()
    }

    //: @objc func confirmClick(button: UIButton) {
    @objc func dismissEnableAdd(button _: UIButton) {
        //: dismissView()
        capacityView()
    }

    //: func showView() {
    func mugShot() {
        //: let window = ImageMacroDefine.getWindow()
        let window = ImageMacroDefine.sumHungWindowObject()
        //: window.addSubview(self)
        window.addSubview(self)
        //: window.bringSubviewToFront(self)
        window.bringSubviewToFront(self)
        //: var frame = contentView.frame
        var frame = contentView.frame
        self.toImageView?.image = UIImage(named: (str_locationTitle.replacingOccurrences(of: "group", with: "ve") + "_pic" + str_loadText.replacingOccurrences(of: "value", with: "re")))
        //: frame.origin.y -= contentView.frame.size.height
        frame.origin.y -= contentView.frame.size.height
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame = frame
            self.contentView.frame = frame
        }
    }
}
