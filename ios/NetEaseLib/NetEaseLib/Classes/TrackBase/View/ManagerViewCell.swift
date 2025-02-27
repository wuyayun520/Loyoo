
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_ofName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_home_v" :*/
fileprivate let str_blockData:[Character] = ["i","c","o","n","_","h","o","m","e","_"]
fileprivate let str_viewNameContent:String = "data"

/*: "icon_lounge" :*/
fileprivate let str_scaleValue:String = "self self connection caseicon_"
fileprivate let str_pathTitle:String = "LOUNGE"

/*: "#AAAAAA" :*/
fileprivate let str_originData:[Character] = ["#","A","A","A","A"]
fileprivate let str_ofTitle:String = "make"

/*: "icon_moment_nor_report" :*/
fileprivate let str_modeData:[Character] = ["i","c","o","n","_","m","o","m","e","n","t","_","n","o","r","_","r","e","p"]
fileprivate let str_videoBroadcastValue:String = "orview"

/*: "img_me_edit_photo_default" :*/
fileprivate let str_sName:String = "image label size appimg_m"
fileprivate let str_voiceEqualName:String = "t_phomake style value show make"
fileprivate let str_clearValue:[Character] = ["a","u","l","t"]

/*: "icon_home_boy" :*/
fileprivate let str_colorData:[Character] = ["i","c","o","n","_"]
fileprivate let str_iconValue:String = "video"
fileprivate let str_inputData:String = "me_boyin let to hidden share"

/*: "icon_home_girl" :*/
fileprivate let str_imageData:[Character] = ["i","c","o","n","_","h","o","m","e","_"]
fileprivate let str_tableName:String = "girmanager"

/*: "   " :*/
fileprivate let str_countProgressData:String = "shareshareshare"

