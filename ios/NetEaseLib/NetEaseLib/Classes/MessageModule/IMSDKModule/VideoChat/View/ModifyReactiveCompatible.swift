
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_objectText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#FFD13A" :*/
fileprivate let str_youName:String = "#FFD13Asection share err"

/*: "gift_gb_umnad_1" :*/
fileprivate let str_videoContent:String = "add model open color equalgift_g"
fileprivate let str_availableValue:String = "b_for add center on for"
fileprivate let str_viewText:String = "umnad_1if video to to"

/*: "icon_circle_pic_default" :*/
fileprivate let str_modelValue:String = "icon_creturn let head lab content"
fileprivate let str_pointManagerData:String = "e_pic_share var up"

/*: "Open lucky blind-box" :*/
fileprivate let str_noData:String = "Open lcatch current make result"
fileprivate let str_requestImageData:String = "ucstatus"
fileprivate let str_playerSharedTitle:String = "inside data transaction bli"

/*: "Sent " :*/
fileprivate let str_iconName:[Character] = ["S","e","n","t"," "]

/*: "PingFangSC-Semibold" :*/
fileprivate let str_imageData:String = "data instance else zone modelPingF"
fileprivate let str_barTitle:String = "left send self info height-Sem"
fileprivate let str_originTitle:String = "shared"

/*: "%d" :*/
fileprivate let str_sizeTitle:[Character] = ["%","d"]

/*: "Bombard" :*/
fileprivate let str_equalText:String = "background height model centerBombard"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModifyReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/16.
//

//: import UIKit
import UIKit

//: class TalkingGiftTrackItemView: UIView {
class ModifyReactiveCompatible: UIView {
    var refreshImageView: UIImageView?

    //: var giftMsgModel = TalkingGiftMsgAnimatModel()
    var giftMsgModel = EventHandyJSON()
    //: var giftSendItem = [TalkingGiftNumArrModel()]
    var giftSendItem = [MediaArrModel()]
    //: var showAnimationDone = false
    var showAnimationDone = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.viewPrice()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: let transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            let transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            //: self.layer.transform = transform
            self.layer.transform = transform
            //: avatarImage.transform = CGAffineTransform(scaleX: -1, y: 1)
            avatarImage.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: nickLb.transform = CGAffineTransform(scaleX: -1, y: 1)
            nickLb.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: giftName.transform = CGAffineTransform(scaleX: -1, y: 1)
            giftName.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: giftImage.transform = CGAffineTransform(scaleX: -1, y: 1)
            giftImage.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: giftNum.transform = CGAffineTransform(scaleX: -1, y: 1)
            giftNum.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: pluralTip.transform = CGAffineTransform(scaleX: -1, y: 1)
            pluralTip.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
            countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_objectText.reversed(), encoding: .utf8)!)
    }

    //: init(frame: CGRect, giftMsgDic: Dictionary<String, Any?>) {
    init(frame: CGRect, giftMsgDic _: [String: Any?]) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: private lazy var bgImage: UIImageView = {
    private lazy var bgImage: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .left
        img.contentMode = .left
        //: return img
        return img
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.alpha = 0
        view.alpha = 0
        //: return view
        return view
        //: }()
    }()

    ///  赠送者头像
    //: lazy var avatarImage: UIImageView = {
    lazy var avatarImage: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.layer.borderColor      = UIColor.white.cgColor
        img.layer.borderColor = UIColor.white.cgColor
        //: img.layer.borderWidth      = 2
        img.layer.borderWidth = 2
        //: img.clipsToBounds          = true
        img.clipsToBounds = true
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    /// 赠送者昵称
    //: private lazy var nickLb: UILabel = {
    private lazy var nickLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.numberOfLines = 1
        lb.numberOfLines = 1
        //: lb.font = .pingfangRugularFont(fontSize: 14)
        lb.font = .drogueSize(fontSize: 14)
        //: lb.lineBreakMode = .byTruncatingTail
        lb.lineBreakMode = .byTruncatingTail
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: return lb
        return lb
        //: }()
    }()

    /// 礼物名称
    //: private lazy var giftName: UILabel = {
    private lazy var giftName: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
