
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_giftData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_cover_toast" :*/
fileprivate let str_layerTitle:[Character] = ["i","c","o","n","_","c","o","v","e"]
fileprivate let str_inputValue:String = "normal anyr_toast"

/*: "Free video time is over, you can continue to call her if you are interested" :*/
fileprivate let str_labData:[UInt8] = [0xb8,0x8c,0x9b,0x9b,0xde,0x88,0x97,0x9a,0x9b,0x91,0xde,0x8a,0x97,0x93,0x9b,0xde,0x97,0x8d,0xde,0x91,0x88,0x9b,0x8c,0xd2,0xde,0x87,0x91,0x8b,0xde,0x9d,0x9f,0x90,0xde,0x9d,0x91,0x90,0x8a,0x97,0x90,0x8b,0x9b,0xde,0x8a,0x91,0xde,0x9d,0x9f,0x92,0x92,0xde,0x96,0x9b,0x8c,0xde,0x97,0x98,0xde,0x87,0x91,0x8b,0xde,0x9f,0x8c,0x9b,0xde,0x97,0x90,0x8a,0x9b,0x8c,0x9b,0x8d,0x8a,0x9b,0x9a]

/*: "#34C759" :*/
fileprivate let str_emptyName:[Character] = ["#","3"]
fileprivate let str_modeTitle:[Character] = ["4","C","7","5","9"]

/*: "icon_match_stopcall_pop" :*/
fileprivate let str_fromMaleValue:String = "data on self block labicon_"
fileprivate let str_channelTitle:String = "mextrach"
fileprivate let str_fromName:String = "self share var make_stop"
fileprivate let str_nextTitle:String = "_popcell intimate add"

/*: "icon_lounge_big" :*/
fileprivate let str_pageContent:String = "icon_limage posit video error"
fileprivate let str_youLabData:String = "content let model innere_big"

/*: "#AB57F6" :*/
fileprivate let str_itemValue:String = "#AB57F6hidden class image data cell"

/*: "#FC57B7" :*/
fileprivate let str_hiddenText:[Character] = ["#","F","C","5","7","B","7"]

/*: "#FE9074" :*/
fileprivate let str_buttonLabelValue:[Character] = ["#","F","E","9","0","7","4"]

/*: "Maybe next time" :*/
fileprivate let str_viewValue:String = "Maybtask type make i"
fileprivate let str_makeName:String = "marke"

/*: "type" :*/
fileprivate let str_valueName:[UInt8] = [0x28,0x25,0x2c,0x39]

/*: "toUid" :*/
fileprivate let str_imageTitle:[Character] = ["t","o","U","i","d"]

/*: "uid" :*/
fileprivate let str_topName:[UInt8] = [0x64,0x69,0x75]

/*: "fromFreeCall" :*/
fileprivate let str_insideData:[Character] = ["f","r","o","m","F","r","e"]
fileprivate let str_blockValue:String = "separation name managereCall"

/*: "cmd" :*/
fileprivate let str_fieldContent:[UInt8] = [0x63,0x6d,0x64]

/*: "requestCall" :*/
fileprivate let str_viewText:String = "equalq"
fileprivate let str_limitName:String = "uestCallinfo content any self"

/*: "data" :*/
fileprivate let str_okTitle:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "originalFee" :*/
fileprivate let str_labelTitle:String = "oshowg"
fileprivate let str_cameraData:String = "Feeor model in"

/*: "VIPFee" :*/
fileprivate let str_dateValue:[Character] = ["V"]
fileprivate let str_viewData:String = "IPFeefinish live pic user"

/*: "freeCallTimes" :*/
fileprivate let str_makeData:String = "frtable"
fileprivate let str_toName:String = "count input equal message textTimes"

