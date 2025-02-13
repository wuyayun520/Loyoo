
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_fullValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_home_v" :*/
fileprivate let str_genderData:[Character] = ["i","c","o","n","_","h"]
fileprivate let str_screenColorName:String = "make pop make photoome_v"

/*: "icon_lounge" :*/
fileprivate let str_backgroundText:[Character] = ["i","c","o","n","_"]
fileprivate let str_toolShareValue:[Character] = ["l","o","u","n","g","e"]

/*: "#8A79F9" :*/
fileprivate let str_imageData:String = "#8A79F9data photo true path photo"

/*: "#EAE8FE" :*/
fileprivate let str_levelSceneFalseName:[Character] = ["#","E","A","E","8","F","E"]

/*: "Follow each other" :*/
fileprivate let str_memberValue:String = "Folloview in remove area var"
fileprivate let str_viewTitle:String = "request removew eac"

/*: "btn_message_favourite_following_nor" :*/
fileprivate let str_modelValue:[UInt8] = [0x49,0x5f,0x45,0x74,0x46,0x4e,0x58,0x58,0x4a,0x4c,0x4e,0x74,0x4d,0x4a,0x5d,0x44,0x5e,0x59,0x42,0x5f,0x4e,0x74,0x4d,0x44,0x47,0x47,0x44,0x5c,0x42,0x45,0x4c,0x74,0x45,0x44,0x59]

/*: "icon_ender_boy" :*/
fileprivate let str_directionText:String = "icon_eview make menu"
fileprivate let str_labelData:String = "layer hide icon_boy"

/*: "icon_ender_girl" :*/
fileprivate let str_moreValue:String = "icon_echange bind model normal text"
fileprivate let str_effectAtTitle:String = "_girllet in suit product"

/*: "   " :*/
fileprivate let str_giftIntervalFactorValue:[Character] = [" "," "," "]

/*: "btn_message_favourite_follow_nor" :*/
fileprivate let str_timeTitle:[UInt8] = [0x62,0x74,0x6e,0x5f,0x6d,0x65,0x73,0x73,0x61,0x67,0x65,0x5f,0x66,0x61,0x76,0x6f,0x75,0x72,0x69,0x74,0x65,0x5f,0x66,0x6f,0x6c,0x6c,0x6f,0x77,0x5f,0x6e,0x6f,0x72]

/*: "Follow" :*/
fileprivate let str_centerText:String = "stack party block makeFollow"

/*: "removeAttentionUid" :*/
fileprivate let str_selectedValue:[Character] = ["r","e","m","o","v","e","A","t","t","e","n","t","i"]
fileprivate let str_reportLayerValue:String = "make willonUid"

/*: "attentionUid" :*/
fileprivate let str_tableWithContent:String = "awrapwrapen"
fileprivate let str_okValue:String = "in add change viewtionUid"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConstraintAttentionCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/14.
//

//: import UIKit
import UIKit

/// 类型
//: enum AtationType {
enum UpAtationType {
    //: case attention
    case attention // 我关注的
    //: case beLike
    case beLike // 关注我的
}

//: public protocol AttentionDelegate: NSObject {
public protocol QuantityAttentionDelegate: NSObject {
    //: func cancelAtationSeleteIndex(_ index: IndexPath )
    func wireTab(_ index: IndexPath)
    //: func belikeAtationSeleteIndex(_ index: IndexPath )
    func stochasticProcess(_ index: IndexPath)
}

//: class TalkingAttentionCell: UITableViewCell {
class ConstraintAttentionCell: UITableViewCell {
	var barMessageGiftOpen: Bool = false
	var tableArray: [AnyHashable] = []
	var indexOn: Bool = false
	var modelPopArray: [AnyHashable] = []

    var partyImageView: UIImageView?

