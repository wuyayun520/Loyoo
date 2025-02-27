
//: Declare String Begin

/*: "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$" :*/
fileprivate let str_sizeToText:[UInt8] = [0x5e,0x28,0x5b,0x61,0x2d,0x7a,0x41,0x2d,0x5a,0x30,0x2d,0x39,0x5f,0x5c,0x2e,0x2d,0x5d,0x2b,0x29,0x40,0x28,0x5b,0x5c,0x64,0x61,0x2d,0x7a,0x5c,0x2e,0x2d,0x5d,0x2b,0x29,0x5c,0x2e,0x28,0x5b,0x61,0x2d,0x7a,0x5c,0x2e,0x5d,0x7b,0x32,0x2c,0x36,0x7d,0x29,0x24]

/*: "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$" :*/
fileprivate let str_finishVoiceTitle:[UInt8] = [0x5e,0x28,0x28,0x31,0x5b,0x33,0x34,0x35,0x37,0x38,0x5d,0x5b,0x30,0x2d,0x39,0x5d,0x7b,0x39,0x7d,0x29,0x7c,0x28,0x28,0x30,0x5c,0x64,0x7b,0x32,0x7d,0x2d,0x5c,0x64,0x7b,0x38,0x7d,0x29,0x7c,0x28,0x30,0x5c,0x64,0x7b,0x33,0x7d,0x2d,0x5c,0x64,0x7b,0x37,0x2c,0x38,0x7d,0x29,0x7c,0x28,0x30,0x5c,0x64,0x7b,0x31,0x30,0x2c,0x31,0x31,0x7d,0x29,0x29,0x24]

/*: "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)" :*/
fileprivate let str_statusContent:[UInt8] = [0x5e,0x28,0x5b,0x5c,0x75,0x34,0x45,0x30,0x30,0x2d,0x5c,0x75,0x39,0x46,0x41,0x35,0x41,0x2d,0x5a,0x61,0x2d,0x7a,0x30,0x2d,0x39,0x5f,0x5d,0x7b,0x32,0x2c,0x31,0x30,0x7d,0x24,0x29]

/*: "^[0-8]\\d{5}(?!\\d)$" :*/
fileprivate let str_viewValue:String = "^[0-8"
fileprivate let str_tabRoomValue:[Character] = ["]","\\","d","{","5","}","(","?","!","\\","d",")","$"]

/*: "^[a-zA-Z0-9]{6,20}+$" :*/
fileprivate let str_requestData:String = "^[a-zguard target"
fileprivate let str_shareShowName:String = "extra]{6"
fileprivate let str_launchImageNeedName:[Character] = [",","2","0","}","+","$"]

/*: "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$" :*/
fileprivate let str_withData:[UInt8] = [0x5e,0x28,0x68,0x74,0x74,0x70,0x73,0x3f,0x3a,0x5c,0x2f,0x5c,0x2f,0x29,0x3f,0x28,0x5b,0x5c,0x64,0x61,0x2d,0x7a,0x5c,0x2e,0x2d,0x5d,0x2b,0x29,0x5c,0x2e,0x28,0x5b,0x61,0x2d,0x7a,0x5c,0x2e,0x5d,0x7b,0x32,0x2c,0x36,0x7d,0x29,0x28,0x5b,0x5c,0x2f,0x5c,0x77,0x20,0x5c,0x2e,0x2d,0x5d,0x2a,0x29,0x2a,0x5c,0x2f,0x3f,0x24]

/*: "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$" :*/
fileprivate let str_colorData:[UInt8] = [0x3b,0x4d,0x5a,0x5f,0x4d,0x5a,0x5f,0x57,0x50,0x3e,0x55,0x48,0x50,0x38,0x19,0x57,0x3e,0x55,0x48,0x51,0x38,0x3e,0x55,0x48,0x5c,0x38,0x19,0x3e,0x55,0x54,0x38,0x5a,0x3e,0x55,0x48,0x5c,0x38,0x3e,0x55,0x48,0x5c,0x38,0x5a,0x4c,0x39,0x4b,0x4c,0x45,0x1e,0x56,0x18,0x4d,0x5a,0x5f,0x57,0x50,0x3e,0x55,0x48,0x50,0x38,0x19,0x57,0x3e,0x55,0x48,0x51,0x38,0x3e,0x55,0x48,0x5c,0x38,0x19,0x3e,0x55,0x54,0x38,0x5a,0x3e,0x55,0x48,0x5c,0x38,0x3e,0x55,0x48,0x5c,0x38,0x5a,0x4c,0x41]

