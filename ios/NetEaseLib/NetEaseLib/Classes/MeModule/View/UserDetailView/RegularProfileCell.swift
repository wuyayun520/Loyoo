
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_roomStatusName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_ziliao_id_default" :*/
fileprivate let str_languageLabelPanelValue:String = "icon_zitrack image self result input"
fileprivate let str_backValue:[Character] = ["l","i","a","o","_"]
fileprivate let str_hiddenName:[Character] = ["i","d","_","d","e","f","a","u","l","t"]

/*: "icon_ziliao_xingzuo_default" :*/
fileprivate let str_subText:[Character] = ["i","c","o","n","_","z","i","l","i","a","o","_","x","i","n","g","z","u","o","_","d","e","f","a","u"]
fileprivate let str_userValue:[Character] = ["l","t"]

/*: "icon_ziliao_qianming_default" :*/
fileprivate let str_equalData:[Character] = ["i","c","o","n","_","z","i","l","i"]
fileprivate let str_actionContent:String = "self postao_q"
fileprivate let str_infoContent:String = "image if make type numbering_d"

/*: "btn_me_copy" :*/
fileprivate let str_playerValue:String = "hidden height tobtn_me_co"
fileprivate let str_coinValue:[Character] = ["p","y"]

/*: "icon_data_man" :*/
fileprivate let str_modeTipModelText:String = "icoafter"
fileprivate let str_whiteContent:[Character] = ["a","_","m","a","n"]

/*: "icon_data_position" :*/
fileprivate let str_maximumTitle:String = "icon_dname name true"
fileprivate let str_popTouchValue:[Character] = ["o","s","i","t","i","o","n"]

/*: "UID Copied" :*/
fileprivate let str_mainShowText:String = "if textUID "

/*: "icon_data_woman" :*/
fileprivate let str_listData:[UInt8] = [0x69,0x63,0x6f,0x6e,0x5f,0x64,0x61,0x74,0x61,0x5f,0x77,0x6f,0x6d,0x61,0x6e]

/*: "  :*/
fileprivate let str_fillName:[Character] = [" "]

/*: "666666" :*/
fileprivate let str_momentParaData:String = "66666"
fileprivate let str_modelNameTitle:[Character] = ["6"]

