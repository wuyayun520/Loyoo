
//: Declare String Begin

/*: "#ffffff" :*/
fileprivate let str_methodSharedData:[Character] = ["#","f","f","f","f"]
fileprivate let str_bottomContent:[Character] = ["f","f"]

/*: "like_color_img" :*/
fileprivate let str_videoValue:String = "like_cmake view"
fileprivate let str_playerText:[Character] = ["_","i","m","g"]

/*: "/dist/loungePlus/index.html" :*/
fileprivate let str_barName:String = "random title/dis"
fileprivate let str_dropBackgroundValue:String = "modege"
fileprivate let str_areaName:[Character] = ["n","d"]
fileprivate let str_countryUserData:[Character] = ["e","x",".","h","t","m","l"]

/*: "https://" :*/
fileprivate let str_itemData:String = "hsend"
fileprivate let str_normalValue:String = "manager info view windowps://"

/*: "http://" :*/
fileprivate let str_curWithName:String = "modelt"
fileprivate let str_selectData:String = "mid gift extensiontp://"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingView.swift
//  AbroadTalking
//
//  Created by young on 2023/8/10.
//

//: import UIKit
import UIKit

//: class TalkingFloatScreenItemView: UIView {
class DoingView: UIView {
	var randomEnable: Bool = false
	var reduceTotal: Double = -69.3
	var buttonArray: [AnyHashable] = []
	var imageDictionary: [AnyHashable: String] = [:]
	var sexDoing: Bool = true
	var subTotal: Double = 92.1
	var timeArray: [AnyHashable] = []
	var lotDictionary: [AnyHashable: String] = [:]
	var homeOff: Bool = true
	var picTotal: Double = -83.1
	var textArray: [AnyHashable] = []
	var viewDictionary: [AnyHashable: String] = [:]

    var effectImageView: UIImageView?

    //: let Broadcast_SpendTime = 5.0
    let Broadcast_SpendTime = 5.0
    //: let Broadcast_LineSpendTime = 1.6
    let Broadcast_LineSpendTime = 1.6
    //: let Broadcast_LevelImageWidth = 12.0
    let Broadcast_LevelImageWidth = 12.0
    //: let Broadcast_HeightOfBackgroundImageView = 22.0
    let Broadcast_HeightOfBackgroundImageView = 22.0
    //: let Broadcast_TextColor = "#ffffff"
    let Broadcast_TextColor = (String(str_methodSharedData) + String(str_bottomContent))
    //: let Broadcast_ContentFont: UIFont = UIFont.pingfangMediumFont(fontSize: 12)
    let Broadcast_ContentFont: UIFont = .methodPlay(fontSize: 12)

    //: var clickBlock: (() -> Void)?
    var clickBlock: (() -> Void)?
    //: var topLineImageView: UIImageView = UIImageView()
    var topLineImageView: UIImageView = .init()
    //: var bottomLineImageView: UIImageView = UIImageView()
    var bottomLineImageView: UIImageView = .init()

    //: convenience init(model: TalkingFloatingScreenModel?) {
    convenience init(model: EquipTransformable?) {
        //: self.init()
        self.init()
        //: self.danumuMsgModel = model
        self.danumuMsgModel = model
        //: setupSubviews()
        viewInSubviews()
        //: setupSubViewsConstraint()
        punctuate()
        //: bindInteraction()
        adhereColorTotaleraction()
    }

    //: deinit {
    deinit {}