/*: "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)" :*/
fileprivate let str_userMeValue:[UInt8] = [0x7f,0x9,0xc,0x67,0x7a,0x6e,0xa,0x2c,0x66,0x62,0x2a,0x73,0x7e,0x2b,0x7f,0xc,0x67,0x7a,0x6e,0xa,0x2c,0x66,0x60,0x2a,0x7f,0xc,0x67,0x7a,0x6e,0xa,0x2b,0xc,0x2f,0xf,0xa,0x7e,0x73,0x7e]

/*: "SELF MATCHES %@" :*/
fileprivate let str_matchTitle:String = "SELF sex kit fatal"
fileprivate let str_picText:String = "HES %@key model make request to"

/*: "Feedback" :*/
fileprivate let str_mainName:String = "view block styleFeedback"

/*: "view_image" :*/
fileprivate let str_infoName:[Character] = ["v","i","e","w","_","i","m","a"]
fileprivate let str_roomRunDataContent:String = "gcell"

/*: "Enter your feedback…" :*/
fileprivate let str_turnLabValue:[Character] = ["E","n","t","e","r"," ","y","o","u","r"," ","f","e","e","d","b"]
fileprivate let str_imageName:String = "self extension across content cellack…"

/*: "#999999" :*/
fileprivate let str_shouldTitle:[Character] = ["#","9"]
fileprivate let str_pickValue:[Character] = ["9","9","9","9","9"]

/*: "0/ :*/
fileprivate let str_requestName:[Character] = ["0","/"]

/*: "Your email (Required) " :*/
fileprivate let str_stateData:[Character] = ["Y","o","u","r"," ","e","m","a","i","l"," ","(","R","e"]
fileprivate let str_hiddenValue:[Character] = ["q","u","i"]
fileprivate let str_dataTitle:String = "path manager label point namered) "

/*: "icon_me_feelback_star" :*/
fileprivate let str_pineData:String = "var coin color upicon_"
fileprivate let str_modeTitle:String = "me_finteraction scale to let"
fileprivate let str_bringValue:String = "ck_starsection import"

/*: "#CCCCCC" :*/
fileprivate let str_exceptValue:String = "size gift#CCCCC"
fileprivate let str_afterText:String = "c"

/*: "Send" :*/
fileprivate let str_centerValue:[Character] = ["S","e","n","d"]

/*: "#D0D0D0" :*/
fileprivate let str_titleMaleValue:String = "block true image conversation list#D0D0D0"

/*: "Please fill in the content" :*/
fileprivate let str_toValue:[Character] = ["P","l","e","a","s","e"," ","f","i","l","l"," ","i","n"," ","t","h"]
fileprivate let str_photoValue:[Character] = ["e"," ","c","o","n","t","e","n","t"]

/*: "Please enter the correct email address" :*/
fileprivate let str_imageValue:[UInt8] = [0x50,0x6c,0x65,0x61,0x73,0x65,0x20,0x65,0x6e,0x74,0x65,0x72,0x20,0x74,0x68,0x65,0x20,0x63,0x6f,0x72,0x72,0x65,0x63,0x74,0x20,0x65,0x6d,0x61,0x69,0x6c,0x20,0x61,0x64,0x64,0x72,0x65,0x73,0x73]

/*: "content" :*/
fileprivate let str_listData:[Character] = ["c","o","n","t","e","n"]
fileprivate let str_infoStyleName:[Character] = ["t"]

/*: "contactWay" :*/
fileprivate let str_showValue:String = "matchont"

/*: "platform" :*/
fileprivate let str_episodeLimitValue:String = "plasizeform"

/*: "iphone" :*/
fileprivate let str_actionName:[Character] = ["i","p","h","o","n","e"]

/*: "version" :*/
fileprivate let str_bottomData:String = "picture"
fileprivate let str_gestureName:String = "removesion"

/*: "type" :*/
fileprivate let str_cameraSpecialValue:String = "tymakee"

/*: "Operation succeeded" :*/
fileprivate let str_addModeName:[Character] = ["O","p","e","r","a","t","i","o","n"," ","s"]
fileprivate let str_collectionContent:[Character] = ["u","c","c"]
fileprivate let str_indexData:String = "buttonded"

