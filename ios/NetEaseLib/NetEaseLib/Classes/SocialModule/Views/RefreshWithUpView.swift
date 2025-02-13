
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_equalPhotoText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "mic_image" :*/
fileprivate let str_colorText:[Character] = ["m","i","c","_","i","m","a","g","e"]

/*: "icon_video_bd" :*/
fileprivate let str_tabData:String = "icon_vlet to"

/*: "btn_video_drop_nor" :*/
fileprivate let str_addDeadlineData:String = "btn_inside for"
fileprivate let str_interactionValue:String = "p_norlet case name"

/*: "get json error" :*/
fileprivate let str_topMagnitudeTitle:[Character] = ["g","e","t"," ","j"]
fileprivate let str_infoName:String = "son errorplay title"

/*: s" :*/
fileprivate let str_viewData:String = "show"

/*: "icon_videocall_topView" :*/
fileprivate let str_fatalData:[Character] = ["i","c","o","n","_","v","i","d","e","o","c","a","l","l","_","t","o","p","V","i","e"]
fileprivate let str_addName:[Character] = ["w"]

/*: "Video Call" :*/
fileprivate let str_selectContent:String = "quote true toVideo"
fileprivate let str_itemName:String = " Callcell dynamic manager let"

/*: "icon_videocall_initerv_topView" :*/
fileprivate let str_imageSharedValue:String = "label observericon_"
fileprivate let str_fieldName:[Character] = ["c","a","l","l","_","i","n","i","t","e","r","v","_","t","o","p","V","i","e","w"]

/*: "Free" :*/
fileprivate let str_transactionValue:String = "Freemenu item make"

/*: "You've been barred from receiving calls" :*/
fileprivate let str_topText:[UInt8] = [0x59,0x6f,0x75,0x27,0x76,0x65,0x20,0x62,0x65,0x65,0x6e,0x20,0x62,0x61,0x72,0x72,0x65,0x64,0x20,0x66,0x72,0x6f,0x6d,0x20,0x72,0x65,0x63,0x65,0x69,0x76,0x69,0x6e,0x67,0x20,0x63,0x61,0x6c,0x6c,0x73]

/*: "&type=6" :*/
fileprivate let str_tableContentValue:[Character] = ["&","t","y","p","e","=","6"]

/*: "#864EFF" :*/
fileprivate let str_draftName:String = "#864EFFshare make self"

/*: "#F79AFF" :*/
fileprivate let str_effectTitle:[Character] = ["#","F","7","9","A","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RefreshWithUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallPopUpView: UIView {
class RefreshWithUpView: UIView {
    var occurrentImageView: UIImageView?

    //: var popView: MeasurementThen?
    var popView: MeasurementThen?
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.compare()
        //: self.setupSubViewsConstraint()
        self.writeOn()
        //: self.bindInteraction()
        self.modelCounteraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_equalPhotoText.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: player?.stopPlay()
        player?.stopEqual()
        //: player?.removeVideoWidget()
        player?.clickWidget()
        //: player = nil
        player = nil
        occurrentImageView = UIImageView(frame: self.frame.intersection(CGRect(x: CGFloat(Double(self.frame.size.width)), y: CGFloat(0), width: CGFloat(Double(self.frame.origin.x)), height: CGFloat(Double(self.center.x)))))
        if let occurrentImageView = occurrentImageView {
            self.occurrentImageView?.image = UIImage(named: (String(str_colorText)))
            if (occurrentImageView.animationDuration == TimeInterval(Double(occurrentImageView.frame.size.height))) && (occurrentImageView.highlightedImage != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(occurrentImageView)
            }
        }

        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var playerView: UIImageView = {
    private lazy var playerView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.contentMode = .scaleAspectFill
        view.contentMode = .scaleAspectFill
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var topBtn: TalkingButton = {
    private lazy var topBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton.init(type: .custom)
        let btn = PathErrorTalkingButton(type: .custom)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "icon_video_bd"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_tabData.prefix(6)) + "ideo_bd")), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(roomClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.outsideText(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_addDeadlineData.prefix(4)) + "video_dro" + String(str_interactionValue.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(distance), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var countDownLb: UILabel = {
    private lazy var countDownLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 10)
        lb.font = UIFont.methodPlay(fontSize: 10)
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: DatePlayListener? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = DatePlayListener()
        //: player.setMute(bEnable: false)
        player.pileEndowIcon(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Videocall_initiver)
        let url = MonochromeThen.default.telecasting(type: .Videocall_initiver)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_topMagnitudeTitle) + String(str_infoName.prefix(9))))
        }
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Tool