//        lb.numberOfLines = 1
        //: lb.textColor = UIColor.init(hex: "#FFD13A")
        lb.textColor = UIColor(hex: (String(str_youName.prefix(7))))
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 13)
        lb.font = UIFont.drogueSize(fontSize: 13)
        //: return lb
        return lb
        //: }()
    }()

    /// 礼物图片
    //: private lazy var giftImage: UIImageView = {
    private lazy var giftImage: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    ///  连送
    //: private lazy var pluralTip: TalkingGiftTrackItemLabel = {
    private lazy var pluralTip: DateItemLabel = {
        //: let lab = TalkingGiftTrackItemLabel()
        let lab = DateItemLabel()
        //: lab.isHidden = true
        lab.isHidden = true

        //: return lab
        return lab
        //: }()
    }()

    ///  礼物数量
    //: private lazy var countLb: TalkingGiftTrackItemLabel = {
    private lazy var countLb: DateItemLabel = {
        //: let lab = TalkingGiftTrackItemLabel()
        let lab = DateItemLabel()
        //: lab.backgroundColor = .clear
        lab.backgroundColor = .clear

        //: return lab
        return lab
        //: }()
    }()

    ///
    //: private lazy var giftNum: UILabel = {
    private lazy var giftNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.isHidden = true
        lab.isHidden = true

        //: return lab
        return lab
        //: }()
    }()
}

//: extension TalkingGiftTrackItemView {
extension ModifyReactiveCompatible {
    //: func setGiftMsgModel(model: TalkingGiftMsgAnimatModel) {
    func kindJuxtaposePhone(model: EventHandyJSON) {
        //: self.giftMsgModel = model
        self.giftMsgModel = model
        //: let fromNickname = giftMsgModel.fromNickname
        let fromNickname = giftMsgModel.fromNickname
        //: self.bgImage.image = UIImage.outsideText(name: "gift_gb_umnad_1")
        self.bgImage.image = UIImage.outsideText(name: (String(str_videoContent.suffix(6)) + String(str_availableValue.prefix(2)) + String(str_viewText.prefix(7))))

        //: let placeholder = UIImage.outsideText(name: "icon_circle_pic_default")
        let placeholder = UIImage.outsideText(name: (String(str_modelValue.prefix(6)) + "ircl" + String(str_pointManagerData.prefix(6)) + "default"))

        //: if (model.showType == ChatGiftAnimatType.myStery.rawValue ) {
        if model.showType == UpAppSendable.myStery.rawValue {
            //: self.nickLb.text = "Open lucky blind-box".localized
            self.nickLb.text = (String(str_noData.prefix(6)) + str_requestImageData.replacingOccurrences(of: "status", with: "ky") + String(str_playerSharedTitle.suffix(4)) + "nd-box").localized
            //: }else {
        } else {
            //: self.nickLb.text = fromNickname
            self.nickLb.text = fromNickname
        }

        //: self.avatarImage.setUrlImage(urlStr: giftMsgModel.fromHeadPic, placeImg: placeholder)
        self.avatarImage.posit(urlStr: giftMsgModel.fromHeadPic, placeImg: placeholder)
        //: self.giftImage.setUrlImage(urlStr: giftMsgModel.giftPic, placeImg: placeholder)
        self.giftImage.posit(urlStr: giftMsgModel.giftPic, placeImg: placeholder)

        //: self.giftName.text = "Sent ".localized + giftMsgModel.pname
        self.giftName.text = (String(str_iconName)).localized + giftMsgModel.pname

        //: self.countLb.layer.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        self.countLb.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        //: var sendNumber = giftMsgModel.num
        var sendNumber = giftMsgModel.num
        //: if giftMsgModel.sendNum > 0 {
        if giftMsgModel.sendNum > 0 {
            //: sendNumber = sendNumber*giftMsgModel.sendNum
            sendNumber = sendNumber * giftMsgModel.sendNum
        }
        //: if (sendNumber > 1) {
        if sendNumber > 1 {
            //: var font1 = UIFont(name: "PingFangSC-Semibold", size: 22)
            var font1 = UIFont(name: (String(str_imageData.suffix(5)) + "angSC" + String(str_barTitle.suffix(4)) + "ibol" + str_originTitle.replacingOccurrences(of: "shared", with: "d")), size: 22)
            //: font1 = italicFontWith(angle: 15, fontSize: 18, fontName: font1!.fontName)
            font1 = acceptSurname(angle: 15, fontSize: 18, fontName: font1!.fontName)
            //: var font2 = UIFont(name: "PingFangSC-Semibold", size: 26)
            var font2 = UIFont(name: (String(str_imageData.suffix(5)) + "angSC" + String(str_barTitle.suffix(4)) + "ibol" + str_originTitle.replacingOccurrences(of: "shared", with: "d")), size: 26)
            //: font2 = italicFontWith(angle: 15, fontSize: 22, fontName: font2!.fontName)
            font2 = acceptSurname(angle: 15, fontSize: 22, fontName: font2!.fontName)

            //: if (font1 == nil) {
            if font1 == nil {
                //: font1 = UIFont.systemFont(ofSize: 18, weight: .medium)
                font1 = UIFont.systemFont(ofSize: 18, weight: .medium)
                //: font2 = UIFont.systemFont(ofSize: 22, weight: .medium)
                font2 = UIFont.systemFont(ofSize: 22, weight: .medium)
            }

            //: let strs   = ["X", String.init(format: "%d", sendNumber)]
            let strs = ["X", String(format: "%d", sendNumber)]
            //: let colors = [UIColor.white, UIColor.white]
            let colors = [UIColor.white, UIColor.white]
            //: let fonts = [font1!, font2!]
            let fonts = [font1!, font2!]
            //: var numText = NSMutableAttributedString.init()
            var numText = NSMutableAttributedString()
            //: numText = numText.mutilpartAttributedStringWith(texts: strs, colors: colors, fonts: fonts)
            numText = numText.photoFonts(texts: strs, colors: colors, fonts: fonts)

            //: numText.yy_strokeWidth     = (-1)
            numText.yy_strokeWidth = -1
            //: numText.yy_strokeColor     = UIColor.black
            numText.yy_strokeColor = UIColor.black
            //: giftNum.attributedText = numText
            giftNum.attributedText = numText
            //: giftNum.isHidden         = false
            giftNum.isHidden = false
            //: pluralTip.isHidden       = false
            pluralTip.isHidden = false
            //: countLb.left           = pluralTip.right - 5
            countLb.left = pluralTip.right - 5

            //: } else {
        } else {
            //: giftNum.isHidden         = true
            giftNum.isHidden = true
            //: pluralTip.isHidden       = true
            pluralTip.isHidden = true
            //: countLb.left           = giftImage.right - 5
            countLb.left = giftImage.right - 5
        }

        //: refreshGiftCount(giftCount: giftMsgModel.comboNum)
        numbereractionView(giftCount: giftMsgModel.comboNum)
    }

