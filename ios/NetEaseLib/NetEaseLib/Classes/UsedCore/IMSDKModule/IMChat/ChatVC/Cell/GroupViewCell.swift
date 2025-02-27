
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_maleData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "all" :*/
fileprivate let str_equalName:String = "abar"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GroupViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/7.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatGiftMsgCell: TalkingChatBaseMsgCell {
class GroupViewCell: ComparableViewCell {
	var ofTitleOff: Bool = true
	var showCount: Int = 28
	var soundSum: Double = 3.6
	var viewContent: String = "under"
	var layerArray: [AnyHashable] = []
	var wholeDoing: Bool = false
	var smallCount: Int = 29
	var frameMakeTotal: Double = 86.3
	var upText: String = "up"
	var dismissNoArray: [AnyHashable] = []

    var pingTopImageView: UIImageView?

    //: var giftData: TalkingGroupChatGiftMsgCellData?
    var giftData: RecordAlbumCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.addSubview(giftContentLab)

        var sourceView: UIView = giftContentLab
        if let imageView = self.pingTopImageView, (sourceView.convert(CGPoint.zero, from: sourceView.superview).x == 46.55) && (sourceView.layer.masksToBounds != false) {
            //: SWIFT_CUSTOM_DANGER
            sourceView = imageView
        }
        self.bubbleImgView.addSubview(sourceView)
        //: self.bubbleImgView.addSubview(toUserImgView)
        self.bubbleImgView.addSubview(toUserImgView)
        //: self.contentView.addSubview(giftImgView)

        var dataMode: UIView = giftImgView
        if let imageView = self.pingTopImageView, (self.contentView.layer.contentsRect.size.height != 1) && (self.contentView.layer.masksToBounds != false) {
            //: SWIFT_CUSTOM_DANGER
            dataMode = imageView
        }
        self.contentView.addSubview(dataMode)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_maleData.reversed(), encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
            if (!self.autoresizesSubviews) && (self.constraintsAffectingLayout(for: .horizontal).count == 58) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let heightRowExplain = LineView(frame: self.bounds.offsetBy(dx: CGFloat(254.56), dy: CGFloat(514.61)))



            
            heightRowExplain.inscriptionOn = { [self] periodicTableOff in
            self.ofTitleOff = periodicTableOff
            
            self.ofTitleOff = true
            return self.ofTitleOff
            }
            heightRowExplain.colorIconQuantity = { [self] filterMagnitude in
            self.showCount = filterMagnitude
            
            return self.showCount
            }
            heightRowExplain.giftMagnitude = { [self] timeNumber in
            self.soundSum = timeNumber
            
            return self.soundSum
            }
            heightRowExplain.imageContent = { [self] viewStartContent in
            self.viewContent = viewStartContent
            
            return self.viewContent
            }
            heightRowExplain.voiceInfoGiftArray = { [self] giftExamineArray in
            self.layerArray = giftExamineArray
            
            guard var value = self.layerArray as? [String] else {
                return nil
            }
            return value
            }
                self.addSubview(heightRowExplain)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    
            if (!giftContentLab.autoresizesSubviews) && (giftContentLab.constraintsAffectingLayout(for: .horizontal).count == 58) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let heightRowExplain = LineView(frame: giftContentLab.bounds.offsetBy(dx: CGFloat(254.56), dy: CGFloat(514.61)))
            heightRowExplain.imageOn = selected


            
            heightRowExplain.inscriptionOn = { [self] periodicTableOff in
            self.wholeDoing = periodicTableOff
            
            var heightRowExplain = selected
            heightRowExplain = false
            if heightRowExplain != self.wholeDoing {
                self.wholeDoing = heightRowExplain
            }
            
            self.wholeDoing = true
            return self.wholeDoing
            }
            heightRowExplain.colorIconQuantity = { [self] filterMagnitude in
            self.smallCount = filterMagnitude
            
            return self.smallCount
            }
            heightRowExplain.giftMagnitude = { [self] timeNumber in
            self.frameMakeTotal = timeNumber
            
            return self.frameMakeTotal
            }
            heightRowExplain.imageContent = { [self] viewStartContent in
            self.upText = viewStartContent
            
            return self.upText
            }
            heightRowExplain.voiceInfoGiftArray = { [self] giftExamineArray in
            self.dismissNoArray = giftExamineArray
            
            guard var value = self.dismissNoArray as? [String] else {
                return nil
            }
            return value
            }
                giftContentLab.addSubview(heightRowExplain)
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

    //: private lazy var toUserImgView: UIImageView = {
    private lazy var toUserImgView: UIImageView = {
        //: let imgV = UIImageView.init()
        let imgV = UIImageView()
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.layer.cornerRadius = 5
        imgV.layer.cornerRadius = 5
        //: imgV.clipsToBounds = true
        imgV.clipsToBounds = true
        //: return imgV
        return imgV
        //: }()
    }()
}

//: extension TalkingGroupChatGiftMsgCell {
extension GroupViewCell {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: self.giftData = data as? TalkingGroupChatGiftMsgCellData
        self.giftData = data as? RecordAlbumCellData
        //: guard let giftData = giftData else { return }
        guard let giftData = giftData else { return }
        //: let gift = giftData.msgModel.gift
        let gift = giftData.msgModel.gift
        //: let imgPreview = gift.imgPreview
        let imgPreview = gift.imgPreview
        //: self.giftImgView.setUrlImage(urlStr: imgPreview)
        self.giftImgView.recordFinish(urlStr: imgPreview)
        //: self.giftContentLab.attributedText = giftData.attributedString
        self.giftContentLab.attributedText = giftData.attributedString
        //: if giftData.msgModel.toUser.uid == "all" { // 送礼所有人
        if giftData.msgModel.toUser.uid == (str_equalName.replacingOccurrences(of: "bar", with: "ll")) { // 送礼所有人
            //: self.toUserImgView.image = UIImage.outsideText(name: giftData.msgModel.toUser.headPic)
            self.toUserImgView.image = UIImage.outsideText(name: giftData.msgModel.toUser.headPic)
            //: } else {
        } else {
            //: self.toUserImgView.setUrlImage(urlStr: giftData.msgModel.toUser.headPic)
            self.toUserImgView.recordFinish(urlStr: giftData.msgModel.toUser.headPic)
        }
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let giftData = giftData else { return }
        guard let giftData = giftData else { return }
        //: self.giftContentLab.snp.remakeConstraints { make in
        self.giftContentLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(giftData.textOrigin.x)
            make.leading.equalTo(giftData.textOrigin.x)
            //: make.top.equalTo(giftData.textOrigin.y)
            make.top.equalTo(giftData.textOrigin.y)
            //: make.size.equalTo(giftData.textSize)
            make.size.equalTo(giftData.textSize)
        }
        //: self.toUserImgView.snp.remakeConstraints { make in
        self.toUserImgView.snp.remakeConstraints { make in
            //: make.leading.equalTo(self.giftContentLab.snp.trailing).offset(5)
            make.leading.equalTo(self.giftContentLab.snp.trailing).offset(5)
            //: make.top.equalTo(giftContentLab)
            make.top.equalTo(giftContentLab)
            //: make.width.height.equalTo(42)
            make.width.height.equalTo(42)
        }

        //: if self.messageData?.direction == .MsgDirectionIncoming {
        if self.messageData?.direction == .MsgDirectionIncoming {
            //: self.giftImgView.snp.remakeConstraints { make in
            self.giftImgView.snp.remakeConstraints { make in
                //: make.leading.equalTo(self.container.snp.trailing).offset(6)
                make.leading.equalTo(self.container.snp.trailing).offset(6)
                //: make.centerY.equalTo(self.container)
                make.centerY.equalTo(self.container)
                //: make.width.height.equalTo(40)
                make.width.height.equalTo(40)
            }

            //: } else {
        } else {
            //: self.giftImgView.snp.remakeConstraints { make in
            self.giftImgView.snp.remakeConstraints { make in
                //: make.leading.equalTo(self.container).offset(-46)
                make.leading.equalTo(self.container).offset(-46)
                //: make.centerY.equalTo(self.container)
                make.centerY.equalTo(self.container)
                //: make.width.height.equalTo(40)
                make.width.height.equalTo(40)
            }
        }
    }
}