/*: / :*/
fileprivate let str_stopValue:[Character] = ["/"]

/*: "\n" :*/
fileprivate let str_groupData:[Character] = ["\n"]

/*: "Problem statements" :*/
fileprivate let str_subToData:String = "Problhidden black with layer"
fileprivate let str_emptyBagTitle:String = "tappent"
fileprivate let str_pageTitle:[Character] = ["s"]

/*: "Feature advice" :*/
fileprivate let str_errValue:[Character] = ["F","e","a","t","u","r","e"," ","a","d","v","i"]
fileprivate let str_unknownTitle:[Character] = ["c","e"]

/*: "Operation questions" :*/
fileprivate let str_matchEffectData:[Character] = ["O","p","e","r","a","t","i","o","n"," "]
fileprivate let str_femaleName:String = "queimageions"

/*: "Others" :*/
fileprivate let str_priceTitle:[Character] = ["O","t","h","e","r","s"]

/*: "#EFEDFF" :*/
fileprivate let str_modeData:String = "show a win visible hidden#E"
fileprivate let str_titleValue:[Character] = ["F","E","D","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FeedbackTalkingViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/15.
//

//: import UIKit
import UIKit

//: enum Validate {
enum ConstraintToValidate {
    //: case email(_: String)
    case email(_: String) //  邮箱
    //: case phoneNumber(_: String)
    case phoneNumber(_: String) //  手机号
    //: case userName(_: String)
    case userName(_: String) //  用户名
    //: case password(_: String)
    case password(_: String) //  密码
    //: case nickName(_: String)
    case nickName(_: String) //  昵称
    //: case postalCode(_: String)
    case postalCode(_: String) //  邮编
    //: case URL(_: String)
    case URL(_: String) //  URL
    //: case IP(_: String)
    case IP(_: String) //  IP
    //: case isChinese(_: String)
    case isChinese(_: String) //  是否全是中文字符
    //: case idNumber(_: String)
    case idNumber(_: String) //  身份证号

    //: var isRight: Bool {
    var isRight: Bool {
        //: var predicateStr: String!
        var predicateStr: String!
        //: var currentObject: String!
        var currentObject: String!
        //: switch self {
        switch self {
        //: case let .email(str):
        case let .email(str):
            //: predicateStr = "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
            predicateStr = String(bytes: str_sizeToText, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .phoneNumber(str):
        case let .phoneNumber(str):
            //: predicateStr = "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$"
            predicateStr = String(bytes: str_finishVoiceTitle, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .userName(str):
        case let .userName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: str_statusContent, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .postalCode(str):
        case let .postalCode(str):
            //: predicateStr = "^[0-8]\\d{5}(?!\\d)$"
            predicateStr = (str_viewValue.capitalized + String(str_tabRoomValue))
            //: currentObject = str
            currentObject = str
        //: case let .password(str):
        case let .password(str):
            //: predicateStr = "^[a-zA-Z0-9]{6,20}+$"
            predicateStr = (String(str_requestData.prefix(5)) + "A-Z0-" + str_shareShowName.replacingOccurrences(of: "extra", with: "9") + String(str_launchImageNeedName))
            //: currentObject = str
            currentObject = str
        //: case let .nickName(str):
        case let .nickName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: str_statusContent, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .URL(str):
        case let .URL(str):
            //: predicateStr = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
            predicateStr = String(bytes: str_withData, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .IP(str):
        case let .IP(str):
            //: predicateStr = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
            predicateStr = String(bytes: str_colorData.map{$0^101}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let . isChinese(str):
        case let .isChinese(str):
            //: predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            //: currentObject = str
            currentObject = str
        //: case let . idNumber(str):
        case let .idNumber(str):
            //: predicateStr = "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)"
            predicateStr = String(bytes: str_userMeValue.map{$0^87}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        }
        //: let predicate =  NSPredicate(format: "SELF MATCHES %@", predicateStr)
        let predicate = NSPredicate(format: (String(str_matchTitle.prefix(5)) + "MATC" + String(str_picText.prefix(6))), predicateStr)
        //: return predicate.evaluate(with: currentObject)
        return predicate.evaluate(with: currentObject)
    }
}

//: class TalkingFeedbackVC: TalkingBaseViewController {
class FeedbackTalkingViewController: PropertyViewController {
	var constraintOff: Bool = true
	var giftCount: Int = 62

    var labelBirthImageView: UIImageView?
    //: let limitCount = 300
    let limitCount = 300
    //: let EmialCount = 50
    let EmialCount = 50
    //: var seleteBtn: UIButton?
    var seleteBtn: UIButton?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.title = "Feedback".localized
        self.title = (String(str_mainName.suffix(8))).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: designView()
        switchline()
        //: addTapGestureRecognizer()
        moveRecognizer()
        //: addKeyboardNotification()
        fromNotification()

        labelBirthImageView = UIImageView(frame: self.view.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(Int(self.view.autoresizingMask.rawValue)), width: CGFloat(0), height: CGFloat(0))))
        if let labelBirthImageView = labelBirthImageView {
            self.labelBirthImageView?.image = UIImage(named: (String(str_infoName) + str_roomRunDataContent.replacingOccurrences(of: "cell", with: "e")))
            if (labelBirthImageView.animationRepeatCount == (labelBirthImageView.isMultipleTouchEnabled ? 1 : 1)) && (labelBirthImageView.highlightedAnimationImages?.count == Int(labelBirthImageView.contentScaleFactor)) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(labelBirthImageView)
            }
        }
    
		if var moduleValue = self.textView.placeholder { 
	            if (textView.isExclusiveTouch) && (textView.backgroundColor != nil && textView.backgroundColor!.cgColor == UIColor.cyan.cgColor) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let mentalImage = PackageView()
	            mentalImage.policyJoinClose = self.hideNavi
	
	            mentalImage.formatText = moduleValue
	            
	            mentalImage.tableOpen = { [self] headOpen in
	            self.constraintOff = headOpen
	            
	            var mentalImage = self.hideNavi
	                mentalImage = true
	                mentalImage = !mentalImage
	            if mentalImage != self.constraintOff {
	                self.constraintOff = mentalImage
	            }
	            
	            return self.constraintOff
	            }
	            mentalImage.needQuantity = { [self] enableLineQuantity in
	            self.giftCount = enableLineQuantity
	            
	            var mentalImage = EmialCount
	            mentalImage &>>= 1
	            if mentalImage > self.giftCount {
	                self.giftCount = mentalImage
	            }
	            
	            return self.giftCount
	            }
	                textView.addSubview(mentalImage)
	            }
	
		}
	}

    // MARK: - Lazy load

    //: lazy var backView: UIScrollView = {
    lazy var backView: UIScrollView = {
        //: let view = UIScrollView.init()
        let view = UIScrollView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.showsHorizontalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        //: view.showsVerticalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        //: return view
        return view
        //: }()
    }()

    //: lazy var contView: UIView = {
    lazy var contView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var inputTView: UIView = {
    lazy var inputTView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = .appBgColor()
        view.backgroundColor = .playerEqual()
        //: return view
        return view
        //: }()
    }()

    //: lazy var textView: TalkingTextView = {
    lazy var textView: NameHasDelegate = {
        //: let textView = TalkingTextView.init()
        let textView = NameHasDelegate()
        //: textView.placeholder = "Enter your feedback…".localized
        textView.placeholder = (String(str_turnLabValue) + String(str_imageName.suffix(4))).localized
        //: textView.placeholderColor = UIColor.init(hex: "#999999")!
        textView.placeholderColor = UIColor(hex: (String(str_shouldTitle) + String(str_pickValue)))!
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        textView.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.blockOf()
        //: textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)
        textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)

        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textContainer.lineBreakMode = .byTruncatingTail
        textView.textContainer.lineBreakMode = .byTruncatingTail
        //: textView.delegate = self
        textView.delegate = self
        //: textView.returnKeyType = UIReturnKeyType.done
        textView.returnKeyType = UIReturnKeyType.done
        //: textView.bounces = false
        textView.bounces = false
        //: textView.backgroundColor = .appBgColor()
        textView.backgroundColor = .playerEqual()
        //: numberLB.text =  "0/\(limitCount)"
        numberLB.text = "0/\(limitCount)"
        //: return textView
        return textView
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: (String(str_shouldTitle) + String(str_pickValue)))
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        LB.font = UIFont.thoughtImage(type: .Regular, fontSize: 14)
        //: LB.text = "0/\(limitCount)"
        LB.text = "0/\(limitCount)"
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var emailTF: UITextField = {
    lazy var emailTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.backgroundColor = .appBgColor()
        tf.backgroundColor = .playerEqual()
        //: tf.textColor = UIColor.appTitleColor()
        tf.textColor = UIColor.blockOf()
        //: tf.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        tf.font = UIFont.thoughtImage(type: .Regular, fontSize: 16)
        //: tf.delegate = self
        tf.delegate = self
        //: tf.returnKeyType = UIReturnKeyType.done
        tf.returnKeyType = UIReturnKeyType.done
        //: tf.attributedPlaceholder = NSAttributedString.init(string: "Your email (Required) ".localized, attributes: [
        tf.attributedPlaceholder = NSAttributedString(string: (String(str_stateData) + String(str_hiddenValue) + String(str_dataTitle.suffix(5))).localized, attributes: [
            //: NSAttributedString.Key.foregroundColor: UIColor.init(hex: "#999999")!])
            NSAttributedString.Key.foregroundColor: UIColor(hex: (String(str_shouldTitle) + String(str_pickValue)))!])
        //: tf.clipsToBounds = true
        tf.clipsToBounds = true
        //: tf.layer.cornerRadius = 8
        tf.layer.cornerRadius = 8
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: tf.textAlignment = .right
            tf.textAlignment = .right
        }
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))
        leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))

        //: let leftImgView = UIImageView.init()
        let leftImgView = UIImageView()
        //: leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        //: leftImgView.image = UIImage.outsideText(name: "icon_me_feelback_star")
        leftImgView.image = UIImage.outsideText(name: (String(str_pineData.suffix(5)) + String(str_modeTitle.prefix(4)) + "eelba" + String(str_bringValue.prefix(7))))
        //: leftView.addSubview(leftImgView)
        leftView.addSubview(leftImgView)
        //: tf.leftView = leftView
        tf.leftView = leftView
        //: tf.leftViewMode = .always
        tf.leftViewMode = .always
        //: return tf
        return tf
        //: }()
    }()

    //: lazy var doneBtn: UIButton = {
    lazy var doneBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#CCCCCC")!, forState: .disabled)
        btn.achromaticColour(color: UIColor(hex: (String(str_exceptValue.suffix(6)) + str_afterText.uppercased()))!, forState: .disabled)
        //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .normal)
        btn.achromaticColour(color: UIColor.offt(), forState: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_centerValue)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(giftSnap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFeedbackVC {
extension FeedbackTalkingViewController {
    //: @objc func TagBtnClick(sender: UIButton) {
    @objc func age(sender: UIButton) {
        //: seleteBtn?.isSelected = false
        seleteBtn?.isSelected = false
        //: seleteBtn?.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        seleteBtn?.layer.borderColor = UIColor(hex: (String(str_titleMaleValue.suffix(7))))?.cgColor
        //: sender.isSelected = !sender.isSelected
        sender.isSelected = !sender.isSelected
        //: seleteBtn = sender
        seleteBtn = sender
        //: seleteBtn!.layer.borderColor = UIColor.clear.cgColor
        seleteBtn!.layer.borderColor = UIColor.clear.cgColor
    }

    //: @objc func doneBtnClick() {
    @objc func giftSnap() {
        //: if seleteBtn == nil || textView.text.count<=0 || emailTF.text!.count<=0 {
        if seleteBtn == nil || textView.text.count <= 0 || emailTF.text!.count <= 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please fill in the content".localized)
            self.episode(showMsg: (String(str_toValue) + String(str_photoValue)).localized)
            //: return
            return
        }

        //: if LanguageManager.shared.direction == .leftToRight {
        if ConstraintLanguageManager.shared.direction == .leftToRight {
            //: if !Validate.email(emailTF.text!).isRight {
            if !ConstraintToValidate.email(emailTF.text!).isRight {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please enter the correct email address".localized)
                self.episode(showMsg: String(bytes: str_imageValue, encoding: .utf8)!.localized)
                //: return
                return
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["content"] = textView.text
        dict[(String(str_listData) + String(str_infoStyleName))] = textView.text
        //: dict["contactWay"] = emailTF.text
        dict[(str_showValue.replacingOccurrences(of: "match", with: "c") + "actWay")] = emailTF.text
        //: dict["platform"] = "iphone"
        dict[(str_episodeLimitValue.replacingOccurrences(of: "size", with: "t"))] = (String(str_actionName))
        //: dict["version"] = AppVersion
        dict[(str_bottomData.replacingOccurrences(of: "picture", with: "v") + str_gestureName.replacingOccurrences(of: "remove", with: "er"))] = a_askValue
        //: dict["type"] = String((seleteBtn?.tag ?? 100)-100)
        dict[(str_cameraSpecialValue.replacingOccurrences(of: "make", with: "p"))] = String((seleteBtn?.tag ?? 100) - 100)

        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()

        //: TalkingMeRequestTool.req_Feedback(params: dict) { succeed, result, errorModel in
        ConstraintRequestTool.chorus(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Operation succeeded".localized)
                self.afterTitle(showMsg: (String(str_addModeName) + String(str_collectionContent) + str_indexData.replacingOccurrences(of: "button", with: "ee")).localized)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    //: func addKeyboardNotification() {
    func fromNotification() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillShow(notification:)),
                                               selector: #selector(draftNotification(notification:)),
                                               //: name: UIResponder.keyboardWillShowNotification,
                                               name: UIResponder.keyboardWillShowNotification,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillHide(notification:)),
                                               selector: #selector(infoEqual(notification:)),
                                               //: name: UIResponder.keyboardWillHideNotification,
                                               name: UIResponder.keyboardWillHideNotification,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func keyboardWillShow(notification: Notification) {
    @objc func draftNotification(notification: Notification) {
        //: guard emailTF.isFirstResponder else { return }
        guard emailTF.isFirstResponder else { return }
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        //: let frame = value?.cgRectValue ?? .zero
        let frame = value?.cgRectValue ?? .zero
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        //: guard (emailTF.bottom + StatusBarNavigationBarHeight) > frame.minY else { return }
        guard (emailTF.bottom + a_itemTitle) > frame.minY else { return }

        //: let y = (emailTF.bottom + StatusBarNavigationBarHeight) - frame.minY
        let y = (emailTF.bottom + a_itemTitle) - frame.minY
        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
            self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
        }
    }

    //: @objc func keyboardWillHide(notification: Notification) {
    @objc func infoEqual(notification: Notification) {
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25

        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = .identity
            self.backView.transform = .identity
        }
    }
}

// MARK: - UITextViewDelegate, UITextFieldDelegate

//: extension TalkingFeedbackVC: UITextViewDelegate, UITextFieldDelegate {
extension FeedbackTalkingViewController: UITextViewDelegate, UITextFieldDelegate {
    //: public func textViewDidChange(_ textView: UITextView) {
    public func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count > limitCount {
        if textView.text.count > limitCount {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            // 获取高亮部分 － 如果有联想词则解包成功
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
            //: if textNum > limitCount && limitCount > 0 {
            if textNum > limitCount && limitCount > 0 {
                //: textView.text = string_prefix(index: limitCount, text: textContent)
                textView.text = prefix(index: limitCount, text: textContent)
            }
        }
        //: numberLB.text =  "\(textView.text.count)/\(limitCount)"
        numberLB.text = "\(textView.text.count)/\(limitCount)"
    }

    //: public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    public func textViewShouldBeginEditing(_: UITextView) -> Bool {
        //: numberLB.isHidden = false
        numberLB.isHidden = false
        //: return true
        return true
    }

    //: public func textViewDidEndEditing(_ textView: UITextView) {
    public func textViewDidEndEditing(_ textView: UITextView) {
        //: if textView.text.isEmpty {
        if textView.text.isEmpty {
            //: numberLB.isHidden = false
            numberLB.isHidden = false
            //: } else {
        } else {
            //: numberLB.isHidden = true
            numberLB.isHidden = true
        }
    }

    //: public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    public func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.returnKeyType == .done {
        if textView.returnKeyType == .done {
            //: if text == "\n" {
            if text == "\n" {
                //: textView.resignFirstResponder()
                textView.resignFirstResponder()
            }
            //: return true
            return true
        }
        //: return true
        return true
    }

    // 字符串的截取 从头截取到指定index
    //: private func string_prefix(index: Int,text:String) -> String {
    private func prefix(index: Int, text: String) -> String {
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

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()

        //: return true
        return true
    }

    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func textField(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>EmialCount || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > EmialCount || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }
        //: return true
        return true
    }
}