    //: func func__roomStartAnimation() {
    func addModel() {
        //: topLineImageView.left = 0 - topLineImageView.width
        topLineImageView.left = 0 - topLineImageView.width
        //: bottomLineImageView.left = widthValue
        bottomLineImageView.left = widthValue
    
            if ((headAnimatedImageView.inputAssistantItem.trailingBarButtonGroups.count == 8) && (headAnimatedImageView.inputAssistantItem.leadingBarButtonGroups.count == 5)) && (headAnimatedImageView.layer.contentsRect.size.width != 1) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let saveData = UpwardlyView()

            saveData.eventQuantity = Broadcast_LevelImageWidth
            saveData.viewUserDoing = { [self] contentViewSwitch in
            self.homeOff = contentViewSwitch
            
            return self.homeOff
            }
            saveData.valueInterval = { [self] mSayMagnitude in
            self.picTotal = mSayMagnitude
            
            var saveData = Broadcast_SpendTime
                saveData += 1
                if Int(saveData) > -82 {
                    saveData = saveData - 1
                }
            if saveData < self.picTotal {
                self.picTotal = saveData
            }
            
            return self.picTotal
            }
            saveData.nameArray = { [self] freeArray in
            self.textArray = freeArray
            
            guard var value = self.textArray as? [String] else {
                return nil
            }
            return value
            }
            saveData.bottomDictionary = { [self] windowDictionary in
            self.viewDictionary = windowDictionary
            
            guard var value = self.viewDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                headAnimatedImageView.addSubview(saveData)
            }

	}

    //: func func__endAnimation() {
    func more() {
        //: layer.removeAllAnimations()
        layer.removeAllAnimations()
        //: headAnimatedImageView.stopAnimating()
        headAnimatedImageView.stopAnimating()
    }

    //: private func configModel() {
    private func eventModel() {
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
            invitationWithData(withUrl: danumuMsgModel.bgPic)
        }

        //: if danumuMsgModel.content.count > 0 {
        if danumuMsgModel.content.count > 0 {
            //: let parse = TUIChatParseTagHelper.init()
            let parse = TUIChatParseTagHelper()
            //: parse.content = danumuMsgModel.content
            parse.content = danumuMsgModel.content
            effectImageView = UIImageView(frame: self.bounds.integral)
            if let effectImageView = effectImageView {
                self.effectImageView?.image = UIImage(named: (String(str_videoValue.prefix(6)) + "olor" + String(str_playerText)))
                if (effectImageView.preservesSuperviewLayoutMargins) && (effectImageView.clipsToBounds) {
                    //: SWIFT_CUSTOM_DANGER
                    self.addSubview(effectImageView)
                }
            }

            //: parse.colorHex = Broadcast_TextColor
            parse.colorHex = Broadcast_TextColor
            //: var mutableAtt = parse.contentParse(withFontSize: 12, insert: "", at: 0)
            var mutableAtt = parse.contentParse(withFontSize: 12, insert: "", at: 0)
            // 限制字符长度
            //: if mutableAtt.string.count > 120 {
            if mutableAtt.string.count > 120 {
                //: mutableAtt = mutableAtt.attributedSubstring(from: NSRange(location: 0, length: 121)) as! NSMutableAttributedString
                mutableAtt = mutableAtt.attributedSubstring(from: NSRange(location: 0, length: 121)) as! NSMutableAttributedString
            }
            //: contentLabel.attributedText = mutableAtt
            contentLabel.attributedText = mutableAtt
        }
    
            if (headAnimatedImageView.intrinsicContentSize.height == 268.60) && (headAnimatedImageView.convert(CGPoint(x: CGFloat(0), y: 0), from: headAnimatedImageView.superview).x == 42.78) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let renewLet = UpwardlyView(frame: headAnimatedImageView.bounds.insetBy(dx: CGFloat(478.60), dy: CGFloat(66)))