/*: "onRequestCall" :*/
fileprivate let str_originName:String = "onReqobserver data if attention class"
fileprivate let str_valueContent:[Character] = ["a","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EntitleReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingFreeStopCallPopUpView: UIView {
class EntitleReactiveCompatible: UIView {
    var componentImageView: UIImageView?
    //: var popView: MeasurementThen?
    var popView: MeasurementThen?
    //: var data = [String: Any]()
    var data = [String: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        maneuver()
        //: setupSubViewsConstraint()
        needScreen()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_giftData, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.errorDelegate = nil
        SocketReactiveCompatible.shared.errorDelegate = nil
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.outsideText(name: "icon_cover_toast")
        iamg.image = UIImage.outsideText(name: (String(str_layerTitle) + String(str_inputValue.suffix(7))))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        textView.font = UIFont.thoughtImage(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.blockOf()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: textView.text = "Free video time is over, you can continue to call her if you are interested".localized
        textView.text = String(bytes: str_labData.map{$0^254}, encoding: .utf8)!.localized
        //: return textView
        return textView
        //: }()
    }()

    // 原价按钮
    //: private lazy var originalFeeBtn: TalkingButton = {
    private lazy var originalFeeBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton()
        let btn = PathErrorTalkingButton()
        //: btn.setBackgroundColor(color: UIColor(hex: "#34C759")!, forState: .normal)
        btn.achromaticColour(color: UIColor(hex: (String(str_emptyName) + String(str_modeTitle)))!, forState: .normal)
        //: btn.setImage(UIImage.outsideText(name: "icon_match_stopcall_pop"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_fromMaleValue.suffix(5)) + str_channelTitle.replacingOccurrences(of: "extra", with: "at") + String(str_fromName.suffix(5)) + "call" + String(str_nextTitle.prefix(4)))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(originalFeeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pipage), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // VIP价格
    //: private lazy var vipFeeBtn: TalkingButton = {
    private lazy var vipFeeBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton()
        let btn = PathErrorTalkingButton()
        //: btn.setImage(UIImage.outsideText(name: "icon_lounge_big"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_pageContent.prefix(6)) + "oung" + String(str_youLabData.suffix(5)))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.verticalAlignImageAndTitleWith(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        btn.managerSection(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
        let colors = [UIColor(hex: (String(str_itemValue.prefix(7))))!.cgColor, UIColor(hex: (String(str_hiddenText)))!.cgColor, UIColor(hex: (String(str_buttonLabelValue)))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(masculine), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.appValueDetailColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.observerShared(), .font: UIFont.thoughtImage(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Maybe next time".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(str_viewValue.prefix(4)) + "e next t" + str_makeName.replacingOccurrences(of: "mark", with: "im")).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(greetClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeStopCallPopUpView {
extension EntitleReactiveCompatible {
    /// 原价按钮拨打事件
    //: @objc func originalFeeButtonClick() {
    @objc func pipage() {
        //: let type = self.data["type"] as? Int ?? -1
        let type = self.data[String(bytes: str_valueName.map{$0^92}, encoding: .utf8)!] as? Int ?? -1
        //: let toUid = self.data["toUid"] as? String ?? ""
        let toUid = self.data[(String(str_imageTitle))] as? String ?? ""

        //: var data: [String: Any] = ["type": type,
        var data: [String: Any] = [String(bytes: str_valueName.map{$0^92}, encoding: .utf8)!: type,
                                   //: "uid": toUid]
                                   String(bytes: str_topName.reversed(), encoding: .utf8)!: toUid]
        //: if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0, MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0, MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_insideData) + String(str_blockValue.suffix(5))))
            //: TalkingSocketManager.shared.isFreeCall = true
            SocketReactiveCompatible.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_fieldContent, encoding: .utf8)!: (str_viewText.replacingOccurrences(of: "equal", with: "re") + String(str_limitName.prefix(8))), String(bytes: str_okTitle.reversed(), encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        SocketReactiveCompatible.shared.sendBeautyMoment(info: info)
        //: TalkingSocketManager.shared.errorDelegate = self
        SocketReactiveCompatible.shared.errorDelegate = self
        //: dismiss()
        visibleExecuteSize()
    }

    /// 关闭按钮点击事件
    //: @objc func closeBtnClick() {
    @objc func greetClick() {
        //: dismiss()
        visibleExecuteSize()
    }

    /// 展示
    //: func show() {
    func duringAdd() {
        //: popView = MeasurementThen(frame: UIScreen.main.bounds)
        popView = MeasurementThen(frame: UIScreen.main.bounds)
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: popView?.initWithView(view: self)
        popView?.anInit(view: self)
        //: popView?.showInView(view: ImageMacroDefine.getWindow())
        popView?.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func visibleExecuteSize() {
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }

    /// 更新数据
    //: func setShowData(data: [String: Any]) {
    func popData(data: [String: Any]) {
        //: self.data = data
        self.data = data
        //: let originalFee = data["originalFee"] as? Int ?? 0
        let originalFee = data[(str_labelTitle.replacingOccurrences(of: "show", with: "ri") + "inal" + String(str_cameraData.prefix(3)))] as? Int ?? 0
        //: let vipFee = data["VIPFee"] as? Int ?? 0
        let vipFee = data[(String(str_dateValue) + String(str_viewData.prefix(5)))] as? Int ?? 0
        //: let freeCallTimes = data["freeCallTimes"] as? Int
        let freeCallTimes = data[(str_makeData.replacingOccurrences(of: "table", with: "ee") + "Call" + String(str_toName.suffix(5)))] as? Int
        //: MeasurementAppManager.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        MeasurementAppManager.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        //: originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        originalFeeBtn.setTitle(String.nowadaysCenter(originalFee: originalFee), for: .normal)
        //: vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        vipFeeBtn.setTitle(String.nowadaysCenter(originalFee: originalFee, vipFee: vipFee), for: .normal)
        //: updateSubViewsConstraint()
        timeData()
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func masculine() {
        //: guard MeasurementAppManager.share.loginUserMode.loungePlus else {
        guard MeasurementAppManager.share.loginUserMode.loungePlus else {
            // 非会员 && 默认模式
            //: if MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
            if MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue {
                //: LimitPushManager.share.func__pushToSubscribeAlert()
                LimitPushManager.share.callParams()
            }
            //: dismiss()
            visibleExecuteSize()
            //: return
            return
        }

        //: originalFeeButtonClick()
        pipage()
    }
}

// MARK: - OfErrorDelegate

//: extension TalkingFreeStopCallPopUpView: TalkingSocketManagerErrorDelegate {
extension EntitleReactiveCompatible: OfErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func mixUp(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_originName.prefix(5)) + "uestC" + String(str_valueContent)) {
            //: func__showStatusBarErrorMsg(showMsg: msg)
            episode(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == StarringStrideable.MoneyLack.rawValue {
                //: guard MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue else { return }
                //: LimitPushManager.share.func__jumpToWebRecharge(clickEvent: clickFreepopupButton, sufficient: false)
                LimitPushManager.share.billParams(clickEvent: a_keyMessageData, sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeStopCallPopUpView {
extension EntitleReactiveCompatible {
    /// 更新约束
    //: private func updateSubViewsConstraint() {
    private func timeData() {
        //: if MeasurementAppManager.share.loginUserMode.loungePlus {
        if MeasurementAppManager.share.loginUserMode.loungePlus {
            //: originalFeeBtn.isHidden = true
            originalFeeBtn.isHidden = true
            //: contentView.snp.updateConstraints { make in
            contentView.snp.updateConstraints { make in
                //: make.height.equalTo(actualWidth(w: 255))
                make.height.equalTo(actualWidth(w: 255))
            }
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func maneuver() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(originalFeeBtn)
        contentView.addSubview(originalFeeBtn)
        //: contentView.addSubview(vipFeeBtn)
        contentView.addSubview(vipFeeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func needScreen() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(actualWidth(w: 297))
            //: make.height.equalTo(actualWidth(w: 329))
            make.height.equalTo(actualWidth(w: 329))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: -43))
            make.top.equalTo(actualWidth(w: -43))
            //: make.width.height.equalTo(actualWidth(w: 101))
            make.width.height.equalTo(actualWidth(w: 101))
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom)
            make.top.equalTo(topIcon.snp.bottom)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(actualWidth(w: 103))
            make.height.equalTo(actualWidth(w: 103))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(actualWidth(w: -20))
            make.bottom.equalTo(actualWidth(w: -20))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: vipFeeBtn.snp.makeConstraints { make in
        vipFeeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            //: make.width.equalTo(actualWidth(w: 257))
            make.width.equalTo(actualWidth(w: 257))
            //: make.height.equalTo(actualWidth(w: 54))
            make.height.equalTo(actualWidth(w: 54))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: originalFeeBtn.snp.makeConstraints { make in
        originalFeeBtn.snp.makeConstraints { make in
            //: make.centerX.width.height.equalTo(vipFeeBtn)
            make.centerX.width.height.equalTo(vipFeeBtn)
            //: make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
            make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
        }
    }
}