    //: func refreshGiftCount(giftCount: Int) {
    func numbereractionView(giftCount: Int) {
        //: var font1 = UIFont(name: "PingFangSC-Semibold", size: 45)
        var font1 = UIFont(name: (String(str_imageData.suffix(5)) + "angSC" + String(str_barTitle.suffix(4)) + "ibol" + str_originTitle.replacingOccurrences(of: "shared", with: "d")), size: 45)
        //: font1 = italicFontWith(angle: 15, fontSize: 26, fontName: font1!.fontName)
        font1 = acceptSurname(angle: 15, fontSize: 26, fontName: font1!.fontName)
        //: var font2 = UIFont(name: "PingFangSC-Semibold", size: 45)
        var font2 = UIFont(name: (String(str_imageData.suffix(5)) + "angSC" + String(str_barTitle.suffix(4)) + "ibol" + str_originTitle.replacingOccurrences(of: "shared", with: "d")), size: 45)
        //: font2 = italicFontWith(angle: 15, fontSize: 38, fontName: font2!.fontName)
        font2 = acceptSurname(angle: 15, fontSize: 38, fontName: font2!.fontName)

        //: if (font1 == nil) {
        if font1 == nil {
            //: font1 = UIFont.systemFont(ofSize: 26, weight: .medium)
            font1 = UIFont.systemFont(ofSize: 26, weight: .medium)
            //: font2 = UIFont.systemFont(ofSize: 38, weight: .medium)
            font2 = UIFont.systemFont(ofSize: 38, weight: .medium)
        }

        //: let strs   = ["X", " ", String.init(format: "%d", giftCount)]
        let strs = ["X", " ", String(format: "%d", giftCount)]
        //: let colors = [UIColor.RGBA(150, 77, 20, 1), UIColor.white, UIColor.RGBA(150, 77, 20, 1)]
        let colors = [UIColor.each(150, 77, 20, 1), UIColor.white, UIColor.each(150, 77, 20, 1)]
        //: let fonts = [font1!, UIFont.systemFont(ofSize: 4), font2!]
        let fonts = [font1!, UIFont.systemFont(ofSize: 4), font2!]
        //: var attText = NSMutableAttributedString.init()
        var attText = NSMutableAttributedString()
        //: attText = attText.mutilpartAttributedStringWith(texts: strs, colors: colors, fonts: fonts)
        attText = attText.photoFonts(texts: strs, colors: colors, fonts: fonts)

        //: let paragraphStyle = NSMutableParagraphStyle.init()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode            = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment                = .center
        paragraphStyle.alignment = .center

        //: attText.yy_setParagraphStyle(paragraphStyle, range: NSRange.init(location: 0, length: attText.length))
        attText.yy_setParagraphStyle(paragraphStyle, range: NSRange(location: 0, length: attText.length))

        //: countLb.setAttributedText(attributedText: attText)
        countLb.underlay(attributedText: attText)

        //: let width   = (attText.size().width) * 1.5 + 10
        let width = (attText.size().width) * 1.5 + 10 // 1.5 仿射变换的值
        //: var x = pluralTip.isHidden == false ? (pluralTip.right - 6.0):(giftImage.right - 6.0)
        var x = pluralTip.isHidden == false ? (pluralTip.right - 6.0) : (giftImage.right - 6.0)
        //: countLb.setFrame(frame: CGRect(x: x, y: countLb.origin.y, width: width, height: countLb.size.height))
        countLb.noSpectacles(frame: CGRect(x: x, y: countLb.origin.y, width: width, height: countLb.size.height))
    }

