
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_topCommitData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "midfield_img" :*/
fileprivate let str_indexData:String = "midfield_else true equal time app"
fileprivate let str_imageTitle:String = "IMG"

/*: "icon_photo_giftbg" :*/
fileprivate let str_greetContainAtValue:String = "app"
fileprivate let str_visualValue:[Character] = ["c","o","n","_","p","h","o","t","o","_","g","i","f","t","b","g"]

/*: "Send" :*/
fileprivate let str_appearName:String = "size of call color returnSend"

/*: "nav_back_black_nor" :*/
fileprivate let str_insertPositionContent:[Character] = ["n","a","v","_","b","a","c","k","_","b","l","a","c","k","_","n","o","r"]

/*: "toUid" :*/
fileprivate let str_sizeCoverData:[Character] = ["t","o","U","i","d"]

/*: "giftId" :*/
fileprivate let str_whiteName:[Character] = ["g","i","f","t","I"]
fileprivate let str_coinTitle:String = "text"

/*: "giftNum" :*/
fileprivate let str_actionTitle:[Character] = ["g","i","f","t","N"]
fileprivate let str_roomText:String = "umake"

/*: "unlockMsgId" :*/
fileprivate let str_clearLiveText:[Character] = ["u","n","l","o","c","k","M","s","g"]
fileprivate let str_formalData:[Character] = ["I","d"]

/*: "Load failed, return to retry" :*/
fileprivate let str_originText:[Character] = ["L","o","a","d"," ","f","a","i","l","e","d",","," ","r","e","t"]
fileprivate let str_equalModelText:[Character] = ["u","r","n"," ","t","o"]
fileprivate let str_blockName:[Character] = [" ","r","e","t","r","y"]

/*: "Need a %@ (%@ Gold coins) to unlock" :*/
fileprivate let str_turnData:[UInt8] = [0x4e,0x65,0x65,0x64,0x20,0x61,0x20,0x25,0x40,0x20,0x28,0x25,0x40,0x20,0x47,0x6f,0x6c,0x64,0x20,0x63,0x6f,0x69,0x6e,0x73,0x29,0x20,0x74,0x6f,0x20,0x75,0x6e,0x6c,0x6f,0x63,0x6b]

/*: "icon_photo_lock" :*/
fileprivate let str_hideData:[Character] = ["i","c","o","n","_","p","h","o","t","o","_"]
fileprivate let str_phoneValue:[Character] = ["l","o","c","k"]

/*: "Click on the screen to play this video(Burn After Reading)" :*/
fileprivate let str_appTitle:[UInt8] = [0x29,0x67,0x6e,0x69,0x64,0x61,0x65,0x52,0x20,0x72,0x65,0x74,0x66,0x41,0x20,0x6e,0x72,0x75,0x42,0x28,0x6f,0x65,0x64,0x69,0x76,0x20,0x73,0x69,0x68,0x74,0x20,0x79,0x61,0x6c,0x70,0x20,0x6f,0x74,0x20,0x6e,0x65,0x65,0x72,0x63,0x73,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x6b,0x63,0x69,0x6c,0x43]

/*: "icon_photo_burn" :*/
fileprivate let str_onContent:[Character] = ["i","c","o","n","_","p","h"]
fileprivate let str_stopData:String = "oto_up self show"

/*: "Already burned" :*/
fileprivate let str_regularCellContent:[Character] = ["A","l","r","e","a"]
fileprivate let str_numberDetailLogData:String = "bottom enter title viewdy burned"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PropertyThen.swift
//  AbroadTalking
//
//  Created by young on 2023/2/15.
//

//: import UIKit
import UIKit

//: typealias IntimateVideoBlock = (_ model: FullPhaseOfTheMoonJsonModel) -> Void
typealias IntimateVideoBlock = (_ model: FullPhaseOfTheMoonJsonModel) -> Void
//: typealias VideoStatusBlock = (_ status: VideoPlayerStatus) -> Void
typealias VideoStatusBlock = (_ status: PoolPlayerStatus) -> Void