/*: "level_" :*/
fileprivate let str_pathText:[Character] = ["l","e","v","e","l","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/23.
//

//: import UIKit
import UIKit

//: typealias CommentReplyBlock = (_ nickNmae: String) -> Void
typealias CommentReplyBlock = (_ nickNmae: String) -> Void
//: typealias CommentDeleteReplyBlock = (_ deleteUid: String) -> Void
typealias CommentDeleteReplyBlock = (_ deleteUid: String) -> Void

//: class TalkingCommentItemCell: UITableViewCell {
class ManagerViewCell: UITableViewCell {
	var pushOn: Bool = false
	var couvadeMagnitude: Int = 74
	var topTotal: Double = -20.8
	var itemName: String = "player"
	var pushArray: [AnyHashable] = []
	var thirdDictionary: [AnyHashable: String] = [:]
	var awakeOn: Bool = false
	var rescueQuantity: Int = 69
	var titleNumber: Double = -90.5
	var roomName: String = "image"
	var equalArray: [AnyHashable] = []
	var manageDictionary: [AnyHashable: String] = [:]

    var upImageImageView: UIImageView?

    //: var cid = ""
    var cid = ""
    //: var uid = ""
    var uid = ""
    //: var commentReplyBlock: CommentReplyBlock?
    var commentReplyBlock: CommentReplyBlock?
    //: var DeleteReplyBlock: CommentDeleteReplyBlock?
    var DeleteReplyBlock: CommentDeleteReplyBlock?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
            if (nameLabel.isExclusiveTouch) && (nameLabel.layer.position.y == 96.45) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let pathLet = CleanView(frame: nameLabel.bounds.standardized)

            pathLet.cellName = uid
            
            pathLet.errorViewDoing = { [self] viewSwitch in
            self.pushOn = viewSwitch
            
            var pathLet = selected
                pathLet = true
                pathLet = !pathLet
            if pathLet != self.pushOn {
                self.pushOn = pathLet
            }
            
            return self.pushOn
            }
            pathLet.routeTotal = { [self] titleSum in
            self.couvadeMagnitude = titleSum
            
            return self.couvadeMagnitude
            }
            pathLet.topPriceInterval = { [self] arrayMagnitude in
            self.topTotal = arrayMagnitude
            
            return self.topTotal
            }
            pathLet.harvestMoonTitle = { [self] replyName in
            self.itemName = replyName
            
            var pathLet = cid
            pathLet.append(pathLet[pathLet.startIndex])
            if pathLet.hasPrefix(self.itemName) {
                self.itemName = pathLet
            }
            
            do {
                self.itemName = try String(contentsOf: NSURL.fileURL(withPathComponents: ["temp", "year", "plist"])!, encoding: .utf8)
            } catch {
                self.itemName = error.localizedDescription
            }
            return self.itemName
            }
            pathLet.bestowmentArray = { [self] partyArray in
            self.pushArray = partyArray
            
            guard var value = self.pushArray as? [String] else {
                return nil
            }
            return value
            }
            pathLet.canDictionary = { [self] tableDictionary in
            self.thirdDictionary = tableDictionary
            
            guard var value = self.thirdDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                nameLabel.addSubview(pathLet)
            }

	}

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_ofName, encoding: .utf8)!)
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

        //: setupSubviews()
        videoColor()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    
            if (contentLB.isExclusiveTouch) && (contentLB.layer.position.y == 96.45) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let pathLet = CleanView(frame: contentLB.bounds.standardized)

            pathLet.cellName = uid
            
            pathLet.errorViewDoing = { [self] viewSwitch in
            self.awakeOn = viewSwitch
            
            return self.awakeOn
            }
            pathLet.routeTotal = { [self] titleSum in
            self.rescueQuantity = titleSum
            
            return self.rescueQuantity
            }
            pathLet.topPriceInterval = { [self] arrayMagnitude in
            self.titleNumber = arrayMagnitude
            
            return self.titleNumber
            }
            pathLet.harvestMoonTitle = { [self] replyName in
            self.roomName = replyName
            
            var pathLet = uid
            pathLet.append(pathLet[pathLet.startIndex])
            if pathLet.hasPrefix(self.roomName) {
                self.roomName = pathLet
            }
            
            do {
                self.roomName = try String(contentsOf: NSURL.fileURL(withPathComponents: ["temp", "year", "plist"])!, encoding: .utf8)
            } catch {
                self.roomName = error.localizedDescription
            }
            return self.roomName
            }
            pathLet.bestowmentArray = { [self] partyArray in
            self.equalArray = partyArray
            
            guard var value = self.equalArray as? [String] else {
                return nil
            }
            return value
            }
            pathLet.canDictionary = { [self] tableDictionary in
            self.manageDictionary = tableDictionary
            
            guard var value = self.manageDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                contentLB.addSubview(pathLet)
            }

	}

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(transparencyMessage), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
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
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nameLabel: UILabel = {
    lazy var nameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .complexion()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var cardImgView: UIImageView = {
    lazy var cardImgView: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "icon_home_v")
        img.image = UIImage.outsideText(name: (String(str_blockData) + str_viewNameContent.replacingOccurrences(of: "data", with: "v")))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: self.addSubview(img)
        self.addSubview(img)
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
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 11)
        btn.titleLabel?.font = .thoughtImage(type: .Medium, fontSize: 11)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var levelBtn: UIButton = {
    lazy var levelBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 11)
        btn.titleLabel?.font = .thoughtImage(type: .Medium, fontSize: 11)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var loungeImgV: UIImageView = {
    lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "icon_lounge")
        img.image = UIImage.outsideText(name: (String(str_scaleValue.suffix(5)) + str_pathTitle.lowercased()))
        //: self.addSubview(img)
        self.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: lazy var timeLB: UILabel = {
    lazy var timeLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 13)
        label.font = .thoughtImage(type: .Regular, fontSize: 13)
        //: label.textColor = UIColor.init(hex: "#AAAAAA")
        label.textColor = UIColor(hex: (String(str_originData) + str_ofTitle.replacingOccurrences(of: "make", with: "AA")))
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var contentLB: UILabel = {
    lazy var contentLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.lineBreakMode = .byCharWrapping
        label.lineBreakMode = .byCharWrapping
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var BlockBtn: UIButton = {
    lazy var BlockBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "icon_moment_nor_report"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_modeData) + str_videoBroadcastValue.replacingOccurrences(of: "view", with: "t"))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(BlockBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(parcel), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingCommentItemCell {
extension ManagerViewCell {
    //: @objc func clickBlockAction() {
    @objc func topAction() {
        //: if commentReplyBlock != nil {
        if commentReplyBlock != nil {
            //: commentReplyBlock!(nameLabel.text!)
            commentReplyBlock!(nameLabel.text!)
        }
    }

    //: @objc func onLongTapCell(gestureRecongnizer: UIGestureRecognizer) {
    @objc func toGesture(gestureRecongnizer: UIGestureRecognizer) {
        //: if gestureRecongnizer.state == .began {
        if gestureRecongnizer.state == .began {
            //: if self.DeleteReplyBlock != nil {
            if self.DeleteReplyBlock != nil {
                //: self.DeleteReplyBlock!(self.cid)
                self.DeleteReplyBlock!(self.cid)
            }
        }
    }

    //: @objc func iconBtnClick() {
    @objc func transparencyMessage() {
        //: LimitPushManager.share.func__pushToUserDetailVC(uid: uid)
        LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: uid)
    }

    //: @objc func BlockBtnClick() {
    @objc func parcel() {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportCommentType, rId: cid)
        let reportView = LimitMediaAlertView(frame: UIScreen.main.bounds, type: .reportCommentType, rId: cid)
        //: reportView.showReportViewIn(view: ImageMacroDefine.getWindow())
        reportView.icon(view: ImageMacroDefine.sumHungWindowObject())
    }
}

