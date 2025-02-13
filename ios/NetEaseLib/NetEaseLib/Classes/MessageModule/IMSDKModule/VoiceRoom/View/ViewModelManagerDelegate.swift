
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_blackTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "  " :*/
fileprivate let str_infoName:String = "  "

/*: "Say something...     " :*/
fileprivate let str_indexImageContent:String = "Say strue data equal line check"
fileprivate let str_errorContent:String = "model as medium succeed selfhing."
fileprivate let str_topName:String = "   "

/*: "party_bottom_mic_open" :*/
fileprivate let str_videoName:[Character] = ["p","a","r","t","y","_","b","o","t","t","o","m"]
fileprivate let str_showValue:String = "_mblock section"
fileprivate let str_giftModelData:String = "ic_openlab value"

/*: "party_bottom_mic_close" :*/
fileprivate let str_fromName:[Character] = ["p","a","r","t","y","_","b","o","t","t","o","m","_","m","i","c"]
fileprivate let str_hideDateData:String = "make self equal_close"

/*: "btn_video_gift_nor" :*/
fileprivate let str_listTitle:[Character] = ["b","t","n","_","v","i","d","e","o","_","g","i","f"]
fileprivate let str_episodeViewName:[Character] = ["t","_","n","o","r"]

/*: "btn_live_sx_nor" :*/
fileprivate let str_bindTitle:[Character] = ["b","t","n","_","l"]
fileprivate let str_viewTitle:String = "IVE"
fileprivate let str_tabNameData:String = "_sx_norreturn shape manager target self"

/*: "btn_live_sx_pre" :*/
fileprivate let str_nameValue:String = "btn_livecurrent self count"
fileprivate let str_eachText:[Character] = ["_","s","x","_","p","r","e"]

/*: "#FF2348" :*/
fileprivate let str_freeTitle:String = "#FF2348any height"

/*: "Please contact the host to turn on the mic" :*/
fileprivate let str_roomTitle:[UInt8] = [0x50,0x6c,0x65,0x61,0x73,0x65,0x20,0x63,0x6f,0x6e,0x74,0x61,0x63,0x74,0x20,0x74,0x68,0x65,0x20,0x68,0x6f,0x73,0x74,0x20,0x74,0x6f,0x20,0x74,0x75,0x72,0x6e,0x20,0x6f,0x6e,0x20,0x74,0x68,0x65,0x20,0x6d,0x69,0x63]

/*: ", :*/
fileprivate let str_equalViewValue:String = "size"

/*: "Please select an object" :*/
fileprivate let str_resultName:String = "Pleastable type"
fileprivate let str_keyValue:[Character] = [" ","a","n"," ","o"]
fileprivate let str_colorTitleName:[Character] = ["b","j","e","c","t"]

/*: "toUid" :*/
fileprivate let str_fillTitle:[Character] = ["t","o","U","i","d"]

/*: "giftId" :*/
fileprivate let str_topValue:String = "giftIdimage self"

/*: "giftNum" :*/
fileprivate let str_textTitle:[Character] = ["g","i"]
fileprivate let str_titleValue:String = "var to list mftNum"

/*: "roomId" :*/
fileprivate let str_qualityName:String = "button statusroomId"

/*: "pkgItemsetId" :*/
fileprivate let str_managerPresentText:[Character] = ["p","k","g","I","t","e","m","s","e","t","I","d"]

/*: "totalMfCoin" :*/
fileprivate let str_modelColorRightData:[Character] = ["t","o","t"]
fileprivate let str_valueName:[Character] = ["a","l","M","f","C","o","i","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewModelManagerDelegate.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/9/25.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol MLaterObjectProtocol: NSObjectProtocol {
    /// 发布弹幕按钮点击事件
    //: func bottom_commentBtnClick()
    func cameraInReply()
}