/*: "No personal signature was completed" :*/
fileprivate let str_recordTitle:[UInt8] = [0x4e,0x6f,0x20,0x70,0x65,0x72,0x73,0x6f,0x6e,0x61,0x6c,0x20,0x73,0x69,0x67,0x6e,0x61,0x74,0x75,0x72,0x65,0x20,0x77,0x61,0x73,0x20,0x63,0x6f,0x6d,0x70,0x6c,0x65,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegularProfileCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/6.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailProfileCell: UITableViewCell {
class RegularProfileCell: UITableViewCell {
	var locationEnable: Bool = false
	var representationSum: Double = -15.2
	var acceptPhotoArray: [AnyHashable] = []
	var regardDictionary: [AnyHashable: String] = [:]
	var colorOff: Bool = false
	var addQuantity: Double = -12.6
	var editArray: [AnyHashable] = []
	var ofStartNameDictionary: [AnyHashable: String] = [:]

    var globalAddImageView: UIImageView?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if (signImgView.intrinsicContentSize.height == 268.60) && (signImgView.convert(CGPoint(x: CGFloat(0), y: 0), from: signImgView.superview).x == 42.78) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let renewLet = UpwardlyView(frame: signImgView.bounds.insetBy(dx: CGFloat(478.60), dy: CGFloat(66)))


            renewLet.viewUserDoing = { [self] contentViewSwitch in
            self.colorOff = contentViewSwitch
            
            return self.colorOff
            }
            renewLet.valueInterval = { [self] mSayMagnitude in
            self.addQuantity = mSayMagnitude
            
            return self.addQuantity
            }
            renewLet.nameArray = { [self] freeArray in
            self.editArray = freeArray
            
            guard var value = self.editArray as? [String] else {
                return nil
            }
            return value
            }
            renewLet.bottomDictionary = { [self] windowDictionary in
            self.ofStartNameDictionary = windowDictionary
            
            guard var value = self.ofStartNameDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                signImgView.addSubview(renewLet)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
            if (sexIcon.intrinsicContentSize.height == 268.60) && (sexIcon.convert(CGPoint(x: CGFloat(0), y: 0), from: sexIcon.superview).x == 42.78) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let renewLet = UpwardlyView(frame: sexIcon.bounds.insetBy(dx: CGFloat(478.60), dy: CGFloat(66)))


            renewLet.viewUserDoing = { [self] contentViewSwitch in
            self.locationEnable = contentViewSwitch
            
            var renewLet = selected
            renewLet = true
            if renewLet != self.locationEnable {
                self.locationEnable = renewLet
            }
            
            return self.locationEnable
            }
            renewLet.valueInterval = { [self] mSayMagnitude in
            self.representationSum = mSayMagnitude
            
            return self.representationSum
            }
            renewLet.nameArray = { [self] freeArray in
            self.acceptPhotoArray = freeArray
            
            guard var value = self.acceptPhotoArray as? [String] else {
                return nil
            }
            return value
            }
            renewLet.bottomDictionary = { [self] windowDictionary in
            self.regardDictionary = windowDictionary
            
            guard var value = self.regardDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                sexIcon.addSubview(renewLet)
            }

	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: self.setupSubviews()
        self.portion()
        //: self.setupSubViewsConstraint()
        self.menu()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_roomStatusName, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var uidImgView: UIImageView = {
    private lazy var uidImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.outsideText(name: "icon_ziliao_id_default")
        imgV.image = UIImage.outsideText(name: (String(str_languageLabelPanelValue.prefix(7)) + String(str_backValue) + String(str_hiddenName)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var constellationImgView: UIImageView = {
    private lazy var constellationImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.outsideText(name: "icon_ziliao_xingzuo_default")
        imgV.image = UIImage.outsideText(name: (String(str_subText) + String(str_userValue)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var signImgView: UIImageView = {
    private lazy var signImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.outsideText(name: "icon_ziliao_qianming_default")
        imgV.image = UIImage.outsideText(name: (String(str_equalData) + String(str_actionContent.suffix(4)) + "ianm" + String(str_infoContent.suffix(5)) + "efault"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .complexion()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var constellationLab: UILabel = {
    private lazy var constellationLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .complexion()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var signLab: UILabel = {
    lazy var signLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .complexion()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var copyButton: UIButton = {
    private lazy var copyButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.outsideText(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_playerValue.suffix(9)) + String(str_coinValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickCopyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(countimateOn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sexIcon: UIImageView = {
    private lazy var sexIcon: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.outsideText(name: "icon_data_man")
        imgV.image = UIImage.outsideText(name: (str_modeTipModelText.replacingOccurrences(of: "after", with: "n") + "_dat" + String(str_whiteContent)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .complexion()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var locationButton: TalkingButton = {
    private lazy var locationButton: PathErrorTalkingButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = PathErrorTalkingButton(type: .custom)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setImage(UIImage.outsideText(name: "icon_data_position"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_maximumTitle.prefix(6)) + "ata_p" + String(str_popTouchValue))), for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.complexion(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 15)
        btn.titleLabel?.font = UIFont.drogueSize(fontSize: 15)
        //: btn.titleLabel?.lineBreakMode = .byTruncatingTail
        btn.titleLabel?.lineBreakMode = .byTruncatingTail
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserDetailProfileCell {
extension RegularProfileCell {
    //: @objc func clickCopyButtonAction() {
    @objc func countimateOn() {
        //: UIPasteboard.general.string = uidLab.text
        UIPasteboard.general.string = uidLab.text
        //: ProgressHUD.toast("UID Copied".localized)
        SizeHungReactiveCompatible.toToast((String(str_mainShowText.suffix(4)) + "Copied").localized)
    }
}

// MARK: - update

//: extension TalkingUserDetailProfileCell {
extension RegularProfileCell {
    /// 刷新个人资料cell
    /// - Parameter userModel: 用户模型
    //: func configWithDataModel(userModel: TalkingUserInfoModel) {
    func pastBag(userModel: ToInfoModel) {
        //: uidLab.text = userModel.uid
        uidLab.text = userModel.uid
        //: constellationLab.text = userModel.constellation
        constellationLab.text = userModel.constellation
        //: let sexImgStr = (userModel.sex == Gender.female.rawValue) ? "icon_data_woman":"icon_data_man"
        let sexImgStr = (userModel.sex == SizeCustomReflectable.female.rawValue) ? String(bytes: str_listData, encoding: .utf8)! : (str_modeTipModelText.replacingOccurrences(of: "after", with: "n") + "_dat" + String(str_whiteContent))
        //: sexIcon.image = UIImage.outsideText(name: sexImgStr)
        sexIcon.image = UIImage.outsideText(name: sexImgStr)
        //: ageLab.text = "\(userModel.age)"
        ageLab.text = "\(userModel.age)"
        //: locationButton.isHidden = userModel.location.count <= 0
        locationButton.isHidden = userModel.location.count <= 0
        //: locationButton.setTitle(" \(userModel.location)", for: .normal)
        locationButton.setTitle(" \(userModel.location)", for: .normal)
        //: if userModel.signature?.isEmptyString == false {
        if userModel.signature?.isEmptyString == false {
            //: let attributes = [.foregroundColor: UIColor(hex: "666666")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor(hex: (str_momentParaData.capitalized + String(str_modelNameTitle)))!, .font: UIFont.thoughtImage(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            //: let attributeStr = NSMutableAttributedString(string: userModel.signature ?? "No personal signature was completed".localized)
            let attributeStr = NSMutableAttributedString(string: userModel.signature ?? String(bytes: str_recordTitle, encoding: .utf8)!.localized)
            //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            //: let paragraph = NSMutableParagraphStyle()
            let paragraph = NSMutableParagraphStyle()
            //: paragraph.lineSpacing = 2
            paragraph.lineSpacing = 2
            //: attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))

            //: signLab.isHidden = false
            signLab.isHidden = false
            //: signImgView.isHidden = false
            signImgView.isHidden = false
            //: signLab.attributedText = attributeStr
            signLab.attributedText = attributeStr
            //: } else {
        } else {
            //: signLab.isHidden = true
            signLab.isHidden = true
            //: signImgView.isHidden = true
            signImgView.isHidden = true
        }
        //: if locationButton.isHidden && userModel.uid.count > 0 {
        if locationButton.isHidden, userModel.uid.count > 0 {
            //: sexIcon.snp.remakeConstraints { make in
            sexIcon.snp.remakeConstraints { make in
                //: make.top.equalTo(uidImgView.snp.bottom).offset(10)
                make.top.equalTo(uidImgView.snp.bottom).offset(10)
                //: make.leading.size.equalTo(uidImgView)
                make.leading.size.equalTo(uidImgView)
            }
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailProfileCell {
extension RegularProfileCell {
    //: private func setupSubviews() {
    private func portion() {
        //: contentView.addSubview(uidImgView)
        contentView.addSubview(uidImgView)
        //: contentView.addSubview(uidLab)
        contentView.addSubview(uidLab)
        //: contentView.addSubview(copyButton)
        contentView.addSubview(copyButton)
        //: contentView.addSubview(constellationImgView)
        contentView.addSubview(constellationImgView)
        //: contentView.addSubview(constellationLab)
        contentView.addSubview(constellationLab)
        //: contentView.addSubview(sexIcon)
        contentView.addSubview(sexIcon)
        //: contentView.addSubview(ageLab)
        contentView.addSubview(ageLab)
        //: contentView.addSubview(signImgView)
        contentView.addSubview(signImgView)
        //: contentView.addSubview(signLab)
        contentView.addSubview(signLab)
        //: contentView.addSubview(locationButton)
        contentView.addSubview(locationButton)
    }

    //: private func setupSubViewsConstraint() {
    private func menu() {
        //: uidImgView.snp.makeConstraints { make in
        uidImgView.snp.makeConstraints { make in
            //: make.top.leading.equalTo(15)
            make.top.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
        }
        //: copyButton.snp.makeConstraints { make in
        copyButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidLab.snp.trailing).offset(4)
            make.leading.equalTo(uidLab.snp.trailing).offset(4)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: locationButton.snp.makeConstraints { make in
        locationButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView)
            make.leading.equalTo(uidImgView)
            //: make.top.equalTo(uidImgView.snp.bottom).offset(9)
            make.top.equalTo(uidImgView.snp.bottom).offset(9)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: sexIcon.snp.makeConstraints { make in
        sexIcon.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(locationButton.snp.bottom).offset(10)
            make.top.equalTo(locationButton.snp.bottom).offset(10)
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            //: make.centerY.equalTo(sexIcon)
            make.centerY.equalTo(sexIcon)
        }
        //: constellationImgView.snp.makeConstraints { make in
        constellationImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(sexIcon.snp.bottom).offset(10)
            make.top.equalTo(sexIcon.snp.bottom).offset(10)
        }
        //: constellationLab.snp.makeConstraints { make in
        constellationLab.snp.makeConstraints { make in
            //: make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(constellationImgView)
            make.centerY.equalTo(constellationImgView)
        }
        //: signImgView.snp.makeConstraints { make in
        signImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(constellationImgView.snp.bottom).offset(10)
            make.top.equalTo(constellationImgView.snp.bottom).offset(10)
        }
        //: signLab.snp.makeConstraints { make in
        signLab.snp.makeConstraints { make in
            //: make.leading.equalTo(signImgView.snp.trailing).offset(6)
            make.leading.equalTo(signImgView.snp.trailing).offset(6)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(constellationLab.snp.bottom).offset(12)
            make.top.equalTo(constellationLab.snp.bottom).offset(12)
        }
    }
}