//: extension TalkingCommentItemCell {
extension ManagerViewCell {
    //: func configCell(model: TalkingCommentModel) {
    func frankSex(model: AppWithHandyJSON) {
        //: cid = model.cid ?? ""
        cid = model.cid ?? ""
        //: uid = model.uid ?? ""
        uid = model.uid ?? ""
        //: iconBtn.setUrlImage(urlStr: model.headPic ?? "", placeImg: UIImage.outsideText(name: "img_me_edit_photo_default"))
        iconBtn.fulfill(urlStr: model.headPic ?? "", placeImg: UIImage.outsideText(name: (String(str_sName.suffix(5)) + "e_edi" + String(str_voiceEqualName.prefix(5)) + "to_def" + String(str_clearValue))))
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: iconBtn.snp.remakeConstraints { make in
            iconBtn.snp.remakeConstraints { make in
                //: make.leading.top.equalTo(16)
                make.leading.top.equalTo(16)
                //: make.size.equalTo(CGSize.init(width: 28, height: 28))
                make.size.equalTo(CGSize(width: 28, height: 28))
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

        //: nameLabel.textColor = model.loungePlus ? .userVipColor():.appValueColor()
        nameLabel.textColor = model.loungePlus ? .withTime() : .complexion()
        //: nameLabel.text = model.nickname
        nameLabel.text = model.nickname

        //: if !model.isTPAuth {
        if !model.isTPAuth {
            //: cardImgView.isHidden = true
            cardImgView.isHidden = true
            //: cardImgView.snp.makeConstraints { make in
            cardImgView.snp.makeConstraints { make in
                //: make.width.equalTo(1)
                make.width.equalTo(1)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(0)
                make.leading.equalTo(nameLabel.snp.trailing).offset(0)
            }
            //: } else {
        } else {
            //: cardImgView.isHidden = false
            cardImgView.isHidden = false
            //: cardImgView.snp.makeConstraints { make in
            cardImgView.snp.makeConstraints { make in
                //: make.width.equalTo(16)
                make.width.equalTo(16)
            }
        }

        //: switch model.sex {
        switch model.sex {
        //: case Gender.male.rawValue:
        case SizeCustomReflectable.male.rawValue:
            //: sexBtn.setBackgroundImage(UIImage.outsideText(name: "icon_home_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.outsideText(name: (String(str_colorData) + str_iconValue.replacingOccurrences(of: "video", with: "ho") + String(str_inputData.prefix(6)))), for: .normal)
        //: break
        //: case Gender.female.rawValue:
        case SizeCustomReflectable.female.rawValue:
            //: sexBtn.setBackgroundImage(UIImage.outsideText(name: "icon_home_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.outsideText(name: (String(str_imageData) + str_tableName.replacingOccurrences(of: "manager", with: "l"))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)
        sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)

        //: levelBtn.setBackgroundImage(UIImage.outsideText(name: "level_" + String(model.level ?? 1 )), for: .normal)
        levelBtn.setBackgroundImage(UIImage.outsideText(name: (String(str_pathText)) + String(model.level ?? 1)), for: .normal)

        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus

        //: timeLB .text = model.addTime
        timeLB.text = model.addTime
        //: contentLB.text = model.content
        contentLB.text = model.content
        //: BlockBtn.isHidden = MeasurementAppManager.share.loginUserMode.userID == model.uid
        BlockBtn.isHidden = MeasurementAppManager.share.loginUserMode.userID == model.uid
    }
}

// MARK: - LayoutUI

//: extension TalkingCommentItemCell {
extension ManagerViewCell {
    // 添加视图
    //: private func setupSubviews() {
    private func videoColor() {
        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.leading.top.equalTo(15)
            make.leading.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 30, height: 30))
            make.size.equalTo(CGSize(width: 30, height: 30))
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.top.equalTo(12)
            make.top.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: 34.6, height: 34.8))
            make.size.equalTo(CGSize(width: 34.6, height: 34.8))
        }

        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.trailing).offset(6)
            make.leading.equalTo(iconBtn.snp.trailing).offset(6)
            //: make.top.equalTo(iconBtn.snp.top)
            make.top.equalTo(iconBtn.snp.top)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.lessThanOrEqualTo(140)
            make.width.lessThanOrEqualTo(140)
        }
        //: cardImgView.snp.makeConstraints { make in
        cardImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.top.equalTo(iconBtn.snp.top)
            make.top.equalTo(iconBtn.snp.top)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }
        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(cardImgView.snp.trailing).offset(3)
            make.leading.equalTo(cardImgView.snp.trailing).offset(3)
            //: make.top.equalTo(iconBtn)
            make.top.equalTo(iconBtn)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(35)
            make.width.equalTo(35)
        }
        //: levelBtn.snp.makeConstraints { make in
        levelBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(sexBtn.snp.trailing).offset(3)
            make.leading.equalTo(sexBtn.snp.trailing).offset(3)
            //: make.top.equalTo(iconBtn.snp.top)
            make.top.equalTo(iconBtn.snp.top)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.width.equalTo(36)
            make.width.equalTo(36)
        }
        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.leading.equalTo(levelBtn.snp.trailing).offset(3)
            make.leading.equalTo(levelBtn.snp.trailing).offset(3)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }
        //: timeLB.snp.makeConstraints { make in
        timeLB.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel)
            make.leading.equalTo(nameLabel)
            //: make.top.equalTo(nameLabel.snp.bottom).offset(3)
            make.top.equalTo(nameLabel.snp.bottom).offset(3)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: contentLB.snp.makeConstraints { make in
        contentLB.snp.makeConstraints { make in
            //: make.top.equalTo(timeLB.snp.bottom).offset(3)
            make.top.equalTo(timeLB.snp.bottom).offset(3)
            //: make.leading.equalTo(nameLabel)
            make.leading.equalTo(nameLabel)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }

        //: BlockBtn.snp.makeConstraints { make in
        BlockBtn.snp.makeConstraints { make in
            //: make.top.equalTo(nameLabel).offset(10)
            make.top.equalTo(nameLabel).offset(10)
            //: make.trailing.equalTo(-16)
            make.trailing.equalTo(-16)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: self.isUserInteractionEnabled = true
        self.isUserInteractionEnabled = true
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(clickBlockAction))
        let tap = UITapGestureRecognizer(target: self, action: #selector(topAction))
        //: self.addGestureRecognizer(tap)
        self.addGestureRecognizer(tap)

        //: let longPress = UILongPressGestureRecognizer(target: self, action: #selector(onLongTapCell(gestureRecongnizer:)))
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(toGesture(gestureRecongnizer:)))
        //: longPress.delegate = self
        longPress.delegate = self
        //: longPress.minimumPressDuration = 0.3
        longPress.minimumPressDuration = 0.3
        //: self.addGestureRecognizer(longPress)
        self.addGestureRecognizer(longPress)
    }
}
