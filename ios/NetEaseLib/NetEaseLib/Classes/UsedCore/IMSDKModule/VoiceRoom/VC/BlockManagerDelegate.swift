
//: Declare String Begin

/*: "live_picture" :*/
fileprivate let str_firstValue:[Character] = ["l","i","v","e","_"]
fileprivate let str_statusName:[Character] = ["p","i","c","t","u","r","e"]

/*: "bg_party" :*/
fileprivate let str_pointToContent:String = "bg_partyequal guard nor self"

/*: "You have been muted" :*/
fileprivate let str_viewName:String = "You haview manager data"
fileprivate let str_equalValue:String = "manager return progressn mu"
fileprivate let str_clearValue:String = "tmode"

/*: "PartyGift_ :*/
fileprivate let str_hiddenText:String = "Partyitem self index view thought"
fileprivate let str_colorTitle:[Character] = ["G","i","f","t","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockManagerDelegate.swift
//  Adjust
//
//  Created by DouXiu on 2024/9/13.
//

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver
//: import UIKit
import UIKit

// 通话监听(必须为全局属性，否则无法接听)
//: let partyCallHelper = CXCallObserver()
let a_countData = CXCallObserver()
//: class TalkingVoiceRoomViewController: TalkingBaseViewController {
class BlockManagerDelegate: PropertyViewController {
	var logNumber: Double = -37.0
	var titleDictionary: [AnyHashable: String] = [:]
	var actionCount: Double = 57.7
	var pointInTimeDictionary: [AnyHashable: String] = [:]

    var cornerImageView: UIImageView?
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: TalkingDanmuManager.shared().delegate = self
        SizeDanmuManager.appShared().delegate = self
        //: setupSubviews()
        videoAction()
        //: setupSubViewsConstraint()
        progress()
        //: addNotifications()
        fallNotifications()
        //: refreshVoiceRoomView()
        toError()

        cornerImageView = UIImageView(frame: self.view.frame.integral)
        if let cornerImageView = cornerImageView {
            self.cornerImageView?.image = UIImage(named: (String(str_firstValue) + String(str_statusName)))
            if (cornerImageView.alpha != 1.0) && (cornerImageView.convert(cornerImageView.bounds.integral, from: cornerImageView.superview).size.width == 46.44) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(cornerImageView)
            }
        }
    
            if (containerView.forFirstBaselineLayout.center.x == 96.01) && (containerView.gestureRecognizers != nil && containerView.gestureRecognizers!.count == 12) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let finishModel = UpCommentView(frame: containerView.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
            finishModel.beautyOpen = giftEffectView.giftAnimatView.needStopAll
            finishModel.centralCityMagnitude = danmuView.AllHeight
            
            finishModel.requestTotal = { [self] cornerCount in
            self.actionCount = cornerCount
            
            var finishModel = commInputView.inputTextView.placeholderLeftOffset
                finishModel += 1
                if Int(finishModel) > -93 {
                    finishModel = finishModel - 1
                }
            if finishModel < self.actionCount {
                self.actionCount = finishModel
            }
            
            return self.actionCount
            }
            finishModel.viewDictionary = { [self] playerDictionary in
            self.pointInTimeDictionary = playerDictionary
            
            guard var value = self.pointInTimeDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                containerView.addSubview(finishModel)
            }

	}

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: initCachEffectData()
        asColor()
    
            if (giftEffectView.preservesSuperviewLayoutMargins) && (giftEffectView.layer.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let resultModify = UpCommentView()
            resultModify.beautyOpen = danmuView.inAnimation
            resultModify.centralCityMagnitude = danmuView.AllHeight
            
            resultModify.requestTotal = { [self] cornerCount in
            self.logNumber = cornerCount
            
            var resultModify = danmuView.AllHeight
                resultModify += 1
                if resultModify != 27 {
                    resultModify = resultModify - 1
                }
            if resultModify < self.logNumber {
                self.logNumber = resultModify
            }
            
            return self.logNumber
            }
            resultModify.viewDictionary = { [self] playerDictionary in
            self.titleDictionary = playerDictionary
            
            guard var value = self.titleDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                giftEffectView.addSubview(resultModify)
            }

	}

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    /// 容器
    //: private lazy var containerView: UIView = {
    private lazy var containerView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: return view
        return view
        //: }()
    }()

    /// 背景
    //: private lazy var bgView: UIImageView = {
    private lazy var bgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "bg_party")
        img.image = UIImage.outsideText(name: (String(str_pointToContent.prefix(8))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    /// 输入框
    //: private lazy var commInputView: TalkingLiveRoomInputView = {
    private lazy var commInputView: SocialTitleViewDelegate = {
        //: let text = TalkingLiveRoomInputView()
        let text = SocialTitleViewDelegate()
        //: text.delegate = self
        text.delegate = self
        //: text.isHidden = true
        text.isHidden = true
        //: return text
        return text
        //: }()
    }()

    /// 弹幕
    //: private lazy var danmuView: TalkingDanmuMsgListTableView = {
    private lazy var danmuView: TalkingMediumViewDataSource = {
        //: let view = TalkingDanmuMsgListTableView()
        let view = TalkingMediumViewDataSource()
        //: return view
        return view
        //: }()
    }()

    /// 礼物背景动效
    //: private lazy var giftEffectView: TalkingPrivateChatAnimatView = {
    private lazy var giftEffectView: EquidistantThen = {
        //: let effectView = TalkingPrivateChatAnimatView()
        let effectView = EquidistantThen()
        //: effectView.contentMode = .scaleAspectFill
        effectView.contentMode = .scaleAspectFill
        //: return effectView
        return effectView
        //: }()
    }()

    /// 礼物轨道动效
    //: private lazy var giftTrackView: TalkingGiftTrackView = {
    private lazy var giftTrackView: CountTrackView = {
        //: let trackView = TalkingGiftTrackView()
        let trackView = CountTrackView()
        //: trackView.isUserInteractionEnabled = false
        trackView.isUserInteractionEnabled = false
        //: return trackView
        return trackView
        //: }()
    }()

    /// 底部视图
    //: lazy var bottomView: TalkingVoiceRoomBottomView = {
    lazy var bottomView: ViewModelManagerDelegate = {
        //: let view = TalkingVoiceRoomBottomView()
        let view = ViewModelManagerDelegate()
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    /// 麦位视图
    //: lazy var mikePositionView: TalkingVoiceRoomMikePositionView = {
    lazy var mikePositionView: ErrorReactiveCompatible = {
        //: let view = TalkingVoiceRoomMikePositionView()
        let view = ErrorReactiveCompatible()
        //: view.showUserCardBlock = { [weak self] uid in
        view.showUserCardBlock = { [weak self] uid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func_showUserCardView(pushUid: uid.stringValue)
            self.presentResource(pushUid: uid.stringValue)
        }
        //: return view
        return view
        //: }()
    }()

    /// 渐变层
    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: StatusBarHeight+actualWidth(w: 85))
        layer.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_limitRecordScreenName + actualWidth(w: 85))
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [UIColor.black.cgColor, UIColor.clear.cgColor]
        layer.colors = [UIColor.black.cgColor, UIColor.clear.cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    /// 顶部视图
    //: private lazy var topView: TalkingVoiceRoomTopView = {
    private lazy var topView: EventTopView = {
        //: let view = TalkingVoiceRoomTopView()
        let view = EventTopView()
        //: view.showUserCardBlock = { [weak self] uid in
        view.showUserCardBlock = { [weak self] uid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func_showUserCardView(pushUid: uid.stringValue)
            self.presentResource(pushUid: uid.stringValue)
        }
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomViewController {
extension BlockManagerDelegate {
    /// 刷新视图
    //: func refreshVoiceRoomView() {
    func toError() {
        //: topView.refreshVoiceRoomTopView()
        topView.alongModel()
    }

    /// 释放当前vc所有资源，并退出
    //: func releaseAllResourceAndPop() {
    func allModelPop() {
        //: topView.destroyTimer()
        topView.showPlayer()
        //: danmuView.stopTimer()
        danmuView.isoclinal()
        //: TalkingDanmuManager.qiutGroupDanmu(groupId: TalkingVoiceRoomManager.shared().partyModel.chatGroupId)
        SizeDanmuManager.playTarget(groupId: ImageToThen.labelShared().partyModel.chatGroupId)
        //: TalkingDanmuManager.danmu_releaseAllResource()
        SizeDanmuManager.momentResource()
        //: popCurrentViewController()
        manager()
    }

    /// 将当前视图从栈中移除（控制器还在，如最小化操作）
    //: func popCurrentViewController(animated: Bool = true) {
    func manager(animated: Bool = true) {
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = colorController() else { return }
        //: guard currentVC.presentingViewController == nil else {
        guard currentVC.presentingViewController == nil else {
            // 如果视图上面有present, 先dismiss
            //: currentVC.dismiss(animated: false) {
            currentVC.dismiss(animated: false) {
                //: self.popCurrentViewController()
                self.manager()
            }
            //: return
            return
        }

        //: if currentVC.navigationController?.topViewController == self {
        if currentVC.navigationController?.topViewController == self {
            //: navigationController?.popViewController(animated: animated)
            navigationController?.popViewController(animated: animated)
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

    /// 触摸事件
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: view)
        var point = touch.location(in: view)
        //: point = commInputView.layer.convert(point, from: view.layer)
        point = commInputView.layer.convert(point, from: view.layer)
        //: if !commInputView.layer.contains(point) {
        if !commInputView.layer.contains(point) {
            //: commInputView.inputTextView.resignFirstResponder()
            commInputView.inputTextView.resignFirstResponder()
        }
    }
}

// MARK: - 通知事件

//: extension TalkingVoiceRoomViewController {
extension BlockManagerDelegate {
    /// 弹幕上移
    //: @objc private func danmuMoveTop() {
    @objc private func appearTop() {
        //: updateViewConstraints(offset: ScreenHeight-HalfViewTopMargin-10)
        watcher(offset: a_formalValue - a_screenServerValue - 10)
    }

    /// 弹幕下移
    //: @objc private func danmuMoveBottom() {
    @objc private func modelEnd() {
        //: updateViewConstraints(offset: 0)
        watcher(offset: 0)
    }

    /// 退出语聊房通知事件
    //: @objc private func quitVoiceRoom() {
    @objc private func marginOfSafety() {
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        ImageToThen.labelShared().sprechgesang()
    }
}

// MARK: - CXCallObserverDelegate【通话监听】

//: extension TalkingVoiceRoomViewController: CXCallObserverDelegate {
extension BlockManagerDelegate: CXCallObserverDelegate {
    //: func callObserver(_ callObserver: CXCallObserver, callChanged call: CXCall) {
    func callObserver(_: CXCallObserver, callChanged call: CXCall) {
        //: if call.hasConnected == true {
        if call.hasConnected == true { // 通话中
            //: guard TalkingVoiceRoomManager.shared().isParty else { return }
            guard ImageToThen.labelShared().isParty else { return }
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            ImageToThen.labelShared().sprechgesang()
        }
    }
}

// MARK: - : MediumLabManagerDelegate【弹幕代理】

//: extension TalkingVoiceRoomViewController: TalkingDanmuManagerDelegate {
extension BlockManagerDelegate: MediumLabManagerDelegate {
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func modelBind(Msg: AppModelType) {
        //: danmuView.addNewMsg(msgModel: Msg)
        danmuView.addWith(msgModel: Msg)
    }

    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func sunrise(Msg: AppModelType) {
        //: addGiftEffectModelArr(Msg: Msg)
        afterClick(Msg: Msg)
    }

    //: func func__actionUserNewModel(pushUid: String?) {
    func occurrent(pushUid: String?) {
        //: commInputView.inputTextView.resignFirstResponder()
        commInputView.inputTextView.resignFirstResponder()
        //: func_showUserCardView(pushUid: pushUid)
        presentResource(pushUid: pushUid)
    }

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?) {
    func less(nickName: String, atUid: String?) {
        //: commInputView.callUserText(toUid: atUid ?? "", nickName: nickName)
        commInputView.makeContent(toUid: atUid ?? "", nickName: nickName)
    }

    //: func func__userLogin() {
    func onHide() {
        // 实时更新在线人数
        //: topView.onlineNumAdd()
        topView.joint()
    }

    //: func func__userLogout() {
    func terms() {
        // 实时更新在线人数
        //: topView.onlineNumReduce()
        topView.reduce()
    }
}

// MARK: - TenantThen【输入框发送弹幕代理】

//: extension TalkingVoiceRoomViewController: TalkingLiveRoomInputViewDelegate {
extension BlockManagerDelegate: TenantThen {
    //: func func__sendTextMsg(msgStr: String, atUid: String?) {
    func choice(msgStr: String, atUid: String?) {
        //: TalkingDanmuManager.voiceRoomSendTextMsg(groupId: TalkingVoiceRoomManager.shared().partyModel.chatGroupId, message: msgStr, toUid: atUid)
        SizeDanmuManager.bridgeSize(groupId: ImageToThen.labelShared().partyModel.chatGroupId, message: msgStr, toUid: atUid)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func indexMain(heightToBottom: CGFloat) {
        //: for vc in children {
        for vc in children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: DoingRecognizerDelegate.self) || vc.isKind(of: AddDataManagerDelegate.self) {
                //: return
                return
            }
        }
        //: updateViewConstraints(offset: heightToBottom)
        watcher(offset: heightToBottom)
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func inputSignal(height: CGFloat) {
        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }

        //: view.needsUpdateConstraints()
        view.needsUpdateConstraints()
        //: view.updateConstraintsIfNeeded()
        view.updateConstraintsIfNeeded()
        //: UIView.animate(withDuration: 0.25, animations: {
        UIView.animate(withDuration: 0.25, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }
}

// MARK: - MLaterObjectProtocol【底部评论按钮代理】

//: extension TalkingVoiceRoomViewController: TalkingVoiceRoomBottomViewDelegate {
extension BlockManagerDelegate: MLaterObjectProtocol {
    //: func bottom_commentBtnClick() {
    func cameraInReply() {
        // 拉起弹幕评论
        //: if Int(Date().timeIntervalSince1970) < TalkingVoiceRoomManager.shared().partyModel.muteExpireAt {
        if Int(Date().timeIntervalSince1970) < ImageToThen.labelShared().partyModel.muteExpireAt {
            //: func__showStatusBarErrorMsg(showMsg: "You have been muted".localized)
            episode(showMsg: (String(str_viewName.prefix(6)) + "ve bee" + String(str_equalValue.suffix(4)) + str_clearValue.replacingOccurrences(of: "mode", with: "ed")).localized)
            //: return
            return
        }
        //: commInputView.updatePlaceholder()
        commInputView.soupUpBlock()
    }
}

// MARK: - EqualObjectProtocol【个人资料卡代理】

//: extension TalkingVoiceRoomViewController: TalkingVoiceRoomCardViewDelegate {
extension BlockManagerDelegate: EqualObjectProtocol {
    //: func func__giftUserClick(uid: String) {
    func awardMoveDataUser(uid: String) {
        //: bottomView.func__sendGift(selectedUid: uid)
        bottomView.betweenCard(selectedUid: uid)
    }

    //: func func__muteUserMickClick(uid: String, mikeStatus: Int, position: Int) {
    func stylePosition(uid: String, mikeStatus: Int, position: Int) {
        //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: uid.intValue, type: mikeStatus == 2 ? 5 : 4, position: position)
        ImageToThen.labelShared().beyondAll(uid: uid.intValue, type: mikeStatus == 2 ? 5 : 4, position: position)
    }

    //: func func_showUserCardView(pushUid: String?) {
    func presentResource(pushUid: String?) {
        //: if let uidStr = pushUid, !uidStr.isEmptyString {
        if let uidStr = pushUid, !uidStr.isEmptyString {
            //: let view = TalkingVoiceRoomCardView(frame: self.view.frame, uid: uidStr)
            let view = RegularMThen(frame: self.view.frame, uid: uidStr)
            //: view.delegate = self
            view.delegate = self
            //: view.show()
            view.subordinate()
        }
    }

    //: func func__atUserClick(uid: String, nickname: String) {
    func equalChange(uid: String, nickname: String) {
        //: func__longTouchUserNewModel(nickName: nickname, atUid: uid)
        less(nickName: nickname, atUid: uid)
    }

    //: func func__followUserSucess(uid: String) {
    func mortal(uid _: String) {
        //: TalkingVoiceRoomManager.shared().partyModel.streamerInfo.isAttention = true
        ImageToThen.labelShared().partyModel.streamerInfo.isAttention = true
        //: topView.refreshFollow(isAttention: true)
        topView.followAttention(isAttention: true)
    }
}

// MARK: - 礼物动效

//: extension TalkingVoiceRoomViewController {
extension BlockManagerDelegate {
    /// 加载之前动画
    //: func initCachEffectData() {
    func asColor() {
        //: let toUid = "PartyGift_\(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)"
        let toUid = (String(str_hiddenText.prefix(5)) + String(str_colorTitle)) + "\(ImageToThen.labelShared().partyModel.streamerInfo.uid)"
        //: giftEffectView.initCachAnimatData(tagetID: toUid)
        giftEffectView.listWithId(tagetID: toUid)
    }

    /// 收到礼物消息展示
    //: func addGiftEffectModelArr(Msg: TalkingLiveRoomDanmuModel) {
    func afterClick(Msg: AppModelType) {
        //: if giftTrackView.giftSendItem.count == 0 {
        if giftTrackView.giftSendItem.count == 0 {
            //: let arrM = NSMutableArray()
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

// MARK: - Layout

//: extension TalkingVoiceRoomViewController {
extension BlockManagerDelegate {
    /// 更新视图偏移量
    //: func updateViewConstraints(offset: CGFloat) {
    func watcher(offset: CGFloat) {
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.commInputView.snp.updateConstraints { make in
            self.commInputView.snp.updateConstraints { make in
                //: make.bottom.equalTo(self.view).offset(-offset)
                make.bottom.equalTo(self.view).offset(-offset)
            }
            //: let y = offset > 0 ? -offset : 0
            let y = offset > 0 ? -offset : 0
            //: self.containerView.transform = CGAffineTransform(translationX: 0, y: y)
            self.containerView.transform = CGAffineTransform(translationX: 0, y: y)
            //: self.topView.transform = CGAffineTransform(translationX: 0, y: y)
            self.topView.transform = CGAffineTransform(translationX: 0, y: y)
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func videoAction() {
        //: view.addSubview(containerView)
        view.addSubview(containerView)
        //: containerView.addSubview(bgView)
        containerView.addSubview(bgView)
        //: containerView.addSubview(mikePositionView)
        containerView.addSubview(mikePositionView)
        //: containerView.addSubview(danmuView)
        containerView.addSubview(danmuView)
        //: containerView.addSubview(giftTrackView)
        containerView.addSubview(giftTrackView)
        //: containerView.addSubview(giftEffectView)
        containerView.addSubview(giftEffectView)
        //: view.layer.addSublayer(gradientLayer)
        view.layer.addSublayer(gradientLayer)
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: view.addSubview(commInputView)
        view.addSubview(commInputView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func progress() {
        //: containerView.snp.makeConstraints { make in
        containerView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: mikePositionView.snp.makeConstraints { make in
        mikePositionView.snp.makeConstraints { make in
            //: make.top.equalTo(topView.snp.bottom).offset(30)
            make.top.equalTo(topView.snp.bottom).offset(30)
            //: make.leading.width.equalToSuperview()
            make.leading.width.equalToSuperview()
            //: make.height.equalTo(MikePositionItemView_Size.height * 2)
            make.height.equalTo(a_viewName.height * 2)
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

        //: commInputView.snp.makeConstraints { make in
        commInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(actualWidth(w: 55))
            make.height.equalTo(actualWidth(w: 55))
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

        //: giftEffectView.snp.makeConstraints { make in
        giftEffectView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: giftTrackView.snp.makeConstraints { make in
        giftTrackView.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.height.equalTo(180)
            make.height.equalTo(180)
            //: make.bottom.equalTo(bottomView.snp.top).offset(-MsgTableViewHeight)
            make.bottom.equalTo(bottomView.snp.top).offset(-a_recordData)
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func fallNotifications() {
        // 私信弹幕联动
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveTop),
                                               selector: #selector(appearTop),
                                               //: name: LIVE_HALF_VIEW_SHOW,
                                               name: a_callData,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveBottom),
                                               selector: #selector(modelEnd),
                                               //: name: LIVE_HALF_VIEW_DISMISS,
                                               name: a_giftTitle,
                                               //: object: nil)
                                               object: nil)

        // 接收到音视频通话
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(quitVoiceRoom),
                                               selector: #selector(marginOfSafety),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: a_keyName,
                                               //: object: nil)
                                               object: nil)
        // 运营商通话监听
        //: partyCallHelper.setDelegate(self, queue: DispatchQueue.main)
        a_countData.setDelegate(self, queue: DispatchQueue.main)
    }
}
