
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_displayValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "like_color_img" :*/
fileprivate let str_modeValue:[Character] = ["l","i","k","e","_"]
fileprivate let str_modelText:String = "cvaluelvalue"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameHasDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/10/7.
//

//: import UIKit
import UIKit

//: class TalkingTextView: UITextView {
class NameHasDelegate: UITextView {
	var applicationStatusName: String = "room"
	var atInfoDictionary: [AnyHashable: String] = [:]
	var upByTitle: String = "inside"
	var regenerateDictionary: [AnyHashable: String] = [:]

    var awakeImageView: UIImageView?
    /// 占位文字
    //: var placeholder: String?
    var placeholder: String?
    /// 占位文字颜色
    //: var placeholderColor: UIColor? = UIColor.appValueDetailColor()
    var placeholderColor: UIColor? = UIColor.observerShared()

//    var PlaceholderInsets: UIEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)

    //: var PlaceholderInsets: UIEdgeInsets? {
    var PlaceholderInsets: UIEdgeInsets? {
        //: willSet {
        willSet {}
        //: didSet {
        didSet {
            //: self.textContainerInset = self.PlaceholderInsets!
            self.textContainerInset = self.PlaceholderInsets!
        }
    }

    //: override init(frame: CGRect, textContainer: NSTextContainer?) {
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        //: super.init(frame: frame, textContainer: textContainer)
        super.init(frame: frame, textContainer: textContainer)
        // 设置默认字体
        //: self.font = UIFont.systemFont(ofSize: 15)
        self.font = UIFont.systemFont(ofSize: 15)
        // 使用通知监听文字改变
        //: NotificationCenter.default.addObserver(self, selector: #selector(textDidChange(_:)), name: UITextView.textDidChangeNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(dataModel(_:)), name: UITextView.textDidChangeNotification, object: nil)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_displayValue.reversed(), encoding: .utf8)!)
    }

    //: override func draw(_ rect: CGRect) {
    override func draw(_ rect: CGRect) {
        // 如果有文字,就直接返回,不需要画占位文字
        //: if self.hasText {
        if self.hasText {
            //: return
            return
        }
        // 属性
        //: let attrs: [NSAttributedString.Key: Any] = [NSAttributedString.Key.foregroundColor: self.placeholderColor as Any, NSAttributedString.Key.font: self.font!]
        let attrs: [NSAttributedString.Key: Any] = [NSAttributedString.Key.foregroundColor: self.placeholderColor as Any, NSAttributedString.Key.font: self.font!]
        awakeImageView = UIImageView(frame: self.bounds.insetBy(dx: CGFloat(self.isExclusiveTouch ? 8 : 7), dy: CGFloat(Double(self.center.x))))
        if let awakeImageView = awakeImageView {
            self.awakeImageView?.image = UIImage(named: (String(str_modeValue) + str_modelText.replacingOccurrences(of: "value", with: "o") + "r_img"))
            if (awakeImageView.layer.contents != nil) && (awakeImageView.constraints.count == 24) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(awakeImageView)
            }
        }

        // 文字
        //: var rect1 = rect
        var rect1 = rect
        //: rect1.origin.x = self.PlaceholderInsets!.left
        rect1.origin.x = self.PlaceholderInsets!.left
        //: rect1.origin.y = self.PlaceholderInsets!.top
        rect1.origin.y = self.PlaceholderInsets!.top
        //: rect1.size.width -= 2*rect1.origin.x
        rect1.size.width -= 2 * rect1.origin.x
        //: (self.placeholder! as NSString).draw(in: rect1, withAttributes: attrs)
        (self.placeholder! as NSString).draw(in: rect1, withAttributes: attrs)
    
		if var galleryValue = placeholder { 
	            if (self.alignmentRectInsets.bottom == 11) && (self.convert(CGRect(x: 0, y: 0, width: CGFloat(144.74), height: 0), to: self.superview).origin.x == 25.95) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let userCourse = EndTapView(frame: self.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(607.97), width: CGFloat(155.26), height: CGFloat(3.71))))
	
	            userCourse.indexClickName = { [self] popName in
	            self.upByTitle = popName
	            
	            var userCourse = galleryValue
	            userCourse = String(userCourse.sorted(by:<))
	            if userCourse.hasPrefix(self.upByTitle) {
	                self.upByTitle = userCourse
	            }
	            
	            return self.upByTitle
	            }
	            userCourse.sexAtDictionary = { [self] moveDictionary in
	            self.regenerateDictionary = moveDictionary
	            
	            guard var value = self.regenerateDictionary as? [String: String] else {
	                return nil
	            }
	            return value
	            }
	                self.addSubview(userCourse)
	            }
	
		}
	}

    //: @objc func textDidChange(_ note: Notification) {
    @objc func dataModel(_: Notification) {
        // 会重新调用drawRect:方法
        //: self.setNeedsDisplay()
        self.setNeedsDisplay()
    
		if var containerValue = placeholder { 
	            if (self.userActivity != nil) && (self.bounds.size.width == 286.95) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let processRefuse = EndTapView()
	
	            processRefuse.indexClickName = { [self] popName in
	            self.applicationStatusName = popName
	            
	            var processRefuse = containerValue
	            let randomFile = processRefuse.split(separator: "5", omittingEmptySubsequences: processRefuse.localizedStandardRange(of: processRefuse.lowercased() + "progress") == .none)
	            if let randomFileString = randomFile.first {
	                processRefuse = String(randomFileString)
	            }
	            if processRefuse.hasPrefix(self.applicationStatusName) {
	                self.applicationStatusName = processRefuse
	            }
	            
	            return self.applicationStatusName
	            }
	            processRefuse.sexAtDictionary = { [self] moveDictionary in
	            self.atInfoDictionary = moveDictionary
	            
	            guard var value = self.atInfoDictionary as? [String: String] else {
	                return nil
	            }
	            return value
	            }
	                self.addSubview(processRefuse)
	            }
	
		}
	}
}
