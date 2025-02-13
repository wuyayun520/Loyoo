
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_leadingTitle:[UInt8] = [0x5c,0x5b,0x5c,0x41,0x1d,0x56,0x5a,0x51,0x50,0x47,0xf,0x1c,0x15,0x5d,0x54,0x46,0x15,0x5b,0x5a,0x41,0x15,0x57,0x50,0x50,0x5b,0x15,0x5c,0x58,0x45,0x59,0x50,0x58,0x50,0x5b,0x41,0x50,0x51]

/*: "icon_home_v" :*/
fileprivate let str_colorName:String = "icreply"
fileprivate let str_blockSenseViewName:String = "false view in selfe_v"

/*: "icon_lounge" :*/
fileprivate let str_layerText:String = "any guard self equalicon_loun"
fileprivate let str_stageTitle:String = "glabel"

/*: "icon_jianbian_back" :*/
fileprivate let str_countData:[Character] = ["i","c","o","n","_","j","i","a","n","b","i","a","n","_","b","a","c","k"]

/*: "Like&Chat" :*/
fileprivate let str_toData:String = "Like&Chtype result"
fileprivate let str_contentTitle:String = "acamera"

/*: "#EFEDFF" :*/
fileprivate let str_colorData:String = "level index color label live#EFEDFF"

/*: "Quick Greeting" :*/
fileprivate let str_topValue:String = "self self colorQuick "
fileprivate let str_multiValue:String = "inleading"

/*: "Nope" :*/
fileprivate let str_popName:[Character] = ["N","o","p","e"]

/*: "icon_ender_boy" :*/
fileprivate let str_activeToRequestName:String = "icon_edata self return leading center"
fileprivate let str_pathOfTitle:String = "ndeevent"

/*: "icon_ender_girl" :*/
fileprivate let str_messageMaleValue:[Character] = ["i","c","o","n","_","e","n","d","e","r","_","g","i","r","l"]

/*: "   " :*/
fileprivate let str_rootData:[Character] = [" "," "," "]

/*: "crushId" :*/
fileprivate let str_labValue:String = "image topcrushId"

/*: "her" :*/
fileprivate let str_photoValue:String = "hnormalr"

/*: "him" :*/
fileprivate let str_finishData:String = "huser"

/*: "content" :*/
fileprivate let str_ofGestureValue:String = "cocolorecolor"

/*: "Why don't you say hello to %@?" :*/
fileprivate let str_tableValue:String = "Why don\'"
fileprivate let str_frameName:[Character] = ["t"," ","y","o","u"," ","s","a","y"," "]
fileprivate let str_pictureCellTitle:String = "hefill"

/*: "msgType" :*/
fileprivate let str_trackUserValue:String = "requests"
fileprivate let str_viewContent:String = "gTypeand view self observer"

/*: "txt" :*/
fileprivate let str_intervalText:String = "bagt"

/*: "msg" :*/
fileprivate let str_transactionData:[UInt8] = [0x67,0x73,0x6d]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserLikeCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

//: public protocol WhoLikeDelegate: NSObject {
public protocol EqualLikeDelegate: NSObject {
    //: func quickGreetingSeleteIndex(_ index: IndexPath )
    func safetyMargin(_ index: IndexPath)
    //: func likeSeleteIndex(_ index: IndexPath )
    func timeMake(_ index: IndexPath)
}

//: class TalkingWhoLikeCell: UITableViewCell {
class UserLikeCell: UITableViewCell {
	var cellSum: Int = 37
	var cellMagnitude: Int = 18

    var itemWhatColorCollectionImageView: UIImageView?

