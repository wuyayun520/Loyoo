
//: Declare String Begin

/*: "inside_img" :*/
fileprivate let str_makeContent:[Character] = ["i","n","s","i","d","e","_"]
fileprivate let str_normalIndexValue:[Character] = ["i","m","g"]

/*: "uid" :*/
fileprivate let str_sizeName:[Character] = ["u","i","d"]

/*: "floatingScreen" :*/
fileprivate let str_makeValue:String = "floatable"
fileprivate let str_equalData:String = "creeprice"

/*: "MF:LiveChatMsg" :*/
fileprivate let str_originValue:String = "element count userMF:Live"
fileprivate let str_infoNameValue:String = "self imageChatMsg"

/*: "MF:LiveChatMentionMsg" :*/
fileprivate let str_textValue:String = "to in info make selfMF:Live"
fileprivate let str_lastName:String = "ChatMetrue of"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let str_aboutName:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","G"]
fileprivate let str_titleName:[Character] = ["i","f","t","M","s","g"]

/*: "LiveGift_ :*/
fileprivate let str_modelText:[Character] = ["L","i","v","e","G","i","f"]
fileprivate let str_statusValue:[Character] = ["t","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MTheoryThen.swift
//  AbroadTalking
//
//  Created by young on 2023/6/19.
//

//: import UIKit
import UIKit

//: class TalkingLiveBeautifyViewController: TalkingBaseViewController {
class MTheoryThen: PropertyViewController {
	var menuCount: Double = 86.0
	var subVideoSum: Double = 73.0

    var tailImageView: UIImageView?

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        buttonSubviews()
        //: setupSubViewsConstraint()
        subView()
        //: initNotifacation()
        onlineView()
        //: TalkingDanmuManager.shared().delegate = self
        SizeDanmuManager.appShared().delegate = self

        tailImageView = UIImageView(frame: self.view.bounds.standardized)
        if let tailImageView = tailImageView {
            self.tailImageView?.image = UIImage(named: (String(str_makeContent) + String(str_normalIndexValue)))
            if (tailImageView.motionEffects.count == 20) && (tailImageView.inputView != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(tailImageView)
            }
        }
    
            if (!giftTrackView.isOpaque) && (giftTrackView.intrinsicContentSize.width == 304.41) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let convertLet = TimePeriodView()
            convertLet.bagOpen = floatScreenView.isFirstChannelEmpty
            convertLet.screenCount = commInputView.inputTextView.placeholderLeftOffset
            convertLet.labCount = { [self] detailInterval in
            self.menuCount = detailInterval
            
            var convertLet = commInputView.inputTextView.placeholderLeftOffset
            convertLet -= 1
            if convertLet > self.menuCount {
                self.menuCount = convertLet
            }
            
            return self.menuCount
            }
                giftTrackView.addSubview(convertLet)
            }

	}

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: initCachEffectData()
        cach()
    
            if (commInputView.layer.shadowRadius == 1.81) && (commInputView.layer.contentsRect.origin.x != 0) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let gesturePackage = TimePeriodView(frame: commInputView.frame)
            gesturePackage.bagOpen = giftEffectView.giftAnimatView.needStopAll
            gesturePackage.screenCount = danmuView.AllHeight
            gesturePackage.labCount = { [self] detailInterval in
            self.subVideoSum = detailInterval
            
            var gesturePackage = commInputView.inputTextView.placeholderLeftOffset
            gesturePackage -= 1
            if gesturePackage < self.subVideoSum {
                self.subVideoSum = gesturePackage
            }
            
            return self.subVideoSum
            }
                commInputView.addSubview(gesturePackage)
            }

	}

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 视频渲染视图
    //: lazy var renderView: UIView = {
    lazy var renderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bottomView: TalkingLiveRoomBottomView = {
    private lazy var bottomView: ToManagerDelegate = {
        //: let view = TalkingLiveRoomBottomView(frame: .zero)
        let view = ToManagerDelegate(frame: .zero)
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commInputView: TalkingLiveRoomInputView = {
    private lazy var commInputView: SocialTitleViewDelegate = {
        //: let text = TalkingLiveRoomInputView.init()
        let text = SocialTitleViewDelegate()
        //: text.delegate = self
        text.delegate = self
        //: text.isHidden = true
        text.isHidden = true
        //: return text
        return text
        //: }()
    }()

    //: private lazy var danmuView: TalkingDanmuMsgListTableView = {
    private lazy var danmuView: TalkingMediumViewDataSource = {
        //: let view = TalkingDanmuMsgListTableView.init()
        let view = TalkingMediumViewDataSource()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var giftEffectView: TalkingPrivateChatAnimatView = {
    private lazy var giftEffectView: EquidistantThen = {
        //: let effectView = TalkingPrivateChatAnimatView.init()
        let effectView = EquidistantThen()
        //: effectView.contentMode = .scaleAspectFill
        effectView.contentMode = .scaleAspectFill
        //: return effectView
        return effectView
        //: }()
    }()

    //: private lazy var giftTrackView: TalkingGiftTrackView = {
    private lazy var giftTrackView: CountTrackView = {
        //: let trackView = TalkingGiftTrackView.init()
        let trackView = CountTrackView()
        //: trackView.isUserInteractionEnabled = false
        trackView.isUserInteractionEnabled = false
        //: return trackView
        return trackView
        //: }()
    }()

    //: lazy var topView: TalkingLiveRoomTopView = {
    lazy var topView: CuttingEdgeThen = {
        //: let view = TalkingLiveRoomTopView()
        let view = CuttingEdgeThen()
        //: view.weakVC = self
        view.weakVC = self
        //: view.rightBtnBlock = { [weak self] in
        view.rightBtnBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.commInputView.inputTextView.resignFirstResponder()
            self.commInputView.inputTextView.resignFirstResponder()
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var floatScreenView: TalkingFloatScreenView = {
    private lazy var floatScreenView: LimitActualScreenView = { // 飘屏
        //: let v = TalkingFloatScreenView()
        let v = LimitActualScreenView()
        //: v.isHidden = (MeasurementAppManager.share.appStatus == AppSkinStatus.special.rawValue)
        v.isHidden = (MeasurementAppManager.share.appStatus == LabCustomReflectable.special.rawValue)
        //: return v
        return v
        //: }()
    }()
}

// 通知
//: extension TalkingLiveBeautifyViewController {
extension MTheoryThen {
    //: func initNotifacation() {
    func onlineView() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveTop),
                                               selector: #selector(anagrammatise),
                                               //: name: LIVE_HALF_VIEW_SHOW,
                                               name: a_callData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveBottom),
                                               selector: #selector(ghost),
                                               //: name: LIVE_HALF_VIEW_DISMISS,
                                               name: a_giftTitle,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(blockUserExitRoom(notification:)),
                                               selector: #selector(operations(notification:)),
                                               //: name: LIVE_BLOCK_USER_NOTIFICATION,
                                               name: a_backValue,
                                               //: object: nil)
                                               object: nil)
        // 飘屏
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showFloatScreen(notification:)),
                                               selector: #selector(noReplacementNotification(notification:)),
                                               //: name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION,
                                               name: a_appData,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func danmuMoveTop() {
    @objc func anagrammatise() {
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top).offset(-(ScreenHeight-HalfViewTopMargin-bottomView.height-kDeviceSafeBottomHeight))
            make.bottom.equalTo(bottomView.snp.top).offset(-(a_formalValue - a_screenServerValue - bottomView.height - a_agentData))
        }
    }

    //: @objc func danmuMoveBottom() {
    @objc func ghost() {
        //: var ishave = 0
        var ishave = 0
        //: for vc in self.children {
        for vc in self.children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: DoingRecognizerDelegate.self) || vc.isKind(of: AddDataManagerDelegate.self) {
                //: ishave += 1
                ishave += 1
            }
        }
        //: if ishave == 0 {
        if ishave == 0 {
            //: danmuView.snp.updateConstraints { make in
            danmuView.snp.updateConstraints { make in
                //: make.bottom.equalTo(bottomView.snp.top)
                make.bottom.equalTo(bottomView.snp.top)
            }
        }
    }

    /// 拉黑用户踢出房间
    //: @objc func blockUserExitRoom(notification: NSNotification) -> Void {
    @objc func operations(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let uid = userinfo["uid"] as? String
        let uid = userinfo[(String(str_sizeName))] as? String

        //: if String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) == MeasurementAppManager.share.loginUserMode.userID {
        if String(PropertyMManageressPushListener.giftShared().liveRoomModel.streamerInfo.uid) == MeasurementAppManager.share.loginUserMode.userID {
            //: V2TIMManager.sharedInstance().muteGroupMember(TalkingLiveManager.shared().liveRoomModel.chatGroupId, member: uid, muteTime: 1) {
            V2TIMManager.sharedInstance().muteGroupMember(PropertyMManageressPushListener.giftShared().liveRoomModel.chatGroupId, member: uid, muteTime: 1) {
                //: } fail: { code, decstr in
            } fail: { _, _ in
            }
        }
    }

    /// 展示飘屏内容
    //: @objc private func showFloatScreen(notification: NSNotification) {
    @objc private func noReplacementNotification(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let dict = userinfo["floatingScreen"]
        let dict = userinfo[(str_makeValue.replacingOccurrences(of: "table", with: "t") + "ingS" + str_equalData.replacingOccurrences(of: "price", with: "n"))]
        //: if let model = TalkingFloatingScreenModel.deserialize(from: dict as? Dictionary) {
        if let model = EquipTransformable.deserialize(from: dict as? Dictionary) {
            //: self.floatScreenView.didReceive(model)
            self.floatScreenView.concatenateReceive(model)
        }
    }
}

