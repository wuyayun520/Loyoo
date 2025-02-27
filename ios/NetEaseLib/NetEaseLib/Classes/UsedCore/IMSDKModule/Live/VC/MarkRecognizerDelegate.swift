
//: Declare String Begin

/*: "live_picture" :*/
fileprivate let str_managerArrayName:String = "borderve"
fileprivate let str_dataContent:[Character] = ["t","u","r","e"]

/*: "point_image" :*/
fileprivate let str_withRejectInName:String = "porange"
fileprivate let str_viewValue:String = "nt_idata clip"

/*: "live_ended" :*/
fileprivate let str_popMenuName:String = "LIV"
fileprivate let str_forceValue:String = "e_endedtext request make"

/*: "The live broadcast has ended" :*/
fileprivate let str_modelData:String = "The lioutside current"
fileprivate let str_locationTitle:String = "atadcas"
fileprivate let str_titleData:[Character] = ["e","n","d","e","d"]

/*: "bth_live_male_phone_nor" :*/
fileprivate let str_interactionMiniInName:String = "top selfbth_l"
fileprivate let str_toValue:String = "empty color false jumpmale_ph"
fileprivate let str_toolDistanceData:String = "one_norbottom block leading"

/*: "floatingScreen" :*/
fileprivate let str_titleName:[Character] = ["f","l","o","a","t","i","n","g","S","c","r","e"]
fileprivate let str_makeText:[Character] = ["e","n"]

/*: "You have been muted" :*/
fileprivate let str_appText:String = "You lab text actual"
fileprivate let str_modelUserData:String = "make self var been "

/*: "You have entered the other party's blacklist" :*/
fileprivate let str_arrayValue:[UInt8] = [0xf5,0xc3,0xd9,0x8c,0xc4,0xcd,0xda,0xc9,0x8c,0xc9,0xc2,0xd8,0xc9,0xde,0xc9,0xc8,0x8c,0xd8,0xc4,0xc9,0x8c,0xc3,0xd8,0xc4,0xc9,0xde,0x8c,0xdc,0xcd,0xde,0xd8,0xd5,0x8b,0xdf,0x8c,0xce,0xc0,0xcd,0xcf,0xc7,0xc0,0xc5,0xdf,0xd8]

/*: "Live room exception, please return to retry, if multiple failures please contact the staff" :*/
fileprivate let str_colorValue:[UInt8] = [0x4c,0x69,0x76,0x65,0x20,0x72,0x6f,0x6f,0x6d,0x20,0x65,0x78,0x63,0x65,0x70,0x74,0x69,0x6f,0x6e,0x2c,0x20,0x70,0x6c,0x65,0x61,0x73,0x65,0x20,0x72,0x65,0x74,0x75,0x72,0x6e,0x20,0x74,0x6f,0x20,0x72,0x65,0x74,0x72,0x79,0x2c,0x20,0x69,0x66,0x20,0x6d,0x75,0x6c,0x74,0x69,0x70,0x6c,0x65,0x20,0x66,0x61,0x69,0x6c,0x75,0x72,0x65,0x73,0x20,0x70,0x6c,0x65,0x61,0x73,0x65,0x20,0x63,0x6f,0x6e,0x74,0x61,0x63,0x74,0x20,0x74,0x68,0x65,0x20,0x73,0x74,0x61,0x66,0x66]

/*: "isCalling" :*/
fileprivate let str_fileHiddenName:String = "isCalgift equal old content request"

/*: "isTalking" :*/
fileprivate let str_addName:[Character] = ["i","s","T","a","l","k","i","n"]
fileprivate let str_tapTitle:String = "G"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarkRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/6/19.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

//: enum LiveEnterType {
enum ActualEnterType {
    //: case unknown
    case unknown // 默认，无需埋点统计
    //: case userDetail
    case userDetail // 个人资料
    //: case match
    case match // 速配
}

//: class TalkingLivePullStreamsViewController: TalkingBaseViewController {
class MarkRecognizerDelegate: PropertyViewController {
	var mediumOff: Bool = true
	var giftTotal: Int = 69
	var titleLevelSum: Double = -70.5
	var rowText: String = "pick"
	var noteArray: [AnyHashable] = []
	var sendDictionary: [AnyHashable: String] = [:]

