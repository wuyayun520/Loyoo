
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_imageData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "btn_intimate_send_bg_nor" :*/
fileprivate let str_atText:String = "make manager cellbtn_in"
fileprivate let str_cameraName:String = "back view inside_send_"
fileprivate let str_rowName:String = "add self model selfbg_nor"

/*: "Send" :*/
fileprivate let str_giftTitle:[Character] = ["S","e","n","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserUpMsgCell.swift
//  NetEaseLib
//
//  Created by Charlotte on 2024/7/29.
//

//: import UIKit
import UIKit

//: class TalkingChatAskForGiftMsgCell: TalkingChatBaseMsgCell {
class UserUpMsgCell: ComparableViewCell {
	var indexTotal: Double = -78.1
	var messageShouldDictionary: [AnyHashable: String] = [:]

    var showImageView: UIImageView?

    //: typealias SendBlock = () -> Void
    typealias SendBlock = () -> Void
    //: var sendBlock: SendBlock?
    var sendBlock: SendBlock?
    //: var giftData: ChatValueCellData?
    var giftData: ChatValueCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
        //: self.bubbleImgView.addSubview(giftContentLab)

        var cellView: UIView = giftContentLab
        if let imageView = self.showImageView, (cellView.convert(cellView.bounds.offsetBy(dx: CGFloat(Double(cellView.center.y)), dy: CGFloat(Int(cellView.bounds.size.height))), to: cellView.superview).size.width == 83.91) && (!cellView.transform.isIdentity) {
            //: SWIFT_CUSTOM_DANGER
            cellView = imageView
        }
        self.bubbleImgView.addSubview(cellView)
        //: self.bubbleImgView.addSubview(sendBtn)
        self.bubbleImgView.addSubview(sendBtn)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_imageData, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
            if (sendBtn.constraintsAffectingLayout(for: .horizontal).count == 81) && (sendBtn.convert(CGPoint.zero, to: sendBtn.superview).y == 42.65) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let sectionGift = ThanOfView(frame: sendBtn.frame.insetBy(dx: CGFloat(390.87), dy: CGFloat(463.39)))



            
            
            sectionGift.allMagnitude = { [self] brandSum in
            self.indexTotal = brandSum
            
                self.indexTotal -= 1
                if self.indexTotal <= 0 {
                    self.indexTotal = self.indexTotal + 1
                }
            return self.indexTotal
            }
            sectionGift.awakeDictionary = { [self] collectionDictionary in
            self.messageShouldDictionary = collectionDictionary
            
            guard var value = self.messageShouldDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                sendBtn.addSubview(sectionGift)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    //: private lazy var giftContentLab: YYLabel = {
    private lazy var giftContentLab: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.blockOf()
        //: label.font = UIFont.pingfangRugularFont(fontSize: 17)
        label.font = UIFont.drogueSize(fontSize: 17)
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    /// 送礼
    //: private lazy var sendBtn: TalkingButton = {
    private lazy var sendBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = PathErrorTalkingButton()
        //: btn.setBackgroundImage(UIImage.outsideText(name: "btn_intimate_send_bg_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (String(str_atText.suffix(6)) + "timate" + String(str_cameraName.suffix(6)) + String(str_rowName.suffix(6)))), for: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_giftTitle)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 14)
        //: btn.addTarget(self, action: #selector(sendBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(colorAddClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingChatAskForGiftMsgCell {
extension UserUpMsgCell {
    //: @objc func sendBtnClick() {
    @objc func colorAddClick() {
        //: self.sendBlock?()
        self.sendBlock?()
    }
}

//: extension TalkingChatAskForGiftMsgCell {
extension UserUpMsgCell {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: self.indicator.stopAnimating()
        self.indicator.stopAnimating()
        //: self.giftData = data as? ChatValueCellData
        self.giftData = data as? ChatValueCellData
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }
        //: self.giftContentLab.attributedText =  giftData.attributedString
        self.giftContentLab.attributedText = giftData.attributedString
        //: self.sendBtn.isHidden = (self.giftData?.msgModel.msgInfo.wantGift.sendStatus == 1 || self.giftData?.direction == .MsgDirectionOutgoing)
        self.sendBtn.isHidden = (self.giftData?.msgModel.msgInfo.wantGift.sendStatus == 1 || self.giftData?.direction == .MsgDirectionOutgoing)
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }
        //: self.giftContentLab.snp.remakeConstraints { make in
        self.giftContentLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(giftData.textOrigin.x)
            make.leading.equalTo(giftData.textOrigin.x)
            //: make.top.equalTo(giftData.textOrigin.y)
            make.top.equalTo(giftData.textOrigin.y)
            //: make.size.equalTo(giftData.textSize)
            make.size.equalTo(giftData.textSize)
        }
        //: self.sendBtn.snp.remakeConstraints { make in
        self.sendBtn.snp.remakeConstraints { make in
            //: make.trailing.equalTo(-18)
            make.trailing.equalTo(-18)
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
            //: make.size.equalTo(CGSize.init(width: 58, height: 28))
            make.size.equalTo(CGSize(width: 58, height: 28))
        }
    }
}