//: class TalkingIntimateVideoPreviewVC: TalkingBaseViewController {
class PropertyThen: PropertyViewController {
	var videoOff: Bool = true
	var headTitle: String = "half"
	var labArray: [AnyHashable] = []
	var mainDictionary: [AnyHashable: String] = [:]

    var quickDismissImageView: UIImageView?

    //: var statusBlock: IntimateVideoBlock?
    var statusBlock: IntimateVideoBlock? // 同步状态block
    //: var sendGiftResultBlock: FinishBlock?
    var sendGiftResultBlock: FinishBlock? // 送礼结果block
    //: var videoStatusBlock: VideoStatusBlock?
    var videoStatusBlock: VideoStatusBlock? // 视频状态block【目前用在阅后即焚】
    //: private var videoTotalData = ToCellData(direction: .MsgDirectionIncoming)
    private var videoTotalData = ToCellData(direction: .MsgDirectionIncoming) // 视频消息数据
    //: private var videoModel = FullPhaseOfTheMoonJsonModel()
    private var videoModel = FullPhaseOfTheMoonJsonModel() // 当前私密视频模型
    //: private var targetId = ""                                       // 私密视频发送方ID
    private var targetId = "" // 私密视频发送方ID
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer? // 倒计时
    //: private var isMySelf = false
    private var isMySelf = false // 是否本人
    //: private var playDuraction = 0.0
    private var playDuraction = 0.0 // 视频播放位置