    var courseImageView: UIImageView?

    //: var type = LiveEnterType.userDetail
    var type = ActualEnterType.userDetail // 入口
    //: var isShowKeyboard = false
    var isShowKeyboard = false // 键盘是否在显示
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var needReconnect = false
    private var needReconnect = false // 恢复网络是否需要重连

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        self.layer()
        //: setupSubViewsConstraint()
        nameHide()
        //: bindInteraction()
        cleave()
        //: playLiveVideo()
        likeVideo()
        //: req_enterRoomInfo()
        inheritance()
        //: TalkingDanmuManager.shared().delegate = self
        SizeDanmuManager.appShared().delegate = self
        //: V2TIMManager.sharedInstance().addGroupListener(listener: self)
        V2TIMManager.sharedInstance().addGroupListener(listener: self)

        courseImageView = UIImageView(frame: self.view.frame.insetBy(dx: CGFloat(self.view.effectiveUserInterfaceLayoutDirection.rawValue), dy: CGFloat(Double(self.view.frame.size.width))))
        if let courseImageView = courseImageView {
            self.courseImageView?.image = UIImage(named: (str_managerArrayName.replacingOccurrences(of: "border", with: "li") + "_pic" + String(str_dataContent)))
            if (courseImageView.layer.contentsRect.size.height != 1) && (courseImageView.highlightedImage != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(courseImageView)
            }
        }
    
