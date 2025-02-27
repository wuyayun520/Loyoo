
//: Declare String Begin

/*: "open_picture" :*/
fileprivate let str_segmentName:String = "room"
fileprivate let str_sessionData:String = "pen_item text"

/*: "session_pic" :*/
fileprivate let str_episodeValue:[Character] = ["s","e","s","s","i","o","n","_","p","i","c"]

/*: "mount_img" :*/
fileprivate let str_themeData:[Character] = ["m","o","u","n","t","_","i","m","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  badgeLab.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

//: class BadgeLab: UILabel {
class CustomTextView: UILabel {
	var threeDoing: Bool = true
	var topName: String = "table"
	var withDoing: Bool = false
	var viewItemTitle: String = "view"

    var shareImageView: UIImageView?

    //: var defaultInsets = CGSize(width: 4, height: 0)
    var defaultInsets = CGSize(width: 4, height: 0)
    //: var actualInsets = CGSize()
    var actualInsets = CGSize()

    //: convenience init() {
    convenience init() {
        //: self.init(frame: CGRect())
        self.init(frame: CGRect())
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setup()
        appSend()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder aDecoder: NSCoder) {
        //: super.init(coder: aDecoder)
        super.init(coder: aDecoder)

        //: setup()
        appSend()
    }

    //: private func setup() {
    private func appSend() {
        //: translatesAutoresizingMaskIntoConstraints = false
        translatesAutoresizingMaskIntoConstraints = false
        //: layer.backgroundColor = UIColor.msgTipsColor().cgColor
        layer.backgroundColor = UIColor.atAfterPosition().cgColor
        //: textColor = .white
        textColor = .white
        //: font = UIFont.pingfangFont(type: .Medium, fontSize: 11)
        font = UIFont.thoughtImage(type: .Medium, fontSize: 11)
        shareImageView = UIImageView(frame: self.frame.integral)
        if let shareImageView = shareImageView {
            self.shareImageView?.image = UIImage(named: (str_segmentName.replacingOccurrences(of: "room", with: "o") + String(str_sessionData.prefix(4)) + "picture"))
            if (shareImageView.convert(shareImageView.bounds, to: shareImageView.superview).origin.x == 84.72) && (shareImageView.layer.zPosition == 79.22) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(shareImageView)
            }
        }

        //: layer.cornerRadius = 8
        layer.cornerRadius = 8
        //: layer.borderWidth = 1
        layer.borderWidth = 1
        //: clipsToBounds = true
        clipsToBounds = true
        //: layer.borderColor = UIColor.white.cgColor
        layer.borderColor = UIColor.white.cgColor
        //: self.textAlignment = .center
        self.textAlignment = .center
    }

    // Add custom insets
    // --------------------
    //: override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
    override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        //: let rect = super.textRect(forBounds: bounds, limitedToNumberOfLines: numberOfLines)
        let rect = super.textRect(forBounds: bounds, limitedToNumberOfLines: numberOfLines)

        //: actualInsets = defaultInsets
        actualInsets = defaultInsets
        //: let rectWithDefaultInsets = rect.insetBy(dx: -actualInsets.width, dy: -actualInsets.height)
        let rectWithDefaultInsets = rect.insetBy(dx: -actualInsets.width, dy: -actualInsets.height)

        //: return rect.insetBy(dx: -4, dy: -4)
        
            if (self.isHidden) && (self.layer.shadowRadius == 0.27) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let tableMode = LockColorView()

            
            tableMode.giftConversationOff = { [self] layerInviteOpen in
            self.withDoing = layerInviteOpen
            
                self.withDoing = false
                self.withDoing = !self.withDoing
            return self.withDoing
            }
            tableMode.extraContent = { [self] colorContent in
            self.viewItemTitle = colorContent
            
            return self.viewItemTitle
            }
                self.addSubview(tableMode)
            }

		return rect.insetBy(dx: -4, dy: -4)
    }

    //: override func drawText(in rect: CGRect) {
    override func drawText(in rect: CGRect) {
        //: layer.cornerRadius = 8
        layer.cornerRadius = 8

        //: let insets = UIEdgeInsets(
        let insets = UIEdgeInsets(
            //: top: actualInsets.height,
            top: actualInsets.height,
            //: left: actualInsets.width,
            left: actualInsets.width,
            //: bottom: actualInsets.height,
            bottom: actualInsets.height,
            //: right: actualInsets.width)
            right: actualInsets.width
        )

        //: let rectWithoutInsets = rect.inset(by: insets)
        let rectWithoutInsets = rect.inset(by: insets)

        //: super.drawText(in: rectWithoutInsets)
        super.drawText(in: rectWithoutInsets)
    
            if (self.layoutMargins.left == 18.98) && (self.tintColor != nil && self.tintColor.cgColor == UIColor.systemPurple.cgColor) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let rowChoiceLet = LockColorView(frame: self.bounds)

            
            rowChoiceLet.giftConversationOff = { [self] layerInviteOpen in
            self.threeDoing = layerInviteOpen
            
                self.threeDoing = true
                self.threeDoing = !self.threeDoing
            return self.threeDoing
            }
            rowChoiceLet.extraContent = { [self] colorContent in
            self.topName = colorContent
            
            return self.topName
            }
                self.addSubview(rowChoiceLet)
            }

	}
}