    /// 连击
    //: func comboHitWith(giftMsgModel: TalkingGiftMsgAnimatModel) {
    func accommodateModel(giftMsgModel: EventHandyJSON) {
        //: self.giftMsgModel = giftMsgModel
        self.giftMsgModel = giftMsgModel

        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(animateHide), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(ptolemaicSystem), object: nil)

        //: refreshGiftCount(giftCount: giftMsgModel.comboNum)
        numbereractionView(giftCount: giftMsgModel.comboNum)

        //    3
        //: self.countLb.layer.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        self.countLb.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        //: if LanguageManager.shared.direction == .leftToRight {
        if ConstraintLanguageManager.shared.direction == .leftToRight {
            //: self.countLb.transform = .identity
            self.countLb.transform = .identity
            //: } else {
        } else {
            //: self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: UIView.animate(withDuration: 0.15, delay: 0, options: [.curveEaseOut]) {
        UIView.animate(withDuration: 0.15, delay: 0, options: [.curveEaseOut]) {
            //: if LanguageManager.shared.direction == .leftToRight {
            if ConstraintLanguageManager.shared.direction == .leftToRight {
                //: self.countLb.transform = CGAffineTransformMakeScale(1.5, 1.5)
                self.countLb.transform = CGAffineTransformMakeScale(1.5, 1.5)
                //: } else {
            } else {
                //: let scaleTransform = CGAffineTransformMakeScale(1.5, 1.5)
                let scaleTransform = CGAffineTransformMakeScale(1.5, 1.5)
                //: let combinedTransform = self.countLb.transform.concatenating(scaleTransform)
                let combinedTransform = self.countLb.transform.concatenating(scaleTransform)
                //: self.countLb.transform = combinedTransform
                self.countLb.transform = combinedTransform
            }
            //: }completion: { finish in
        } completion: { _ in

            //: UIView.animate(withDuration: 0.15, delay: 0, options: [.curveEaseInOut]) {
            UIView.animate(withDuration: 0.15, delay: 0, options: [.curveEaseInOut]) {
                //: if LanguageManager.shared.direction == .leftToRight {
                if ConstraintLanguageManager.shared.direction == .leftToRight {
                    //: self.countLb.transform = .identity
                    self.countLb.transform = .identity
                    //: } else {
                } else {
                    //: self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
                    self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
                }

                //: }completion: { finish in
            } completion: { _ in
            }
        }

        //: self.animationSparkAndSpread()
        self.presentSpread()
        //: self.perform(#selector(animateHide), afterDelay: 3.5)
        self.perform(#selector(ptolemaicSystem), afterDelay: 3.5)
    }

    /// 展示
    //: func showGiftAnimate(model: TalkingGiftMsgAnimatModel, animate: Bool) {
    func commentAnimate(model _: EventHandyJSON, animate _: Bool) {
        //: UIView.animate(withDuration: 0.2) {
        UIView.animate(withDuration: 0.2) {
            //: self.left += 10
            self.left += 10
        }
        //: UIView.animate(withDuration: 0.1, delay: 0.1, options: [.layoutSubviews]) {
        UIView.animate(withDuration: 0.1, delay: 0.1, options: [.layoutSubviews]) {
            //: self.contentView.alpha = 1
            self.contentView.alpha = 1
            //: }completion: { finish in
        } completion: { _ in
        }
        //: if LanguageManager.shared.direction == .leftToRight {
        if ConstraintLanguageManager.shared.direction == .leftToRight {
            //: self.countLb.transform = .identity
            self.countLb.transform = .identity
            //: } else {
        } else {
            //: self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
        UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
            //: if LanguageManager.shared.direction == .leftToRight {
            if ConstraintLanguageManager.shared.direction == .leftToRight {
                //: self.countLb.transform = CGAffineTransformMakeScale(1.5, 1.5)
                self.countLb.transform = CGAffineTransformMakeScale(1.5, 1.5)
                //: } else {
            } else {
                //: let scaleTransform = CGAffineTransformMakeScale(1.5, 1.5)
                let scaleTransform = CGAffineTransformMakeScale(1.5, 1.5)
                //: let combinedTransform = self.countLb.transform.concatenating(scaleTransform)
                let combinedTransform = self.countLb.transform.concatenating(scaleTransform)
                //: self.countLb.transform = combinedTransform
                self.countLb.transform = combinedTransform
            }

            //: } completion: { finish in
        } completion: { _ in
            //: UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
            UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
                //: if LanguageManager.shared.direction == .leftToRight {
                if ConstraintLanguageManager.shared.direction == .leftToRight {
                    //: self.countLb.transform = .identity
                    self.countLb.transform = .identity
                    //: } else {
                } else {
                    //: self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
                    self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
                }

                //: }completion: { [weak self] finish in
            } completion: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.showAnimationDone = true
                self.showAnimationDone = true
            }
        }

