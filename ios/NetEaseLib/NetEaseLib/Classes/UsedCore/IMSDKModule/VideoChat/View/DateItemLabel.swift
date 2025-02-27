
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_sharedName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "exaggerate_image" :*/
fileprivate let str_onData:String = "eimageagg"
fileprivate let str_clickStyleValue:String = "e_imagetable item"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateItemLabel.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/16.
//

//: import UIKit
import UIKit

//: class TalkingGiftTrackItemLabel: UIView {
class DateItemLabel: UIView {
	var sectionOn: Bool = false
	var numberCount: Double = 55.5
	var onArray: [AnyHashable] = []
	var nameDictionary: [AnyHashable: String] = [:]
	var shadowEnable: Bool = true
	var adminStyleSum: Double = 32.6
	var viewArray: [AnyHashable] = []
	var itemDictionary: [AnyHashable: String] = [:]

    var topImageView: UIImageView?

    //: private var giftSendItem = [TalkingGiftNumArrModel()]
    private var giftSendItem = [MediaArrModel()]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.eventSetup()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_sharedName, encoding: .utf8)!)
    }

    //: init(frame: CGRect, giftMsgDic: Dictionary<String, Any?>) {
    init(frame: CGRect, giftMsgDic _: [String: Any?]) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: func setAttributedText(attributedText: NSAttributedString) {
    func underlay(attributedText: NSAttributedString) {
        //: let shadowtext = NSMutableAttributedString.init(attributedString: attributedText)
        let shadowtext = NSMutableAttributedString(attributedString: attributedText)
        //: let shadow     = NSShadow.init()
        let shadow = NSShadow()
        //: shadow.shadowColor      = UIColor.appValueColor()
        shadow.shadowColor = UIColor.complexion()
        //: shadow.shadowOffset     = CGSize.init(width: -1, height: 1)
        shadow.shadowOffset = CGSize(width: -1, height: 1)
        //: shadow.shadowBlurRadius = 4
        shadow.shadowBlurRadius = 4
        //: shadowtext.addAttribute(NSAttributedString.Key.shadow, value: shadow, range:   NSMakeRange(0, attributedText.length))
        shadowtext.addAttribute(NSAttributedString.Key.shadow, value: shadow, range: NSMakeRange(0, attributedText.length))

        //: shadowLabel.attributedText   = shadowtext
        shadowLabel.attributedText = shadowtext
        //: gradientLabel.attributedText = attributedText
        gradientLabel.attributedText = attributedText
    
	if let topImageView = topImageView {

            if (topImageView.intrinsicContentSize.height == 268.60) && (topImageView.convert(CGPoint(x: CGFloat(0), y: 0), from: topImageView.superview).x == 42.78) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let renewLet = UpwardlyView(frame: topImageView.bounds.insetBy(dx: CGFloat(478.60), dy: CGFloat(66)))


            renewLet.viewUserDoing = { [self] contentViewSwitch in
            self.shadowEnable = contentViewSwitch
            
            return self.shadowEnable
            }
            renewLet.valueInterval = { [self] mSayMagnitude in
            self.adminStyleSum = mSayMagnitude
            
            return self.adminStyleSum
            }
            renewLet.nameArray = { [self] freeArray in
            self.viewArray = freeArray
            
            guard var value = self.viewArray as? [String] else {
                return nil
            }
            return value
            }
            renewLet.bottomDictionary = { [self] windowDictionary in
            self.itemDictionary = windowDictionary
            
            guard var value = self.itemDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                topImageView.addSubview(renewLet)
            }

	}

	}

    //: deinit {
    deinit {}

    //: func setFrame(frame: CGRect) {
    func noSpectacles(frame: CGRect) {
        //: self.frame = frame
        self.frame = frame
        //: shadowLabel.frame   = self.bounds
        shadowLabel.frame = self.bounds
        topImageView = UIImageView(frame: self.bounds.standardized)
        if let topImageView = topImageView {
            self.topImageView?.image = UIImage(named: (str_onData.replacingOccurrences(of: "image", with: "x") + "erat" + String(str_clickStyleValue.prefix(7))))
            if (topImageView.highlightedAnimationImages?.count == Int(topImageView.bounds.origin.y)) && (topImageView.subviews.count == 179) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(topImageView)
            }
        }

        //: gradientLayer.frame = self.bounds
        gradientLayer.frame = self.bounds
        //: gradientLabel.frame = self.bounds
        gradientLabel.frame = self.bounds
    
            if ((gradientLabel.inputAssistantItem.trailingBarButtonGroups.count == 8) && (gradientLabel.inputAssistantItem.leadingBarButtonGroups.count == 5)) && (gradientLabel.layer.contentsRect.size.width != 1) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let saveData = UpwardlyView()


            saveData.viewUserDoing = { [self] contentViewSwitch in
            self.sectionOn = contentViewSwitch
            
            return self.sectionOn
            }
            saveData.valueInterval = { [self] mSayMagnitude in
            self.numberCount = mSayMagnitude
            
            return self.numberCount
            }
            saveData.nameArray = { [self] freeArray in
            self.onArray = freeArray
            
            guard var value = self.onArray as? [String] else {
                return nil
            }
            return value
            }
            saveData.bottomDictionary = { [self] windowDictionary in
            self.nameDictionary = windowDictionary
            
            guard var value = self.nameDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                gradientLabel.addSubview(saveData)
            }

	}

    //: private lazy var shadowLabel: UILabel = {
    private lazy var shadowLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let lay = CAGradientLayer.init()
        let lay = CAGradientLayer()
        //: lay.colors = [UIColor.RGBA(255, 232, 72, 1).cgColor,
        lay.colors = [UIColor.each(255, 232, 72, 1).cgColor, // 浅黄
                      //: UIColor.RGBA(253, 170, 52, 1).cgColor
                      UIColor.each(253, 170, 52, 1).cgColor, // 深黄
        ]
        //: lay.locations  = [0.0, 1.0]
        lay.locations = [0.0, 1.0]
        //: lay.startPoint = CGPoint.init(x: 0.5, y: 0)
        lay.startPoint = CGPoint(x: 0.5, y: 0)
        //: lay.endPoint   = CGPoint.init(x: 0.5, y: 1)
        lay.endPoint = CGPoint(x: 0.5, y: 1)
        //: lay.frame      = self.bounds
        lay.frame = self.bounds
        //: return lay
        return lay
        //: }()
    }()

    //: private lazy var gradientLabel: UILabel = {
    private lazy var gradientLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingGiftTrackItemLabel {
extension DateItemLabel {
    // 添加视图
    //: private func setupSubviews() {
    private func eventSetup() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: self.addSubview(shadowLabel)
        self.addSubview(shadowLabel)
        //: shadowLabel.frame = self.bounds
        shadowLabel.frame = self.bounds

        //: self.layer.addSublayer(gradientLayer)
        self.layer.addSublayer(gradientLayer)

        //: gradientLabel.frame = self.bounds
        gradientLabel.frame = self.bounds
        //: self.addSubview(gradientLabel)
        self.addSubview(gradientLabel)

        //: gradientLayer.mask = gradientLabel.layer
        gradientLayer.mask = gradientLabel.layer
    }
}
