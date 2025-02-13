
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewText:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "CCCCCC" :*/
fileprivate let str_customToData:String = "imageimageimageimageimageimage"

/*: "icon_lounge" :*/
fileprivate let str_withData:String = "icsendn"

/*: "#FFEE4B" :*/
fileprivate let str_styleValue:String = "#FFEE4Binput point content make var"

/*: "View read receipts?" :*/
fileprivate let str_userText:[Character] = ["V","i","e","w"," ","r","e","a","d"," ","r"]
fileprivate let str_quoteColorValue:String = "EC"
fileprivate let str_locationTitle:[Character] = ["e","i","p","t","s","?"]

/*: "#FBE3FE" :*/
fileprivate let str_priceCenterValue:[Character] = ["#"]
fileprivate let str_theoryValue:String = "fbe3fe"

/*: "#D8DDFF" :*/
fileprivate let str_pairTitle:String = "#D8DDFFlet text success add"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/28.
//

//: import UIKit
import UIKit

/*! 提示类型消息 */
//: class TalkingChatTipsMsgCell: TalkingChatBaseMsgCell {
class LabView: ComparableViewCell {
	var userOff: Bool = false
	var imageQuantity: Int = 57
	var playCount: Double = 96.3
	var rivetLineText: String = "consequence"
	var bolsterArray: [AnyHashable] = []
	var bottomDictionary: [AnyHashable: String] = [:]
	var openEnable: Bool = true
	var liveTotal: Int = 36
	var sizeMagnitude: Double = -35.3
	var cellName: String = "gesture"
	var kindArray: [AnyHashable] = []
	var awakeMainDictionary: [AnyHashable: String] = [:]

    var viewImageView: UIImageView?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if (messageLB.isExclusiveTouch) && (messageLB.layer.position.y == 96.45) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let pathLet = CleanView(frame: messageLB.bounds.standardized)


            
            pathLet.errorViewDoing = { [self] viewSwitch in
            self.openEnable = viewSwitch
            
            return self.openEnable
            }
            pathLet.routeTotal = { [self] titleSum in
            self.liveTotal = titleSum
            
            return self.liveTotal
            }
            pathLet.topPriceInterval = { [self] arrayMagnitude in
            self.sizeMagnitude = arrayMagnitude
            
            return self.sizeMagnitude
            }
            pathLet.harvestMoonTitle = { [self] replyName in
            self.cellName = replyName
            
            do {
                self.cellName = try String(contentsOf: NSURL.fileURL(withPathComponents: ["temp", "year", "plist"])!, encoding: .utf8)
            } catch {
                self.cellName = error.localizedDescription
            }
            return self.cellName
            }
            pathLet.bestowmentArray = { [self] partyArray in
            self.kindArray = partyArray
            
            guard var value = self.kindArray as? [String] else {
                return nil
            }
            return value
            }
            pathLet.canDictionary = { [self] tableDictionary in
            self.awakeMainDictionary = tableDictionary
            
            guard var value = self.awakeMainDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                messageLB.addSubview(pathLet)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
            if (vipReadReceiptBtn.isExclusiveTouch) && (vipReadReceiptBtn.layer.position.y == 96.45) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let pathLet = CleanView(frame: vipReadReceiptBtn.bounds.standardized)


            
            pathLet.errorViewDoing = { [self] viewSwitch in
            self.userOff = viewSwitch
            
            var pathLet = animated
                pathLet = true
                pathLet = !pathLet
            if pathLet != self.userOff {
                self.userOff = pathLet
            }
            
            return self.userOff
            }
            pathLet.routeTotal = { [self] titleSum in
            self.imageQuantity = titleSum
            
            return self.imageQuantity
            }
            pathLet.topPriceInterval = { [self] arrayMagnitude in
            self.playCount = arrayMagnitude
            
            return self.playCount
            }
            pathLet.harvestMoonTitle = { [self] replyName in
            self.rivetLineText = replyName
            
            do {
                self.rivetLineText = try String(contentsOf: NSURL.fileURL(withPathComponents: ["temp", "year", "plist"])!, encoding: .utf8)
            } catch {
                self.rivetLineText = error.localizedDescription
            }
            return self.rivetLineText
            }
            pathLet.bestowmentArray = { [self] partyArray in
            self.bolsterArray = partyArray
            
            guard var value = self.bolsterArray as? [String] else {
                return nil
            }
            return value
            }
            pathLet.canDictionary = { [self] tableDictionary in
            self.bottomDictionary = tableDictionary
            
            guard var value = self.bottomDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                vipReadReceiptBtn.addSubview(pathLet)
            }

	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: designView()
        objectStatus()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewText, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    /**
     *  系统消息标签
     *  用于展示系统消息的内容。例如：“您撤回了一条消息”。
     */
    //: lazy var messageLB: YYLabel = {
    lazy var messageLB: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.font = UIFont.pingfangRugularFont(fontSize: 15)
        label.font = UIFont.drogueSize(fontSize: 15)
        //: label.textColor = UIColor.init(hex: "CCCCCC")
        label.textColor = UIColor(hex: (str_customToData.replacingOccurrences(of: "image", with: "C")))
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.backgroundColor = .clear
        label.backgroundColor = .clear
        //: label.layer.cornerRadius = 3
        label.layer.cornerRadius = 3
        //: label.layer.masksToBounds = true
        label.layer.masksToBounds = true
        //: return label
        return label
        //: }()
    }()