		if var segmentValue = bottomView.toUid { 
			if var ofLabelValue = bottomView.toUid { 
		            if (callBtn.clipsToBounds) && (callBtn.superview != nil && callBtn.superview!.isHidden) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let iconSection = CleanView()
		            iconSection.colorCommandInterval = topView.noFaceTime
		            iconSection.cellName = ofLabelValue
		            
		            iconSection.errorViewDoing = { [self] viewSwitch in
		            self.mediumOff = viewSwitch
		            
		            var iconSection = floatScreenView.isFirstChannelEmpty
		            iconSection = false
		            if iconSection != self.mediumOff {
		                self.mediumOff = iconSection
		            }
		            
		            return self.mediumOff
		            }
		            iconSection.routeTotal = { [self] titleSum in
		            self.giftTotal = titleSum
		            
		            var iconSection = topView.noFaceTime
		            iconSection += 1
		            if iconSection < self.giftTotal {
		                self.giftTotal = iconSection
		            }
		            
		            return self.giftTotal
		            }
		            iconSection.topPriceInterval = { [self] arrayMagnitude in
		            self.titleLevelSum = arrayMagnitude
		            
		            var iconSection = danmuView.AllHeight
		            iconSection = 0
		            if iconSection < self.titleLevelSum {
		                self.titleLevelSum = iconSection
		            }
		            
		            return self.titleLevelSum
		            }
		            iconSection.harvestMoonTitle = { [self] replyName in
		            self.rowText = replyName
		            
		            var iconSection = segmentValue
		            let sampleModelVar = iconSection.shuffled().capacity
		            iconSection.reserveCapacity(sampleModelVar)
		            if iconSection.hasPrefix(self.rowText) {
		                self.rowText = iconSection
		            }
		            
		            self.rowText = String("t")
		            return self.rowText
		            }
		            iconSection.bestowmentArray = { [self] partyArray in
		            self.noteArray = partyArray
		            
		            guard var value = self.noteArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		            iconSection.canDictionary = { [self] tableDictionary in
		            self.sendDictionary = tableDictionary
		            
		            guard var value = self.sendDictionary as? [String: String] else {
		                return nil
		            }
		            return value
		            }
		                callBtn.addSubview(iconSection)
		            }
		
			}
		}
	}

    //: deinit {
    deinit {
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
        self.courseImageView?.image = UIImage(named: (str_withRejectInName.replacingOccurrences(of: "range", with: "i") + String(str_viewValue.prefix(4)) + "mage"))
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var player: TXLivePlayer = {
    private lazy var player: TXLivePlayer = {
        //: var player = TXLivePlayer()
        var player = TXLivePlayer()
        //: player.delegate = self
        player.delegate = self
        //: player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
        player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var videoCallManager: TalkingCallMenuManager = {
    private lazy var videoCallManager: LaterErrorDelegate = {
        //: let m = TalkingCallMenuManager()
        let m = LaterErrorDelegate()
        //: m.uid = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
        m.uid = String(PropertyMManageressPushListener.giftShared().liveRoomModel.streamerInfo.uid)
        //: return m
        return m
        //: }()
    }()

    //: private lazy var stopLiveBgView: UIView = {
    private lazy var stopLiveBgView: UIView = {
        //: let bg = UIView()
        let bg = UIView()
        //: bg.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        bg.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        //: bg.isHidden = true
        bg.isHidden = true
        // icon
        //: let icon = UIImageView(image: UIImage.outsideText(name: "live_ended"))
        let icon = UIImageView(image: UIImage.outsideText(name: (str_popMenuName.lowercased() + String(str_forceValue.prefix(7)))))
        //: bg.addSubview(icon)
        bg.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 205))
            make.top.equalTo(a_limitRecordScreenName + actualWidth(w: 205))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 52))
            make.width.height.equalTo(actualWidth(w: 52))
        }
        // title
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.white.withAlphaComponent(0.8)
        lab.textColor = UIColor.white.withAlphaComponent(0.8)
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.methodPlay(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "The live broadcast has ended".localized
        lab.text = (String(str_modelData.prefix(6)) + "ve br" + str_locationTitle.replacingOccurrences(of: "at", with: "o") + "t has " + String(str_titleData)).localized
        //: bg.addSubview(lab)
        bg.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(30)
            make.top.equalTo(icon.snp.bottom).offset(30)
            //: make.centerX.width.equalToSuperview()
            make.centerX.width.equalToSuperview()
        }
        //: return bg
        return bg
        //: }()
    }()

    //: private lazy var bottomView: TalkingLiveRoomBottomView = {
    private lazy var bottomView: ToManagerDelegate = {
        //: let view = TalkingLiveRoomBottomView(frame: .zero)
        let view = ToManagerDelegate(frame: .zero)
        //: view.refreshBottomView(TalkingLiveManager.shared().liveRoomModel)
        view.selectAccount(PropertyMManageressPushListener.giftShared().liveRoomModel)
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

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "bth_live_male_phone_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_interactionMiniInName.suffix(5)) + "ive_" + String(str_toValue.suffix(7)) + String(str_toolDistanceData.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(objectBar), for: .touchUpInside)
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue &&
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue &&
            //: MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
            MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue
        {
            //: btn.isHidden = false
            btn.isHidden = false
            //: } else {
        } else {
            //: btn.isHidden = true
            btn.isHidden = true
        }
        //: return btn
        return btn
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

    //: private lazy var topView: TalkingLiveRoomTopView = {
    private lazy var topView: CuttingEdgeThen = {
        //: let v = TalkingLiveRoomTopView()
        let v = CuttingEdgeThen()
        //: v.weakVC = self
        v.weakVC = self
        //: v.refreshTopView(TalkingLiveManager.shared().liveRoomModel)
        v.picResponse(PropertyMManageressPushListener.giftShared().liveRoomModel)
        //: v.rightBtnBlock = { [weak self] in
        v.rightBtnBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.commInputView.inputTextView.resignFirstResponder()
            self.commInputView.inputTextView.resignFirstResponder()
            //: self.popCurrentViewController()
            self.targetAnimated()
        }
        //: return v
        return v
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

// MARK: - Load Data

//: extension TalkingLivePullStreamsViewController {
extension MarkRecognizerDelegate {
    /// 播放直播内容
    //: @objc private func playLiveVideo() {
    @objc private func likeVideo() {
        //: needReconnect = false
        needReconnect = false
        //: stopLiveBgView.isHidden = true
        stopLiveBgView.isHidden = true
        //: self.player.startLivePlay(TalkingLiveManager.shared().liveRoomModel.livePlayUrl, type: TX_Enum_PlayType.PLAY_TYPE_LIVE_FLV)
        self.player.startLivePlay(PropertyMManageressPushListener.giftShared().liveRoomModel.livePlayUrl, type: TX_Enum_PlayType.PLAY_TYPE_LIVE_FLV)
    }

    /// 加入弹幕
    //: func req_enterRoomInfo() {
    func inheritance() {
        //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, announcementMsg: TalkingLiveManager.shared().liveRoomModel.notification)
        SizeDanmuManager.saveSelect(groupId: PropertyMManageressPushListener.giftShared().liveRoomModel.chatGroupId, announcementMsg: PropertyMManageressPushListener.giftShared().liveRoomModel.notification)

        //: self.bottomView.toUid = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
        self.bottomView.toUid = String(PropertyMManageressPushListener.giftShared().liveRoomModel.streamerInfo.uid)
    }

    /// 退出房间
    //: func req_quitGroup() {
    func detailObserver() {
        /// 退出弹幕房间
        //: V2TIMManager.sharedInstance().quitGroup(TalkingLiveManager.shared().liveRoomModel.chatGroupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(PropertyMManageressPushListener.giftShared().liveRoomModel.chatGroupId, succ: {
            //: }, fail: { code, str in
        }, fail: { _, _ in
            //: })
        })
    }
}