//: class TalkingVoiceRoomBottomView: UIView {
class ViewModelManagerDelegate: UIView {
    var labTitleImageView: UIImageView?
    //: open weak var delegate: TalkingVoiceRoomBottomViewDelegate?
    open weak var delegate: MLaterObjectProtocol?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        stateSubviews()
        //: setupSubViewsConstraint()
        premium()
        //: TalkingIMManager.shared.func__addDelegate(self)
        DateThen.shared.delegate(self)
        //: refreshRedCountStatus()
        extra()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_blackTitle, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        btn.setTitle("  " + "Say something...     ".localized, for: .normal)
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
        btn.addTarget(self, action: #selector(dataClick), for: .touchUpInside)
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
        //: v.alignment = .trailing
        v.alignment = .trailing
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var micBtn: UIButton = {
    private lazy var micBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "party_bottom_mic_open"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_videoName) + String(str_showValue.prefix(2)) + String(str_giftModelData.prefix(7)))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "party_bottom_mic_close"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_fromName) + String(str_hideDateData.suffix(6)))), for: .selected)
        //: btn.addTarget(self, action: #selector(micBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(present), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_listTitle) + String(str_episodeViewName))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_listTitle) + String(str_episodeViewName))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(calendar), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_bindTitle) + str_viewTitle.lowercased() + String(str_tabNameData.prefix(7)))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.outsideText(name: (String(str_nameValue.prefix(8)) + String(str_eachText))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(asSend), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(str_freeTitle.prefix(7))))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: DocumentViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .party)
        let giftV = DocumentViewDelegate(style: .party)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomBottomView {
extension ViewModelManagerDelegate {
    /// 刷新底部视图麦克风状态
    //: func refreshBottomMicStatus() {
    func re() {
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = ImageToThen.labelShared().mikeKey(key: ImageToThen.labelShared().partyModel.position) else {
            //: micBtn.isHidden = true
            micBtn.isHidden = true
            //: return
            return
        }
        //: micBtn.isHidden = false
        micBtn.isHidden = false
        //: micBtn.isSelected = (itemModel.mikeStatus != 2)
        micBtn.isSelected = (itemModel.mikeStatus != 2)
    }

    /// 刷新礼物面板上麦头像
    //: func refreshGiftIcon() {
    func delayIcon() {
        //: giftView.partyIconView.refreshIconView()
        giftView.partyIconView.imaginationImage()
    }

    /// 拉起弹幕评论按钮点击事件
    //: @objc private func commentBtnClick() {
    @objc private func dataClick() {
        //: delegate?.bottom_commentBtnClick()
        delegate?.cameraInReply()
    }

    /// 麦克风按钮点击事件
    //: @objc private func micBtnClick() {
    @objc private func present() {
        // 切换麦克风状态
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = ImageToThen.labelShared().mikeKey(key: ImageToThen.labelShared().partyModel.position) else {
            //: return
            return
        }
        //: switch itemModel.mikeStatus {
        switch itemModel.mikeStatus {
        //: case 0:
        case 0: // 闭麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 4, position: TalkingVoiceRoomManager.shared().partyModel.position)
            ImageToThen.labelShared().addPosition(type: 4, position: ImageToThen.labelShared().partyModel.position)

        //: case 1:
        case 1: // 房主闭麦
            //: func__showStatusBarErrorMsg(showMsg: "Please contact the host to turn on the mic".localized)
            episode(showMsg: String(bytes: str_roomTitle, encoding: .utf8)!.localized)

        //: case 2:
        case 2: // 开麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 5, position: TalkingVoiceRoomManager.shared().partyModel.position)
            ImageToThen.labelShared().addPosition(type: 5, position: ImageToThen.labelShared().partyModel.position)

        //: default:
        default:
            //: break
            break
        }
    }

    /// 聊天列表按钮点击事件
    //: @objc private func chatBtnClick() {
    @objc private func asSend() {
        //: LimitPushManager.share.func__pushToChatListVC(isHalfView: true)
        LimitPushManager.share.behindDateError(isHalfView: true)
    }

    /// 送礼按钮点击事件
    //: @objc private func giftBtnClick() {
    @objc private func calendar() {
        //: func__sendGift()
        betweenCard()
    }
}

// MARK: - 送礼

//: extension TalkingVoiceRoomBottomView {
extension ViewModelManagerDelegate {
    /// 展示礼物面板
    //: func func__sendGift(selectedUid: String? = nil) {
    func betweenCard(selectedUid: String? = nil) {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .party, completion: {
        GestureReactiveCompatible.share.barrel(type: .party, completion: {
            //: self.func__showGiftChoiceView(selectedUid: selectedUid)
            self.callUid(selectedUid: selectedUid)
            //: })
        })
    }

    //: func func__showGiftChoiceView(selectedUid: String? = nil) {
    func callUid(selectedUid: String? = nil) {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: MeasurementAppManager.share.loginUserMode.mf_coin)
        giftView.titleCoin(needReload: true, mf_coin: MeasurementAppManager.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        colorController()?.view.addSubview(giftView)
        //: if selectedUid != nil {
        if selectedUid != nil { // 选中单个用户
            //: giftView.partyIconView.refreshAllIcon(allSelected: false, selectedUid: selectedUid)
            giftView.partyIconView.reelectUid(allSelected: false, selectedUid: selectedUid)
            //: } else {
        } else { // 全部选中
            //: giftView.partyIconView.refreshAllIcon(allSelected: true)
            giftView.partyIconView.reelectUid(allSelected: true)
        }
        //: giftView.showView()
        giftView.maxView()
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: WithMeasurable, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.jerk(giftModel: giftModel, giftNum: num)
        }
    }

    /// 送礼
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func jerk(giftModel: WithMeasurable, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            episode(showMsg: a_userText)
            //: return
            return
        }

        // 拼接需要送礼的Uid
        //: var toUid = ""
        var toUid = ""
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        ImageToThen.labelShared().remark().forEach { _, model in
            //: if model.uid > 0, String(model.uid) != MeasurementAppManager.share.loginUid, model.needGift == true {
            if model.uid > 0, String(model.uid) != MeasurementAppManager.share.loginUid, model.needGift == true {
                //: if toUid.count > 0 {
                if toUid.count > 0 {
                    //: toUid.append(",\(model.uid)")
                    toUid.append(",\(model.uid)")
                    //: } else {
                } else {
                    //: toUid.append("\(model.uid)")
                    toUid.append("\(model.uid)")
                }
            }
        }
        //: guard toUid.count > 0 else {
        guard toUid.count > 0 else {
            //: func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
            episode(showMsg: (String(str_resultName.prefix(5)) + "e select" + String(str_keyValue) + String(str_colorTitleName)).localized)
            //: return
            return
        }

        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = toUid
        params[(String(str_fillTitle))] = toUid
        //: params["giftId"] = giftModel.gid
        params[(String(str_topValue.prefix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(str_textTitle) + String(str_titleValue.suffix(5)))] = giftNum
        //: params["roomId"] = TalkingVoiceRoomManager.shared().partyModel.roomId
        params[(String(str_qualityName.suffix(6)))] = ImageToThen.labelShared().partyModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(str_managerPresentText))] = giftModel.pkgItemsetId
        }

        //: DoingSheRequestTool.req_sendPartyGift(param: params, completion: { succeed, result, errorModel in
        DoingSheRequestTool.requestLiberalDemocratParty(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.visualizationResend(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
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
            self.streetwisePerform(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func streetwisePerform(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(str_modelColorRightData) + String(str_valueName))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(str_modelColorRightData) + String(str_valueName))] as! NSNumber
            //: MeasurementAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            MeasurementAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: MeasurementAppManager.share.loginUserMode.mf_coin)
        giftView.titleCoin(needReload: false, mf_coin: MeasurementAppManager.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func visualizationResend(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
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

// MARK: - LoadObjectProtocol【刷新私信红点状态】

//: extension TalkingVoiceRoomBottomView: IMManagerDelegate {
extension ViewModelManagerDelegate: LoadObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func innumerableness(count _: Int) {
        //: refreshRedCountStatus()
        extra()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func extra() {
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

// MARK: - Layout

//: extension TalkingVoiceRoomBottomView {
extension ViewModelManagerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func stateSubviews() {
        //: addSubview(commentBtn)
        addSubview(commentBtn)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(micBtn)
        stackView.addArrangedSubview(micBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    /// 更新布局
    //: private func setupSubViewsConstraint() {
    private func premium() {
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
        //: micBtn.snp.makeConstraints { make in
        micBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
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
    }
}