// MARK: - Request

//: extension TalkingLiveBeautifyViewController {
extension MTheoryThen {
    /// 停止直播
    //: private func req_stopLive() {
    private func bottom() {
        //: TalkingLiveManager.req_liveStop(type: 1) { succeed, result, errorModel in
        PropertyMManageressPushListener.toSatisfy(type: 1) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            // 关播成功
            //: TalkingLiveManager.shared().live_releaseAllResource()
            PropertyMManageressPushListener.giftShared().handleDown()
        }
    }
}

// MARK: - 底部按钮代理

//: extension TalkingLiveBeautifyViewController: TalkingLiveRoomBottomViewDelegate {
extension MTheoryThen: LabObjectProtocol {
    //: func func__commentBtnClick() {
    func addOf() {
        /// 拉起弹幕评论
        //: commInputView.updatePlaceholder()
        commInputView.soupUpBlock()
    }
}

// MARK: - MediumLabManagerDelegate

//: extension TalkingLiveBeautifyViewController: TalkingDanmuManagerDelegate {
extension MTheoryThen: MediumLabManagerDelegate {
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func sunrise(Msg: AppModelType) {
        //: addGiftEffectModelArr(Msg: Msg)
        positionMsg(Msg: Msg)
    }

    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func modelBind(Msg: AppModelType) {
        //: danmuView.addNewMsg(msgModel: Msg)
        danmuView.addWith(msgModel: Msg)
        // 展示未读消息提醒标识(文本、@、礼物)
        //: if Msg.MsgExtension == "MF:LiveChatMsg" ||
        if Msg.MsgExtension == (String(str_originValue.suffix(7)) + String(str_infoNameValue.suffix(7))) ||
            //: Msg.MsgExtension == "MF:LiveChatMentionMsg" ||
            Msg.MsgExtension == (String(str_textValue.suffix(7)) + String(str_lastName.prefix(6)) + "ntionMsg") ||
            //: Msg.MsgExtension == "MF:LiveChatGiftMsg" {
            Msg.MsgExtension == (String(str_aboutName) + String(str_titleName))
        {
            //: TalkingLiveManager.shared().updateUnredMessageCount()
            PropertyMManageressPushListener.giftShared().constraintAction()
        }
    }