// MARK: - UI

//: extension TalkingFeedbackVC {
extension FeedbackTalkingViewController {
    //: func designView() {
    func switchline() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: backView.addSubview(contView)
        backView.addSubview(contView)
        //: contView.snp.makeConstraints { make in
        contView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(backView)
            make.leading.trailing.top.bottom.equalTo(backView)
        }

        //: contView.addSubview(inputTView)
        contView.addSubview(inputTView)
        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(contView).offset(128)
            make.top.equalTo(contView).offset(128)
            //: make.height.equalTo(210)
            make.height.equalTo(210)
        }

        //: inputTView.addSubview(textView)
        inputTView.addSubview(textView)
        //: inputTView.addSubview(numberLB)
        inputTView.addSubview(numberLB)
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalTo(inputTView)
            make.leading.trailing.top.equalTo(inputTView)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: contView.addSubview(emailTF)
        contView.addSubview(emailTF)
        //: emailTF.snp.makeConstraints { make in
        emailTF.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(inputTView.snp.bottom).offset(16)
            make.top.equalTo(inputTView.snp.bottom).offset(16)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }

        //: contView.addSubview(doneBtn)
        contView.addSubview(doneBtn)
        //: doneBtn.snp.makeConstraints { make in
        doneBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(54)
            make.leading.equalTo(contView).offset(54)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-54)
            make.trailing.equalTo(contView.snp.trailing).offset(-54)
            //: make.top.equalTo(emailTF.snp.bottom).offset(111)
            make.top.equalTo(emailTF.snp.bottom).offset(111)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: let arr = ["Problem statements".localized,
        let arr = [(String(str_subToData.prefix(5)) + "em sta" + str_emptyBagTitle.replacingOccurrences(of: "app", with: "em") + String(str_pageTitle)).localized,
                   //: "Feature advice".localized,
                   (String(str_errValue) + String(str_unknownTitle)).localized,
                   //: "Operation questions".localized,
                   (String(str_matchEffectData) + str_femaleName.replacingOccurrences(of: "image", with: "st")).localized,
                   //: "Others".localized]
                   (String(str_priceTitle)).localized]

        //: for i in 0..<arr.count {
        for i in 0 ..< arr.count {
            //: let xz = 15
            let xz = 15
            //: let yz = 16
            let yz = 16
            //: let Width = (Int(ScreenWidth)-xz*3)/2
            let Width = (Int(a_blockValue) - xz * 3) / 2
            //: let height = 38
            let height = 38
            //: let X = xz+(xz + Width)*(i%2)
            let X = xz + (xz + Width) * (i % 2)
            //: let Y = yz+(yz+height)*(i/2)
            let Y = yz + (yz + height) * (i / 2)

            //: let btn = UIButton.init()
            let btn = UIButton()
            //: btn.frame =  CGRect.init(x: X, y: Y , width: Width, height: height)
            btn.frame = CGRect(x: X, y: Y, width: Width, height: height)
            //: btn.setTitle(arr[i], for: .normal)
            btn.setTitle(arr[i], for: .normal)
            //: btn.setTitleColor(.black, for: .normal)
            btn.setTitleColor(.black, for: .normal)
            //: btn.setTitleColor(.appThemeColor(), for: .selected)
            btn.setTitleColor(.offt(), for: .selected)

            //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
            btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.es.rawValue || AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.pt.rawValue {
                //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
                btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 13)
            }
            //: btn.layer.cornerRadius = 19
            btn.layer.cornerRadius = 19
            //: btn.layer.borderWidth = 1
            btn.layer.borderWidth = 1
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(str_titleMaleValue.suffix(7))))?.cgColor
            //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .selected)
            btn.achromaticColour(color: UIColor(hex: (String(str_modeData.suffix(2)) + String(str_titleValue)))!, forState: .selected)
            //: btn.setBackgroundColor(color: .white, forState: .normal)
            btn.achromaticColour(color: .white, forState: .normal)
            //: btn.tag = 100+i
            btn.tag = 100 + i
            //: btn.addTarget( self, action: #selector(TagBtnClick(sender:)), for: .touchUpInside)
            btn.addTarget(self, action: #selector(age(sender:)), for: .touchUpInside)
            //: contView.addSubview(btn)
            contView.addSubview(btn)
        }

        //: contView.snp.remakeConstraints { make in
        contView.snp.remakeConstraints { make in
            //: make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            //: make.width.equalTo(backView)
            make.width.equalTo(backView)
        }
    }
}