    /// 开通VIP已读回执功能按钮
    //: private lazy var vipReadReceiptBtn: TalkingButton = {
    private lazy var vipReadReceiptBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton()
        let btn = PathErrorTalkingButton()
        //: btn.setImage(UIImage.outsideText(name: "icon_lounge"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (str_withData.replacingOccurrences(of: "send", with: "o") + "_lounge")), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
        //: btn.setTitleColor(UIColor(hex: "#FFEE4B"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_styleValue.prefix(7)))), for: .normal)
        //: btn.setTitle("View read receipts?".localized, for: .normal)
        btn.setTitle((String(str_userText) + str_quoteColorValue.lowercased() + String(str_locationTitle)).localized, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(vipReadReceiptClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(randomCall), for: .touchUpInside)
        //: contentView.addSubview(btn)
        contentView.addSubview(btn)
        //: let btnWidth = (btn.titleLabel?.intrinsicContentSize.width ?? 0) + 46.0
        let btnWidth = (btn.titleLabel?.intrinsicContentSize.width ?? 0) + 46.0
        //: let btnHeight = 30.0
        let btnHeight = 30.0
        //: let gColor = [UIColor.init(hex: "#FBE3FE")!.withAlphaComponent(0.6).cgColor,
        let gColor = [UIColor(hex: (String(str_priceCenterValue) + str_theoryValue.uppercased()))!.withAlphaComponent(0.6).cgColor,
                      //: UIColor.init(hex: "#D8DDFF")!.withAlphaComponent(0.6).cgColor]
                      UIColor(hex: (String(str_pairTitle.prefix(7))))!.withAlphaComponent(0.6).cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: gColor, size: CGSize(width: btnWidth, height: btnHeight)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: gColor, size: CGSize(width: btnWidth, height: btnHeight)), for: .normal)
        //: btn.snp.makeConstraints { make in
        btn.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: btnWidth, height: btnHeight))
            make.size.equalTo(CGSize(width: btnWidth, height: btnHeight))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 已读回执引导充值VIP

//: extension TalkingChatTipsMsgCell {
extension LabView {
    /// vip订阅事件
    //: @objc private func vipReadReceiptClick() {
    @objc private func randomCall() {
        //: LimitPushManager.share.func__pushToSubscribePageWebVC()
        LimitPushManager.share.birth()
    }
}

// MARK: - Event