    //: func func__actionUserNewModel(pushUid: String?) {
    func occurrent(pushUid: String?) {
        //: commInputView.inputTextView.resignFirstResponder()
        commInputView.inputTextView.resignFirstResponder()
        //: let view = TalkingLiveUserCardView.init(frame: self.view.frame, uid: pushUid ?? "")
        let view = LabelThen(frame: self.view.frame, uid: pushUid ?? "")
        //: view.delegate = self
        view.delegate = self
        //: view.show()
        view.visualPropertyStatus()
    }

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?) {
    func less(nickName: String, atUid: String?) {
        //: commInputView.callUserText(toUid: atUid ?? "", nickName: nickName)
        commInputView.makeContent(toUid: atUid ?? "", nickName: nickName)
    }

    //: func func__userLogin() {}
    func onHide() {}

    //: func func__userLogout() {}
    func terms() {}
}

// MARK: - ReloadSizeObjectProtocol 资料卡

//: extension TalkingLiveBeautifyViewController: TalkingLiveUserCardViewDelegate {
extension MTheoryThen: ReloadSizeObjectProtocol {
    //: func func__atUserClick(uid: String, nickname: String) {
    func ping(uid: String, nickname: String) {
        //: commInputView.callUserText(toUid: uid, nickName: nickname)
        commInputView.makeContent(toUid: uid, nickName: nickname)
    }
}

