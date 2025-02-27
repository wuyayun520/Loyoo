
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modeContent:[UInt8] = [0x95,0x92,0x95,0x88,0xd4,0x9f,0x93,0x98,0x99,0x8e,0xc6,0xd5,0xdc,0x94,0x9d,0x8f,0xdc,0x92,0x93,0x88,0xdc,0x9e,0x99,0x99,0x92,0xdc,0x95,0x91,0x8c,0x90,0x99,0x91,0x99,0x92,0x88,0x99,0x98]

/*: "  " :*/
fileprivate let str_labData:[Character] = [" "," "]

/*: "Say something...     " :*/
fileprivate let str_targetValue:[Character] = ["S","a","y"," ","s","o"]
fileprivate let str_matchData:[Character] = ["m","e","t","h","i","n","g","."]
fileprivate let str_blockText:[Character] = [".","."," "," "," "," "," "]

/*: "btn_video_gift_nor" :*/
fileprivate let str_modelData:[Character] = ["b","t","n","_","v","i","d","e","o","_","g","i","f","t","_","n","o","r"]

/*: "btn_live_gd_nor" :*/
fileprivate let str_buttonValue:[Character] = ["b","t"]
fileprivate let str_atData:[Character] = ["n","_","l","i","v","e","_","g","d","_","n","o","r"]

/*: "btn_live_gd_pre" :*/
fileprivate let str_barTipValue:String = "btn_to path"
fileprivate let str_statusText:String = "to if status layerd_pre"

/*: "btn_live_sx_nor" :*/
fileprivate let str_projectData:[Character] = ["b","t","n","_","l","i","v","e","_","s","x","_","n","o"]
fileprivate let str_errorName:String = "equal"

/*: "btn_live_sx_pre" :*/
fileprivate let str_detailValue:String = "text cell label hidden resignbtn_live_"
fileprivate let str_cornerData:String = "sx_prein manager end value table"

/*: "#FF2348" :*/
fileprivate let str_failBarData:String = "#FF2348object announcement let data"

/*: "btn_live_yx_nor" :*/
fileprivate let str_actionName:[Character] = ["b","t","n","_","l","i","v","e","_","y","x"]
fileprivate let str_equalText:[Character] = ["_","n","o","r"]

/*: "btn_live_yx_pre" :*/
fileprivate let str_nameValue:String = "btn_liheight var type cell hidden"
fileprivate let str_viewTitle:[Character] = ["p","r","e"]

/*: "toUid" :*/
fileprivate let str_contextContent:String = "toUidpath return add style"

/*: "giftId" :*/
fileprivate let str_pointViewTitle:String = "giftIdequal content commit text view"

/*: "giftNum" :*/
fileprivate let str_entryValue:String = "self error guide color togiftNu"
fileprivate let str_modeData:[Character] = ["m"]

/*: "pkgItemsetId" :*/
fileprivate let str_sectionValue:[Character] = ["p","k","g","I","t"]
fileprivate let str_infoIndexName:[Character] = ["e","m","s","e","t","I","d"]

/*: "totalMfCoin" :*/
fileprivate let str_arrayTitle:String = "deviceodeviceal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToManagerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol LabObjectProtocol: NSObjectProtocol {
    //: func func__commentBtnClick()
    func addOf()
}

//: class TalkingLiveRoomBottomView: UIView {
class ToManagerDelegate: UIView {
    var stateImageView: UIImageView?
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: LabObjectProtocol?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        contact()
        //: setupSubViewsConstraint()
        substitute()
        //: TalkingIMManager.shared.func__addDelegate(self)
        DateThen.shared.delegate(self)
        //: refreshRedCountStatus()
        equalBlack()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modeContent.map{$0^252}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(str_targetValue) + String(str_matchData) + String(str_blockText)).localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.achromaticColour(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(resultStop), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_modelData))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_modelData))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(eventBurn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_buttonValue) + String(str_atData))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.outsideText(name: (String(str_barTipValue.prefix(4)) + "live_g" + String(str_statusText.suffix(5)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(represent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_projectData) + str_errorName.replacingOccurrences(of: "equal", with: "r"))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.outsideText(name: (String(str_detailValue.suffix(9)) + String(str_cornerData.prefix(6)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toTime), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(str_failBarData.prefix(7))))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_actionName) + String(str_equalText))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.outsideText(name: (String(str_nameValue.prefix(6)) + "ve_yx_" + String(str_viewTitle))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(phoneMessage), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: DocumentViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = DocumentViewDelegate(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: TableMoreView = {
        //: let v = TalkingLiveRoomMoreView()
        let v = TableMoreView()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: DocumentVideoReactiveCompatible = {
        //: let v = TalkingLiveRoomGamesView()
        let v = DocumentVideoReactiveCompatible()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension ToManagerDelegate {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func resultStop() {
        //: delegate?.func__commentBtnClick()
        delegate?.addOf()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func eventBurn() {
        //: func__sendGift()
        outsideVideo()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func toTime() {
        //: LimitPushManager.share.func__pushToChatListVC(isHalfView: true)
        LimitPushManager.share.behindDateError(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func represent() {
        //: moreView.showView()
        moreView.observerView()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func phoneMessage() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.analogDigitalConverterFrom(from: .LiveRoom)
    }
}

// MARK: - LoadObjectProtocol【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension ToManagerDelegate: LoadObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func innumerableness(count _: Int) {
        //: refreshRedCountStatus()
        equalBlack()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func equalBlack() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [TalkingIMManager.shared.topConvList, TalkingIMManager.shared.norConvList]
        let convLists = [DateThen.shared.topConvList, DateThen.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension ToManagerDelegate {
    //: func func__sendGift() {
    func outsideVideo() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        GestureReactiveCompatible.share.barrel(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.clear()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func clear() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: MeasurementAppManager.share.loginUserMode.mf_coin)
        giftView.titleCoin(needReload: true, mf_coin: MeasurementAppManager.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        colorController()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.maxView()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: WithMeasurable, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.bagNum(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func bagNum(giftModel: WithMeasurable, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            episode(showMsg: a_userText)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params[(String(str_contextContent.prefix(5)))] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(String(str_pointViewTitle.prefix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(str_entryValue.suffix(6)) + String(str_modeData))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(str_sectionValue) + String(str_infoIndexName))] = giftModel.pkgItemsetId
        }

        //: DoingSheRequestTool.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        DoingSheRequestTool.splitWith(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.telegram(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }

            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.bags(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.upInsideInputExtral(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func upInsideInputExtral(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((str_arrayTitle.replacingOccurrences(of: "device", with: "t") + "MfCoin")) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(str_arrayTitle.replacingOccurrences(of: "device", with: "t") + "MfCoin")] as! NSNumber
            //: MeasurementAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            MeasurementAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: MeasurementAppManager.share.loginUserMode.mf_coin)
        giftView.titleCoin(needReload: false, mf_coin: MeasurementAppManager.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func telegram(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard MeasurementAppManager.share.loginUserMode.status != 1 else {
            guard MeasurementAppManager.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    episode(showMsg: errorStr)
                }
                //: return
                return
            }
            //: LimitPushManager.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            LimitPushManager.share.billParams(clickEvent: a_endName, sufficient: false)
            //: giftView.dismissView()
            giftView.gameAcrossView()
            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = UtmostView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
            //: view.show()
            view.studShow()
            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                episode(showMsg: errorStr)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension ToManagerDelegate {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func selectAccount(_ liveModel: AtModelType) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue,
        if MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func contact() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func substitute() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