        //: self.animationSparkAndSpread()
        self.presentSpread()

        //: self.perform(#selector(animateHide), afterDelay: 3.5)
        self.perform(#selector(ptolemaicSystem), afterDelay: 3.5)
    }

    //: func animationSparkAndSpread() {
    func presentSpread() {}

    //: func animationViewToTop(frame: CGRect) {
    func animationVideoCopernicanSystemImage(frame: CGRect) {
        //: UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
        UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
            //: self.frame = frame
            self.frame = frame
            //: }completion: { finish in
        } completion: { _ in
        }
    }

    //: @objc func animateHide() {
    @objc func ptolemaicSystem() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(animateHide), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(ptolemaicSystem), object: nil)
        //: giftMsgModel = TalkingGiftMsgAnimatModel()
        giftMsgModel = EventHandyJSON()
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }
}

//: extension TalkingGiftTrackItemView {
extension ModifyReactiveCompatible {
    //: func italicFontWith(angle: CGFloat, fontSize: CGFloat, fontName: String) -> (UIFont) {
    func acceptSurname(angle: CGFloat, fontSize: CGFloat, fontName: String) -> (UIFont) {
        //: let matrix = CGAffineTransform(a: 1, b: 0, c: CGFloat(tanf(Float(angle * Double.pi) / 180)), d: 1, tx: 0, ty: 0)
        let matrix = CGAffineTransform(a: 1, b: 0, c: CGFloat(tanf(Float(angle * Double.pi) / 180)), d: 1, tx: 0, ty: 0)

        //: let desc = UIFontDescriptor.init(name: fontName, matrix: matrix)
        let desc = UIFontDescriptor(name: fontName, matrix: matrix)

        //: let ret = UIFont.init(descriptor: desc, size: fontSize)
        let ret = UIFont(descriptor: desc, size: fontSize)
        //: return ret
        return ret
    }
}