// MARK: - 礼物动效

//: extension TalkingLiveBeautifyViewController {
extension MTheoryThen {
    /// 加载之前动画
    //: func initCachEffectData() {
    func cach() {
        //: let toUid = "LiveGift_\(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)"
        let toUid = (String(str_modelText) + String(str_statusValue)) + "\(PropertyMManageressPushListener.giftShared().liveRoomModel.streamerInfo.uid)"
        //: giftEffectView.initCachAnimatData(tagetID: toUid)
        giftEffectView.listWithId(tagetID: toUid)
    }

    /// 收到礼物消息展示
    //: func addGiftEffectModelArr(Msg: TalkingLiveRoomDanmuModel) {
    func positionMsg(Msg: AppModelType) {
        //: if giftTrackView.giftSendItem.count == 0 {
        if giftTrackView.giftSendItem.count == 0 {
            //: let arrM = NSMutableArray.init()
            let arrM = NSMutableArray()
            //: for model in TalkingChatGiftManager.share.getSendingItems() {
            for model in GestureReactiveCompatible.share.textView() {
                //: arrM.add(model)
                arrM.add(model)
            }
            //: giftTrackView.giftSendItem = arrM as! [TalkingGiftNumArrModel]
            giftTrackView.giftSendItem = arrM as! [MediaArrModel]
        }
        //: let giftModel = Msg.gift
        let giftModel = Msg.gift
        //: if giftModel != nil {
        if giftModel != nil {
            //: giftTrackView.func__didReceiveGiftMsgModel(model: giftModel!)
            giftTrackView.terraceFirst(model: giftModel!)
            //: giftEffectView.addGiftAnimatModelArr(modelArr: [giftModel!])
            giftEffectView.place(modelArr: [giftModel!])
        }
    }
}

/// 屏幕点击事件
//: extension TalkingLiveBeautifyViewController {
extension MTheoryThen {
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.view)
        var point = touch.location(in: self.view)
        //: point = commInputView.layer.convert(point, from: self.view.layer)
        point = commInputView.layer.convert(point, from: self.view.layer)
        //: if !commInputView.layer.contains(point) {
        if !commInputView.layer.contains(point) {
            //: commInputView.inputTextView.resignFirstResponder()
            commInputView.inputTextView.resignFirstResponder()
        }
    }
}

// MARK: - 发表弹幕代理

//: extension TalkingLiveBeautifyViewController: TalkingLiveRoomInputViewDelegate {
extension MTheoryThen: TenantThen {
    //: @objc func dismissClick() {
    @objc func timeAdd() {
        //: commInputView.inputTextView.text = ""
        commInputView.inputTextView.text = ""
        //: commInputView.resignkeyBoard()
        commInputView.equalContent()
    }

    //: func func__sendTextMsg(msgStr: String, atUid: String?) {
    func choice(msgStr: String, atUid: String?) {
        //: sendToTextMsg(msgStr: msgStr, toUid: atUid)
        videoEqualUser(msgStr: msgStr, toUid: atUid)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func indexMain(heightToBottom: CGFloat) {
        /// 半屏页打开时，不改变弹幕位置
        //: for vc in self.children {
        for vc in self.children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: DoingRecognizerDelegate.self) || vc.isKind(of: AddDataManagerDelegate.self) {
                //: return
                return
            }
        }

        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.bottom.equalTo(self.view).offset(-heightToBottom)
            make.bottom.equalTo(self.view).offset(-heightToBottom)
        }
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: let height = heightToBottom == 0 ? 0 : -(heightToBottom-bottomView.height+commInputView.height-kDeviceSafeBottomHeight)
            let height = heightToBottom == 0 ? 0 : -(heightToBottom - bottomView.height + commInputView.height - a_agentData)
            //: make.bottom.equalTo(bottomView.snp.top).offset(height)
            make.bottom.equalTo(bottomView.snp.top).offset(height)
        }
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func inputSignal(height: CGFloat) {
        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }

        //: self.view.needsUpdateConstraints()
        self.view.needsUpdateConstraints()
        //: self.view.updateConstraintsIfNeeded()
        self.view.updateConstraintsIfNeeded()
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }

    /// 发送文本消息
    //: func sendToTextMsg(msgStr: String, toUid: String?) {
    func videoEqualUser(msgStr: String, toUid: String?) {
        //: TalkingDanmuManager.uploadToTextMsg(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, result, errorModel in
        SizeDanmuManager.uploadInContext(groupId: PropertyMManageressPushListener.giftShared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, _, _ in
            //: if succeed {
            if succeed {}
        }
    }
}

