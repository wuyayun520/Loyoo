
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_giftPlayerText:[UInt8] = [0x2a,0x2d,0x2a,0x37,0x6b,0x20,0x2c,0x27,0x26,0x31,0x79,0x6a,0x63,0x2b,0x22,0x30,0x63,0x2d,0x2c,0x37,0x63,0x21,0x26,0x26,0x2d,0x63,0x2a,0x2e,0x33,0x2f,0x26,0x2e,0x26,0x2d,0x37,0x26,0x27]

/*: "icon_home_boy" :*/
fileprivate let str_coinValue:[Character] = ["i","c","o","n","_","h","o","m","e","_"]
fileprivate let str_fileText:String = "bblock"

/*: "icon_home_girl" :*/
fileprivate let str_gestureText:String = "path var self text imageicon_home"
fileprivate let str_listValue:[Character] = ["_","g","i","r","l"]

/*: "   " :*/
fileprivate let str_spaceData:String = "   "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfflineRecordDarkroomLoadTalkingCellView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/10.
//

//: import UIKit
import UIKit

//: class TalkingChatRoomOnlineListCell: UITableViewCell {
class OfflineRecordDarkroomLoadTalkingCellView: UITableViewCell {
	var stopNumber: Double = 17.7
	var iconGiftDictionary: [AnyHashable: String] = [:]
	var playerMagnitude: Double = 52.6
	var aboveDictionary: [AnyHashable: String] = [:]

    var timeImageView: UIImageView?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
	if let timeImageView = timeImageView {

            if (timeImageView.contentScaleFactor == 1.63) && (timeImageView.layer.zPosition == 61.80) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let requestDown = ThanOfView()



            
            
            requestDown.allMagnitude = { [self] brandSum in
            self.stopNumber = brandSum
            
            self.stopNumber = 0
            return self.stopNumber
            }
            requestDown.awakeDictionary = { [self] collectionDictionary in
            self.iconGiftDictionary = collectionDictionary
            
            guard var value = self.iconGiftDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                timeImageView.addSubview(requestDown)
            }

	}

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
            if (self.constraintsAffectingLayout(for: .horizontal).count == 81) && (self.convert(CGPoint.zero, to: self.superview).y == 42.65) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let sectionGift = ThanOfView(frame: self.frame.insetBy(dx: CGFloat(390.87), dy: CGFloat(463.39)))
            sectionGift.startOff = animated


            
            
            sectionGift.allMagnitude = { [self] brandSum in
            self.playerMagnitude = brandSum
            
                self.playerMagnitude -= 1
                if self.playerMagnitude <= 0 {
                    self.playerMagnitude = self.playerMagnitude + 1
                }
            return self.playerMagnitude
            }
            sectionGift.awakeDictionary = { [self] collectionDictionary in
            self.aboveDictionary = collectionDictionary
            
            guard var value = self.aboveDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.addSubview(sectionGift)
            }

	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: createCellUI()
        adRoom()
        //: layoutSubViewsConstraints()
        willForSource()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_giftPlayerText.map{$0^67}, encoding: .utf8)!)
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
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nameLB: UILabel = {
    lazy var nameLB: UILabel = {
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

    //: lazy var signLB: UILabel = {
    lazy var signLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: return label
        return label
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
}

// MARK: - Event

//: extension TalkingChatRoomOnlineListCell {
extension OfflineRecordDarkroomLoadTalkingCellView {
    //: func setOnlineListCell(model: TalkingChatRoomMemberModel, type: TitleType) {
    func pathStop(model: RegularThen, type: AtConvertible) {
        //: IconBtn.setUrlImage(urlStr: model.headPic)
        IconBtn.fulfill(urlStr: model.headPic)
        //: nameLB.text = model.nickname
        nameLB.text = model.nickname
        //: signLB.text = model.signature
        signLB.text = model.signature

        //: switch model.sex {
        switch model.sex {
        //: case 1:
        case 1:
            //: sexBtn.setBackgroundImage(UIImage.outsideText(name: "icon_home_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.outsideText(name: (String(str_coinValue) + str_fileText.replacingOccurrences(of: "block", with: "oy"))), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.outsideText(name: "icon_home_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.outsideText(name: (String(str_gestureText.suffix(9)) + String(str_listValue))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age), for: .normal)
        sexBtn.setTitle("   " + String(model.age), for: .normal)

        //: switch type {
        switch type {
        //: case .normal:
        case .normal:
            //: nameLB.snp.remakeConstraints { make in
            nameLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                //: make.top.equalTo(self).offset(16)
                make.top.equalTo(self).offset(16)
                //: make.height.equalTo(21)
                make.height.equalTo(21)
                //: make.trailing.lessThanOrEqualToSuperview().offset(-50)
                make.trailing.lessThanOrEqualToSuperview().offset(-50)
            }
            //: signLB.isHidden = false
            signLB.isHidden = false

        //: case .callNumber:
        case .callNumber:
            //: nameLB.snp.remakeConstraints { make in
            nameLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                //: make.top.equalTo(self).offset(26)
                make.top.equalTo(self).offset(26)
                //: make.height.equalTo(21)
                make.height.equalTo(21)
                //: make.trailing.lessThanOrEqualToSuperview().offset(-50)
                make.trailing.lessThanOrEqualToSuperview().offset(-50)
            }
            //: signLB.isHidden = true
            signLB.isHidden = true
        }
    }
}

// MARK: - UI

//: extension TalkingChatRoomOnlineListCell {
extension OfflineRecordDarkroomLoadTalkingCellView {
    //: func createCellUI() {
    func adRoom() {
        //: self.contentView.addSubview(IconBtn)
        self.contentView.addSubview(IconBtn)
        //: self.contentView.addSubview(nameLB)
        self.contentView.addSubview(nameLB)
        //: self.contentView.addSubview(signLB)
        self.contentView.addSubview(signLB)
        //: self.contentView.addSubview(sexBtn)
        self.contentView.addSubview(sexBtn)
    }

    //: func layoutSubViewsConstraints() {
    func willForSource() {
        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.top.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            //: make.top.equalTo(self).offset(16)
            make.top.equalTo(self).offset(16)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-50)
            make.trailing.lessThanOrEqualToSuperview().offset(-50)
        }

        //: signLB.snp.makeConstraints { make in
        signLB.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB)
            make.leading.equalTo(nameLB)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.trailing.equalTo(self).offset(-10)
            make.trailing.equalTo(self).offset(-10)
        }

        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(3)
            make.leading.equalTo(nameLB.snp.trailing).offset(3)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(33)
            make.width.equalTo(33)
        }
    }
}