            renewLet.eventQuantity = Broadcast_HeightOfBackgroundImageView
            renewLet.viewUserDoing = { [self] contentViewSwitch in
            self.sexDoing = contentViewSwitch
            
            return self.sexDoing
            }
            renewLet.valueInterval = { [self] mSayMagnitude in
            self.subTotal = mSayMagnitude
            
            var renewLet = Broadcast_LineSpendTime
                renewLet -= 1
                if renewLet != 67 {
                    renewLet = renewLet + 1
                }
            if renewLet > self.subTotal {
                self.subTotal = renewLet
            }
            
            return self.subTotal
            }
            renewLet.nameArray = { [self] freeArray in
            self.timeArray = freeArray
            
            guard var value = self.timeArray as? [String] else {
                return nil
            }
            return value
            }
            renewLet.bottomDictionary = { [self] windowDictionary in
            self.lotDictionary = windowDictionary
            
            guard var value = self.lotDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                headAnimatedImageView.addSubview(renewLet)
            }

	}

    //: func updateBackground(withUrl url: String) {
    func invitationWithData(withUrl url: String) {
        //: self.backgroundImageView.setUrlImage(urlStr: url) {[weak self] result, image in
        self.backgroundImageView.posit(urlStr: url) { [weak self] _, image in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: var newImage = image
            var newImage = image
            //: if let image {
            if let image {
                //: if image.size.height > self.Broadcast_HeightOfBackgroundImageView {
                if image.size.height > self.Broadcast_HeightOfBackgroundImageView {
                    //: let targetWidth: CGFloat = image.size.width * self.Broadcast_HeightOfBackgroundImageView / image.size.height
                    let targetWidth: CGFloat = image.size.width * self.Broadcast_HeightOfBackgroundImageView / image.size.height
                    //: newImage = image.resize(with: CGSize(width: targetWidth, height: self.Broadcast_HeightOfBackgroundImageView))
                    newImage = image.brandQuality(with: CGSize(width: targetWidth, height: self.Broadcast_HeightOfBackgroundImageView))
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
    
            if (headAnimatedImageView.intrinsicContentSize.height == 268.60) && (headAnimatedImageView.convert(CGPoint(x: CGFloat(0), y: 0), from: headAnimatedImageView.superview).x == 42.78) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let renewLet = UpwardlyView(frame: headAnimatedImageView.bounds.insetBy(dx: CGFloat(478.60), dy: CGFloat(66)))

            renewLet.eventQuantity = Broadcast_SpendTime
            renewLet.viewUserDoing = { [self] contentViewSwitch in
            self.randomEnable = contentViewSwitch
            
            return self.randomEnable
            }
            renewLet.valueInterval = { [self] mSayMagnitude in
            self.reduceTotal = mSayMagnitude
            
            var renewLet = Broadcast_HeightOfBackgroundImageView
                renewLet -= 1
                if renewLet != 67 {
                    renewLet = renewLet + 1
                }
            if renewLet > self.reduceTotal {
                self.reduceTotal = renewLet
            }
            
            return self.reduceTotal
            }
            renewLet.nameArray = { [self] freeArray in
            self.buttonArray = freeArray
            
            guard var value = self.buttonArray as? [String] else {
                return nil
            }
            return value
            }
            renewLet.bottomDictionary = { [self] windowDictionary in
            self.imageDictionary = windowDictionary
            
            guard var value = self.imageDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                headAnimatedImageView.addSubview(renewLet)
            }

	}

    // MARK: - 懒加载初始化

    //: var danumuMsgModel: TalkingFloatingScreenModel? {
    var danumuMsgModel: EquipTransformable? {
        //: didSet {
        didSet {
            //: configModel()
            eventModel()
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
        //: return (ScreenWidth + widthValue) * Broadcast_SpendTime / ScreenWidth
        return (a_blockValue + widthValue) * Broadcast_SpendTime / a_blockValue
    }

    //: var totalTimeOfLine: CGFloat {
    var totalTimeOfLine: CGFloat {
        //: return widthValue * Broadcast_LineSpendTime / ScreenWidth
        return widthValue * Broadcast_LineSpendTime / a_blockValue
    }

    //: var hide2ShowTime: CGFloat {
    var hide2ShowTime: CGFloat {
        //: return widthValue * Broadcast_SpendTime / ScreenWidth
        return widthValue * Broadcast_SpendTime / a_blockValue
    }

    //: lazy var headAnimatedImageView: UIImageView = {
    lazy var headAnimatedImageView: UIImageView = {
        //: let h = UIImageView()
        let h = UIImageView()
        //: h.contentMode = .scaleAspectFit
        h.contentMode = .scaleAspectFit
        //: h.layer.masksToBounds = true
        h.layer.masksToBounds = true
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
        let t = UITapGestureRecognizer(target: self, action: #selector(actionBar(_:)))
        //: return t
        return t
        //: }()
    }()

    //: lazy var backgroundImageView: UIImageView = {
    lazy var backgroundImageView: UIImageView = {
        //: let i = UIImageView()
        let i = UIImageView()
        //: i.layer.cornerRadius = Broadcast_HeightOfBackgroundImageView/2
        i.layer.cornerRadius = Broadcast_HeightOfBackgroundImageView / 2
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

//: extension TalkingFloatScreenItemView {
extension DoingView {
    /// 弹幕点击跳转事件
    //: @objc func tapAction(_ tapGesture: UITapGestureRecognizer) {
    @objc func actionBar(_: UITapGestureRecognizer) {
        //: guard let jumpType = self.danumuMsgModel?.jumpType else { return }
        guard let jumpType = self.danumuMsgModel?.jumpType else { return }
        //: switch(jumpType) {
        switch jumpType {
        //: case "1": // 个人中心
        case "1": // 个人中心
            //: LimitPushManager.share.func__pushToUserDetailVC(uid: self.danumuMsgModel?.jumpKey)
            LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: self.danumuMsgModel?.jumpKey)

        //: case "2": // 直播间
        case "2": // 直播间
            //: if let uid = self.danumuMsgModel?.jumpKey {
            if let uid = self.danumuMsgModel?.jumpKey {
                //: LimitPushManager.share.func_audiencePushToLiveRoomVC(uid: uid, enterType: .unknown)
                LimitPushManager.share.versionText(uid: uid, enterType: .unknown)
            }

        //: case "3": // H5页面
        case "3": // H5页面
            //: if let url = self.danumuMsgModel?.jumpKey {
            if let url = self.danumuMsgModel?.jumpKey {
                //: if url.contains("/dist/loungePlus/index.html") {
                if url.contains((String(str_barName.suffix(4)) + "t/lo" + str_dropBackgroundValue.replacingOccurrences(of: "mode", with: "un") + "Plus/i" + String(str_areaName) + String(str_countryUserData))) {
                    //: LimitPushManager.share.func__pushToSubscribePageWebVC()
                    LimitPushManager.share.birth()
                    //: return
                    return
                }
                //: let httpsUrl = MeasurementAppManager.share.appConfigMode.urlH5Domain+url
                let httpsUrl = MeasurementAppManager.share.appConfigMode.urlH5Domain + url
                //: let httpUrl = httpsUrl.replacingOccurrences(of: "https://", with: "http://")
                let httpUrl = httpsUrl.replacingOccurrences(of: (str_itemData.replacingOccurrences(of: "send", with: "tt") + String(str_normalValue.suffix(5))), with: (str_curWithName.replacingOccurrences(of: "model", with: "h") + String(str_selectData.suffix(5))))
                //: LimitPushManager.share.func__pushToWebVC(urlStr: httpUrl)
                LimitPushManager.share.comb(urlStr: httpUrl)
            }

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingFloatScreenItemView {
extension DoingView {
    // 添加视图
    //: private func setupSubviews() {
    private func viewInSubviews() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: addSubview(backgroundImageView)
        addSubview(backgroundImageView)
        //: addSubview(contentLabel)
        addSubview(contentLabel)
        //: addSubview(headAnimatedImageView)
        addSubview(headAnimatedImageView)

        //: configModel()
        eventModel()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func punctuate() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.leading.equalTo(headAnimatedImageView.snp.trailing).offset(-23)
            make.leading.equalTo(headAnimatedImageView.snp.trailing).offset(-23)
            //: make.trailing.equalTo(self).offset(-61)
            make.trailing.equalTo(self).offset(-61)
            //: make.height.equalTo(Broadcast_HeightOfBackgroundImageView)
            make.height.equalTo(Broadcast_HeightOfBackgroundImageView)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
        }

        //: headAnimatedImageView.snp.makeConstraints { make in
        headAnimatedImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
            //: make.size.equalTo(CGSize(width: 43, height: 37))
            make.size.equalTo(CGSize(width: 43, height: 37))
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
    private func adhereColorTotaleraction() {
        //: addGestureRecognizer(tapGesture)
        addGestureRecognizer(tapGesture)
    }
}