// MARK: - Event

//: extension TalkingLiveBeautifyViewController {
extension MTheoryThen {
    /// 开播成功，刷新直播间
    //: func refreshLiveRoomView() {
    func equalBegin() {
        //: topView.refreshTopView(TalkingLiveManager.shared().liveRoomModel)
        topView.picResponse(PropertyMManageressPushListener.giftShared().liveRoomModel)
        //: bottomView.refreshBottomView(TalkingLiveManager.shared().liveRoomModel)
        bottomView.selectAccount(PropertyMManageressPushListener.giftShared().liveRoomModel)
    }

    /// 将当前视图从栈中移除
    //: func popCurrentViewController(animated: Bool = true) {
    func panoramicViewEmpty(animated: Bool = true) {
        //: self.topView.stopTimer()
        self.topView.pushTimer()
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = colorController() else { return }
        //: guard currentVC.presentingViewController == nil else {
        guard currentVC.presentingViewController == nil else {
            // 如果直播视图上面有present, 先dismiss
            //: currentVC.dismiss(animated: false) {
            currentVC.dismiss(animated: false) {
                //: self.popCurrentViewController()
                self.panoramicViewEmpty()
            }
            //: return
            return
        }

        //: if currentVC.navigationController?.topViewController == self {
        if currentVC.navigationController?.topViewController == self {
            //: self.navigationController?.popViewController(animated: animated)
            self.navigationController?.popViewController(animated: animated)
            //: } else {
        } else {
            //: if var vcArr = currentVC.navigationController?.viewControllers {
            if var vcArr = currentVC.navigationController?.viewControllers {
                //: if let index = vcArr.firstIndex(of: self) {
                if let index = vcArr.firstIndex(of: self) {
                    //: vcArr.remove(at: index)
                    vcArr.remove(at: index)
                    //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                    currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveBeautifyViewController {
extension MTheoryThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func buttonSubviews() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: view.addSubview(danmuView)
        view.addSubview(danmuView)
        //: view.addSubview(commInputView)
        view.addSubview(commInputView)
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(floatScreenView)
        view.addSubview(floatScreenView)
        //: view.addSubview(giftTrackView)
        view.addSubview(giftTrackView)
        //: view.addSubview(giftEffectView)
        view.addSubview(giftEffectView)
        //: view.addSubview(topView.svgaView)
        view.addSubview(topView.svgaView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func subView() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: commInputView.snp.makeConstraints { make in
        commInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(actualWidth(w: 55))
            make.height.equalTo(actualWidth(w: 55))
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-(kDeviceSafeBottomHeight + 10))
            make.bottom.equalToSuperview().offset(-(a_agentData + 10))
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
        }
        //: danmuView.snp.makeConstraints { make in
        danmuView.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(MsgTableViewHeight)
            make.height.equalTo(a_recordData)
            //: make.width.equalTo(MsgTableViewWidth)
            make.width.equalTo(a_giftText)
        }
        //: floatScreenView.snp.makeConstraints { make in
        floatScreenView.snp.makeConstraints { make in
            //: make.top.equalTo(topView.snp.bottom).offset(-20)
            make.top.equalTo(topView.snp.bottom).offset(-20)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(90)
            make.height.equalTo(90)
        }
        //: giftEffectView.snp.makeConstraints { make in
        giftEffectView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: giftTrackView.snp.makeConstraints { make in
        giftTrackView.snp.makeConstraints { make in
            //: make.leading.equalTo(self.view)
            make.leading.equalTo(self.view)
            //: make.height.equalTo(180)
            make.height.equalTo(180)
            //: make.bottom.equalTo(bottomView.snp.top).offset(-MsgTableViewHeight)
            make.bottom.equalTo(bottomView.snp.top).offset(-a_recordData)
        }
    }
}