//: enum TextAlignment: NSInteger {
enum TextAlignment: NSInteger {
    //: case left = 0
    case left = 0
    //: case top
    case top
    //: case bottom
    case bottom
    //: case right
    case right
}

//: class TextAlignLb: UILabel {
class ImageLabel: UILabel {
	var textOn: Bool = false
	var quoteQuantity: Int = 32
	var viewArray: [AnyHashable] = []
	var iconDictionary: [AnyHashable: String] = [:]

    var exampleImageView: UIImageView?

    //: var verticalAlignment = TextAlignment.left
    var verticalAlignment = TextAlignment.left

    //: func setIsTop(isTop:Bool) {
    func radiogram(isTop: Bool) {
        //: if isTop {
        if isTop {
            //: verticalAlignment = .top
            verticalAlignment = .top
        }
    }

    //: convenience init() {
    convenience init() {
        //: self.init(frame: CGRect())
        self.init(frame: CGRect())
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder aDecoder: NSCoder) {
        //: super.init(coder: aDecoder)
        super.init(coder: aDecoder)
    }

    //: override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
    override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        //: var rect = super.textRect(forBounds: bounds, limitedToNumberOfLines: numberOfLines)
        var rect = super.textRect(forBounds: bounds, limitedToNumberOfLines: numberOfLines)
        self.exampleImageView?.image = UIImage(named: (String(str_episodeValue)))

        //: switch verticalAlignment {
        switch verticalAlignment {
        //: case .top:
        case .top:
            //: rect.origin.y = bounds.origin.y
            rect.origin.y = bounds.origin.y
            //: break

        //: default:
        default:
            //: break
            break
        }
        //: return rect
        return rect
    }

    //: override func drawText(in rect: CGRect) {
    override func drawText(in rect: CGRect) {
        //: let rectWithoutInsets = self.textRect(forBounds: rect, limitedToNumberOfLines: self.numberOfLines)
        let rectWithoutInsets = self.textRect(forBounds: rect, limitedToNumberOfLines: self.numberOfLines)
        exampleImageView = UIImageView(frame: self.bounds.offsetBy(dx: CGFloat(Double(self.frame.size.width)), dy: CGFloat(0)))
        if let exampleImageView = exampleImageView {
            self.exampleImageView?.image = UIImage(named: (String(str_themeData)))
            if (exampleImageView.textInputMode != nil) && (exampleImageView.forFirstBaselineLayout.center.x == 73.58) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(exampleImageView)
            }
        }

        //: super.drawText(in: rectWithoutInsets)
        super.drawText(in: rectWithoutInsets)
    
	if let exampleImageView = exampleImageView {

            if (exampleImageView.layer.position.y == 15.19) && (exampleImageView.layer.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let menuLet = GiftShotView(frame: exampleImageView.frame.insetBy(dx: CGFloat(62), dy: CGFloat(623.02)))

            menuLet.unsleepingSwitch = { [self] showClose in
            self.textOn = showClose
            
                self.textOn = true
                self.textOn = !self.textOn
            return self.textOn
            }
            menuLet.awakeMagnitude = { [self] momentMoveVoiceSum in
            self.quoteQuantity = momentMoveVoiceSum
            
            return self.quoteQuantity
            }
            menuLet.snapArray = { [self] lastArray in
            self.viewArray = lastArray
            
            guard var value = self.viewArray as? [String] else {
                return nil
            }
            return value
            }
            menuLet.indexDictionary = { [self] managerBagDictionary in
            self.iconDictionary = managerBagDictionary
            
            guard var value = self.iconDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                exampleImageView.addSubview(menuLet)
            }

	}

	}
}