    //: var currenModel = TalkingAttentionModel()
    var currenModel = CloseMeasurable()
    //: var seleteIndex: IndexPath?
    var seleteIndex: IndexPath?
    //: open weak var delegate: AttentionDelegate?
    open weak var delegate: QuantityAttentionDelegate?
    //: open var type: AtationType?
    open var type: UpAtationType?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
		if var pathReplyValue = self.currenModel.mutualAtt { 
			if var numberValue = self.currenModel.uid { 
				if var labLengthValue = self.currenModel.sex { 
					if var modelHeadValue = currenModel.mutualAtt { 
				            if (otherLB.semanticContentAttribute == .spatial) && (otherLB.motionEffects.count == 17) {
				                //: SWIFT_CUSTOM_DANGER_File_Call
				                let dataLet = BeyondPointHeightView()
				            dataLet.transferClose = modelHeadValue
				            dataLet.backTotal = labLengthValue
		
				            dataLet.fullTitle = numberValue
				            dataLet.addressOff = { [self] lastOff in
				            self.indexOn = lastOff
				            
				            var dataLet = pathReplyValue
				                dataLet = true
				                dataLet = !dataLet
				            if dataLet != self.indexOn {
				                self.indexOn = dataLet
				            }
				            
				                self.indexOn = true
				                self.indexOn = !self.indexOn
				            return self.indexOn
				            }
				            dataLet.valueArray = { [self] rowArray in
				            self.modelPopArray = rowArray
				            
				            guard var value = self.modelPopArray as? [String] else {
				                return nil
				            }
				            return value
				            }
				                otherLB.addSubview(dataLet)
				            }
				
					}
				}
			}
		}
	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
		if var administratorValue = self.currenModel.mutualAtt { 
			if var viewValue = self.currenModel.addTime { 
				if var saddlebagValue = currenModel.signature { 
			            if (sexBtn.alpha != 1.0) && (sexBtn.semanticContentAttribute == .spatial) {
			                //: SWIFT_CUSTOM_DANGER_File_Call
			                let menuVoice = BeyondPointHeightView(frame: sexBtn.bounds.union(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
			            menuVoice.transferClose = self.currenModel.loungePlus
			            menuVoice.backTotal = saddlebagValue
		
			            menuVoice.fullTitle = viewValue
			            menuVoice.addressOff = { [self] lastOff in
			            self.barMessageGiftOpen = lastOff
			            
			            var menuVoice = administratorValue
			            menuVoice = true
			            if menuVoice != self.barMessageGiftOpen {
			                self.barMessageGiftOpen = menuVoice
			            }
			            
			                self.barMessageGiftOpen = false
			                self.barMessageGiftOpen = !self.barMessageGiftOpen
			            return self.barMessageGiftOpen
			            }
			            menuVoice.valueArray = { [self] rowArray in
			            self.tableArray = rowArray
			            
			            guard var value = self.tableArray as? [String] else {
			                return nil
			            }
			            return value
			            }
			                sexBtn.addSubview(menuVoice)
			            }
			
				}
			}
		}
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
        //: self.contentView.addSubview(IconBtn)

        var correlationTable: UIView = IconBtn
        if let imageView = self.partyImageView, (!correlationTable.transform.isIdentity) && (correlationTable.convert(correlationTable.bounds.insetBy(dx: CGFloat(Double(correlationTable.frame.size.height)), dy: CGFloat(0)), from: correlationTable.superview).origin.x == 65.27) {
            //: SWIFT_CUSTOM_DANGER
            correlationTable = imageView
        }
        self.contentView.addSubview(correlationTable)
        //: self.contentView.addSubview(iconBorder)

        var giftView: UIView = iconBorder
        if let imageView = self.partyImageView, (giftView.forLastBaselineLayout.center.x == 91.70) && (giftView.autoresizingMask == .flexibleTopMargin) {
            //: SWIFT_CUSTOM_DANGER
            giftView = imageView
        }
        self.contentView.addSubview(giftView)
        //: self.contentView.addSubview(nameLabel)

        var buttonLeading: UIView = nameLabel
        if let imageView = self.partyImageView, (self.contentView.convert(self.contentView.frame.integral, to: self.contentView.superview).size.width == 66.42) && (self.contentView.layoutGuides.count == 170) {
            //: SWIFT_CUSTOM_DANGER
            buttonLeading = imageView
        }
        self.contentView.addSubview(buttonLeading)
        //: self.contentView.addSubview(cardImg)
        self.contentView.addSubview(cardImg)
        //: self.contentView.addSubview(sexBtn)
        self.contentView.addSubview(sexBtn)
        //: self.contentView.addSubview(loungeImgV)
        self.contentView.addSubview(loungeImgV)
        //: self.contentView.addSubview(otherLB)
        self.contentView.addSubview(otherLB)
        //: self.contentView.addSubview(RemoveBtn)

        var upwardsView: UIView = RemoveBtn
        if let imageView = self.partyImageView, (upwardsView.convert(CGPoint(x: 0, y: 0), from: upwardsView.superview).y == 44.80) && (upwardsView.layer.anchorPoint.x != 0.5) {
            //: SWIFT_CUSTOM_DANGER
            upwardsView = imageView
        }
        self.contentView.addSubview(upwardsView)
        //: layoutSubViewsConstraints()
        listener()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_fullValue, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var IconBtn: UIButton = {
    lazy var IconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 60/2
        btn.layer.cornerRadius = 60 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(IconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(confirmImagePath), for: .touchUpInside)
        //: return btn
        return btn
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
        //: label.font = .pingfangFont(type: .Medium, fontSize: 18)
        label.font = .thoughtImage(type: .Medium, fontSize: 18)
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
        img.image = UIImage.outsideText(name: (String(str_genderData) + String(str_screenColorName.suffix(5))))
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
        img.image = UIImage.outsideText(name: (String(str_backgroundText) + String(str_toolShareValue)))
        //: return img
        return img
        //: }()
    }()

    //: lazy var otherLB: UILabel = {
    lazy var otherLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 10)
        label.font = .thoughtImage(type: .Regular, fontSize: 10)
        //: label.textColor = UIColor.init(hex: "#8A79F9")
        label.textColor = UIColor(hex: (String(str_imageData.prefix(7))))
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.backgroundColor = UIColor.init(hex: "#EAE8FE")
        label.backgroundColor = UIColor(hex: (String(str_levelSceneFalseName)))
        //: label.layer.cornerRadius = 8
        label.layer.cornerRadius = 8
        //: label.layer.masksToBounds = true
        label.layer.masksToBounds = true
        //: label.isHidden = true
        label.isHidden = true
        //: label.text = "Follow each other".localized
        label.text = (String(str_memberValue.prefix(5)) + String(str_viewTitle.suffix(5)) + "h other").localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var RemoveBtn: UIButton = {
    lazy var RemoveBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.outsideText(name: "btn_message_favourite_following_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: String(bytes: str_modelValue.map{$0^43}, encoding: .utf8)!), for: .normal)
        //: btn.addTarget(self, action: #selector(RemoveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(anyResumeClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttentionCell {
extension ConstraintAttentionCell {
    //: func setCell(model: TalkingAttentionModel, index: IndexPath, Atype: AtationType) {
    func directError(model: CloseMeasurable, index: IndexPath, Atype: UpAtationType) {
        //: currenModel = model
        currenModel = model
        //: seleteIndex = index
        seleteIndex = index
        //: type = Atype
        type = Atype
        //: IconBtn.setUrlImage(urlStr: model.headPic ?? "")
        IconBtn.fulfill(urlStr: model.headPic ?? "")
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: IconBtn.layer.cornerRadius = 56/2
            IconBtn.layer.cornerRadius = 56 / 2
            //: IconBtn.snp.remakeConstraints { make in
            IconBtn.snp.remakeConstraints { make in
                //: make.leading.equalTo(self).offset(17)
                make.leading.equalTo(self).offset(17)
                //: make.top.equalTo(self).offset(10)
                make.top.equalTo(self).offset(10)
                //: make.width.height.equalTo(56)
                make.width.height.equalTo(56)
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
        //: if !model.isTPAuth {
        if !model.isTPAuth {
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
            sexBtn.setBackgroundImage(UIImage.outsideText(name: (String(str_directionText.prefix(6)) + "nder" + String(str_labelData.suffix(4)))), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.outsideText(name: "icon_ender_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.outsideText(name: (String(str_moreValue.prefix(6)) + "nder" + String(str_effectAtTitle.prefix(5)))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age!), for: .normal)
        sexBtn.setTitle("   " + String(model.age!), for: .normal)
        //: otherLB.isHidden = !model.mutualAtt!
        otherLB.isHidden = !model.mutualAtt!
        //: if type == .beLike && !model.mutualAtt! {
        if type == .beLike, !model.mutualAtt! {
            //: RemoveBtn.setBackgroundImage(UIImage.outsideText(name: "btn_message_favourite_follow_nor"), for: .normal)
            RemoveBtn.setBackgroundImage(UIImage.outsideText(name: String(bytes: str_timeTitle, encoding: .utf8)!), for: .normal)
            //: RemoveBtn.setTitle("Follow".localized, for: .normal)
            RemoveBtn.setTitle((String(str_centerText.suffix(6))).localized, for: .normal)
            //: RemoveBtn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
            RemoveBtn.titleLabel?.font = UIFont.methodPlay(fontSize: 15)
            //: RemoveBtn.setTitleColor(.white, for: .normal)
            RemoveBtn.setTitleColor(.white, for: .normal)
            //: } else {
        } else {
            //: RemoveBtn.setBackgroundImage(UIImage.outsideText(name: "btn_message_favourite_following_nor"), for: .normal)
            RemoveBtn.setBackgroundImage(UIImage.outsideText(name: String(bytes: str_modelValue.map{$0^43}, encoding: .utf8)!), for: .normal)
            //: RemoveBtn.setTitle("", for: .normal)
            RemoveBtn.setTitle("", for: .normal)
        }

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
                //: make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
                make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
            }
        }
    }

    //: @objc func RemoveBtnClick() {
    @objc func anyResumeClick() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: var isattion = false
        var isattion = false
        //: if type == .attention {
        if type == .attention {
            //: dict["removeAttentionUid"] = currenModel.uid
            dict[(String(str_selectedValue) + String(str_reportLayerValue.suffix(5)))] = currenModel.uid
            //: isattion = false
            isattion = false
            //: } else if type == .beLike {
        } else if type == .beLike {
            //: if currenModel.mutualAtt! {
            if currenModel.mutualAtt! {
                //: dict["removeAttentionUid"] = currenModel.uid
                dict[(String(str_selectedValue) + String(str_reportLayerValue.suffix(5)))] = currenModel.uid
                //: } else {
            } else {
                //: dict["attentionUid"] = currenModel.uid
                dict[(str_tableWithContent.replacingOccurrences(of: "wrap", with: "t") + String(str_okValue.suffix(7)))] = currenModel.uid
            }
            //: isattion = !currenModel.mutualAtt!
            isattion = !currenModel.mutualAtt!
        }
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: DoingSheRequestTool.req_atationTool(isAttention: isattion, params: dict) { succeed, result, errorModel in
        DoingSheRequestTool.trackSize(isAttention: isattion, params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard succeed else { return }
            guard succeed else { return }
            //: if self.type == .attention {
            if self.type == .attention {
                //: if self.delegate != nil {
                if self.delegate != nil {
                    //: self.delegate?.cancelAtationSeleteIndex(self.seleteIndex!)
                    self.delegate?.wireTab(self.seleteIndex!)
                }
                //: } else if self.type == .beLike {
            } else if self.type == .beLike {
                //: if self.delegate != nil {
                if self.delegate != nil {
                    //: self.currenModel.mutualAtt = !self.currenModel.mutualAtt!
                    self.currenModel.mutualAtt = !self.currenModel.mutualAtt!
                    //: self.otherLB.isHidden = !self.currenModel.mutualAtt!
                    self.otherLB.isHidden = !self.currenModel.mutualAtt!
                    //: if self.currenModel.mutualAtt! {
                    if self.currenModel.mutualAtt! {
                        //: self.RemoveBtn.setBackgroundImage(UIImage.outsideText(name: "btn_message_favourite_following_nor"), for: .normal)
                        self.RemoveBtn.setBackgroundImage(UIImage.outsideText(name: String(bytes: str_modelValue.map{$0^43}, encoding: .utf8)!), for: .normal)
                        //: self.RemoveBtn.setTitle("", for: .normal)
                        self.RemoveBtn.setTitle("", for: .normal)
                        //: } else {
                    } else {
                        //: self.RemoveBtn.setBackgroundImage(UIImage.outsideText(name: "btn_message_favourite_follow_nor"), for: .normal)
                        self.RemoveBtn.setBackgroundImage(UIImage.outsideText(name: String(bytes: str_timeTitle, encoding: .utf8)!), for: .normal)
                        //: self.RemoveBtn.setTitle("Follow".localized, for: .normal)
                        self.RemoveBtn.setTitle((String(str_centerText.suffix(6))).localized, for: .normal)
                        //: self.RemoveBtn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
                        self.RemoveBtn.titleLabel?.font = UIFont.methodPlay(fontSize: 15)
                        //: self.RemoveBtn.setTitleColor(.white, for: .normal)
                        self.RemoveBtn.setTitleColor(.white, for: .normal)
                    }
                    //: self.delegate?.belikeAtationSeleteIndex(self.seleteIndex!)
                    self.delegate?.stochasticProcess(self.seleteIndex!)
                }
            }
        }
    }

    //: @objc func IconBtnClick() {
    @objc func confirmImagePath() {
        //: LimitPushManager.share.func__pushToUserDetailVC(uid: currenModel.uid)
        LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: currenModel.uid)
    }
}

// MARK: - UI

//: extension TalkingAttentionCell {
extension ConstraintAttentionCell {
    //: func layoutSubViewsConstraints() {
    func listener() {
        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.top.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(10)
            make.leading.equalTo(self).offset(10)
            //: make.top.equalTo(self).offset(3)
            make.top.equalTo(self).offset(3)
            //: make.width.height.equalTo(69.6)
            make.width.height.equalTo(69.6)
        }
        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            //: make.top.equalTo(self).offset(15)
            make.top.equalTo(self).offset(15)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
        //: cardImg.snp.makeConstraints { make in
        cardImg.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
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
            //: make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
            make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
        }
        //: otherLB.snp.makeConstraints { make in
        otherLB.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel)
            make.leading.equalTo(nameLabel)
            //: make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            //: make.size.equalTo(CGSize(width: 98, height: 16))
            make.size.equalTo(CGSize(width: 98, height: 16))
        }
        //: RemoveBtn.snp.makeConstraints { make in
        RemoveBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
            //: make.size.equalTo(CGSize(width: 74, height: 30))
            make.size.equalTo(CGSize(width: 74, height: 30))
        }
    }
}