//: extension TalkingGiftTrackItemView {
extension ModifyReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func viewPrice() {
        //: let height = 46.0
        let height = 46.0

        //: self.addSubview(bgImage)
        self.addSubview(bgImage)
        //: bgImage.frame = CGRect.init(x: 5, y: (self.height-height)/2, width: 240, height: height)
        bgImage.frame = CGRect(x: 5, y: (self.height - height) / 2, width: 240, height: height)

        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.frame = CGRect.init(x: 5, y: (self.height-height)/2, width: 260, height: height)
        contentView.frame = CGRect(x: 5, y: (self.height - height) / 2, width: 260, height: height)

        //: contentView.addSubview(avatarImage)
        contentView.addSubview(avatarImage)
        //: avatarImage.frame = CGRect.init(x: 0, y: 0, width: height - 2, height: height - 2)
        avatarImage.frame = CGRect(x: 0, y: 0, width: height - 2, height: height - 2)
        //: avatarImage.layer.cornerRadius     = avatarImage.height/2
        avatarImage.layer.cornerRadius = avatarImage.height / 2

        //: contentView.addSubview(nickLb)
        contentView.addSubview(nickLb)
        //: nickLb.frame = CGRect.init(x: avatarImage.right + 5, y: 4, width: 130, height: 18)
        nickLb.frame = CGRect(x: avatarImage.right + 5, y: 4, width: 130, height: 18)

        //: contentView.addSubview(giftName)
        contentView.addSubview(giftName)
        //: giftName.frame = CGRect.init(x: nickLb.left, y: nickLb.bottom, width: nickLb.width, height: 17)
        giftName.frame = CGRect(x: nickLb.left, y: nickLb.bottom, width: nickLb.width, height: 17)

        //: let imagelen = height*1.2
        let imagelen = height * 1.2
        //: contentView.addSubview(giftImage)
        contentView.addSubview(giftImage)
        //: giftImage.frame = CGRect.init(x: nickLb.right + 5, y: (height-imagelen)/2-2, width: imagelen, height: imagelen)
        giftImage.frame = CGRect(x: nickLb.right + 5, y: (height - imagelen) / 2 - 2, width: imagelen, height: imagelen)

        //: var font = UIFont.boldSystemFont(ofSize: 24)
        var font = UIFont.boldSystemFont(ofSize: 24)
        //: font = italicFontWith(angle: 15, fontSize: 20, fontName: font.fontName)
        font = acceptSurname(angle: 15, fontSize: 20, fontName: font.fontName)

        //: let attributedString = NSMutableAttributedString.init()
        let attributedString = NSMutableAttributedString()
        //: let attText =  attributedString.mutilpartAttributedStringWith(texts: ["Bombard".localized], colors: [UIColor.RGBA(255, 232, 72, 1)], fonts: [font])
        let attText = attributedString.photoFonts(texts: [(String(str_equalText.suffix(7))).localized], colors: [UIColor.each(255, 232, 72, 1)], fonts: [font])
        //: pluralTip.setFrame(frame: CGRect.init(x: giftImage.right, y: 14, width: attText.size().width + 2, height: height-20))
        pluralTip.noSpectacles(frame: CGRect(x: giftImage.right, y: 14, width: attText.size().width + 2, height: height - 20))

        //: pluralTip.setAttributedText(attributedText: attText)
        pluralTip.underlay(attributedText: attText)
        //: contentView.addSubview(pluralTip)
        contentView.addSubview(pluralTip)

        //: countLb.setFrame(frame: CGRect.init(x: giftImage.right, y: 2, width: 70, height: height))
        countLb.noSpectacles(frame: CGRect(x: giftImage.right, y: 2, width: 70, height: height))
        //: contentView.addSubview(countLb)
        contentView.addSubview(countLb)

        //: contentView.addSubview(giftNum)
        contentView.addSubview(giftNum)
        //: giftNum.snp.remakeConstraints { make in
        giftNum.snp.remakeConstraints { make in
            //: make.top.equalTo(-10)
            make.top.equalTo(-10)
            //: make.left.equalTo(giftImage.snp.right)
            make.left.equalTo(giftImage.snp.right)
            //: make.height.equalTo(26)
            make.height.equalTo(26)
        }
    }
}