    //: var currenModel = TalkingWhoLikeMeModel()
    var currenModel = TextAppHandyJSON()
    //: var seleteIndex: IndexPath?
    var seleteIndex: IndexPath?
    //: open weak var delegate: WhoLikeDelegate?
    open weak var delegate: EqualLikeDelegate?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
		if var frontValue = self.currenModel.status { 
			if var squareBlockValue = currenModel.isTPAuth { 
		
		//: if_extract_code "squadRoom" begin
		
		var squadRoom = false
		if !squadRoom {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = quickGreetingBtn.editingInteractionConfiguration == .none
		    }
		    squadRoom = isValue
		}
		
		//: if_extract_code "squadRoom" end
		
		            if (squadRoom) && (quickGreetingBtn.clipsToBounds) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let messageTotalimate = PhoneRateView(frame: quickGreetingBtn.bounds.standardized)
		            messageTotalimate.passAwayDoing = squareBlockValue
	
		            messageTotalimate.shadowRoomQuantity = { [self] lodestarQuantity in
		            self.cellMagnitude = lodestarQuantity
		            
		            var messageTotalimate = frontValue
		            messageTotalimate &= 9
		            if messageTotalimate < self.cellMagnitude {
		                self.cellMagnitude = messageTotalimate
		            }
		            
		            return self.cellMagnitude
		            }
		                quickGreetingBtn.addSubview(messageTotalimate)
		            }
		
			}
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
        //: contentView.addSubview(backView)

        var clearLab: UIView = backView
        if let imageView = self.itemWhatColorCollectionImageView, (contentView.layer.masksToBounds != false) && (contentView.forFirstBaselineLayout.center.y == 58.40) {
            //: SWIFT_CUSTOM_DANGER
            clearLab = imageView
        }
        contentView.addSubview(clearLab)
        //: backView.addSubview(IconImageV)

        var bottomLabel: UIView = IconImageV
        if let imageView = self.itemWhatColorCollectionImageView, (backView.layer.zPosition == 21.48) && (backView.tag == 7842) {
            //: SWIFT_CUSTOM_DANGER
            bottomLabel = imageView
        }
        backView.addSubview(bottomLabel)
        //: backView.addSubview(iconBorder)

        var pathView: UIView = iconBorder
        if let imageView = self.itemWhatColorCollectionImageView, (!pathView.isOpaque) && (pathView.textInputContextIdentifier != nil) {
            //: SWIFT_CUSTOM_DANGER
            pathView = imageView
        }
        backView.addSubview(pathView)
        //: backView.addSubview(nameLabel)
        backView.addSubview(nameLabel)
        //: backView.addSubview(cardImg)

        var heightView: UIView = cardImg
        if let imageView = self.itemWhatColorCollectionImageView, (heightView.layer.position.y == 36.61) && (heightView.layer.mask != nil) {
            //: SWIFT_CUSTOM_DANGER
            heightView = imageView
        }
        backView.addSubview(heightView)
        //: backView.addSubview(sexBtn)
        backView.addSubview(sexBtn)
        //: backView.addSubview(loungeImgV)
        backView.addSubview(loungeImgV)
        //: backView.addSubview(timeLabel)
        backView.addSubview(timeLabel)
        //: backView.addSubview(messageLabel)

        var completeAdd: UIView = messageLabel
        if let imageView = self.itemWhatColorCollectionImageView, (backView.frame.origin.y == 43.45) && (backView.convert(backView.frame.offsetBy(dx: CGFloat(Double(backView.frame.size.height)), dy: CGFloat(backView.isExclusiveTouch ? 1 : 8)), to: backView.superview).origin.y == 4.84) {
            //: SWIFT_CUSTOM_DANGER
            completeAdd = imageView
        }
        backView.addSubview(completeAdd)
        //: backView.addSubview(quickGreetingBtn)
        backView.addSubview(quickGreetingBtn)
        //: backView.addSubview(chatBtn)

        var selfBackTo: UIView = chatBtn
        if let imageView = self.itemWhatColorCollectionImageView, (backView.layer.contentsRect.origin.x != 0) && (backView.isHidden) {
            //: SWIFT_CUSTOM_DANGER
            selfBackTo = imageView
        }
        backView.addSubview(selfBackTo)
        //: layoutSubViewsConstraints()
        substituteDataCard()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_leadingTitle.map{$0^53}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    
		if var signViewCollectionValue = currenModel.age { 
	            if (loungeImgV.forLastBaselineLayout.center.x == 43.47) && (loungeImgV.convert(CGPoint(x: CGFloat(0), y: 0), to: loungeImgV.superview).y == 44.54) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let sizeGold = PhoneRateView()
	            sizeGold.passAwayDoing = self.currenModel.loungePlus
	
	            sizeGold.shadowRoomQuantity = { [self] lodestarQuantity in
	            self.cellSum = lodestarQuantity
	            
	            var sizeGold = signViewCollectionValue
	            sizeGold -= 1
	            if sizeGold > self.cellSum {
	                self.cellSum = sizeGold
	            }
	            
	            return self.cellSum
	            }
	                loungeImgV.addSubview(sizeGold)
	            }
	
		}
	}

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.shadowColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5).cgColor
        view.layer.shadowColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5).cgColor
        //: view.layer.shadowOffset = CGSize(width: 0, height: 1)
        view.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: view.layer.shadowOpacity = 1
        view.layer.shadowOpacity = 1
        //: view.layer.shadowRadius = 4
        view.layer.shadowRadius = 4
        //: view.layer.cornerRadius = 9
        view.layer.cornerRadius = 9
        //: return view
        return view
        //: }()
    }()

    //: lazy var IconImageV: UIImageView = {
    lazy var IconImageV: UIImageView = {
        //: let imageV = UIImageView.init()
        let imageV = UIImageView()
        //: imageV.layer.cornerRadius = 40/2
        imageV.layer.cornerRadius = 40 / 2
        //: imageV.layer.masksToBounds = true
        imageV.layer.masksToBounds = true
        //: imageV.contentMode = .scaleAspectFill
        imageV.contentMode = .scaleAspectFill
        //: return imageV
        return imageV
        //: }()
    }()

    //: lazy var iconBorder: UIButton = {
    lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nameLabel: UILabel = {
    lazy var nameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .thoughtImage(type: .Medium, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: return label
        return label
        //: }()
    }()

    //: lazy var cardImg: UIImageView = {
    lazy var cardImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "icon_home_v")
        img.image = UIImage.outsideText(name: (str_colorName.replacingOccurrences(of: "reply", with: "on") + "_hom" + String(str_blockSenseViewName.suffix(3))))
        //: return img
        return img
        //: }()
    }()

    //: lazy var sexBtn: UIButton = {
    lazy var sexBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 10)
        btn.titleLabel?.font = .thoughtImage(type: .Medium, fontSize: 10)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var loungeImgV: UIImageView = {
    lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "icon_lounge")
        img.image = UIImage.outsideText(name: (String(str_layerText.suffix(9)) + str_stageTitle.replacingOccurrences(of: "label", with: "e")))
        //: return img
        return img
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 14)
        label.font = .thoughtImage(type: .Medium, fontSize: 14)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: return label
        return label
        //: }()
    }()

    //: lazy var chatBtn: UIButton = {
    lazy var chatBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = .thoughtImage(type: .Medium, fontSize: 16)
        //: btn.setBackgroundImage(UIImage.outsideText(name: "icon_jianbian_back"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (String(str_countData))), for: .normal)
        //: btn.setTitle(" " + "Like&Chat".localized + " ", for: .normal)
        btn.setTitle(" " + (String(str_toData.prefix(7)) + str_contentTitle.replacingOccurrences(of: "camera", with: "t")).localized + " ", for: .normal)
        //: btn.addTarget(self, action: #selector(ChatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(noseClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var quickGreetingBtn: UIButton = {
    lazy var quickGreetingBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.offt(), for: .normal)
        //: btn.layer.cornerRadius = 37/2
        btn.layer.cornerRadius = 37 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = .thoughtImage(type: .Medium, fontSize: 16)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .normal)
        btn.achromaticColour(color: UIColor(hex: (String(str_colorData.suffix(7))))!, forState: .normal)
        //: btn.addTarget(self, action: #selector(quickGreetingBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(alongBarMake), for: .touchUpInside)
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue { // 女性
            //: btn.setTitle("Quick Greeting".localized, for: .normal)
            btn.setTitle((String(str_topValue.suffix(6)) + "Greet" + str_multiValue.replacingOccurrences(of: "leading", with: "g")).localized, for: .normal)
            //: } else {
        } else {
            //: btn.setTitle("Nope".localized, for: .normal)
            btn.setTitle((String(str_popName)).localized, for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var messageLabel: UILabel = {
    lazy var messageLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .thoughtImage(type: .Medium, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingWhoLikeCell {
extension UserLikeCell {
    //: func setCell(model: TalkingWhoLikeMeModel, index: IndexPath) {
    func poiseAdd(model: TextAppHandyJSON, index: IndexPath) {
        //: currenModel = model
        currenModel = model
        //: seleteIndex = index
        seleteIndex = index
        //: IconImageV.setUrlImage(urlStr: model.headPic ?? "", placeImg: UIImage.placeHolderImage(sex: String(model.sex ?? 1 )))
        IconImageV.posit(urlStr: model.headPic ?? "", placeImg: UIImage.tempWithGift(sex: String(model.sex ?? 1)))
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: IconImageV.snp.remakeConstraints { make in
            IconImageV.snp.remakeConstraints { make in
                //: make.leading.equalTo(backView).offset(12)
                make.leading.equalTo(backView).offset(12)
                //: make.top.equalTo(backView).offset(12)
                make.top.equalTo(backView).offset(12)
                //: make.width.height.equalTo(36)
                make.width.height.equalTo(36)
            }
            //: iconBorder.isHidden = false
            iconBorder.isHidden = false
            //: iconBorder.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorder.fileStr(urlStr: model.headPicFrame)
            //: }else {
        } else {
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }

        //: nameLabel.textColor = model.loungePlus ? .userVipColor():.appTitleColor()
        nameLabel.textColor = model.loungePlus ? .withTime() : .blockOf()
        //: nameLabel.text = model.nickname
        nameLabel.text = model.nickname
        //: if !(model.isTPAuth ?? false) {
        if !(model.isTPAuth ?? false) {
            //: cardImg.isHidden = true
            cardImg.isHidden = true
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(1)
                make.width.equalTo(1)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(0)
                make.leading.equalTo(nameLabel.snp.trailing).offset(0)
            }
            //: } else {
        } else {
            //: cardImg.isHidden = false
            cardImg.isHidden = false
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(16)
                make.width.equalTo(16)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
                make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            }
        }

        //: switch model.sex {
        switch model.sex {
        //: case 1:
        case 1:
            //: sexBtn.setBackgroundImage(UIImage.outsideText(name: "icon_ender_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.outsideText(name: (String(str_activeToRequestName.prefix(6)) + str_pathOfTitle.replacingOccurrences(of: "event", with: "r") + "_boy")), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.outsideText(name: "icon_ender_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.outsideText(name: (String(str_messageMaleValue))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)
        sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)
        //: timeLabel.text = model.timeFormat
        timeLabel.text = model.timeFormat
        //: messageLabel.text = model.message
        messageLabel.text = model.message

        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus
        //: if loungeImgV.isHidden == false {
        if loungeImgV.isHidden == false {
            //: loungeImgV.snp.makeConstraints { make in
            loungeImgV.snp.makeConstraints { make in
                //: make.centerY.equalTo(nameLabel)
                make.centerY.equalTo(nameLabel)
                //: make.leading.equalTo(sexBtn.snp.trailing).offset(3)
                make.leading.equalTo(sexBtn.snp.trailing).offset(3)
                //: make.size.equalTo(CGSize(width: 20, height: 20))
                make.size.equalTo(CGSize(width: 20, height: 20))
                //: make.trailing.lessThanOrEqualToSuperview().offset(-10)
                make.trailing.lessThanOrEqualToSuperview().offset(-10)
            }
        }
    }

    /// quick Greeting 按钮点击事件（女性）
    //: @objc func quickGreetingBtnClick() {
    @objc func alongBarMake() {
        //: let dict: [String: Any] = ["crushId": currenModel.likeId ?? ""]
        let dict: [String: Any] = [(String(str_labValue.suffix(7))): currenModel.likeId ?? ""]
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue { // 女性
            //: TalkingPrivateChatManager.chat_sendQuickGreeting(toUserId: currenModel.uid) { errorCode, errorMsg, textDict, audioDict in
            PrivateThen.statisticalTable(toUserId: currenModel.uid) { errorCode, errorMsg, textDict, audioDict in
                //: if (textDict?.count ?? 0 > 0) || (audioDict?.count ?? 0 > 0) {
                if (textDict?.count ?? 0 > 0) || (audioDict?.count ?? 0 > 0) { // 跳转私聊，发送一键打招呼
                    //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: self.currenModel.uid) { vc in
                    LimitPushManager.share.sharedMode(chatID: self.currenModel.uid) { vc in
                        //: vc.quickGreetingTextDict = textDict
                        vc.quickGreetingTextDict = textDict
                        //: vc.quickGreetingAudioDict = audioDict
                        vc.quickGreetingAudioDict = audioDict
                    }
                    //: } else {
                } else {
                    //: if errorMsg?.count ?? 0 > 0 {
                    if errorMsg?.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorMsg!)
                        self.episode(showMsg: errorMsg!)
                    }
                    //: if errorCode == 2 { return }
                    if errorCode == 2 { return }
                }

                // 删除当前cell
                //: DoingSheRequestTool.req_whoLikeMeIgnore(params: dict) { succeed, result, errorModel in
                DoingSheRequestTool.just(params: dict) { succeed, _, _ in
                    //: if succeed {
                    if succeed {
                        //: if self.delegate != nil {
                        if self.delegate != nil {
                            //: self.delegate?.quickGreetingSeleteIndex(self.seleteIndex!)
                            self.delegate?.safetyMargin(self.seleteIndex!)
                        }
                    }
                }
            }

            //: } else {
        } else { // 男性只有删除
            //: DoingSheRequestTool.req_whoLikeMeIgnore(params: dict) { succeed, result, errorModel in
            DoingSheRequestTool.just(params: dict) { succeed, _, _ in
                //: if succeed {
                if succeed {
                    //: if self.delegate != nil {
                    if self.delegate != nil {
                        //: self.delegate?.quickGreetingSeleteIndex(self.seleteIndex!)
                        self.delegate?.safetyMargin(self.seleteIndex!)
                    }
                }
            }
        }
    }

    /// Like&Chat 按钮点击事件
    //: @objc func ChatBtnClick() {
    @objc func noseClick() {
        //: if currenModel.status == 0 {
        if currenModel.status == 0 {
            //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: currenModel.uid)
            LimitPushManager.share.sharedMode(chatID: currenModel.uid)
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["crushId"] = currenModel.likeId
            dict[(String(str_labValue.suffix(7)))] = currenModel.likeId
            //: ProgressHUD.show()
            SizeHungReactiveCompatible.picCurrent()
            //: DoingSheRequestTool.req_whoLikeMelike(params: dict) { succeed, result, errorModel in
            DoingSheRequestTool.params(params: dict) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: if succeed {
                if succeed {
                    //: self.currenModel.status = 1
                    self.currenModel.status = 1
                    //: if self.delegate != nil {
                    if self.delegate != nil {
                        //: self.delegate?.likeSeleteIndex(self.seleteIndex!)
                        self.delegate?.timeMake(self.seleteIndex!)
                    }
                }
            }

            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: var msgInfo = Dictionary<String, Any>()
                var msgInfo = [String: Any]()
                //: let gender = self.currenModel.sex == Int(Gender.female.rawValue) ? "her".localized:"him".localized
                let gender = self.currenModel.sex == Int(SizeCustomReflectable.female.rawValue) ? (str_photoValue.replacingOccurrences(of: "normal", with: "e")).localized : (str_finishData.replacingOccurrences(of: "user", with: "im")).localized
                //: msgInfo["content"] = "Why don't you say hello to %@?".localizedArguments(gender)
                msgInfo[(str_ofGestureValue.replacingOccurrences(of: "color", with: "nt"))] = (str_tableValue + String(str_frameName) + str_pictureCellTitle.replacingOccurrences(of: "fill", with: "ll") + "o to %@?").random(gender)
                //: msgInfo["msgType"] = "txt"
                msgInfo[(str_trackUserValue.replacingOccurrences(of: "request", with: "m") + String(str_viewContent.prefix(5)))] = (str_intervalText.replacingOccurrences(of: "bag", with: "tx"))

                //: let message = TUISocialChatManager.insertTXMessageModel(withExtral: msgInfo,
                let message = TUISocialChatManager.insertTXMessageModel(withExtral: msgInfo,
                                                                        //: toUid: self.currenModel.uid,
                                                                        toUid: self.currenModel.uid,
                                                                        //: isSender: true,
                                                                        isSender: true,
                                                                        //: isTip: true)
                                                                        isTip: true)
                //: NotificationCenter.default.post(name: CHAT_TIPS_TEXT_NOTIFICATION, object: self, userInfo: ["msg": message])
                NotificationCenter.default.post(name: a_voiceTitle, object: self, userInfo: [String(bytes: str_transactionData.reversed(), encoding: .utf8)!: message])
            }
        }
    }
}

