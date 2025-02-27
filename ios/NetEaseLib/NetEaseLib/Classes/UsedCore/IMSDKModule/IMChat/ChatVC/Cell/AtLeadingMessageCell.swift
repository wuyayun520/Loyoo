
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_responseTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtLeadingMessageCell.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import UIKit
import UIKit

//: class TalkingChatGiftMsgCell: TalkingChatBaseMsgCell {
class AtLeadingMessageCell: ComparableViewCell {
	var titleInterval: Double = -68.6
	var withDataSum: Double = -32.9

    var checkionImageView: UIImageView?

    //: var giftData: ConstraintReactiveCompatible?
    var giftData: ConstraintReactiveCompatible?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.addSubview(giftContentLab)
        self.bubbleImgView.addSubview(giftContentLab)
        //: self.bubbleImgView.addSubview(giftImgView)

        var actionUp: UIView = giftImgView
        if let imageView = self.checkionImageView, (self.bubbleImgView.forFirstBaselineLayout.center.x == 39.31) && (self.bubbleImgView.clipsToBounds) {
            //: SWIFT_CUSTOM_DANGER
            actionUp = imageView
        }
        self.bubbleImgView.addSubview(actionUp)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_responseTitle, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
            if (!self.isOpaque) && (self.intrinsicContentSize.width == 304.41) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let convertLet = TimePeriodView()


            convertLet.labCount = { [self] detailInterval in
            self.titleInterval = detailInterval
            
            return self.titleInterval
            }
                self.addSubview(convertLet)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    
            if (!self.isOpaque) && (self.intrinsicContentSize.width == 304.41) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let convertLet = TimePeriodView()
            convertLet.bagOpen = selected

            convertLet.labCount = { [self] detailInterval in
            self.withDataSum = detailInterval
            
            return self.withDataSum
            }
                self.addSubview(convertLet)
            }

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

    //: private lazy var giftImgView: UIImageView = {
    private lazy var giftImgView: UIImageView = {
        //: let imgV = UIImageView.init()
        let imgV = UIImageView()
        //: imgV.contentMode = .scaleAspectFit
        imgV.contentMode = .scaleAspectFit
        //: return imgV
        return imgV
        //: }()
    }()
}

//: extension TalkingChatGiftMsgCell {
extension AtLeadingMessageCell {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: self.giftData = data as? ConstraintReactiveCompatible
        self.giftData = data as? ConstraintReactiveCompatible
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }
        //: let gift = giftData.msgModel.gift
        let gift = giftData.msgModel.gift
        //: let imgPreview = gift.imgPreview
        let imgPreview = gift.imgPreview
        //: self.giftImgView.setUrlImage(urlStr: imgPreview)
        self.giftImgView.recordFinish(urlStr: imgPreview)
        //: self.giftContentLab.attributedText = giftData.attributedString
        self.giftContentLab.attributedText = giftData.attributedString
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }

        //: if self.messageData?.direction == .MsgDirectionIncoming {
        if self.messageData?.direction == .MsgDirectionIncoming {
            //: self.giftContentLab.snp.remakeConstraints { make in
            self.giftContentLab.snp.remakeConstraints { make in
                //: make.top.equalTo(giftData.cellLayout.bubbleInsets.top)
                make.top.equalTo(giftData.cellLayout.bubbleInsets.top)
                //: make.bottom.equalTo(-giftData.cellLayout.bubbleInsets.bottom)
                make.bottom.equalTo(-giftData.cellLayout.bubbleInsets.bottom)
                //: make.leading.equalTo(giftData.cellLayout.bubbleInsets.left)
                make.leading.equalTo(giftData.cellLayout.bubbleInsets.left)
                //: make.trailing.equalToSuperview().offset(-70)
                make.trailing.equalToSuperview().offset(-70)
                //: make.size.equalTo(giftData.textSize)
                make.size.equalTo(giftData.textSize)
            }

            //: self.giftImgView.snp.remakeConstraints { make in
            self.giftImgView.snp.remakeConstraints { make in
                //: make.trailing.equalToSuperview().offset(-14)
                make.trailing.equalToSuperview().offset(-14)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(44)
                make.width.height.equalTo(44)
            }

            //: } else {
        } else {
            //: self.giftImgView.snp.remakeConstraints { make in
            self.giftImgView.snp.remakeConstraints { make in
                //: make.leading.equalToSuperview().offset(14)
                make.leading.equalToSuperview().offset(14)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(44)
                make.width.height.equalTo(44)
            }

            //: self.giftContentLab.snp.remakeConstraints { make in
            self.giftContentLab.snp.remakeConstraints { make in
                //: make.top.equalTo(giftData.cellLayout.bubbleInsets.top)
                make.top.equalTo(giftData.cellLayout.bubbleInsets.top)
                //: make.bottom.equalTo(-giftData.cellLayout.bubbleInsets.bottom)
                make.bottom.equalTo(-giftData.cellLayout.bubbleInsets.bottom)
                //: make.leading.equalToSuperview().offset(70)
                make.leading.equalToSuperview().offset(70)
                //: make.trailing.equalToSuperview().offset(-giftData.cellLayout.bubbleInsets.right)
                make.trailing.equalToSuperview().offset(-giftData.cellLayout.bubbleInsets.right)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.size.equalTo(giftData.textSize)
                make.size.equalTo(giftData.textSize)
            }
        }
    }
}