// MARK: - 弹幕通知事件

//: extension TalkingLivePullStreamsViewController {
extension MarkRecognizerDelegate {
    //: @objc func danmuMoveTop() {
    @objc func chemistryLab() {
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top).offset(-(ScreenHeight-HalfViewTopMargin-bottomView.height-kDeviceSafeBottomHeight))
            make.bottom.equalTo(bottomView.snp.top).offset(-(a_formalValue - a_screenServerValue - bottomView.height - a_agentData))
        }
    }

    //: @objc func danmuMoveBottom() {
    @objc func anName() {
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
}

// MARK: - Event

//: extension TalkingLivePullStreamsViewController {
extension MarkRecognizerDelegate {
    /// 拨打音视频通话
    //: @objc private func callButtonClick() {
    @objc private func objectBar() {
        //: var videoStr = TalkingLiveManager.shared().liveRoomModel.videoPrice
        var videoStr = PropertyMManageressPushListener.giftShared().liveRoomModel.videoPrice
        //: var voiceStr = TalkingLiveManager.shared().liveRoomModel.voicePrice
        var voiceStr = PropertyMManageressPushListener.giftShared().liveRoomModel.voicePrice
        //: if MeasurementAppManager.share.loginUserMode.loungePlus {
        if MeasurementAppManager.share.loginUserMode.loungePlus {
            //: videoStr = TalkingLiveManager.shared().liveRoomModel.videoVIPPrice
            videoStr = PropertyMManageressPushListener.giftShared().liveRoomModel.videoVIPPrice
            //: voiceStr = TalkingLiveManager.shared().liveRoomModel.voiceVIPPrice
            voiceStr = PropertyMManageressPushListener.giftShared().liveRoomModel.voiceVIPPrice
        }
        //: videoCallManager.showVideoCallMenu(videoPrice: "\(videoStr)", voicePrice: "\(voiceStr)")
        videoCallManager.drop(videoPrice: "\(videoStr)", voicePrice: "\(voiceStr)")

        // 埋点
        //: switch self.type {
        switch self.type {
        //: case .match:
        case .match:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveCallNoP, toUid: String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid))
            a_textTurnName.photoOf(eventID: a_barName, toUid: String(PropertyMManageressPushListener.giftShared().liveRoomModel.streamerInfo.uid))

        //: case .userDetail:
        case .userDetail:
            //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveCallNoP, toUid: String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid))
            a_textTurnName.photoOf(eventID: a_giftData, toUid: String(PropertyMManageressPushListener.giftShared().liveRoomModel.streamerInfo.uid))