// MARK: - UI

//: extension TalkingWhoLikeCell {
extension UserLikeCell {
    //: func layoutSubViewsConstraints() {
    func substituteDataCard() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.bottom.equalTo(-12)
            make.bottom.equalTo(-12)
        }
        //: IconImageV.snp.makeConstraints { make in
        IconImageV.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(10)
            make.leading.equalTo(backView).offset(10)
            //: make.top.equalTo(backView).offset(10)
            make.top.equalTo(backView).offset(10)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(7)
            make.leading.equalTo(backView).offset(7)
            //: make.top.equalTo(backView).offset(7)
            make.top.equalTo(backView).offset(7)
            //: make.width.height.equalTo(46)
            make.width.height.equalTo(46)
        }

        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            //: make.top.equalTo(IconImageV.snp.top)
            make.top.equalTo(IconImageV.snp.top)
        }
        //: cardImg.snp.makeConstraints { make in
        cardImg.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
        }
        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(cardImg.snp.trailing).offset(3)
            make.leading.equalTo(cardImg.snp.trailing).offset(3)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(33)
            make.width.equalTo(33)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-10)
            make.trailing.lessThanOrEqualToSuperview().offset(-10)
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            //: make.top.equalTo(nameLabel.snp.bottom).offset(2)
            make.top.equalTo(nameLabel.snp.bottom).offset(2)
        }
        //: messageLabel.snp.makeConstraints { make in
        messageLabel.snp.makeConstraints { make in
            //: make.top.equalTo(IconImageV.snp.bottom).offset(10)
            make.top.equalTo(IconImageV.snp.bottom).offset(10)
            //: make.leading.equalTo(backView).offset(10)
            make.leading.equalTo(backView).offset(10)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-10)
            make.trailing.equalTo(backView.snp.trailing).offset(-10)
        }

        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLabel.snp.bottom).offset(10)
            make.top.equalTo(messageLabel.snp.bottom).offset(10)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-10)
            make.trailing.equalTo(backView.snp.trailing).offset(-10)
            //: make.height.equalTo(37)
            make.height.equalTo(37)
            //: make.bottom.equalTo(backView.snp.bottom).offset(-10)
            make.bottom.equalTo(backView.snp.bottom).offset(-10)
        }
        //: quickGreetingBtn.snp.makeConstraints { make in
        quickGreetingBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(chatBtn)
            make.centerY.equalTo(chatBtn)
            //: make.trailing.equalTo(chatBtn.snp.leading).offset(-12)
            make.trailing.equalTo(chatBtn.snp.leading).offset(-12)
            //: make.height.equalTo(37)
            make.height.equalTo(37)
            //: make.width.equalTo((MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue) ? 148:76)
            make.width.equalTo((MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue) ? 148 : 76)
        }
    }
}