//: extension TalkingChatTipsMsgCell {
extension LabView {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: guard let tipCellData = data as? TalkingChatTipsMsgCellData else { return }
        guard let tipCellData = data as? LabOffThen else { return }
        //: self.avatarView.isHidden = true
        self.avatarView.isHidden = true
        //: self.isReadImg.isHidden = true
        self.isReadImg.isHidden = true
        //: self.retryView.isHidden = true
        self.retryView.isHidden = true
        //: self.coinLabel.isHidden = true
        self.coinLabel.isHidden = true
        //: self.coinIconImg.isHidden = true
        self.coinIconImg.isHidden = true
        //: self.iconBorder.isHidden = true
        self.iconBorder.isHidden = true
        //: self.bubbleImgView.image = nil
        self.bubbleImgView.image = nil
        //: self.messageLB.layer.contents = nil
        self.messageLB.layer.contents = nil
        //: let dataLayout: YYTextLayout? = tipCellData.yyLayout
        let dataLayout: YYTextLayout? = tipCellData.yyLayout
        //: if dataLayout != nil {
        if dataLayout != nil {
            //: self.messageLB.textLayout = tipCellData.yyLayout
            self.messageLB.textLayout = tipCellData.yyLayout
            //: addTouchTagGes()
            underbellyResume()
            //: } else {
        } else {
            //: let layout = YYTextLayout.init(containerSize: CGSize.init(width: ImageMacroDefine.getScreenWidth()-50, height: CGFloat(MAXFLOAT)), text: tipCellData.attributedString)
            let layout = YYTextLayout(containerSize: CGSize(width: ImageMacroDefine.blazeAway() - 50, height: CGFloat(MAXFLOAT)), text: tipCellData.attributedString)
            //: self.messageLB.textLayout = layout
            self.messageLB.textLayout = layout
            //: removeAllTapGes()
            messageImage()
        }

        // VIP已读回执tips
        //: if tipCellData.msgModel.tips.content == "View read receipts?".localized {
        if tipCellData.msgModel.tips.content == (String(str_userText) + str_quoteColorValue.lowercased() + String(str_locationTitle)).localized {
            //: self.vipReadReceiptBtn.isHidden = false
            self.vipReadReceiptBtn.isHidden = false
            //: self.bubbleImgView.isHidden = true
            self.bubbleImgView.isHidden = true
            //: } else {
        } else {
            //: self.vipReadReceiptBtn.isHidden = true
            self.vipReadReceiptBtn.isHidden = true
            //: self.bubbleImgView.isHidden = false
            self.bubbleImgView.isHidden = false
        }
    }

    //: override func updateConstraints() {
    override func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.container.snp.remakeConstraints { make in
        self.container.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.lessThanOrEqualTo(ScreenWidth-40)
            make.width.lessThanOrEqualTo(a_blockValue - 40)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: self.messageLB.snp.remakeConstraints { make in
        self.messageLB.snp.remakeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(-8)
            make.trailing.equalTo(-8)
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }
    }

    //: func addTouchTagGes() {
    func underbellyResume() {
        //: removeAllTapGes()
        messageImage()
        //: let containerTap = UITapGestureRecognizer.init(target: self, action: #selector(TouchCellMessageAction(tap:)))
        let containerTap = UITapGestureRecognizer(target: self, action: #selector(popAppear(tap:)))
        //: containerTap.numberOfTapsRequired = 1
        containerTap.numberOfTapsRequired = 1
        //: containerTap.numberOfTouchesRequired = 1
        containerTap.numberOfTouchesRequired = 1
        //: self.messageLB.addGestureRecognizer(containerTap)
        self.messageLB.addGestureRecognizer(containerTap)
        //: self.messageLB.isUserInteractionEnabled = true
        self.messageLB.isUserInteractionEnabled = true
    }

    //: func removeAllTapGes() {
    func messageImage() {
        //: self.container.gestureRecognizers?.forEach(self.container.removeGestureRecognizer(_:))
        self.container.gestureRecognizers?.forEach(self.container.removeGestureRecognizer(_:))
    }

    //: @objc func TouchCellMessageAction(tap: UITapGestureRecognizer) {
    @objc func popAppear(tap _: UITapGestureRecognizer) {
        //: self.delegate?.onSelectMessage(cell: self)
        self.delegate?.onSelectMessage(cell: self)
    }
}

// MARK: - Event

//: extension TalkingChatTipsMsgCell {
extension LabView {
    //: func designView() {
    func objectStatus() {
        //: self.bubbleImgView.addSubview(messageLB)
        self.bubbleImgView.addSubview(messageLB)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        self.bubbleImgView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        //: self.bubbleImgView.layer.cornerRadius = 5
        self.bubbleImgView.layer.cornerRadius = 5
        //: self.bubbleImgView.clipsToBounds = true
        self.bubbleImgView.clipsToBounds = true
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }
}
