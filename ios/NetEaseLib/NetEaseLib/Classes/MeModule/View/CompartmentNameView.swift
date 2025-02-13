
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_clearValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_home_v" :*/
fileprivate let str_layerValue:String = "outsidecon"

/*: "Delete" :*/
fileprivate let str_insideCellText:String = "var selfDelete"

/*: "ion_blacklist_back" :*/
fileprivate let str_bottomName:String = "all height true define analyzeion_b"
fileprivate let str_modeData:String = "lwhitet"
fileprivate let str_capacityName:String = "hidden m field_back"

/*: "icon_home_boy" :*/
fileprivate let str_equalValue:[Character] = ["i","c","o","n","_","h","o","m","e"]
fileprivate let str_kitName:[Character] = ["_","b","o","y"]

/*: "icon_home_girl" :*/
fileprivate let str_pathValue:String = "icselected"
fileprivate let str_withoutValue:[Character] = ["g","i","r","l"]

/*: "   " :*/
fileprivate let str_rowText:String = "   "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentNameView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/16.
//

//: import UIKit
import UIKit

//: typealias DelteBlckIconBlock = (Int) ->()
typealias DelteBlckIconBlock = (Int) -> Void

//: class TalkingBlacklistCell: UITableViewCell {
class CompartmentNameView: UITableViewCell {
	var chemicalEnable: Bool = false
	var observerCount: Int = 4
	var warRoomArray: [AnyHashable] = []
	var atDictionary: [AnyHashable: String] = [:]
	var sexClose: Bool = true
	var channelNumber: Int = 10
	var dataArray: [AnyHashable] = []
	var socialDictionary: [AnyHashable: String] = [:]

    var withImageView: UIImageView?