//: extension TalkingVideoCallPopUpView {
extension RefreshWithUpView {
    /// 获取权限
    //: private func getServercePermission() {
    private func spend() {
        // 是否开启摄像头
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        PrefaceReactiveCompatible.appBlock(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: return
                return
            }
            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { [weak self] isOpen in
            PrefaceReactiveCompatible.pryUpward(false) { [weak self] isOpen in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: return
                    return
                }
                //: self.countDownLb.isHidden = false
                self.countDownLb.isHidden = false
                //: self.topBtn.snp.remakeConstraints { make in
                self.topBtn.snp.remakeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.centerY.equalToSuperview().offset(-10)
                    make.centerY.equalToSuperview().offset(-10)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.countDownLb.snp.remakeConstraints { make in
                self.countDownLb.snp.remakeConstraints { make in
                    //: make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.height.equalTo(10)
                    make.height.equalTo(10)
                }
                // 5s倒计时主动接通
                //: var time = TalkingVideoInitivCallManager.shared.videoCallModel.winCountdown
                var time = DoingeCallManager.shared.videoCallModel.winCountdown
                //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] timer in
                self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard time > 0 else {
                    guard time > 0 else { // 结束倒计时
                        //: self.destroyTimer()
                        self.makeTimer()
                        //: self.dismiss()
                        self.towardMatch()
                        //: switch MeasurementAppManager.share.appUserConfigMode.popupCallAcceptEvent {
                        switch MeasurementAppManager.share.appUserConfigMode.popupCallAcceptEvent {
                        //: case 1:
                        case 1:
                            //: pushWebRechargeView()
                            titleView()
                        //: case 2:
                        case 2:
                            //: pushWebSubscriptionView()
                            cellEqual()
                        //: case 3:
                        case 3:
                            //: self.putThrough()
                            self.finished()
                        //: default:
                        default:
                            //: break
                            break
                        }
                        //: return
                        return
                    }
                    //: self.countDownLb.text = "\(time)s"
                    self.countDownLb.text = "\(time)s"
                    //: time -= 1
                    time -= 1
                    //: }, repeats: true)
                }, repeats: true)
                //: self.countdownTimer?.fire()
                self.countdownTimer?.fire()
                //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
                RunLoop.current.add(self.countdownTimer!, forMode: .common)
            }
        }
        //: if self.countDownLb.isHidden {
        if self.countDownLb.isHidden {
            //: self.topBtn.snp.remakeConstraints { make in
            self.topBtn.snp.remakeConstraints { make in
                //: make.center.equalToSuperview()
                make.center.equalToSuperview()
                //: make.height.equalTo(18)
                make.height.equalTo(18)
            }
        }
    }

    //: private func seTypeView() {
    private func beneath() {
        //: switch MeasurementAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        switch MeasurementAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1, 2:
        case 1, 2:
            //: topIcon.image = UIImage.outsideText(name: "icon_videocall_topView")
            topIcon.image = UIImage.outsideText(name: (String(str_fatalData) + String(str_addName)))
            //: topBtn.setTitle("Video Call".localized, for: .normal)
            topBtn.setTitle((String(str_selectContent.suffix(5)) + String(str_itemName.prefix(5))).localized, for: .normal)
        //: case 3:
        case 3:
            //: topIcon.image = UIImage.outsideText(name: "icon_videocall_initerv_topView")
            topIcon.image = UIImage.outsideText(name: (String(str_imageSharedValue.suffix(5)) + "video" + String(str_fieldName)))
            //: topBtn.setTitle("Free".localized, for: .normal)
            topBtn.setTitle((String(str_transactionValue.prefix(4))).localized, for: .normal)
        //: default:
        default:
            //: break
            break
        }
    }

    /// 播放视频或封面
    //: private func beginPlayer() {
    private func noteVideo() {
        //: if TalkingVideoInitivCallManager.shared.videoCallModel.winUrlType == 2 {
        if DoingeCallManager.shared.videoCallModel.winUrlType == 2 {
            //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            self.player?.catScan(url: DoingeCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            //: } else {
        } else {
            //: self.playerView.setUrlImage(urlStr: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl)
            self.playerView.recordFinish(urlStr: DoingeCallManager.shared.videoCallModel.winVideoUrl)
        }
    }

    /// 销毁倒计时
    //: private func destroyTimer() {
    private func makeTimer() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func finished() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        a_textTurnName.photoOf(eventID: a_statusContent)
        //: initVideoCallTime()
        colorOfModel()
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard DoingeCallManager.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.episode(showMsg: String(bytes: str_topText, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 1) { succeed, result, errorModel in
        DoingeCallManager.shared.operation(type: 1) { succeed, _, _ in
            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: if self.currentViewController()?.presentingViewController != nil {
            if self.colorController()?.presentingViewController != nil {
                // 如果有present, 先dismiss
                //: self.currentViewController()?.dismiss(animated: false)
                self.colorController()?.dismiss(animated: false)
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: let vc = TalkingVideoInitivCallVC()
                let vc = MeasurementRecognizerDelegate()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.colorController()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    /// 上报行为
    //: private func uploadRepord(type: Int) {
    private func latchkey(type: Int) {
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: type) { succeed, result, errorModel in
        DoingeCallManager.shared.operation(type: type) { _, _, _ in
        }
    }

    /// 开启下次弹窗倒计时
    //: private func initVideoCallTime() {
    private func colorOfModel() {
        //: TalkingVideoInitivCallManager.shared.initVideoCallTimer()
        DoingeCallManager.shared.upTimer()
    }
}

// MARK: - Event

//: extension TalkingVideoCallPopUpView {
extension RefreshWithUpView {
    //: @objc private func finishBtnClick() {
    @objc private func roomClick() {
        //: self.dismiss()
        self.towardMatch()
        //: switch MeasurementAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        switch MeasurementAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1:
        case 1:
            //: pushWebRechargeView()
            titleView()
        //: case 2:
        case 2:
            //: pushWebSubscriptionView()
            cellEqual()
        //: case 3:
        case 3:
            //: TalkingPermissionTool.checkCameraAndMicrophone { [weak self] isOpen in
            PrefaceReactiveCompatible.voiceMicrophone { [weak self] isOpen in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard isOpen == true else { return }
                guard isOpen == true else { return }
                //: self.putThrough()
                self.finished()
            }
        //: default:
        default:
            //: break
            break
        }
    }

    /// 充值
    //: private func pushWebRechargeView() {
    private func titleView() {
        //: initVideoCallTime()
        colorOfModel()
        //: LimitPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
        LimitPushManager.share.pathSub(webViewType: .RechargeToVideoInitivHalfPage)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if colorController()?.isKind(of: MForefrontViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = colorController() as! MForefrontViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    /// 订阅
    //: private func pushWebSubscriptionView() {
    private func cellEqual() {
        //: initVideoCallTime()
        colorOfModel()
        //: LimitPushManager.share.func__pushToSubscribeAlert(appendParams: "&type=6")
        LimitPushManager.share.callParams(appendParams: (String(str_tableContentValue)))
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if colorController()?.isKind(of: MForefrontViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = colorController() as! MForefrontViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func distance() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoRejectButton)
        a_textTurnName.photoOf(eventID: a_buttonValue)
        //: initVideoCallTime()
        colorOfModel()
        //: uploadRepord(type: 3)
        latchkey(type: 3)
        //: dismiss()
        towardMatch()
    }

    //: func show() {
    func topOut() {
        //: popView = MeasurementThen.init(frame: UIScreen.main.bounds)
        popView = MeasurementThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.anInit(view: self)
        //: popView?.showInView(view: ImageMacroDefine.getWindow())
        popView?.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func towardMatch() {
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
        //: destroyTimer()
        makeTimer()
    }
}

// MARK: - Layout

//: extension TalkingVideoCallPopUpView {
extension RefreshWithUpView {
    /// 添加视图
    //: private func setupSubviews() {
    private func compare() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(playerView)
        contentView.addSubview(playerView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.insertSubview(topIcon, aboveSubview: playerView)
        contentView.insertSubview(topIcon, aboveSubview: playerView)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(svgaPlayer)
        contentView.addSubview(svgaPlayer)
        //: contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        //: finishBtn.addSubview(topBtn)
        finishBtn.addSubview(topBtn)
        //: finishBtn.addSubview(countDownLb)
        finishBtn.addSubview(countDownLb)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func writeOn() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 295), height: actualWidth(w: 419)))
            make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 419)))
        }
        //: playerView.snp.makeConstraints { make in
        playerView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(4)
            make.leading.top.equalTo(4)
            //: make.trailing.bottom.equalTo(-4)
            make.trailing.bottom.equalTo(-4)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(-12)
            make.leading.equalTo(-12)
            //: make.top.equalTo(-23)
            make.top.equalTo(-23)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 121), height: actualWidth(w: 52)))
            make.size.equalTo(CGSize(width: actualWidth(w: 121), height: actualWidth(w: 52)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.leading.equalTo(22)
            make.leading.equalTo(22)
            //: make.size.equalTo(42)
            make.size.equalTo(42)
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            //: make.centerY.equalTo(closeBtn)
            make.centerY.equalTo(closeBtn)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
        }
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.leading.equalTo(svgaPlayer).offset(6)
            make.top.leading.equalTo(svgaPlayer).offset(6)
            //: make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
            make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func modelCounteraction() {
        //: addGradientLayerWithCorner(cornerRadius: 10, lineWidth: 4, colors: [UIColor.init(hex: "#864EFF")!.cgColor, UIColor.init(hex: "#F79AFF")!.cgColor])
        underTheme(cornerRadius: 10, lineWidth: 4, colors: [UIColor(hex: (String(str_draftName.prefix(7))))!.cgColor, UIColor(hex: (String(str_effectTitle)))!.cgColor])
        //: self.getServercePermission()
        self.spend()
        //: self.seTypeView()
        self.beneath()
        //: self.beginPlayer()
        self.noteVideo()
        //: NotificationCenter.default.post(name: VIDEOCALL_INITIV_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: a_videoValue, object: nil)
    }

    //: private func addGradientLayerWithCorner(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
    private func underTheme(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let gradientLayer = CAGradientLayer()
        let gradientLayer = CAGradientLayer()
        //: gradientLayer.frame = contentView.bounds
        gradientLayer.frame = contentView.bounds
        //: gradientLayer.colors = colors
        gradientLayer.colors = colors
        //: gradientLayer.cornerRadius = cornerRadius
        gradientLayer.cornerRadius = cornerRadius

        //: let maskLayer = CAShapeLayer()
        let maskLayer = CAShapeLayer()
        //: maskLayer.lineWidth = lineWidth
        maskLayer.lineWidth = lineWidth
        //: maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        //: maskLayer.fillColor = UIColor.clear.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        //: maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.strokeColor = UIColor.black.cgColor

        //: gradientLayer.mask = maskLayer
        gradientLayer.mask = maskLayer
        //: contentView.layer.insertSublayer(gradientLayer, at: 0)
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
