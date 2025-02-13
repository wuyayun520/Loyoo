
//: Declare String Begin

/*: "#ffffff" :*/
fileprivate let str_regularContent:String = "title input to add input#f"
fileprivate let str_titlePicName:String = "selectedselectedf"

/*: "earned" :*/
fileprivate let str_topTitle:[Character] = ["e","a","r","n","e","d"]

/*: "Coins in" :*/
fileprivate let str_makeValue:[Character] = ["C","o","i","n","s"," ","i","n"]

/*: "mic_image" :*/
fileprivate let str_atTargetValue:String = "request table tomic_"

/*: "Error:  :*/
fileprivate let str_containerHiddenContent:[Character] = ["E","r","r","o","r",":"," "]

/*: "#C946D2" :*/
fileprivate let str_imageCryData:[Character] = ["#","C","9","4","6","D","2"]

/*: "btn_chat_floatS_userBK_nor" :*/
fileprivate let str_managerName:String = "to item selfbtn_c"
fileprivate let str_stopTitle:String = "color shared letfloatS"
fileprivate let str_topText:[Character] = ["n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ElementView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/3/14.
//

//: import UIKit
import UIKit

//: class TalkingGameFloatingScreenItemView: UIView {
class ElementView: UIView {
	var goOn: Bool = false
	var windowNumber: Int = 62
	var wiseEnable: Bool = true
	var stemMagnitude: Int = 9

    var styleImageView: UIImageView?

    //: private let SpendTime = 5.0
    private let SpendTime = 5.0
    //: private let LineSpendTime = 1.6
    private let LineSpendTime = 1.6
    //: private let HeightOfBackgroundImageView = 22.0
    private let HeightOfBackgroundImageView = 22.0
    //: private let TextColor = "#ffffff"
    private let TextColor = (String(str_regularContent.suffix(2)) + str_titlePicName.replacingOccurrences(of: "selected", with: "ff"))

    //: var clickBlock: (() -> Void)?
    var clickBlock: (() -> Void)?

    //: convenience init(model: TalkingGameFloatingScreenModel?) {
    convenience init(model: AmbientHandyJSON?) {
        //: self.init()
        self.init()
        //: self.danumuMsgModel = model
        self.danumuMsgModel = model
        //: setupSubviews()
        coloured()
        //: setupSubViewsConstraint()
        complete()
        //: bindInteraction()
        cellFirst()
    }

    //: deinit {
    deinit {}

    //: private func configModel() {
    private func bindData() {
        //: guard let danumuMsgModel else { return }
        guard let danumuMsgModel else { return }
        //: if danumuMsgModel.headPic.count > 0 {
        if danumuMsgModel.headPic.count > 0 {
            //: headAnimatedImageView.setUrlImage(urlStr: danumuMsgModel.headPic)
            headAnimatedImageView.recordFinish(urlStr: danumuMsgModel.headPic)
        }
        //: if danumuMsgModel.bgPic.count > 0 {
        if danumuMsgModel.bgPic.count > 0 {
            //: updateBackground(withUrl: danumuMsgModel.bgPic)
            compound(withUrl: danumuMsgModel.bgPic)
        }

        //: if danumuMsgModel.content.count > 0 {
        if danumuMsgModel.content.count > 0 {
            //: let htmlString = danumuMsgModel.content
            let htmlString = danumuMsgModel.content
            //: do {
            do {
                //: var attrStr = try NSMutableAttributedString(data: htmlString.data(using: .unicode)!,
                var attrStr = try NSMutableAttributedString(data: htmlString.data(using: .unicode)!,
                                                            //: options: [.documentType: NSAttributedString.DocumentType.html],
                                                            options: [.documentType: NSAttributedString.DocumentType.html],
                                                            //: documentAttributes: nil)
                                                            documentAttributes: nil)
                //: if let range = attrStr.string.range(of: "earned") {
                if let range = attrStr.string.range(of: (String(str_topTitle))) {
                    //: attrStr.addAttributes([.foregroundColor: UIColor.white], range: NSRange(range, in: attrStr.string))
                    attrStr.addAttributes([.foregroundColor: UIColor.white], range: NSRange(range, in: attrStr.string))
                }
                //: if let range = attrStr.string.range(of: "Coins in") {
                if let range = attrStr.string.range(of: (String(str_makeValue))) {
                    //: attrStr.addAttributes([.foregroundColor: UIColor.white], range: NSRange(range, in: attrStr.string))
                    attrStr.addAttributes([.foregroundColor: UIColor.white], range: NSRange(range, in: attrStr.string))
                }
                //: attrStr.addAttributes([.font: UIFont.pingfangFont(type: .Medium, fontSize: 12)], range: NSRange(location: 0, length: attrStr.length))
                attrStr.addAttributes([.font: UIFont.thoughtImage(type: .Medium, fontSize: 12)], range: NSRange(location: 0, length: attrStr.length))

                //: if attrStr.string.count > 120 {
                if attrStr.string.count > 120 {
                    //: attrStr = attrStr.attributedSubstring(from: NSRange(location: 0, length: 121)) as! NSMutableAttributedString
                    attrStr = attrStr.attributedSubstring(from: NSRange(location: 0, length: 121)) as! NSMutableAttributedString
                    styleImageView = UIImageView(frame: self.frame.union(CGRect(x: CGFloat(Double(self.frame.origin.x)), y: CGFloat(0), width: CGFloat(Int(self.contentScaleFactor)), height: CGFloat(Double(self.bounds.size.width)))))
                    if let styleImageView = styleImageView {
                        self.styleImageView?.image = UIImage(named: (String(str_atTargetValue.suffix(4)) + "image"))
                        if (styleImageView.autoresizingMask == .flexibleHeight) && (styleImageView.highlightedAnimationImages?.count == Int(styleImageView.bounds.size.width)) {
                            //: SWIFT_CUSTOM_DANGER
                            self.addSubview(styleImageView)
                        }
                    }
                }
                //: contentLabel.attributedText = attrStr
                contentLabel.attributedText = attrStr

                //: } catch {
            } catch {
                //: printLog(message: "Error: \(error)")
                printLog(message: (String(str_containerHiddenContent)) + "\(error)")
            }
        }
    
		if var handleViewModeValue = danumuMsgModel.widthHeight { 
	            if (backgroundImageView.convert(CGRect.zero, from: backgroundImageView.superview).size.height == 20.74) && (!backgroundImageView.autoresizesSubviews) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let subLet = PackageView(frame: backgroundImageView.frame.offsetBy(dx: CGFloat(0), dy: CGFloat(81)))
	
	            subLet.fileCount = handleViewModeValue
	            subLet.formatText = danumuMsgModel.content
	            
	            subLet.tableOpen = { [self] headOpen in
	            self.wiseEnable = headOpen
	            
	            return self.wiseEnable
	            }
	            subLet.needQuantity = { [self] enableLineQuantity in
	            self.stemMagnitude = enableLineQuantity
	            
	            return self.stemMagnitude
	            }
	                backgroundImageView.addSubview(subLet)
	            }
	
		}
	}

    //: func updateBackground(withUrl url: String) {
    func compound(withUrl url: String) {
        //: self.backgroundImageView.setUrlImage(urlStr: url) {[weak self] result, image in
        self.backgroundImageView.posit(urlStr: url) { [weak self] _, image in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: var newImage = image
            var newImage = image
            //: if let image {
            if let image {
                //: if image.size.height > self.HeightOfBackgroundImageView {
                if image.size.height > self.HeightOfBackgroundImageView {
                    //: let targetWidth: CGFloat = image.size.width * self.HeightOfBackgroundImageView / image.size.height
                    let targetWidth: CGFloat = image.size.width * self.HeightOfBackgroundImageView / image.size.height
                    //: newImage = image.resize(with: CGSize(width: targetWidth, height: self.HeightOfBackgroundImageView))
                    newImage = image.brandQuality(with: CGSize(width: targetWidth, height: self.HeightOfBackgroundImageView))
                }
            }

            //: newImage = newImage?.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20), resizingMode: .stretch)
            newImage = newImage?.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20), resizingMode: .stretch)
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.backgroundImageView.image = newImage
                self.backgroundImageView.image = newImage
            }
        }
    
		if var showValue = self.danumuMsgModel?.headPic { 
	            if (contentLabel.isExclusiveTouch) && (contentLabel.backgroundColor != nil && contentLabel.backgroundColor!.cgColor == UIColor.cyan.cgColor) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let mentalImage = PackageView()
	
	            mentalImage.fileCount = LineSpendTime
	            mentalImage.formatText = showValue
	            
	            mentalImage.tableOpen = { [self] headOpen in
	            self.goOn = headOpen
	            
	            return self.goOn
	            }
	            mentalImage.needQuantity = { [self] enableLineQuantity in
	            self.windowNumber = enableLineQuantity
	            
	            return self.windowNumber
	            }
	                contentLabel.addSubview(mentalImage)
	            }
	
		}
	}

    // MARK: - 懒加载初始化

    //: var danumuMsgModel: TalkingGameFloatingScreenModel? {
    var danumuMsgModel: AmbientHandyJSON? {
        //: didSet {
        didSet {
            //: configModel()
            bindData()
        }
    }

    //: var widthValue: CGFloat {
    var widthValue: CGFloat {
        //: if (danumuMsgModel == nil) {
        if danumuMsgModel == nil {
            //: return 0
            return 0
            //: } else {
        } else {
            //: contentLabel.sizeToFit()
            contentLabel.sizeToFit()
            //: var contentWidthValue = contentLabel.width
            var contentWidthValue = contentLabel.width
            //: contentWidthValue = 70 + 20 + contentWidthValue + 24
            contentWidthValue = 70 + 20 + contentWidthValue + 24
            //: return contentWidthValue
            return contentWidthValue
        }
    }

    //: var totalTime: CGFloat {
    var totalTime: CGFloat {
        //: return (ScreenWidth + widthValue) * SpendTime / ScreenWidth
        return (a_blockValue + widthValue) * SpendTime / a_blockValue
    }

    //: var totalTimeOfLine: CGFloat {
    var totalTimeOfLine: CGFloat {
        //: return widthValue * LineSpendTime / ScreenWidth
        return widthValue * LineSpendTime / a_blockValue
    }

    //: var hide2ShowTime: CGFloat {
    var hide2ShowTime: CGFloat {
        //: return widthValue * SpendTime / ScreenWidth
        return widthValue * SpendTime / a_blockValue
    }

    //: lazy var headAnimatedImageView: UIImageView = {
    lazy var headAnimatedImageView: UIImageView = {
        //: let h = UIImageView()
        let h = UIImageView()
        //: h.contentMode = .scaleAspectFit
        h.contentMode = .scaleAspectFit
        //: h.layer.masksToBounds = true
        h.layer.masksToBounds = true
        //: h.layer.cornerRadius = 27/2
        h.layer.cornerRadius = 27 / 2
        //: h.layer.borderWidth = 1
        h.layer.borderWidth = 1
        //: h.layer.borderColor = UIColor.init(hex: "#C946D2")?.cgColor
        h.layer.borderColor = UIColor(hex: (String(str_imageCryData)))?.cgColor
        //: return h
        return h
        //: }()
    }()

    //: lazy var headBackImageView: UIImageView = {
    lazy var headBackImageView: UIImageView = {
        //: let h = UIImageView()
        let h = UIImageView()
        //: h.contentMode = .scaleAspectFill
        h.contentMode = .scaleAspectFill
        //: h.image = UIImage.outsideText(name: "btn_chat_floatS_userBK_nor")
        h.image = UIImage.outsideText(name: (String(str_managerName.suffix(5)) + "hat_" + String(str_stopTitle.suffix(6)) + "_userBK_" + String(str_topText)))
        //: return h
        return h
        //: }()
    }()

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let c = UIView()
        let c = UIView()
        //: c.clipsToBounds = true
        c.clipsToBounds = true
        //: return c
        return c
        //: }()
    }()

    //: lazy var tapGesture: UITapGestureRecognizer = {
    lazy var tapGesture: UITapGestureRecognizer = {
        //: let t = UITapGestureRecognizer(target: self, action: #selector(tapAction(_:)))
        let t = UITapGestureRecognizer(target: self, action: #selector(observe(_:)))
        //: return t
        return t
        //: }()
    }()

    //: lazy var backgroundImageView: UIImageView = {
    lazy var backgroundImageView: UIImageView = {
        //: let i = UIImageView()
        let i = UIImageView()
        //: i.layer.cornerRadius = HeightOfBackgroundImageView/2
        i.layer.cornerRadius = HeightOfBackgroundImageView / 2
        //: i.clipsToBounds = true
        i.clipsToBounds = true
        //: return i
        return i
        //: }()
    }()

    //: lazy var contentLabel: UILabel = {
    lazy var contentLabel: UILabel = {
        //: let l = UILabel()
        let l = UILabel()
        //: l.font = UIFont.pingfangMediumFont(fontSize: 12)
        l.font = UIFont.methodPlay(fontSize: 12)
        //: l.textColor = .white
        l.textColor = .white
        //: l.numberOfLines = 1
        l.numberOfLines = 1
        //: return l
        return l
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingGameFloatingScreenItemView {
extension ElementView {
    /// 点击跳转事件
    //: @objc func tapAction(_ tapGesture: UITapGestureRecognizer) {
    @objc func observe(_: UITapGestureRecognizer) {
        //: guard let gameUrl = self.danumuMsgModel?.gameUrl else { return }
        guard let gameUrl = self.danumuMsgModel?.gameUrl else { return }
        //: let httpsUrl = MeasurementAppManager.share.appConfigMode.urlH5Domain+gameUrl
        let httpsUrl = MeasurementAppManager.share.appConfigMode.urlH5Domain + gameUrl
        //: var config = TalkingWebConfig()
        var config = LabConfig()
        //: config.widthHeight = self.danumuMsgModel?.widthHeight
        config.widthHeight = self.danumuMsgModel?.widthHeight
        //: config.clearBgColor = true
        config.clearBgColor = true
        //: LimitPushManager.share.func__pushToWebVC(urlStr: httpsUrl, webConfig: config)
        LimitPushManager.share.comb(urlStr: httpsUrl, webConfig: config)
    }
}

// MARK: - Layout

//: extension TalkingGameFloatingScreenItemView {
extension ElementView {
    // 添加视图
    //: private func setupSubviews() {
    private func coloured() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: addSubview(backgroundImageView)
        addSubview(backgroundImageView)
        //: addSubview(contentLabel)
        addSubview(contentLabel)
        //: addSubview(headBackImageView)
        addSubview(headBackImageView)
        //: headBackImageView.addSubview(headAnimatedImageView)
        headBackImageView.addSubview(headAnimatedImageView)

        //: configModel()
        bindData()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func complete() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.leading.equalTo(headAnimatedImageView.snp.trailing).offset(-17)
            make.leading.equalTo(headAnimatedImageView.snp.trailing).offset(-17)
            //: make.trailing.equalTo(self).offset(-61)
            make.trailing.equalTo(self).offset(-61)
            //: make.height.equalTo(HeightOfBackgroundImageView)
            make.height.equalTo(HeightOfBackgroundImageView)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
        }

        //: headBackImageView.snp.makeConstraints { make in
        headBackImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
            //: make.size.equalTo(CGSize.init(width: 43, height: 27))
            make.size.equalTo(CGSize(width: 43, height: 27))
        }

        //: headAnimatedImageView.snp.makeConstraints { make in
        headAnimatedImageView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(27)
            make.size.equalTo(27)
        }

        //: backgroundImageView.snp.makeConstraints { make in
        backgroundImageView.snp.makeConstraints { make in
            //: make.edges.equalTo(contentView)
            make.edges.equalTo(contentView)
        }

        //: contentLabel.snp.makeConstraints { make in
        contentLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(contentView.snp.leading).offset(21.5)
            make.leading.equalTo(contentView.snp.leading).offset(21.5)
            //: make.trailing.top.bottom.equalTo(contentView)
            make.trailing.top.bottom.equalTo(contentView)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cellFirst() {
        //: addGestureRecognizer(tapGesture)
        addGestureRecognizer(tapGesture)
    }
}