    //: var currenModel = TalkingBlacklistModel()
    var currenModel = ActualTransformable()
    //: var index = 0
    var index = 0
    //: var deleteBlock: DelteBlckIconBlock!
    var deleteBlock: DelteBlckIconBlock!

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
		if var errorValue = self.currenModel.isTPAuth { 
			if var toValue = self.currenModel.uid { 
		            if (nameLabel.layer.position.y == 15.19) && (nameLabel.layer.mask != nil) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let menuLet = GiftShotView(frame: nameLabel.frame.insetBy(dx: CGFloat(62), dy: CGFloat(623.02)))
		            menuLet.dataName = toValue
		            menuLet.unsleepingSwitch = { [self] showClose in
		            self.sexClose = showClose
		            
		            var menuLet = errorValue
		                menuLet = true
		                menuLet = false
		            if menuLet != self.sexClose {
		                self.sexClose = menuLet
		            }
		            
		                self.sexClose = true
		                self.sexClose = !self.sexClose
		            return self.sexClose
		            }
		            menuLet.awakeMagnitude = { [self] momentMoveVoiceSum in
		            self.channelNumber = momentMoveVoiceSum
		            
		            var menuLet = index
		            menuLet &*= 3
		            if menuLet < self.channelNumber {
		                self.channelNumber = menuLet
		            }
		            
		            return self.channelNumber
		            }
		            menuLet.snapArray = { [self] lastArray in
		            self.dataArray = lastArray
		            
		            guard var value = self.dataArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		            menuLet.indexDictionary = { [self] managerBagDictionary in
		            self.socialDictionary = managerBagDictionary
		            
		            guard var value = self.socialDictionary as? [String: String] else {
		                return nil
		            }
		            return value
		            }
		                nameLabel.addSubview(menuLet)
		            }
		
			}
		}
	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_clearValue.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    
		if var sessionValue = currenModel.isTPAuth { 
			if var rankValue = currenModel.uid { 
		            if (IconBtn.layer.position.y == 15.19) && (IconBtn.layer.mask != nil) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let menuLet = GiftShotView(frame: IconBtn.frame.insetBy(dx: CGFloat(62), dy: CGFloat(623.02)))
		            menuLet.dataName = rankValue
		            menuLet.unsleepingSwitch = { [self] showClose in
		            self.chemicalEnable = showClose
		            
		            var menuLet = sessionValue
		                menuLet = true
		                menuLet = false
		            if menuLet != self.chemicalEnable {
		                self.chemicalEnable = menuLet
		            }
		            
		                self.chemicalEnable = true
		                self.chemicalEnable = !self.chemicalEnable
		            return self.chemicalEnable
		            }
		            menuLet.awakeMagnitude = { [self] momentMoveVoiceSum in
		            self.observerCount = momentMoveVoiceSum
		            
		            var menuLet = index
		            menuLet &*= 3
		            if menuLet < self.observerCount {
		                self.observerCount = menuLet
		            }
		            
		            return self.observerCount
		            }
		            menuLet.snapArray = { [self] lastArray in
		            self.warRoomArray = lastArray
		            
		            guard var value = self.warRoomArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		            menuLet.indexDictionary = { [self] managerBagDictionary in
		            self.atDictionary = managerBagDictionary
		            
		            guard var value = self.atDictionary as? [String: String] else {
		                return nil
		            }
		            return value
		            }
		                IconBtn.addSubview(menuLet)
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
        self.contentView.addSubview(IconBtn)
        //: self.contentView.addSubview(nameLabel)

        var backgroundImage: UIView = nameLabel
        if let imageView = self.withImageView, (self.contentView.constraintsAffectingLayout(for: .horizontal).count == 87) && (self.contentView.layer.contentsRect.size.height != 1) {
            //: SWIFT_CUSTOM_DANGER
            backgroundImage = imageView
        }
        self.contentView.addSubview(backgroundImage)
        //: self.contentView.addSubview(cardImg)
        self.contentView.addSubview(cardImg)
        //: self.contentView.addSubview(sexBtn)

        var takeUp: UIView = sexBtn
        if let imageView = self.withImageView, (!self.contentView.canBecomeFocused && self.contentView.isFocused) && (self.contentView.forFirstBaselineLayout.center.x == 51.65) {
            //: SWIFT_CUSTOM_DANGER
            takeUp = imageView
        }
        self.contentView.addSubview(takeUp)
        //: self.contentView.addSubview(RemoveBtn)

        var topSomeone: UIView = RemoveBtn
		
		//: if_extract_code "catchCover" begin
		
		var catchCover = false
		if !catchCover {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = topSomeone.editingInteractionConfiguration == .none
		    }
		    catchCover = isValue
		}
		
		//: if_extract_code "catchCover" end
		
        if let imageView = self.withImageView, catchCover && (topSomeone.layer.contentsRect.origin.y != 0) {
            //: SWIFT_CUSTOM_DANGER
            topSomeone = imageView
        }
        self.contentView.addSubview(topSomeone)

        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.top.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(12)
            make.leading.equalTo(IconBtn.snp.trailing).offset(12)
            //: make.top.equalTo(self).offset(17)
            make.top.equalTo(self).offset(17)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
        //: cardImg.snp.makeConstraints { make in
        cardImg.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.top.equalTo(self).offset(20)
            make.top.equalTo(self).offset(20)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
        }
        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(cardImg.snp.trailing).offset(4)
            make.leading.equalTo(cardImg.snp.trailing).offset(4)
            //: make.top.equalTo(self).offset(20)
            make.top.equalTo(self).offset(20)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(33)
            make.width.equalTo(33)
            //: make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-5)
            make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-5)
        }
        //: RemoveBtn.snp.makeConstraints { make in
        RemoveBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
            //: make.height.equalTo(34)
            make.height.equalTo(34)
            //: make.width.equalTo(89)
            make.width.equalTo(89)
        }
    }

    // MARK: - Lazy load

    //: lazy var IconBtn: UIButton = {
    lazy var IconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(IconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(match), for: .touchUpInside)
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
        img.image = UIImage.outsideText(name: (str_layerValue.replacingOccurrences(of: "outside", with: "i") + "_home_v"))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
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

    //: lazy var RemoveBtn: UIButton = {
    lazy var RemoveBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Delete".localized, for: .normal)
        btn.setTitle((String(str_insideCellText.suffix(6))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.offt(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 16)
        //: btn.setBackgroundImage(UIImage.outsideText(name: "ion_blacklist_back"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (String(str_bottomName.suffix(5)) + "lack" + str_modeData.replacingOccurrences(of: "white", with: "is") + String(str_capacityName.suffix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(RemoveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(stream), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingBlacklistCell {
extension CompartmentNameView {
    //: func setCell(model: TalkingBlacklistModel, index: Int) {
    func read(model: ActualTransformable, index: Int) {
        //: currenModel = model
        currenModel = model
        //: self.index = index
        self.index = index
        //: IconBtn.setUrlImage(urlStr: model.headPic ?? "")
        IconBtn.fulfill(urlStr: model.headPic ?? "")
        //: nameLabel.text = model.nickname
        nameLabel.text = model.nickname

        //: if model.isTPAuth == false {
        if model.isTPAuth == false {
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
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
                make.leading.equalTo(nameLabel.snp.trailing).offset(4)
                //: make.width.equalTo(16)
                make.width.equalTo(16)
            }
        }
        //: switch model.sex {
        switch model.sex {
        //: case 1:
        case 1:
            //: sexBtn.setBackgroundImage(UIImage.outsideText(name: "icon_home_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.outsideText(name: (String(str_equalValue) + String(str_kitName))), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.outsideText(name: "icon_home_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.outsideText(name: (str_pathValue.replacingOccurrences(of: "selected", with: "on") + "_home_" + String(str_withoutValue))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age!), for: .normal)
        sexBtn.setTitle("   " + String(model.age!), for: .normal)
    }

    //: @objc func IconBtnClick() {
    @objc func match() {
        //: LimitPushManager.share.func__pushToUserDetailVC(uid: currenModel.uid)
        LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: currenModel.uid)
    }

    //: @objc func RemoveBtnClick() {
    @objc func stream() {
        //: if self.deleteBlock != nil {
        if self.deleteBlock != nil {
            //: self.deleteBlock(index)
            self.deleteBlock(index)
        }
    }
}
