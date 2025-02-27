
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_insideData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "point_image" :*/
fileprivate let str_moonData:String = "poinindex"
fileprivate let str_makeLowData:String = "self make limit mode self_image"

/*: "row_picture" :*/
fileprivate let str_skinText:[Character] = ["r","o","w","_","p","i","c"]
fileprivate let str_bonusData:[Character] = ["t","u","r","e"]

/*: "bth_me_videocall_nor" :*/
fileprivate let str_fatalName:[Character] = ["b","t","h","_","m","e","_","v","i","d","e","o","c","a","l","l","_","n","o","r"]

/*: "icon_videocall_nor" :*/
fileprivate let str_weeklyData:String = "icon_vbubble view content lab data"
fileprivate let str_suspendText:String = "all_premium lab formal to"
fileprivate let str_cellValue:String = "topor"

/*: "Video Call" :*/
fileprivate let str_equalTitle:[Character] = ["V","i","d","e","o"]
fileprivate let str_pointValue:String = "self if Call"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LargePlayerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMomentVideoVC: TalkingBaseViewController {
class LargePlayerDelegate: PropertyViewController {
	var modelContent: String = "dismiss"
	var addressArray: [AnyHashable] = []
	var detailTitle: String = "awake"
	var keyItemArray: [AnyHashable] = []
	var primaryText: String = "line"
	var playerOnArray: [AnyHashable] = []

    var overdoImageView: UIImageView?

    //: var videoCallBlock: (() -> Void)?
    var videoCallBlock: (() -> Void)? // 音视频通话回调
    //: var isHideBotton = true
    var isHideBotton = true
    //: var uid = ""
    var uid = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var duraction = 0.0
    private var duraction = 0.0

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_insideData, encoding: .utf8)!)
    }

    //: init(videoPath: String) {
    init(videoPath: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.videoPath = videoPath
        self.videoPath = videoPath
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.player.resume()
        self.player.cry()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
            if (bottomView.intrinsicContentSize.width == 281.29) && (bottomView.layer.zPosition == 41.61) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let tableView = EqualFromView()
            
            tableView.effectContent = { [self] columnName in
            self.primaryText = columnName
            
            var tableView = self.uid
            let icon = tableView.shuffled().capacity
            tableView.reserveCapacity(icon)
            if tableView.hasPrefix(self.primaryText) {
                self.primaryText = tableView
            }
            
            self.primaryText = String(repeating: self.primaryText.capitalized + "name", count: (self.primaryText.isContiguousUTF8 ? 6 : 2))
            return self.primaryText
            }
            tableView.textArray = { [self] phoneArray in
            self.playerOnArray = phoneArray
            
            guard var value = self.playerOnArray as? [String] else {
                return nil
            }
            return value
            }
                bottomView.addSubview(tableView)
            }

	}

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: self.player.pause()
        self.player.dataApp()
    
            if (videoBottomView.intrinsicContentSize.width == 281.29) && (videoBottomView.layer.zPosition == 41.61) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let tableView = EqualFromView()
            
            tableView.effectContent = { [self] columnName in
            self.detailTitle = columnName
            
            var tableView = videoPath
            let icon = tableView.shuffled().capacity
            tableView.reserveCapacity(icon)
            if tableView.hasPrefix(self.detailTitle) {
                self.detailTitle = tableView
            }
            
            self.detailTitle = String(repeating: self.detailTitle.capitalized + "name", count: (self.detailTitle.isContiguousUTF8 ? 6 : 2))
            return self.detailTitle
            }
            tableView.textArray = { [self] phoneArray in
            self.keyItemArray = phoneArray
            
            guard var value = self.keyItemArray as? [String] else {
                return nil
            }
            return value
            }
                videoBottomView.addSubview(tableView)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.tag()
        //: self.setupSubViewsConstraint()
        self.year()
        //: self.bindInteraction()
        self.impression()
        //: self.player.playerWithUrlAndVideoView(url: self.videoPath, view: bgView)
        self.player.catScan(url: self.videoPath, view: bgView)

        overdoImageView = UIImageView(frame: self.view.bounds)
        if let overdoImageView = overdoImageView {
            self.overdoImageView?.image = UIImage(named: (str_moonData.replacingOccurrences(of: "index", with: "t") + String(str_makeLowData.suffix(6))))
            if (overdoImageView.bounds.origin.x == 45.03) && (overdoImageView.backgroundColor != nil && overdoImageView.backgroundColor!.cgColor == UIColor.brown.cgColor) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(overdoImageView)
            }
        }
    }

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if MeasurementAppManager.share.appConfigMode.disableShootScreen {
            if MeasurementAppManager.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
                let bgView = HypsometryReactiveCompatible(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }

	}

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: self.player.stopPlay()
        self.player.stopEqual()
        //: self.player.removeVideoWidget()
        self.player.clickWidget()
        //: self.player.videoUrl = ""
        self.player.videoUrl = ""
        self.overdoImageView?.image = UIImage(named: (String(str_skinText) + String(str_bonusData)))
        //: self.player = TalkingVideoPlayerManager.init()
        self.player = DatePlayListener()
    }

    // MARK: - Lazy Load

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let  view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: return view
        return view
        //: }()
    }()

    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: DatePlayListener = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = DatePlayListener()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: false)
        player.pileEndowIcon(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var topView: TalkingMomentPhotosTopView = {
    private lazy var topView: MReactiveCompatible = {
        //: let view = TalkingMomentPhotosTopView(frame: CGRect.zero, type: .normal)
        let view = MReactiveCompatible(frame: CGRect.zero, type: .normal)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bottomView: TalkingMomentPhotosBottomView = {
    private lazy var bottomView: StandardView = {
        //: let view = TalkingMomentPhotosBottomView.init()
        let view = StandardView()
        //: view.isHidden = isHideBotton
        view.isHidden = isHideBotton
        //: view.modelUid = uid
        view.modelUid = uid
        //: return view
        return view
        //: }()
    }()

    //: private lazy var interactionView: TalkingVideoPlayerInteractionView = {
    private lazy var interactionView: NumbereractionCounteractionView = {
        //: let view = TalkingVideoPlayerInteractionView.init()
        let view = NumbereractionCounteractionView()
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var videoBottomView: UIView = {
    private lazy var videoBottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .appTitleColor()
        v.backgroundColor = .blockOf()

        //: let imgV = TalkingButton()
        let imgV = PathErrorTalkingButton()
        //: imgV.setBackgroundImage(UIImage.outsideText(name: "bth_me_videocall_nor"), for: .normal)
        imgV.setBackgroundImage(UIImage.outsideText(name: (String(str_fatalName))), for: .normal)
        //: imgV.setImage(UIImage.outsideText(name: "icon_videocall_nor"), for: .normal)
        imgV.setImage(UIImage.outsideText(name: (String(str_weeklyData.prefix(6)) + "ideoc" + String(str_suspendText.prefix(4)) + str_cellValue.replacingOccurrences(of: "top", with: "n"))), for: .normal)
        //: imgV.setTitle("Video Call".localized, for: .normal)
        imgV.setTitle((String(str_equalTitle) + String(str_pointValue.suffix(5))).localized, for: .normal)
        //: imgV.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        imgV.titleLabel?.font = UIFont.methodPlay(fontSize: 16)
        //: imgV.setTitleColor(.white, for: .normal)
        imgV.setTitleColor(.white, for: .normal)
        //: imgV.addTarget(self, action: #selector(videoButtonClick), for: .touchUpInside)
        imgV.addTarget(self, action: #selector(logIn), for: .touchUpInside)
        //: v.addSubview(imgV)
        v.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.top.equalTo(12)
            make.top.equalTo(12)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 178, height: 36))
            make.size.equalTo(CGSize(width: 178, height: 36))
        }
        //: v.isHidden = (videoCallBlock == nil) || (MeasurementAppManager.share.appStatus == AppSkinStatus.special.rawValue)
        v.isHidden = (videoCallBlock == nil) || (MeasurementAppManager.share.appStatus == LabCustomReflectable.special.rawValue)
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingMomentVideoVC {
extension LargePlayerDelegate {
    //: @objc func enterBackgroundNotification() {
    @objc func arrangement() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.setMute(bEnable: false)
            self.player.pileEndowIcon(bEnable: false)
            //: self.player.delegate = self
            self.player.delegate = self
            //: self.player.pause()
            self.player.dataApp()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func equalCell() {}

    /// video
    //: @objc func videoButtonClick() {
    @objc func logIn() {
        //: self.player.pause()
        self.player.dataApp()
        //: if videoCallBlock != nil {
        if videoCallBlock != nil {
            //: videoCallBlock!()
            videoCallBlock!()
        }
    }
}

// MARK: - SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION【收到音视频通话通知】

//: extension TalkingMomentVideoVC {
extension LargePlayerDelegate {
    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func atTalkingItem() {
        //: self.player.setMute(bEnable: true)
        self.player.pileEndowIcon(bEnable: true)
    }
}

// MARK: - Delegate

//: extension TalkingMomentVideoVC: TalkingVideoPlayerDelegate, InteractionViewDelegate {
extension LargePlayerDelegate: ValueObjectPlayerDelegate, EnableeThen {
    //: func func__interactionViewStatus(view: TalkingVideoPlayerInteractionView, status: InteractionViewStatus) {
    func by(view _: NumbereractionCounteractionView, status: MediaTableViewStatus) {
        //: switch status {
        switch status {
        //: case .StartPlay:
        case .StartPlay:
            //: self.player.resume()
            self.player.cry()
        //: break
        //: case .StopPlay:
        case .StopPlay:
            //: self.player.pause()
            self.player.dataApp()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: func func__interactionViewSlideValue(view: TalkingVideoPlayerInteractionView, value: CGFloat) {
    func position(view _: NumbereractionCounteractionView, value: CGFloat) {
        //: let dragedSeconds = floorf(Float(value * self.duraction))
        let dragedSeconds = floorf(Float(value * self.duraction))
        //: self.player.seek(time: dragedSeconds)
        self.player.witnesser(time: dragedSeconds)
    }

    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func subStatus(player _: DatePlayListener, status: PoolPlayerStatus) {
        //: self.interactionView.interactionStatus(status: status)
        self.interactionView.command(status: status)
        //: if status == .Playing {
        if status == .Playing {
            //: self.player.setRenderMode(renderMode: .FILL_EDGE)
            self.player.viewShow(renderMode: .FILL_EDGE)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func colorCase(player _: DatePlayListener, duration: Int, currentTime: Int) {
        //: self.duraction = Double(duration)
        self.duraction = Double(duration)
        //: self.interactionView.updateProgressDurationAndCurrentTime(duration: duration, currentTime: currentTime)
        self.interactionView.instanceBy(duration: duration, currentTime: currentTime)
    }

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func duringSizeLive(player _: DatePlayListener, progress: CGFloat) {
        //: self.interactionView.updateProgress(value: progress)
        self.interactionView.refuse(value: progress)
    }
}

// MARK: - Layout

//: extension TalkingMomentVideoVC {
extension LargePlayerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func tag() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.black
        view.backgroundColor = UIColor.black
        //: self.view.addSubview(bgView)
        self.view.addSubview(bgView)
        //: bgView.addSubview(topView)
        bgView.addSubview(topView)
        //: bgView.addSubview(bottomView)
        bgView.addSubview(bottomView)
        //: bgView.addSubview(videoBottomView)
        bgView.addSubview(videoBottomView)
        //: bgView.addSubview(interactionView)
        bgView.addSubview(interactionView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func year() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.top.leading.trailing.equalTo(self.view)
            make.top.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(StatusBarNavigationBarHeight+30)
            make.height.equalTo(a_itemTitle + 30)
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.leading.trailing.equalTo(self.view)
            make.bottom.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(kDeviceSafeBottomHeight+64)
            make.height.equalTo(a_agentData + 64)
        }
        //: videoBottomView.snp.makeConstraints { make in
        videoBottomView.snp.makeConstraints { make in
            //: make.edges.equalTo(bottomView)
            make.edges.equalTo(bottomView)
        }
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.top.equalTo(topView.snp.bottom).offset(0)
            make.top.equalTo(topView.snp.bottom).offset(0)
            //: make.bottom.equalTo(bottomView.snp.top).offset(0)
            make.bottom.equalTo(bottomView.snp.top).offset(0)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func impression() {
        //: topView.backBtn.rx.tap.subscribe(onNext: { [weak self] in
        topView.backBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: if self?.presentingViewController != nil {
            if self?.presentingViewController != nil {
                //: self?.dismiss(animated: true)
                self?.dismiss(animated: true)
                //: } else {
            } else {
                //: self?.navigationController?.popViewController(animated: true)
                self?.navigationController?.popViewController(animated: true)
            }
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(enterBackgroundNotification),
                                               selector: #selector(arrangement),
                                               //: name: UIApplication.willResignActiveNotification,
                                               name: UIApplication.willResignActiveNotification,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(enterForegroundNotification),
                                               selector: #selector(equalCell),
                                               //: name: UIApplication.didBecomeActiveNotification,
                                               name: UIApplication.didBecomeActiveNotification,
                                               //: object: nil)
                                               object: nil)

        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(atTalkingItem),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: a_keyName,
                                               //: object: nil)
                                               object: nil)
    }
}