    /// 初始化
    /// - Parameters:
    ///   - videoCellData: 视频模型
    ///   - toUid: 对方Id
    //: init(videoCellData: ToCellData, toUid: String) {
    init(videoCellData: ToCellData, toUid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: videoTotalData = videoCellData
        videoTotalData = videoCellData
        //: videoModel = videoTotalData.msgModel.msgInfo.video
        videoModel = videoTotalData.msgModel.msgInfo.video // 引用类型，修改该数据，videoCellData会同步修改
        //: targetId = toUid
        targetId = toUid
        //: isMySelf = (videoTotalData.msgModel.user.uid == Int(MeasurementAppManager.share.loginUserMode.userID))
        isMySelf = (videoTotalData.msgModel.user.uid == Int(MeasurementAppManager.share.loginUserMode.userID))
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_topCommitData, encoding: .utf8)!)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: popGesture(isOpen: true)
        labUp(isOpen: true)
    
            if (videoView.convert(CGRect(x: CGFloat(95.64), y: CGFloat(615.81), width: CGFloat(0), height: CGFloat(521.50)), from: videoView.superview).size.height == 44.63) && (videoView.layer.isDoubleSided != true) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let photoImage = LeapOutView(frame: videoView.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(82), width: CGFloat(293.45), height: CGFloat(464.73))))
            
            photoImage.falloutDoing = { [self] editOn in
            self.videoOff = editOn
            
            var photoImage = animated
            photoImage = !photoImage
            if photoImage != self.videoOff {
                self.videoOff = photoImage
            }
            
            return self.videoOff
            }
            photoImage.priceText = { [self] imageSystemName in
            self.headTitle = imageSystemName
            
            var photoImage = targetId
            photoImage.insert("z", at: photoImage.index(photoImage.endIndex, offsetBy: (photoImage.isContiguousUTF8 ? 4 : 9)))
            if photoImage.contains(self.headTitle) {
                self.headTitle = photoImage
            }
            
            return self.headTitle
            }
            photoImage.dataArray = { [self] halogenArray in
            self.labArray = halogenArray
            
            guard var value = self.labArray as? [String] else {
                return nil
            }
            return value
            }
            photoImage.sizeSinceDictionary = { [self] gestureDictionary in
            self.mainDictionary = gestureDictionary
            
            guard var value = self.mainDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                videoView.addSubview(photoImage)
            }

	}

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        labUp(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        userClick()
        //: setupSubViewsConstraint()
        dialog()
        //: bindInteraction()
        mapEqualAction()
        //: refreshUI()
        giftMoveUi()

        quickDismissImageView = UIImageView(frame: self.view.bounds.intersection(CGRect(x: CGFloat(Int(self.view.frame.size.width)), y: CGFloat(Double(self.view.center.x)), width: CGFloat(Double(self.view.bounds.size.width)), height: CGFloat(Double(self.view.frame.size.width)))))
        if let quickDismissImageView = quickDismissImageView {
            self.quickDismissImageView?.image = UIImage(named: (String(str_indexData.prefix(9)) + str_imageTitle.lowercased()))
            if (quickDismissImageView.constraintsAffectingLayout(for: .vertical).count == 58) && (quickDismissImageView.canResignFirstResponder != true) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(quickDismissImageView)
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
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-StatusBarNavigationBarHeight))
                let bgView = HypsometryReactiveCompatible(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue - a_itemTitle))
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
        //: destroyTimer()
        instanceTimer()
        //: self.player.stopPlay()
        self.player.stopEqual()
    }

    // MARK: - Lazy Load

    // 封面
    //: private lazy var imageView: UIImageView = {
    private lazy var imageView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.backgroundColor = .black
        img.backgroundColor = .black
        //: img.contentMode = .scaleAspectFit
        img.contentMode = .scaleAspectFit
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    // 视频播放器容器
    //: private lazy var videoView: UIView = {
    private lazy var videoView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .black
        v.backgroundColor = .black
        //: return v
        return v
        //: }()
    }()

    // 视频播放器
    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: DatePlayListener = {
        //: let  player = TalkingVideoPlayerManager()
        let player = DatePlayListener()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: false)
        player.pileEndowIcon(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    // 视频进度条
    //: private lazy var videoProgressView: TalkingVideoPlayerInteractionView = {
    private lazy var videoProgressView: NumbereractionCounteractionView = {
        //: let view = TalkingVideoPlayerInteractionView()
        let view = NumbereractionCounteractionView()
        //: view.toolBarView.isHidden = false
        view.toolBarView.isHidden = false
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var maskView: UIView = {
    private lazy var maskView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.init(white: 0, alpha: 0.5)
        v.backgroundColor = UIColor(white: 0, alpha: 0.5)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBgView: UIImageView = {
    private lazy var giftBgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "icon_photo_giftbg")
        img.image = UIImage.outsideText(name: (str_greetContainAtValue.replacingOccurrences(of: "app", with: "i") + String(str_visualValue)))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var giftIcon: UIImageView = {
    private lazy var giftIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.setUrlImage(urlStr: videoModel.giftIcon)
        img.recordFinish(urlStr: videoModel.giftIcon)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 19)
        lab.font = UIFont.methodPlay(fontSize: 19)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftSendBtn: UIButton = {
    private lazy var giftSendBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_appearName.suffix(4))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 19)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 19)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 220, height: 44)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: 220, height: 44)), for: .normal)
        //: btn.layer.cornerRadius = 22
        btn.layer.cornerRadius = 22
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(giftSendButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tab), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var intimateStatusImgV: UIImageView = {
    private lazy var intimateStatusImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.alpha = 0.9
        img.alpha = 0.9
        //: return img
        return img
        //: }()
    }()

    //: private lazy var progressView: CircleCountdownView = {
    private lazy var progressView: ModelValueSumdownView = {
        //: let frame = CGRect(x: ScreenWidth-42-15, y: StatusBarHeight+10, width: 42, height: 42)
        let frame = CGRect(x: a_blockValue - 42 - 15, y: a_limitRecordScreenName + 10, width: 42, height: 42)
        //: let v = CircleCountdownView(frame: frame)
        let v = ModelValueSumdownView(frame: frame)
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.outsideText(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.outsideText(name: (String(str_insertPositionContent))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(backButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(constraintClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingIntimateVideoPreviewVC {
extension PropertyThen {
    /// 调用送礼接口
    /// - Parameters:
    ///   - giftId: 礼物Id
    ///   - giftNum: 礼物数量
    //: func req_sendGiftMsg(giftId: String, giftNum: String) {
    func equalSend(giftId: String, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            episode(showMsg: a_userText)
            //: return
            return
        }
        //: var params: Dictionary<String, Any> = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = self.targetId
        params[(String(str_sizeCoverData))] = self.targetId
        //: params["giftId"] = giftId
        params[(String(str_whiteName) + str_coinTitle.replacingOccurrences(of: "text", with: "d"))] = giftId
        //: params["giftNum"] = giftNum
        params[(String(str_actionTitle) + str_roomText.replacingOccurrences(of: "make", with: "m"))] = giftNum
        //: params["unlockMsgId"] = self.videoTotalData.msgModel.msgInfo.msgId
        params[(String(str_clearLiveText) + String(str_formalData))] = self.videoTotalData.msgModel.msgInfo.msgId

        // 送礼接口
        //: DoingSheRequestTool.req_SendGiftPrivete(param: params, completion: { succeed, result, errorModel in
        DoingSheRequestTool.adminPlayer(param: params, completion: { succeed, result, errorModel in
            //: if succeed {
            if succeed { // 送礼成功，更改私密视频状态为已解锁
                //: self.videoModel.lockStatus = 0
                self.videoModel.lockStatus = 0
                //: if self.statusBlock != nil {
                if self.statusBlock != nil {
                    //: self.statusBlock!(self.videoModel)
                    self.statusBlock!(self.videoModel)
                }

                // 刷新UI
                //: self.refreshUI()
                self.giftMoveUi()
            }

            // 同步状态到私聊页面
            //: if self.sendGiftResultBlock != nil {
            if self.sendGiftResultBlock != nil {
                //: self.sendGiftResultBlock!(succeed, result, errorModel)
                self.sendGiftResultBlock!(succeed, result, errorModel)
            }
            //: })
        })
    }
}

// MARK: - Event

//: extension TalkingIntimateVideoPreviewVC {
extension PropertyThen {
    /// 返回按钮事件
    //: @objc private func backButtonClick() {
    @objc private func constraintClick() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 发送礼物解锁视频
    //: @objc private func giftSendButtonClick() {
    @objc private func tab() {
        //: req_sendGiftMsg(giftId: videoModel.giftId, giftNum: "1")
        equalSend(giftId: videoModel.giftId, giftNum: "1")
    }

    /// 阅后即焚15s倒计时开始
    //: @objc private func burnVideoTapGesture() {
    @objc private func thrustingView() {
        //: guard MeasurementAppManager.share.networkStatus != .Unavailable else {
        guard MeasurementAppManager.share.networkStatus != .Unavailable else {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            episode(showMsg: a_userText)
            //: return
            return
        }
        //: guard videoModel.burnStatus == 0 else { return }
        guard videoModel.burnStatus == 0 else { return }

        // 1. 更新视图状态
        //: self.maskView.isHidden = true
        self.maskView.isHidden = true
        //: self.intimateStatusImgV.isHidden = true
        self.intimateStatusImgV.isHidden = true
        //: self.desLab.isHidden = true
        self.desLab.isHidden = true
        //: self.videoView.isHidden = false
        self.videoView.isHidden = false

        // 2. 加载视频资源
        //: ProgressHUD.show(superView: self.view)
        SizeHungReactiveCompatible.exhibitRemoveCuttingEdge(superView: self.view)
        //: self.videoStatusBlock = { [weak self] status in
        self.videoStatusBlock = { [weak self] status in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard self.videoModel.burnStatus == 0 else { return }
            guard self.videoModel.burnStatus == 0 else { return }

            // 3. 判断视频是否可播放
            //: guard status == .Playing else {
            guard status == .Playing else {
                //: if status == .Failed {
                if status == .Failed {
                    //: ProgressHUD.dismiss()
                    SizeHungReactiveCompatible.dataMessage()
                    //: self.videoProgressView.isHidden = true
                    self.videoProgressView.isHidden = true
                    //: self.func__showStatusBarErrorMsg(showMsg: "Load failed, return to retry".localized)
                    self.episode(showMsg: (String(str_originText) + String(str_equalModelText) + String(str_blockName)).localized)
                }
                //: return
                return
            }

            // 4. 可播放，更改状态
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: self.imageView.isHidden = true
            self.imageView.isHidden = true
            //: self.videoStatusBlock = nil
            self.videoStatusBlock = nil

            // 5. 更改私密视频状态为已销毁
            //: self.videoModel.burnStatus = 1
            self.videoModel.burnStatus = 1
            //: if self.statusBlock != nil {
            if self.statusBlock != nil {
                //: self.statusBlock!(self.videoModel)
                self.statusBlock!(self.videoModel)
            }

            // 6. 展示倒计时
            //: self.progressView.isHidden = false
            self.progressView.isHidden = false
            //: self.destroyTimer()
            self.instanceTimer()
            //: var time = 600
            var time = 600
            //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] timer in
            self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard time > 0 else {
                guard time > 0 else { // 结束倒计时，刷新视图
                    //: self.destroyTimer()
                    self.instanceTimer()
                    //: self.refreshUI()
                    self.giftMoveUi()
                    //: return
                    return
                }
                //: self.progressView.updateProgress(totalTime: 600, currTime: time)
                self.progressView.userButton(totalTime: 600, currTime: time)
                //: time -= 1
                time -= 1
                //: }, repeats: true)
            }, repeats: true)
            //: self.countdownTimer?.fire()
            self.countdownTimer?.fire()
            //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
            RunLoop.current.add(self.countdownTimer!, forMode: .common)
        }
        // 播放视频
        //: playVideo()
        equalVideo()
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func instanceTimer() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }
}

// MARK: - SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION【收到音视频通话通知】

//: extension TalkingIntimateVideoPreviewVC {
extension PropertyThen {
    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func enableClickTalking() {
        //: self.player.setMute(bEnable: true)
        self.player.pileEndowIcon(bEnable: true)
    }
}

// MARK: - 加载封面、视频

//: extension TalkingIntimateVideoPreviewVC {
extension PropertyThen {
    /// 加载私密视频封面是否需要马赛克
    /// - Parameters:
    ///   - urlStr: 图片地址
    ///   - isMosaic: 是否需要马赛克
    //: private func loadIntimatePhoto(urlStr: String, isMosaic: Bool) {
    private func longshot(urlStr: String, isMosaic: Bool) {
        //: guard isMySelf == false else {
        guard isMySelf == false else { // 本人发的图片，展示本地缓存资源
            //: let filePath = videoTotalData.msgModel.msgInfo.customSend.localCoverImg
            let filePath = videoTotalData.msgModel.msgInfo.customSend.localCoverImg
            //: let isExists = FileManager.default.fileExists(atPath: filePath)
            let isExists = FileManager.default.fileExists(atPath: filePath)
            //: guard isExists else { return }
            guard isExists else { return }
            //: let data = NSData.init(contentsOfFile: filePath)
            let data = NSData(contentsOfFile: filePath)
            //: guard data != nil else { return }
            guard data != nil else { return }
            //: let image = UIImage(data: data! as Data)
            let image = UIImage(data: data! as Data)
            //: if isMosaic {
            if isMosaic {
                //: self.imageView.image = UIImage.trans(toMosaicImage: image, blockLevel: 90)
                self.imageView.image = UIImage.head(image, choppingBlock: 90)
                //: } else {
            } else {
                //: self.imageView.image = image
                self.imageView.image = image
            }

            //: return
            return
        }

        // 对方发的图片，需要网络加载
        //: imageView.setCookieToUrlImage(urlStr: urlStr) {[weak self] image in
        imageView.scoff(urlStr: urlStr) { [weak self] image in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if image != nil && isMosaic {
            if image != nil, isMosaic {
                //: self.imageView.image = UIImage.trans(toMosaicImage: image, blockLevel: 90)
                self.imageView.image = UIImage.head(image, choppingBlock: 90)
            }
        }
    }

    /// 播放视频
    //: private func playVideo() {
    private func equalVideo() {
        //: var videoPath = videoModel.videoUrl
        var videoPath = videoModel.videoUrl
        //: if isMySelf == true {
        if isMySelf == true { // 本人发的，优先使用本地视频
            //: let localPath = videoTotalData.msgModel.msgInfo.customSend.localVideoUrl
            let localPath = videoTotalData.msgModel.msgInfo.customSend.localVideoUrl
            //: if localPath.count > 0 && FileManager.default.fileExists(atPath: localPath) {
            if localPath.count > 0, FileManager.default.fileExists(atPath: localPath) {
                //: videoPath = localPath
                videoPath = localPath
            }
        }

        //: guard videoPath.count > 0 else {
        guard videoPath.count > 0 else {
            //: if self.videoStatusBlock != nil {
            if self.videoStatusBlock != nil {
                //: self.videoStatusBlock!(.Failed)
                self.videoStatusBlock!(.Failed)
            }
            //: return
            return
        }
        //: self.player.playerWithUrlAndVideoView(url: videoPath, view: self.videoView)
        self.player.catScan(url: videoPath, view: self.videoView)
    }
}

// MARK: - ValueObjectPlayerDelegate, EnableeThen

//: extension TalkingIntimateVideoPreviewVC: TalkingVideoPlayerDelegate, InteractionViewDelegate {
extension PropertyThen: ValueObjectPlayerDelegate, EnableeThen {
    // MARK: - ValueObjectPlayerDelegate

    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func subStatus(player _: DatePlayListener, status: PoolPlayerStatus) {
        //: self.videoProgressView.interactionStatus(status: status)
        self.videoProgressView.command(status: status)
        //: if status == .Playing {
        if status == .Playing {
            //: self.player.setRenderMode(renderMode: .FILL_EDGE)
            self.player.viewShow(renderMode: .FILL_EDGE)
        }
        //: if self.videoStatusBlock != nil {
        if self.videoStatusBlock != nil {
            //: self.videoStatusBlock!(status)
            self.videoStatusBlock!(status)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func colorCase(player _: DatePlayListener, duration: Int, currentTime: Int) {
        //: self.playDuraction = Double(duration)
        self.playDuraction = Double(duration)
        //: self.videoProgressView.updateProgressDurationAndCurrentTime(duration: duration, currentTime: currentTime)
        self.videoProgressView.instanceBy(duration: duration, currentTime: currentTime)
    }

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func duringSizeLive(player _: DatePlayListener, progress: CGFloat) {
        //: self.videoProgressView.updateProgress(value: progress)
        self.videoProgressView.refuse(value: progress)
    }

    // MARK: - EnableeThen

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
        //: let dragedSeconds = floorf(Float(value * self.playDuraction))
        let dragedSeconds = floorf(Float(value * self.playDuraction))
        //: self.player.seek(time: dragedSeconds)
        self.player.witnesser(time: dragedSeconds)
    }
}

// MARK: - Layout

//: extension TalkingIntimateVideoPreviewVC {
extension PropertyThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func userClick() {
        //: self.view.addSubview(videoView)
        self.view.addSubview(videoView)
        //: self.view.addSubview(imageView)
        self.view.addSubview(imageView)
        //: self.view.addSubview(videoProgressView)
        self.view.addSubview(videoProgressView)
        //: self.view.addSubview(maskView)
        self.view.addSubview(maskView)
        //: self.view.addSubview(desLab)
        self.view.addSubview(desLab)
        //: self.view.addSubview(giftBgView)
        self.view.addSubview(giftBgView)
        //: giftBgView.addSubview(giftIcon)
        giftBgView.addSubview(giftIcon)
        //: self.view.addSubview(giftSendBtn)
        self.view.addSubview(giftSendBtn)
        //: self.view.addSubview(intimateStatusImgV)
        self.view.addSubview(intimateStatusImgV)
        //: self.view.addSubview(backBtn)
        self.view.addSubview(backBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func dialog() {
        //: videoView.snp.makeConstraints { make in
        videoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: videoProgressView.snp.makeConstraints { make in
        videoProgressView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalToSuperview().offset(StatusBarNavigationBarHeight+30)
            make.top.equalToSuperview().offset(a_itemTitle + 30)
            //: make.bottom.equalToSuperview().offset(-(kDeviceSafeBottomHeight+64))
            make.bottom.equalToSuperview().offset(-(a_agentData + 64))
        }
        //: imageView.snp.makeConstraints { make in
        imageView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: maskView.snp.makeConstraints { make in
        maskView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.centerY.equalToSuperview().offset(StatusBarNavigationBarHeight/2)
            make.centerY.equalToSuperview().offset(a_itemTitle / 2)
        }

        //: giftBgView.snp.makeConstraints { make in
        giftBgView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 120))
            make.leading.equalTo(actualWidth(w: 120))
            //: make.size.equalTo(CGSize(width: 182, height: 176))
            make.size.equalTo(CGSize(width: 182, height: 176))
            //: make.bottom.equalTo(desLab.snp.top).offset(20)
            make.bottom.equalTo(desLab.snp.top).offset(20)
        }
        //: giftIcon.snp.makeConstraints { make in
        giftIcon.snp.makeConstraints { make in
            //: make.leading.equalToSuperview().offset(35)
            make.leading.equalToSuperview().offset(35)
            //: make.top.equalToSuperview().offset(28)
            make.top.equalToSuperview().offset(28)
            //: make.size.equalTo(CGSize(width: 80, height: 80))
            make.size.equalTo(CGSize(width: 80, height: 80))
        }
        //: giftSendBtn.snp.makeConstraints { make in
        giftSendBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 220, height: 44))
            make.size.equalTo(CGSize(width: 220, height: 44))
            //: make.bottom.equalToSuperview().offset(-(kDeviceSafeBottomHeight + 10))
            make.bottom.equalToSuperview().offset(-(a_agentData + 10))
        }

        //: intimateStatusImgV.snp.makeConstraints { make in
        intimateStatusImgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(desLab.snp.top).offset(-20)
            make.bottom.equalTo(desLab.snp.top).offset(-20)
        }

        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(a_toText)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(a_limitRecordScreenName)
        }

        //: progressView.snp.remakeConstraints { make in
        progressView.snp.remakeConstraints { make in
            //: make.leading.equalTo(ScreenWidth-42-15)
            make.leading.equalTo(a_blockValue - 42 - 15)
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(a_limitRecordScreenName + 10)
            //: make.width.height.equalTo(42)
            make.width.height.equalTo(42)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func mapEqualAction() {
        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(enableClickTalking),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: a_keyName,
                                               //: object: nil)
                                               object: nil)
    }

    // 刷新视图
    //: private func refreshUI() {
    private func giftMoveUi() {
        //: self.player.stopPlay()
        self.player.stopEqual()
        //: self.videoView.isHidden = true
        self.videoView.isHidden = true
        //: self.imageView.isHidden = true
        self.imageView.isHidden = true
        //: self.videoProgressView.isHidden = true
        self.videoProgressView.isHidden = true
        //: self.maskView.isHidden = true
        self.maskView.isHidden = true
        //: self.desLab.isHidden = true
        self.desLab.isHidden = true
        //: self.giftBgView.isHidden = true
        self.giftBgView.isHidden = true
        //: self.giftSendBtn.isHidden = true
        self.giftSendBtn.isHidden = true
        //: self.intimateStatusImgV.isHidden = true
        self.intimateStatusImgV.isHidden = true
        //: self.progressView.isHidden = true
        self.progressView.isHidden = true

        //: if (videoModel.lockStatus == 1) {
        if videoModel.lockStatus == 1 { // 锁定状态，需要送礼解锁
            //: self.imageView.isHidden = false
            self.imageView.isHidden = false
            //: self.loadIntimatePhoto(urlStr: videoModel.coverImg, isMosaic: true)
            self.longshot(urlStr: videoModel.coverImg, isMosaic: true)
            //: self.videoProgressView.isHidden = false
            self.videoProgressView.isHidden = false
            //: self.videoProgressView.updateProgressDurationAndCurrentTime(duration: videoModel.duration, currentTime: 0)
            self.videoProgressView.instanceBy(duration: videoModel.duration, currentTime: 0)
            //: self.maskView.isHidden = false
            self.maskView.isHidden = false
            //: self.desLab.text = "Need a %@ (%@ Gold coins) to unlock".localizedArguments(videoModel.giftName, videoModel.giftPrice)
            self.desLab.text = String(bytes: str_turnData, encoding: .utf8)!.random(videoModel.giftName, videoModel.giftPrice)
            //: self.desLab.isHidden = false
            self.desLab.isHidden = false
            //: self.giftBgView.isHidden = false
            self.giftBgView.isHidden = false
            //: if isMySelf == false {
            if isMySelf == false { // 不是本人
                //: self.giftSendBtn.isHidden = false
                self.giftSendBtn.isHidden = false
            }
            //: } else if (videoModel.burnStatus == 0 || videoModel.burnStatus == 1) {
        } else if videoModel.burnStatus == 0 || videoModel.burnStatus == 1 { // 设置了阅后即焚，但还未销毁 || 已销毁
            //: self.imageView.isHidden = false
            self.imageView.isHidden = false
            //: self.loadIntimatePhoto(urlStr: videoModel.coverImg, isMosaic: true)
            self.longshot(urlStr: videoModel.coverImg, isMosaic: true)
            //: self.maskView.isHidden = false
            self.maskView.isHidden = false
            //: self.intimateStatusImgV.isHidden = false
            self.intimateStatusImgV.isHidden = false
            //: self.desLab.isHidden = false
            self.desLab.isHidden = false

            //: if videoModel.burnStatus == 0 {
            if videoModel.burnStatus == 0 { // 未销毁
                //: self.videoProgressView.isHidden = false
                self.videoProgressView.isHidden = false
                //: self.videoProgressView.updateProgressDurationAndCurrentTime(duration: videoModel.duration, currentTime: 0)
                self.videoProgressView.instanceBy(duration: videoModel.duration, currentTime: 0)
                //: self.intimateStatusImgV.image = UIImage.outsideText(name: "icon_photo_lock")
                self.intimateStatusImgV.image = UIImage.outsideText(name: (String(str_hideData) + String(str_phoneValue)))
                //: self.desLab.text = "Click on the screen to play this video(Burn After Reading)".localized
                self.desLab.text = String(bytes: str_appTitle.reversed(), encoding: .utf8)!.localized
                // 添加手势
                //: let tap = UITapGestureRecognizer(target: self, action: #selector(burnVideoTapGesture))
                let tap = UITapGestureRecognizer(target: self, action: #selector(thrustingView))
                //: self.maskView.addGestureRecognizer(tap)
                self.maskView.addGestureRecognizer(tap)

                //: } else {
            } else {
                //: self.intimateStatusImgV.image = UIImage.outsideText(name: "icon_photo_burn")
                self.intimateStatusImgV.image = UIImage.outsideText(name: (String(str_onContent) + String(str_stopData.prefix(4)) + "burn"))
                //: self.desLab.text = "Already burned".localized
                self.desLab.text = (String(str_regularCellContent) + String(str_numberDetailLogData.suffix(9))).localized
            }

            //: } else {
        } else { // 已解锁的永久私密视频
            //: self.playVideo()
            self.equalVideo()
            //: self.videoView.isHidden = false
            self.videoView.isHidden = false
            //: self.videoProgressView.isHidden = false
            self.videoProgressView.isHidden = false
        }
    }
}
