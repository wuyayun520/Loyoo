
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_universalTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "border_window_picture" :*/
fileprivate let str_sharedValue:String = "bomakeer"
fileprivate let str_tableManagerLetName:String = "online heightw_pictu"
fileprivate let str_errorValue:String = "pushe"

/*: "&type=6" :*/
fileprivate let str_centerEqualName:String = "show name&type=6"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MeasurementRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver

//: class TalkingVideoInitivCallVC: TalkingBaseViewController {
class MeasurementRecognizerDelegate: PropertyViewController {
	var terraceMagnitude: Double = -89.2

    var appImageView: UIImageView?

    //: var chatModel: TalkingVideoChatModel?
    var chatModel: ImageChatModel? // 视频通话模型
    //: private var miniView: TalkingVideoMiniView?
    private var miniView: AppReactiveCompatible? // 视频通话小窗口
    //: private var isFromMiniView = false
    private var isFromMiniView = false // 是否点击小窗口进入
    //: private var palyerStatus = VideoPlayerStatus.Unknown
    private var palyerStatus = PoolPlayerStatus.Unknown // 视频播放状态
    //: var isRandomVCPush = false
    var isRandomVCPush = false // 是否随机视频匹配进来

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_universalTitle, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: let nav = self.navigationController as! TalkingNavigationController
        let nav = self.navigationController as! ConstraintNavigationController
        //: nav.protectedPushVc = nil
        nav.protectedPushVc = nil
        self.appImageView?.image = UIImage(named: (str_sharedValue.replacingOccurrences(of: "make", with: "rd") + "_windo" + String(str_tableManagerLetName.suffix(7)) + str_errorValue.replacingOccurrences(of: "push", with: "r")))
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 设备不会进入休眠状态
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currTalkingVC = nil
            SocketReactiveCompatible.shared.currTalkingVC = nil
        }
    
		if var atALowerPlaceValue = videoManager.bgView { 
	            if (!atALowerPlaceValue.isOpaque) && (atALowerPlaceValue.intrinsicContentSize.width == 304.41) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let convertLet = TimePeriodView()
	            convertLet.bagOpen = isFromMiniView
	            convertLet.screenCount = interactionView.durationTime
	            convertLet.labCount = { [self] detailInterval in
	            self.terraceMagnitude = detailInterval
	            
	            var convertLet = interactionView.durationTime
	            convertLet -= 1
	            if convertLet > self.terraceMagnitude {
	                self.terraceMagnitude = convertLet
	            }
	            
	            return self.terraceMagnitude
	            }
	                atALowerPlaceValue.addSubview(convertLet)
	            }
	
		}
	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.RGBA(51, 51, 51, 1)
        self.view.backgroundColor = UIColor.each(51, 51, 51, 1)
        //: TalkingSocketManager.shared.isTalking = true
        SocketReactiveCompatible.shared.isTalking = true
        //: setupSubviews()
        appSub()
        //: setupSubViewsConstraint()
        maxCell()
        //: req_callGetUserInfo()
        addEachInfo()
        //: self.startPreview()
        self.effectPreview()

        appImageView = UIImageView(frame: self.view.bounds.union(CGRect(x: CGFloat(Int(self.view.frame.origin.x)), y: CGFloat(Double(self.view.center.y)), width: CGFloat(Int(self.view.center.x)), height: CGFloat(Int(self.view.contentScaleFactor)))))
        if let appImageView = appImageView {
            self.appImageView?.image = UIImage(named: (str_sharedValue.replacingOccurrences(of: "make", with: "rd") + "_windo" + String(str_tableManagerLetName.suffix(7)) + str_errorValue.replacingOccurrences(of: "push", with: "r")))
            if (appImageView.isHighlighted == true) && (!appImageView.isUserInteractionEnabled) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(appImageView)
            }
        }
    }

    //: deinit {
    deinit {
        //: self.player?.stopPlay()
        self.player?.stopEqual()
        //: self.player?.removeVideoWidget()
        self.player?.clickWidget()
        //: self.player = nil
        self.player = nil
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: TalkingSocketManager.shared.isTalking = false
        SocketReactiveCompatible.shared.isTalking = false
    }

    // MARK: - Lazy Load

    /// 视频通话操作按钮
    //: private lazy var interactionView: TalkingVideoInitivCallView = {
    private lazy var interactionView: CardinalView = {
        //: let v = TalkingVideoInitivCallView(frame: .zero, chatModel: self.chatModel)
        let v = CardinalView(frame: .zero, chatModel: self.chatModel)
        //: v.durationTime = Double(TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown)
        v.durationTime = Double(DoingeCallManager.shared.videoCallModel.callCountdown)
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()

    // 视频通话小窗口
    //: private lazy var windowView: TalkingVideoWindowView = {
    private lazy var windowView: BeginReactiveCompatible = {
        //: let v = TalkingVideoWindowView()
        let v = BeginReactiveCompatible()
        //: v.frame = CGRect(x: ScreenWidth-15-actualWidth(w: 125), y: StatusBarHeight+actualHeight(h: 25)+26+35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        v.frame = CGRect(x: a_blockValue - 15 - actualWidth(w: 125), y: a_limitRecordScreenName + actualHeight(h: 25) + 26 + 35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        //: v.block = { [weak self] in
        v.block = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.changeRenderView()
            self.doinglineView()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoManager: TalkingVideoInitivCallTool = {
    private lazy var videoManager: OnGrapplerReactiveCompatible = {
        //: let m = TalkingVideoInitivCallTool()
        let m = OnGrapplerReactiveCompatible()
        //: m.infoModel = self.chatModel
        m.infoModel = self.chatModel
        // 视图传递给manager
        //: m.bgVideoView = self.view
        m.bgVideoView = self.view
        //: m.bgView = self.interactionView
        m.bgView = self.interactionView
        //: m.windowVideoView = self.windowView.renderView
        m.windowVideoView = self.windowView.renderView
        //: return m
        return m
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: DatePlayListener? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = DatePlayListener()
        //: player.player.setMute(false)
        player.player.setMute(false)
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Request && 刷新UI

//: extension TalkingVideoInitivCallVC {
extension MeasurementRecognizerDelegate {
    /// 初始化信息
    //: private func req_callGetUserInfo() {
    private func addEachInfo() {
        //: self.chatModel = TalkingVideoChatModel.init()
        self.chatModel = ImageChatModel()
        //: self.chatModel?.isCaller = true
        self.chatModel?.isCaller = true
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow
        //: self.chatModel?.isTalkingNow = true
        self.chatModel?.isTalkingNow = true

        //: self.player?.delegate = self
        self.player?.delegate = self
        //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        self.player?.catScan(url: DoingeCallManager.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        //: self.videoManager.startPreview()
        self.videoManager.filePreview()
    }
}

// MARK: - Event

//: extension TalkingVideoInitivCallVC {
extension MeasurementRecognizerDelegate {
    /// 预览视频画面
    //: private func startPreview() {
    private func effectPreview() {
        //: self.videoManager.startPreview()
        self.videoManager.filePreview()
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func objectAnimated(animated: Bool = true) {
        //: self.navigationController?.popViewController(animated: animated)
        self.navigationController?.popViewController(animated: animated)
//        if self.navigationController?.topViewController == self {
//            self.navigationController?.popViewController(animated: animated)
//        } else {
//            if var vcArr = self.navigationController?.viewControllers {
//                if let index = vcArr.firstIndex(of: self) {
//                    vcArr.remove(at: index)
//                    self.navigationController?.setViewControllers(vcArr, animated: false)
//                }
//            }
//        }
    }

    /// 视频通话双方窗口转换
    //: private func changeRenderView() {
    private func doinglineView() {
        //: if self.chatModel?.renderPostion == .selfOnBg {
        if self.chatModel?.renderPostion == .selfOnBg {
            //: self.chatModel?.renderPostion = .SelfOnWindow
            self.chatModel?.renderPostion = .SelfOnWindow
            //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
        } else if self.chatModel?.renderPostion == .SelfOnWindow {
            //: self.chatModel?.renderPostion = .selfOnBg
            self.chatModel?.renderPostion = .selfOnBg
            //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
            self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
        }

        //: self.videoManager.changeRenderView()
        self.videoManager.bound()
    }
}

// MARK: - PlayerDelegete

//: extension TalkingVideoInitivCallVC: TalkingVideoPlayerDelegate {
extension MeasurementRecognizerDelegate: ValueObjectPlayerDelegate {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func subStatus(player _: DatePlayListener, status: PoolPlayerStatus) {
        //: palyerStatus = status
        palyerStatus = status
        //: if status == .Failed {
        if status == .Failed {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            a_textTurnName.photoOf(eventID: a_viewValue)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func colorCase(player _: DatePlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func duringSizeLive(player _: DatePlayListener, progress _: CGFloat) {}
}

// MARK: - LaterObjectProtocol【通话按钮操作事件】

//: extension TalkingVideoInitivCallVC: Talking1v1VideoInteractionViewDelegate {
extension MeasurementRecognizerDelegate: LaterObjectProtocol {
    //: func interactionView_reportSucceed() {
    func imageSizeSucceed() {}

    /// 接听视频通话
    //: func interactionView_shouldAcceptCall() {
    func pastModel() {}

    /// 拨打方结束通话
    //: func interactionView_shouldEndCall() {
    func dub() {
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currTalkingVC = nil
            SocketReactiveCompatible.shared.currTalkingVC = nil
        }
        //: let duration = TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        let duration = DoingeCallManager.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        //: let uid = interactionView.durationTime <= 0 ? "\(TalkingVideoInitivCallManager.shared.videoCallModel.uid)" : MeasurementAppManager.share.loginUserMode.userID
        let uid = interactionView.durationTime <= 0 ? "\(DoingeCallManager.shared.videoCallModel.uid)" : MeasurementAppManager.share.loginUserMode.userID
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 2, duration: duration, stopUid: uid) { succeed, result, errorModel in
        DoingeCallManager.shared.operation(type: 2, duration: duration, stopUid: uid) { _, _, _ in
        }
        /// 视频失败上报
        //: if palyerStatus != .Finished && palyerStatus != .Playing {
        if palyerStatus != .Finished && palyerStatus != .Playing {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            a_textTurnName.photoOf(eventID: a_viewValue)
        }
        //: popCurrentViewController()
        objectAnimated()

        //: if MeasurementAppManager.share.appUserConfigMode.popupCallEndEvent == 1 {
        if MeasurementAppManager.share.appUserConfigMode.popupCallEndEvent == 1 {
            //: LimitPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
            LimitPushManager.share.pathSub(webViewType: .RechargeToVideoInitivHalfPage)
            //: } else if MeasurementAppManager.share.appUserConfigMode.popupCallEndEvent == 2 {
        } else if MeasurementAppManager.share.appUserConfigMode.popupCallEndEvent == 2 {
            //: LimitPushManager.share.func__pushToSubscribeAlert(appendParams: "&type=6")
            LimitPushManager.share.callParams(appendParams: (String(str_centerEqualName.suffix(7))))
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            //: if self.currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
            if self.colorController()?.isKind(of: MForefrontViewController.self) == true {
                //: let vc = self.currentViewController() as! TalkingWebViewController
                let vc = self.colorController() as! MForefrontViewController
                //: vc.isVideoCallRechargeHalfPage = true
                vc.isVideoCallRechargeHalfPage = true
                //: if !self.isRandomVCPush {
                if !self.isRandomVCPush {
                    /// 主动拨打视频弹窗，充值成功才切换到match
                    //: vc.isRechargeOrSubscribeChangeMatch = true
                    vc.isRechargeOrSubscribeChangeMatch = true
                }
            }
        }
    }

    /// 旋转摄像头
    //: func interactionView_shouldChangeCamera(isFront: Bool) {
    func blockDown(isFront: Bool) {
        //: self.videoManager.useFrontCamera(isFront)
        self.videoManager.waste(isFront)
    }

    /// 开启/关闭摄像头
    //: func interactionView_shouldForbiddenCamera(forbidden: Bool) {
    func holderMatch(forbidden: Bool) {
        //: self.videoManager.useCamera(!forbidden)
        self.videoManager.toUser(!forbidden)
    }

    /// 展示视频通话小窗口
    //: func interactionView_shouldDisplayMiniWindow() {
    func skirt() {
        //: TalkingSocketManager.shared.currTalkingVC = self
        SocketReactiveCompatible.shared.currTalkingVC = self
        //: self.miniView = TalkingVideoMiniView.buildVideoMiniView()
        self.miniView = AppReactiveCompatible.countervalStartView()
        //: self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        //: self.videoManager.smallRenderView = self.miniView?.renderView
        self.videoManager.smallRenderView = self.miniView?.renderView
        //: self.videoManager.enterSmallRenderMode()
        self.videoManager.viewGiftMode()
        //: self.miniView?.tapGestureBlock = { [weak self] in
        self.miniView?.tapGestureBlock = { [weak self] in // 还原回通话界面
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.videoManager.exitSmallRenderMode()
            self.videoManager.belowTarget()
            //: if self.chatModel?.renderPostion == .selfOnBg {
            if self.chatModel?.renderPostion == .selfOnBg {
                //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
            } else if self.chatModel?.renderPostion == .SelfOnWindow {
                //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
                self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            }
            //: self.videoManager.changeRenderView()
            self.videoManager.bound()
            //: self.isFromMiniView = true
            self.isFromMiniView = true
            //: self.currentViewController()?.navigationController?.pushViewController(self, animated: true)
            self.colorController()?.navigationController?.pushViewController(self, animated: true)
        }
        //: popCurrentViewController()
        objectAnimated()
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallVC {
extension MeasurementRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func appSub() {
        //: self.view.layer.masksToBounds = true
        self.view.layer.masksToBounds = true
        //: self.view.addSubview(interactionView)
        self.view.addSubview(interactionView)
        //: self.interactionView.addWindowView(view: self.windowView)
        self.interactionView.pulverise(view: self.windowView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func maxCell() {
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