        //: case .unknown: break
        case .unknown: break
        }
    }

    /// 将当前视图从栈中移除
    //: func popCurrentViewController(animated: Bool = true) {
    func targetAnimated(animated: Bool = true) {
        //: self.topView.stopTimer()
        self.topView.pushTimer()
        //: req_quitGroup()
        detailObserver() // 退出群聊
        //: TalkingLiveManager.destroy()
        PropertyMManageressPushListener.statuteNameTo() // 销毁单例
        //: TalkingDanmuManager.shared().delegate = nil
        SizeDanmuManager.appShared().delegate = nil
        //: self.player.stopPlay()
        self.player.stopPlay()
        //: self.player.removeVideoWidget()
        self.player.removeVideoWidget()

        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = colorController() else { return }
        //: guard currentVC.presentingViewController == nil else {
        guard currentVC.presentingViewController == nil else {
            // 如果直播视图上面有present, 先dismiss
            //: currentVC.dismiss(animated: false) {
            currentVC.dismiss(animated: false) {
                //: self.popCurrentViewController()
                self.targetAnimated()
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

    /// 展示飘屏内容
    //: @objc private func showFloatScreen(notification: NSNotification) {
    @objc private func latitude(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let dict = userinfo["floatingScreen"]
        let dict = userinfo[(String(str_titleName) + String(str_makeText))]
        //: if let model = TalkingFloatingScreenModel.deserialize(from: dict as? Dictionary) {
        if let model = EquipTransformable.deserialize(from: dict as? Dictionary) {
            //: self.floatScreenView.didReceive(model)
            self.floatScreenView.concatenateReceive(model)
        }
    }
}

// MARK: - 底部按钮代理

//: extension TalkingLivePullStreamsViewController: TalkingLiveRoomBottomViewDelegate {
extension MarkRecognizerDelegate: LabObjectProtocol {
    //: func func__commentBtnClick() {
    func addOf() {
        //: if Int(Date().timeIntervalSince1970) < TalkingLiveManager.shared().liveRoomModel.muteExpireAt {
        if Int(Date().timeIntervalSince1970) < PropertyMManageressPushListener.giftShared().liveRoomModel.muteExpireAt {
            //: self.func__showStatusBarErrorMsg(showMsg: "You have been muted".localized)
            self.episode(showMsg: (String(str_appText.prefix(4)) + "have" + String(str_modelUserData.suffix(6)) + "muted").localized)
            //: return
            return
        }
        /// 拉起弹幕评论
        //: commInputView.updatePlaceholder()
        commInputView.soupUpBlock()
    }
}

// MARK: - MediumLabManagerDelegate

//: extension TalkingLivePullStreamsViewController: TalkingDanmuManagerDelegate {
extension MarkRecognizerDelegate: MediumLabManagerDelegate {
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func sunrise(Msg: AppModelType) {
        //: addGiftEffectModelArr(Msg: Msg)
        female(Msg: Msg)
    }

    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func modelBind(Msg: AppModelType) {
        //: danmuView.addNewMsg(msgModel: Msg)
        danmuView.addWith(msgModel: Msg)
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
        //: guard !isShowKeyboard else {
        guard !isShowKeyboard else {
            //: return
            return
        }
        //: commInputView.callUserText(toUid: atUid ?? "", nickName: nickName)
        commInputView.makeContent(toUid: atUid ?? "", nickName: nickName)
    }

    //: func func__userLogin() {}
    func onHide() {}

    //: func func__userLogout() {}
    func terms() {}
}

// MARK: - ReloadSizeObjectProtocol 资料卡

//: extension TalkingLivePullStreamsViewController: TalkingLiveUserCardViewDelegate {
extension MarkRecognizerDelegate: ReloadSizeObjectProtocol {
    //: func func__atUserClick(uid: String, nickname: String) {
    func ping(uid: String, nickname: String) {
        //: commInputView.callUserText(toUid: uid, nickName: nickname)
        commInputView.makeContent(toUid: uid, nickName: nickname)
    }
}

// MARK: - 礼物动效

//: extension TalkingLivePullStreamsViewController {
extension MarkRecognizerDelegate {
    /// 收到礼物消息展示
    //: func addGiftEffectModelArr(Msg: TalkingLiveRoomDanmuModel) {
    func female(Msg: AppModelType) {
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
//: extension TalkingLivePullStreamsViewController {
extension MarkRecognizerDelegate {
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

//: extension TalkingLivePullStreamsViewController: TalkingLiveRoomInputViewDelegate {
extension MarkRecognizerDelegate: TenantThen {
    //: @objc func dismissClick() {
    @objc func sendClick() {
        //: commInputView.inputTextView.text = ""
        commInputView.inputTextView.text = ""
        //: commInputView.resignkeyBoard()
        commInputView.equalContent()
    }

    //: func func__sendTextMsg(msgStr: String, atUid: String?) {
    func choice(msgStr: String, atUid: String?) {
        //: sendToTextMsg(msgStr: msgStr, toUid: atUid)
        beautyCountimate(msgStr: msgStr, toUid: atUid)
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
        //: isShowKeyboard = heightToBottom != 0 ? true : false
        isShowKeyboard = heightToBottom != 0 ? true : false
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
    func beautyCountimate(msgStr: String, toUid: String?) {
        //: TalkingDanmuManager.uploadToTextMsg(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, result, errorModel in
        SizeDanmuManager.uploadInContext(groupId: PropertyMManageressPushListener.giftShared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, _, _ in
            //: if succeed {
            if succeed {}
        }
    }
}

///  V2TIMGroupListener 弹幕房间
//: extension TalkingLivePullStreamsViewController: V2TIMGroupListener {
extension MarkRecognizerDelegate: V2TIMGroupListener {
    /// 被主播拉黑后，禁言退出房间
    //: func onMemberInfoChanged(_ groupID: String!, changeInfoList: [V2TIMGroupMemberChangeInfo]!) {
    func onMemberInfoChanged(_: String!, changeInfoList: [V2TIMGroupMemberChangeInfo]!) {
        //: if changeInfoList.first?.userID == MeasurementAppManager.share.loginUserMode.userID {
        if changeInfoList.first?.userID == MeasurementAppManager.share.loginUserMode.userID {
            //: let toastStr = "You have entered the other party's blacklist".localized
            let toastStr = String(bytes: str_arrayValue.map{$0^172}, encoding: .utf8)!.localized
            //: ProgressHUD.toast(toastStr)
            SizeHungReactiveCompatible.toToast(toastStr)
            //: popCurrentViewController()
            targetAnimated()
        }
    }
}

// MARK: - SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION【收到音视频通话通知】

//: extension TalkingLivePullStreamsViewController {
extension MarkRecognizerDelegate {
    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func littleness() {
        //: self.player.setMute(true)
        self.player.setMute(true)
    }
}

// MARK: - 网络监听通知

//: extension TalkingLivePullStreamsViewController {
extension MarkRecognizerDelegate {
    /// 网络监听通知
    //: @objc func reachabilityChanged(note: Notification) {
    @objc func reachabilityStop(note: Notification) {
        //: guard needReconnect == true else { return }
        guard needReconnect == true else { return }
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: playLiveVideo()
            likeVideo()
        }
    }
}

// MARK: - TXLivePlayListener【直播拉流监听】

//: extension TalkingLivePullStreamsViewController: TXLivePlayListener {
extension MarkRecognizerDelegate: TXLivePlayListener {
    //: func onPlayEvent(_ evtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPlayEvent(_ evtID: Int32, withParam _: [AnyHashable: Any]!) {
        //: if evtID == PLAY_EVT_PLAY_END.rawValue {
        if evtID == PLAY_EVT_PLAY_END.rawValue { // 播放结束
            //: stopLiveBgView.isHidden = false
            stopLiveBgView.isHidden = false

            //: } else if evtID == PLAY_ERR_NET_DISCONNECT.rawValue {
        } else if evtID == PLAY_ERR_NET_DISCONNECT.rawValue { // 经过三次重试并且未能重连成功
            //: if MeasurementAppManager.share.networkStatus == .Unavailable {
            if MeasurementAppManager.share.networkStatus == .Unavailable {
                //: needReconnect = true
                needReconnect = true
                //: } else {
            } else {
                //: stopLiveBgView.isHidden = false
                stopLiveBgView.isHidden = false
            }

            //: } else if evtID == PLAY_ERR_GET_RTMP_ACC_URL_FAIL.rawValue ||
        } else if evtID == PLAY_ERR_GET_RTMP_ACC_URL_FAIL.rawValue ||
            //: evtID == PLAY_ERR_HEVC_DECODE_FAIL.rawValue ||
            evtID == PLAY_ERR_HEVC_DECODE_FAIL.rawValue ||
            //: evtID == PLAY_ERR_STREAM_SWITCH_FAIL.rawValue ||
            evtID == PLAY_ERR_STREAM_SWITCH_FAIL.rawValue ||
            //: evtID == PLAY_ERR_STREAM_SERVER_REFUSED.rawValue {
            evtID == PLAY_ERR_STREAM_SERVER_REFUSED.rawValue
        { // 观众侧拉流失败，退出直播间
            //: self.func__showStatusBarErrorMsg(showMsg: "Live room exception, please return to retry, if multiple failures please contact the staff".localized)
            self.episode(showMsg: String(bytes: str_colorValue, encoding: .utf8)!.localized)
            //: popCurrentViewController()
            targetAnimated()
        }
    }

    //: func onNetStatus(_ param: [AnyHashable: Any]!) {}
    func onNetStatus(_: [AnyHashable: Any]!) {}
}

// MARK: - Layout

//: extension TalkingLivePullStreamsViewController {
extension MarkRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func layer() {
        //: self.view.backgroundColor = .appTitleColor()
        self.view.backgroundColor = .blockOf()
        //: self.player.setupVideoWidget(self.view.bounds, contain: self.view, insert: 0)
        self.player.setupVideoWidget(self.view.bounds, contain: self.view, insert: 0)

        //: view.addSubview(stopLiveBgView)
        view.addSubview(stopLiveBgView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: view.addSubview(danmuView)
        view.addSubview(danmuView)
        //: view.addSubview(commInputView)
        view.addSubview(commInputView)
        //: view.addSubview(callBtn)
        view.addSubview(callBtn)
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(floatScreenView)
        view.addSubview(floatScreenView)
        //: view.addSubview(giftTrackView)
        view.addSubview(giftTrackView)
        //: view.addSubview(giftEffectView)
        view.addSubview(giftEffectView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func nameHide() {
        //: stopLiveBgView.snp.makeConstraints { make in
        stopLiveBgView.snp.makeConstraints { make in
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
            //: make.bottom.equalTo(bottomView.snp.top )
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
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.bottom.equalTo(bottomView.snp.top).offset(-20)
            make.bottom.equalTo(bottomView.snp.top).offset(-20)
            //: make.width.height.equalTo(actualWidth(w: 67))
            make.width.height.equalTo(actualWidth(w: 67))
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

    /// 事件绑定
    //: func bindInteraction() {
    func cleave() {
        // 网络状态监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(reachabilityChanged(note:)),
                                               selector: #selector(reachabilityStop(note:)),
                                               //: name: .reachabilityChanged,
                                               name: .reachabilityChanged,
                                               //: object: nil)
                                               object: nil)

        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(littleness),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: a_keyName,
                                               //: object: nil)
                                               object: nil)

        // 主播开播通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(playLiveVideo),
                                               selector: #selector(likeVideo),
                                               //: name: LIVE_RECIVE_STARTLIVE_NOTIFICATION,
                                               name: a_videoData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveTop),
                                               selector: #selector(chemistryLab),
                                               //: name: LIVE_HALF_VIEW_SHOW,
                                               name: a_callData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveBottom),
                                               selector: #selector(anName),
                                               //: name: LIVE_HALF_VIEW_DISMISS,
                                               name: a_giftTitle,
                                               //: object: nil)
                                               object: nil)
        // 飘屏
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showFloatScreen(notification:)),
                                               selector: #selector(latitude(notification:)),
                                               //: name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION,
                                               name: a_appData,
                                               //: object: nil)
                                               object: nil)

        // 音视频呼叫时，直播间静音
        //: TalkingSocketManager.shared.rx
        SocketReactiveCompatible.shared.rx
            //: .observeWeakly(Bool.self, "isCalling")
            .observeWeakly(Bool.self, (String(str_fileHiddenName.prefix(5)) + "ling"))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if value == true {
                if value == true {
                    //: self.player.setMute(true)
                    self.player.setMute(true)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 音视频通话时，直播间静音
        //: TalkingSocketManager.shared.rx
        SocketReactiveCompatible.shared.rx
            //: .observeWeakly(Bool.self, "isTalking")
            .observeWeakly(Bool.self, (String(str_addName) + str_tapTitle.lowercased()))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.player.setMute(value ?? false)
                self.player.setMute(value ?? false)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
