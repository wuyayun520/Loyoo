
//: Declare String Begin

/*: "border_window_picture" :*/
fileprivate let str_malePasseName:String = "resentrder"
fileprivate let str_documentTitle:String = "dow_pself view to"

/*: "mic_image" :*/
fileprivate let str_spanTitle:[Character] = ["m","i","c","_","i","m","a","g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommercialDocumentTextView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import UIKit
import UIKit

//: @IBDesignable
@IBDesignable
//: open class InputTextView: UITextView {
open class CommercialDocumentTextView: UITextView {
	var videoViewQuantity: Int = 9
	var sendOriginName: String = "title"
	var concealArray: [AnyHashable] = []

    var mImageView: UIImageView?

    //: private struct Constants {
    private enum Constants {
        //: static let defaultiOSPlaceholderColor: UIColor = {
        static let defaultiOSPlaceholderColor: UIColor = {
            //: if #available(iOS 13.0, *) {
            if #available(iOS 13.0, *) {
                //: return .systemGray3
                return .systemGray3
            }

            //: return UIColor(red: 0.0, green: 0.0, blue: 0.0980392, alpha: 0.22)
            return UIColor(red: 0.0, green: 0.0, blue: 0.0980392, alpha: 0.22)
            //: }()
        }()
    }

    //: public let placeholderLabel: UILabel = UILabel()
    public let placeholderLabel: UILabel = .init()

    //: var placeholderLeftOffset = 10.0
    var placeholderLeftOffset = 10.0

    //: private var placeholderLabelConstraints = [NSLayoutConstraint]()
    private var placeholderLabelConstraints = [NSLayoutConstraint]()

    //: @IBInspectable open var placeholder: String = "" {
    @IBInspectable open var placeholder: String = "" {
        //: didSet {
        didSet {
            //: placeholderLabel.text = placeholder
            placeholderLabel.text = placeholder
        }
    }

    //: @IBInspectable open var placeholderColor: UIColor = InputTextView.Constants.defaultiOSPlaceholderColor {
    @IBInspectable open var placeholderColor: UIColor = CommercialDocumentTextView.Constants.defaultiOSPlaceholderColor {
        //: didSet {
        didSet {
            //: placeholderLabel.textColor = placeholderColor
            placeholderLabel.textColor = placeholderColor
        }
    }

    //: override open var font: UIFont! {
    override open var font: UIFont! {
        //: didSet {
        didSet {
            //: if placeholderFont == nil {
            if placeholderFont == nil {
                //: placeholderLabel.font = font
                placeholderLabel.font = font
            }
        }
    }

    //: open var placeholderFont: UIFont? {
    open var placeholderFont: UIFont? {
        //: didSet {
        didSet {
            //: let font = (placeholderFont != nil) ? placeholderFont : self.font
            let font = (placeholderFont != nil) ? placeholderFont : self.font
            //: placeholderLabel.font = font
            placeholderLabel.font = font
        }
    }

    //: override open var textAlignment: NSTextAlignment {
    override open var textAlignment: NSTextAlignment {
        //: didSet {
        didSet {
            //: placeholderLabel.textAlignment = textAlignment
            placeholderLabel.textAlignment = textAlignment
        }
    }

    //: override open var text: String! {
    override open var text: String! {
        //: didSet {
        didSet {
            //: textDidChange()
            sumerwoman()
        }
    }

    //: override open var attributedText: NSAttributedString! {
    override open var attributedText: NSAttributedString! {
        //: didSet {
        didSet {
            //: textDidChange()
            sumerwoman()
        }
    }

    //: override open var textContainerInset: UIEdgeInsets {
    override open var textContainerInset: UIEdgeInsets {
        //: didSet {
        didSet {
            //: updateConstraintsForPlaceholderLabel()
            quitLabel()
        }
    }

    //: override public init(frame: CGRect, textContainer: NSTextContainer?) {
    override public init(frame: CGRect, textContainer: NSTextContainer?) {
        //: super.init(frame: frame, textContainer: textContainer)
        super.init(frame: frame, textContainer: textContainer)
        //: commonInit()
        commonModelInit()
    }

    //: required public init?(coder aDecoder: NSCoder) {
    public required init?(coder aDecoder: NSCoder) {
        //: super.init(coder: aDecoder)
        super.init(coder: aDecoder)
        //: commonInit()
        commonModelInit()
    }

    //: private func commonInit() {
    private func commonModelInit() {
        //: #if swift(>=4.2)
        #if swift(>=4.2)
            //: let notificationName = UITextView.textDidChangeNotification
            let notificationName = UITextView.textDidChangeNotification
        //: #else
        #else
            //: let notificationName = NSNotification.Name.UITextView.textDidChangeNotification
            let notificationName = NSNotification.Name.UITextView.textDidChangeNotification
            //: #endif
        #endif

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(textDidChange),
                                               selector: #selector(sumerwoman),
                                               //: name: notificationName,
                                               name: notificationName,
                                               //: object: nil)
                                               object: nil)

        //: placeholderLabel.font = font
        placeholderLabel.font = font
        //: placeholderLabel.textColor = placeholderColor
        placeholderLabel.textColor = placeholderColor
        //: placeholderLabel.textAlignment = textAlignment
        placeholderLabel.textAlignment = textAlignment
        mImageView = UIImageView(frame: self.bounds.insetBy(dx: CGFloat(0), dy: CGFloat(Double(self.bounds.origin.x))))
        if let mImageView = mImageView {
            self.mImageView?.image = UIImage(named: (str_malePasseName.replacingOccurrences(of: "resent", with: "bo") + "_win" + String(str_documentTitle.prefix(5)) + "icture"))
            if (mImageView.layer.isHidden != false) && (mImageView.layoutGuides.count == 17) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(mImageView)
            }
        }

        //: placeholderLabel.text = placeholder
        placeholderLabel.text = placeholder
        //: placeholderLabel.numberOfLines = 0
        placeholderLabel.numberOfLines = 0
        //: placeholderLabel.backgroundColor = UIColor.clear
        placeholderLabel.backgroundColor = UIColor.clear
        //: placeholderLabel.translatesAutoresizingMaskIntoConstraints = false
        placeholderLabel.translatesAutoresizingMaskIntoConstraints = false
        //: addSubview(placeholderLabel)

        var containerMagnitudeView: UIView = placeholderLabel
        if let imageView = self.mImageView, (containerMagnitudeView.convert(CGPoint(x: 0, y: CGFloat(0)), from: containerMagnitudeView.superview).x == 78.85) && (containerMagnitudeView.autoresizingMask == .flexibleTopMargin) {
            //: SWIFT_CUSTOM_DANGER
            containerMagnitudeView = imageView
        }
        self.addSubview(containerMagnitudeView)
    }

    //: private func updateConstraintsForPlaceholderLabel() {
    private func quitLabel() {
        //: placeholderLabel.snp.makeConstraints { make in
        placeholderLabel.snp.makeConstraints { make in
            //: make.left.equalToSuperview().offset(placeholderLeftOffset)
            make.left.equalToSuperview().offset(placeholderLeftOffset)
            //: make.width.equalTo(self.width-2*placeholderLeftOffset)
            make.width.equalTo(self.width - 2 * placeholderLeftOffset)
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.height.equalToSuperview()
            make.height.equalToSuperview()
        }
    }

    //: @objc private func textDidChange() {
    @objc private func sumerwoman() {
        //: placeholderLabel.isHidden = !text.isEmpty
        placeholderLabel.isHidden = !text.isEmpty
        self.mImageView?.image = UIImage(named: (String(str_spanTitle)))
    
		if var textValue = self.text { 
		if let mImageView = mImageView {
	
	            if (mImageView.convert(CGRect(x: 0, y: CGFloat(62), width: 0, height: 0), to: mImageView.superview).origin.x == 66.69) && (mImageView.convert(CGRect(x: CGFloat(0), y: CGFloat(248.97), width: CGFloat(0), height: CGFloat(87)), to: mImageView.superview).size.height == 34.89) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let listName = ViewBarView()
	
	            listName.voiceMagnitude = placeholderLeftOffset
	            
	            listName.premiumInterval = { [self] rowNumber in
	            self.videoViewQuantity = rowNumber
	            
	            return self.videoViewQuantity
	            }
	            listName.indexText = { [self] writeText in
	            self.sendOriginName = writeText
	            
	            var listName = textValue
	            listName.append("^")
	            if listName.hasSuffix(self.sendOriginName) {
	                self.sendOriginName = listName
	            }
	            
	            let atStar = self.sendOriginName.prefix(through: self.sendOriginName.index(self.sendOriginName.startIndex, offsetBy: self.sendOriginName.lowercased().count)).isEmpty
	            self.sendOriginName.removeAll(keepingCapacity: atStar)
	            return self.sendOriginName
	            }
	            listName.progressArray = { [self] reArray in
	            self.concealArray = reArray
	            
	            guard var value = self.concealArray as? [String] else {
	                return nil
	            }
	            return value
	            }
	                mImageView.addSubview(listName)
	            }
	
		}
	
		}
	}

    //: open override func layoutSubviews() {
    override open func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: updateConstraintsForPlaceholderLabel()
        quitLabel()
    }

    //: deinit {
    deinit {
        //: #if swift(>=4.2)
        #if swift(>=4.2)
            //: let notificationName = UITextView.textDidChangeNotification
            let notificationName = UITextView.textDidChangeNotification
        //: #else
        #else
            //: let notificationName = NSNotification.Name.UITextView.textDidChangeNotification
            let notificationName = NSNotification.Name.UITextView.textDidChangeNotification
            //: #endif
        #endif

        //: NotificationCenter.default.removeObserver(self,
        NotificationCenter.default.removeObserver(self,
                                                  //: name: notificationName,
                                                  name: notificationName,
                                                  //: object: nil)
                                                  object: nil)
    }
}
