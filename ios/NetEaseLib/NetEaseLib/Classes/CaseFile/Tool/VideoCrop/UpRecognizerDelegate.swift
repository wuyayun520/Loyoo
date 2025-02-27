
//: Declare String Begin

/*: "price_image" :*/
fileprivate let str_errorText:String = "if type mess fromprice_"
fileprivate let str_sizeTopHeadTitle:String = "imtitlee"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_arrayValueData:[UInt8] = [0x3f,0x38,0x3f,0x22,0x7e,0x35,0x39,0x32,0x33,0x24,0x6c,0x7f,0x76,0x3e,0x37,0x25,0x76,0x38,0x39,0x22,0x76,0x34,0x33,0x33,0x38,0x76,0x3f,0x3b,0x26,0x3a,0x33,0x3b,0x33,0x38,0x22,0x33,0x32]

/*: "mount_img" :*/
fileprivate let str_atData:[Character] = ["m","o","u","n","t","_","i","m","g"]

/*: "btnJQbEAB_etihw_kcab_shadow" :*/
fileprivate let str_fieldValue:[Character] = ["b","t","n","J","Q","b","E"]
fileprivate let str_anotherValue:String = "leading selfAB_eti"
fileprivate let str_squareData:String = "cab_style block type"
fileprivate let str_sharedServiceValue:String = "SHADOW"

/*: "Edit" :*/
fileprivate let str_extraName:String = "false application onEdit"

/*: "Finish" :*/
fileprivate let str_viewData:[Character] = ["F","i","n","i","s","h"]

/*: "btnYDo2AS_oediv_play" :*/
fileprivate let str_nameTitle:[Character] = ["b","t","n","Y","D","o","2","A","S","_","o","e","d","i","v","_","p","l"]
fileprivate let str_roomText:[Character] = ["a","y"]

/*: "Cancel" :*/
fileprivate let str_remoteValue:String = "count center view attributeCance"
fileprivate let str_collectionTitle:String = "name"

/*: "bgQkRTbF_oediv_toast" :*/
fileprivate let str_titleValue:String = "bgQkinput image"
fileprivate let str_alwaysData:String = "_oedishare gift size self show"
fileprivate let str_viewTitle:[Character] = ["v","_","t","o","a","s","t"]

/*: "The video length should be %@-%@ seconds. Please intercept it" :*/
fileprivate let str_outsideData:[UInt8] = [0x54,0x68,0x65,0x20,0x76,0x69,0x64,0x65,0x6f,0x20,0x6c,0x65,0x6e,0x67,0x74,0x68,0x20,0x73,0x68,0x6f,0x75,0x6c,0x64,0x20,0x62,0x65,0x20,0x25,0x40,0x2d,0x25,0x40,0x20,0x73,0x65,0x63,0x6f,0x6e,0x64,0x73,0x2e,0x20,0x50,0x6c,0x65,0x61,0x73,0x65,0x20,0x69,0x6e,0x74,0x65,0x72,0x63,0x65,0x70,0x74,0x20,0x69,0x74]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import CoreMedia
import CoreMedia
//: import UIKit
import UIKit

/// 当前视频编辑样式
//: enum TalkingVideoEditorStyle {
enum SizeEditorStyle {
    //: case normal
    case normal // 默认样式
    //: case intimateVideo
    case intimateVideo // 私密视频
}

//: typealias VideoEditBlock = (_ videoInfo: TalkingVideoInfoModel?) -> Void
typealias VideoEditBlock = (_ videoInfo: TotalInfoModel?) -> Void

//: let kMinVideoDuration: CGFloat = 5.0
let a_succeedData: CGFloat = 5.0

//: class TalkingVideoEditorController: TalkingBaseViewController {
class UpRecognizerDelegate: PropertyViewController {
	var cellVideoText: String = "play"

    var starringImageView: UIImageView?

    //: var isCompress = false
    var isCompress = false
    //: private var shouldDeleteOriginalVideo = false
    private var shouldDeleteOriginalVideo = false
    //: private var shouldSaveCropedVideoToPhotoLibrary = false
    private var shouldSaveCropedVideoToPhotoLibrary = false
    //: private var framesInScreen: CGFloat = 0.0
    private var framesInScreen: CGFloat = 0.0
    //: private var croph: CGFloat = 0.0
    private var croph: CGFloat = 0.0
    //: private var padding: CGFloat = 0.0
    private var padding: CGFloat = 0.0
    //: private var imgWidth: CGFloat = 0.0
    private var imgWidth: CGFloat = 0.0
    //: private var imgHeight: CGFloat = 0.0
    private var imgHeight: CGFloat = 0.0
    //: private var duration: CGFloat = 0.0
    private var duration: CGFloat = 0.0
    //: private var maxduration: CGFloat = 0.0
    private var maxduration: CGFloat = 0.0
    //: private var playing = false
    private var playing = false
    //: private var croped = false
    private var croped = false
    //: private var croping = false
    private var croping = false
    //: private var timeScale: CMTimeScale = 0
    private var timeScale: CMTimeScale = 0
    //: private var currentRange: CMTimeRange = .zero
    private var currentRange: CMTimeRange = .zero
    //: private var originalRange: CMTimeRange = .zero
    private var originalRange: CMTimeRange = .zero
    //: private var videoURL: URL?
    private var videoURL: URL?
    //: private var player: AVPlayer?
    private var player: AVPlayer?
    //: private var previewLayer: AVPlayerLayer?
    private var previewLayer: AVPlayerLayer?
    //: private weak var playerTimer: AnyObject?
    private weak var playerTimer: AnyObject?
    //: private var slider: TalkingVideoEditSliderView?
    private var slider: CellViewDelegate?
    //: private var videoInfo = TalkingVideoInfoModel()
    private var videoInfo = TotalInfoModel() // 编辑结果模型
    //: private var currStyle = TalkingVideoEditorStyle.normal
    private var currStyle = SizeEditorStyle.normal // 当前样式
    //: private var videoEditHandler: VideoEditBlock?
    private var videoEditHandler: VideoEditBlock?

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        //: popGesture(isOpen: false)
        labUp(isOpen: false)
        //: if TalkingSocketManager.shared.isTalking == true {
        if SocketReactiveCompatible.shared.isTalking == true { // 正在音视频通话，静音播放
            //: self.player?.isMuted = true
            self.player?.isMuted = true
        }
        //: self.player?.play()
        self.player?.play()
        //: self.playing = true
        self.playing = true
        //: self.playBtn.isHidden = true
        self.playBtn.isHidden = true
    
		if var lengthValue = useVideoView.giftView.popView { 
	            if (lengthValue.layer.mask != nil) && (lengthValue.bounds.origin.y == 63.97) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let picLet = PlayerReasonView()
	            picLet.gestureOff = animated
	            picLet.tableInterval = useVideoView.giftView.keyborHeight
	            picLet.giftContent = { [self] progressContent in
	            self.cellVideoText = progressContent
	            
	            var picLet = videoInfo.giftId
	            picLet.append(picLet[picLet.endIndex])
	            if picLet.hasSuffix(self.cellVideoText) {
	                self.cellVideoText = picLet
	            }
	            
	            return self.cellVideoText
	            }
	                lengthValue.addSubview(picLet)
	            }
	
		}
	}

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        //: popGesture(isOpen: true)
        labUp(isOpen: true)

        //: self.player?.pause()
        self.player?.pause()
        //: self.playing = false
        self.playing = false
        //: self.playBtn.isHidden = false
        self.playBtn.isHidden = false
        self.starringImageView?.image = UIImage(named: (String(str_errorText.suffix(6)) + str_sizeTopHeadTitle.replacingOccurrences(of: "title", with: "ag")))
    }

    //: init(style: TalkingVideoEditorStyle = .normal, maxDuration: CGFloat, videoURL: URL, completionHandler: @escaping VideoEditBlock) {
    init(style: SizeEditorStyle = .normal, maxDuration: CGFloat, videoURL: URL, completionHandler: @escaping VideoEditBlock) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: shouldDeleteOriginalVideo = false
        shouldDeleteOriginalVideo = false
        //: shouldSaveCropedVideoToPhotoLibrary = true
        shouldSaveCropedVideoToPhotoLibrary = true
        //: framesInScreen = 20
        framesInScreen = 20
        //: croph = 10
        croph = 10
        //: padding = 50
        padding = 50
        //: imgWidth = (ScreenWidth - 2 * padding) / (framesInScreen * 1.0)
        imgWidth = (a_blockValue - 2 * padding) / (framesInScreen * 1.0)
        //: imgHeight = 50
        imgHeight = 50
        //: duration = 0
        duration = 0
        //: playing = false
        playing = false
        //: timeScale = 600
        timeScale = 600
        //: croped = false
        croped = false
        //: croping = false
        croping = false
        //: currentRange = .zero
        currentRange = .zero
        //: currStyle = style
        currStyle = style
        //: self.maxduration = maxDuration
        self.maxduration = maxDuration
        //: self.videoURL = videoURL
        self.videoURL = videoURL
        //: self.videoEditHandler = completionHandler
        self.videoEditHandler = completionHandler
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_arrayValueData.map{$0^86}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .black
        self.view.backgroundColor = .black
        //: self.settingPlayer()
        self.makeValue()
        //: self.setupSubViewsConstraint()
        self.setupWithConstraint()
        //: self.bindInteraction()
        self.uncoloured()
        //: self.func__addNotification()
        self.picCheck()

        starringImageView = UIImageView(frame: self.view.bounds.integral)
        if let starringImageView = starringImageView {
            self.starringImageView?.image = UIImage(named: (String(str_atData)))
            if (starringImageView.layer.isDoubleSided != true) && (starringImageView.subviews.count == 198) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(starringImageView)
            }
        }
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var topBar: UIView = {
    private lazy var topBar: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .clear
        v.backgroundColor = .clear
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var backBtn: UIButton = {
    private lazy var backBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setImage(UIImage.outsideText(name: "btnJQbEAB_etihw_kcab_shadow"), for: .normal)
        v.setImage(UIImage.outsideText(name: (String(str_fieldValue) + String(str_anotherValue.suffix(6)) + "hw_k" + String(str_squareData.prefix(4)) + str_sharedServiceValue.lowercased())), for: .normal)
        //: v.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        v.contentHorizontalAlignment = ConstraintLanguageManager.shared.direction == .rightToLeft ? .right : .left
        //: v.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        v.addTarget(self, action: #selector(roomColorAction), for: .touchUpInside)
        //: self.topBar.addSubview(v)
        self.topBar.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var botBar: UIView = {
    private lazy var botBar: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.init(white: 0, alpha: 0.8)
        v.backgroundColor = UIColor(white: 0, alpha: 0.8)
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var editBtn: UIButton = {
    private lazy var editBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setTitle("Edit".localized, for: .normal)
        v.setTitle((String(str_extraName.suffix(4))).localized, for: .normal)
        //: v.setTitleColor(UIColor.appThemeColor(), for: .normal)
        v.setTitleColor(UIColor.offt(), for: .normal)
        //: v.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 14)
        v.titleLabel?.font = UIFont.drogueSize(fontSize: 14)
        //: v.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        v.contentHorizontalAlignment = ConstraintLanguageManager.shared.direction == .rightToLeft ? .right : .left
        //: v.isHidden = true
        v.isHidden = true
//        v.addTarget(self, action: #selector(editAction(sender:)), for: .touchUpInside)
        //: self.botBar.addSubview(v)
        self.botBar.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var bottomDoneBtn: UIButton = {
    private lazy var bottomDoneBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setTitle("Finish".localized, for: .normal)
        v.setTitle((String(str_viewData)).localized, for: .normal)
        //: v.setTitleColor(UIColor.white, for: .normal)
        v.setTitleColor(UIColor.white, for: .normal)
        //: v.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        v.titleLabel?.font = UIFont.methodPlay(fontSize: 14)
        //: v.layer.cornerRadius = 14.0
        v.layer.cornerRadius = 14.0
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.backgroundColor = UIColor.appThemeColor()
        v.backgroundColor = UIColor.offt()
        //: v.addTarget(self, action: #selector(bottomDoneAction), for: .touchUpInside)
        v.addTarget(self, action: #selector(nextDismiss), for: .touchUpInside)
        //: self.botBar.addSubview(v)
        self.botBar.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var playBtn: UIButton = {
    private lazy var playBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setImage(UIImage.outsideText(name: "btnYDo2AS_oediv_play"), for: .normal)
        v.setImage(UIImage.outsideText(name: (String(str_nameTitle) + String(str_roomText))), for: .normal)
        //: v.addTarget(self, action: #selector(playAction(sender:)), for: .touchUpInside)
        v.addTarget(self, action: #selector(sender(sender:)), for: .touchUpInside)
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var cancelBtn: UIButton = {
    private lazy var cancelBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setTitle("Cancel".localized, for: .normal)
        v.setTitle((String(str_remoteValue.suffix(5)) + str_collectionTitle.replacingOccurrences(of: "name", with: "l")).localized, for: .normal)
        //: v.setTitleColor(.white, for: .normal)
        v.setTitleColor(.white, for: .normal)
        //: v.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 14)
        v.titleLabel?.font = UIFont.drogueSize(fontSize: 14)
        //: v.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        v.addTarget(self, action: #selector(roomColorAction), for: .touchUpInside)
        //: self.botBar.addSubview(v)
        self.botBar.addSubview(v)
        //: v.snp.makeConstraints { make in
        v.snp.makeConstraints { make in
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 50, height: 30))
            make.size.equalTo(CGSize(width: 50, height: 30))
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var confirmBtn: UIButton = {
    private lazy var confirmBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setTitle("Finish".localized, for: .normal)
        v.setTitle((String(str_viewData)).localized, for: .normal)
        //: v.setTitleColor(.white, for: .normal)
        v.setTitleColor(.white, for: .normal)
        //: v.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        v.titleLabel?.font = UIFont.methodPlay(fontSize: 14)
        //: v.layer.cornerRadius = 14.0
        v.layer.cornerRadius = 14.0
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.backgroundColor = UIColor.appThemeColor()
        v.backgroundColor = UIColor.offt()
        //: v.addTarget(self, action: #selector(confrimEditAction), for: .touchUpInside)
        v.addTarget(self, action: #selector(linePrepare), for: .touchUpInside)
        //: self.botBar.addSubview(v)
        self.botBar.addSubview(v)
        //: v.snp.makeConstraints { make in
        v.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 70, height: 28))
            make.size.equalTo(CGSize(width: 70, height: 28))
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var toastImageView: UIImageView = {
    private lazy var toastImageView: UIImageView = {
        //: let v = UIImageView(image: UIImage.outsideText(name: "bgQkRTbF_oediv_toast"))
        let v = UIImageView(image: UIImage.outsideText(name: (String(str_titleValue.prefix(4)) + "RTbF" + String(str_alwaysData.prefix(5)) + String(str_viewTitle))))
        //: self.view.addSubview(v)
        self.view.addSubview(v)

        //: let lab = UILabel()
        let lab = UILabel()
        //: let minDuration = maxduration == 15 ? 3:5
        let minDuration = maxduration == 15 ? 3 : 5
        //: lab.text = "The video length should be %@-%@ seconds. Please intercept it".localizedArguments(minDuration,Int(maxduration))
        lab.text = String(bytes: str_outsideData, encoding: .utf8)!.random(minDuration, Int(maxduration))
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 13)
        lab.font = UIFont.drogueSize(fontSize: 13)
        //: v.addSubview(lab)
        v.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.trailing.equalTo(v.snp.trailing).offset(-7)
            make.trailing.equalTo(v.snp.trailing).offset(-7)
            //: make.leading.equalTo(v.snp.leading).offset(7)
            make.leading.equalTo(v.snp.leading).offset(7)
            //: make.top.equalTo(5)
            make.top.equalTo(5)
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
        }
        //: return v
        return v
        //: }()
    }()

    //: lazy var useVideoView: TalkingSendIntimateInfoView = {
    lazy var useVideoView: MediumReactiveCompatible = {
        //: let v = TalkingSendIntimateInfoView(frame: CGRect.zero, type: .intimateVideo)
        let v = MediumReactiveCompatible(frame: CGRect.zero, type: .intimateVideo)
        //: v.isHidden = true
        v.isHidden = true
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoEditorController {
extension UpRecognizerDelegate {
    /// 返回按钮事件
    //: @objc func backAction() {
    @objc func roomColorAction() {
        //: if (player != nil) && (playerTimer != nil) {
        if player != nil, playerTimer != nil {
            //: player!.removeTimeObserver(playerTimer!)
            player!.removeTimeObserver(playerTimer!)
            //: player!.pause()
            player!.pause()
            //: player = nil
            player = nil
        }

        //: TalkingMomentVideoManager.shared.stopCompressVideo()
        MediumLabThen.shared.lockEffect()
        //: self.popCurrentViewController()
        self.languageController()
        //: if videoEditHandler != nil {
        if videoEditHandler != nil {
            // 停止视频压缩，返回到上级界面
            //: self.videoEditHandler!(nil)
            self.videoEditHandler!(nil)
        }
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func languageController(animated _: Bool = true) {
        //: if self.presentingViewController != nil {
        if self.presentingViewController != nil {
            //: self.dismiss(animated: true)
            self.dismiss(animated: true)

            //: } else if self.navigationController?.topViewController == self {
        } else if self.navigationController?.topViewController == self {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)

            //: } else {
        } else {
            //: if var vcArr = self.navigationController?.viewControllers {
            if var vcArr = self.navigationController?.viewControllers {
                //: if let index = vcArr.firstIndex(of: self) {
                if let index = vcArr.firstIndex(of: self) {
                    //: vcArr.remove(at: index)
                    vcArr.remove(at: index)
                    //: self.navigationController?.setViewControllers(vcArr, animated: false)
                    self.navigationController?.setViewControllers(vcArr, animated: false)
                }
            }
        }
    }

    /// 编辑按钮事件
    //: @objc func editAction() {
    @objc func performance() {
        //: guard self.videoURL != nil else { return }
        guard self.videoURL != nil else { return }

        //: self.croping = true
        self.croping = true
        //: self.topBar.isHidden = true
        self.topBar.isHidden = true
        //: self.editBtn.isHidden = true
        self.editBtn.isHidden = true
        //: self.bottomDoneBtn.isHidden = true
        self.bottomDoneBtn.isHidden = true
        //: self.cancelBtn.isHidden = false
        self.cancelBtn.isHidden = false
        //: self.confirmBtn.isHidden = false
        self.confirmBtn.isHidden = false

        //: self.previewLayer?.frame = CGRect(x: 26, y: 26, width: ScreenWidth - 2*26, height: ScreenHeight - 46 - 127 - kDeviceSafeBottomHeight)
        self.previewLayer?.frame = CGRect(x: 26, y: 26, width: a_blockValue - 2 * 26, height: a_formalValue - 46 - 127 - a_agentData)
        //: imgWidth = ScreenWidth / framesInScreen
        imgWidth = a_blockValue / framesInScreen

        //: if slider == nil {
        if slider == nil {
            //: let frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: CGFloat(imgHeight))
            let frame = CGRect(x: 0, y: a_formalValue, width: a_blockValue, height: CGFloat(imgHeight))
            // 创建预览区域
            //: slider = TalkingVideoEditSliderView(frame: frame, url: self.videoURL!, imgWidth: imgWidth, maxDuration: maxduration, minVideoDuration: kMinVideoDuration)
            slider = CellViewDelegate(frame: frame, url: self.videoURL!, imgWidth: imgWidth, maxDuration: maxduration, minVideoDuration: a_succeedData)
            //: slider?.imgHeight = imgHeight
            slider?.imgHeight = imgHeight
            //: slider?.tag = 10001
            slider?.tag = 10001
            //: self.view.addSubview(slider!)
            self.view.addSubview(slider!)
            //: slider?.snp.makeConstraints({ make in
            slider?.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.bottom.equalToSuperview().offset(-60-kDeviceSafeBottomHeight)
                make.bottom.equalToSuperview().offset(-60 - a_agentData)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
                //: })
            }

            //: slider?.slidingBeginBlock = { [weak self] in
            slider?.slidingBeginBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.player?.pause()
                self.player?.pause()
//                self.playing = false
            }

            //: slider?.slidingBlock = { [weak self] (direction: TalkingSlideDirection) in
            slider?.slidingBlock = { [weak self] (direction: LimitSlideDirection) in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let range = self.slider!.cropRange
                let range = self.slider!.cropRange
                //: self.currentRange = range
                self.currentRange = range
                //: if direction == .left {
                if direction == .left {
                    //: let end = CMTimeRangeGetEnd(range)
                    let end = CMTimeRangeGetEnd(range)
                    //: if CMTIME_IS_VALID(end) {
                    if CMTIME_IS_VALID(end) {
                        //: self.player?.seek( to: end, completionHandler: { finish in
                        self.player?.seek(to: end, completionHandler: { _ in
                            //: })
                        })
                    }
                    //: } else {
                } else {
                    //: if CMTIME_IS_VALID(range.start) {
                    if CMTIME_IS_VALID(range.start) {
                        //: self.player?.seek( to: range.start, completionHandler: { finish in
                        self.player?.seek(to: range.start, completionHandler: { finish in
                            //: if finish {
                            if finish {
                                //: if self.playing {
                                if self.playing {
                                    //: self.player?.play()
                                    self.player?.play()
                                    //: }else {
                                } else {
                                    //: self.player?.pause()
                                    self.player?.pause()
                                }
                            }
                            //: })
                        })
                    }
                }
            }

            //: slider?.slidingEndBlock = { [weak self] in
            slider?.slidingEndBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let range = self.slider!.cropRange
                let range = self.slider!.cropRange
                //: self.currentRange = range
                self.currentRange = range
                //: if CMTIME_IS_VALID(self.currentRange.start) {
                if CMTIME_IS_VALID(self.currentRange.start) {
                    //: self.player?.seek( to: self.currentRange.start, completionHandler: { finish in
                    self.player?.seek(to: self.currentRange.start, completionHandler: { finish in
                        //: if finish {
                        if finish {
                            //: if self.playing {
                            if self.playing {
                                //: self.player?.play()
                                self.player?.play()
                                //: }else {
                            } else {
                                //: self.player?.pause()
                                self.player?.pause()
                            }
                        }
                        //: })
                    })
                }
            }

            //: slider?.contentDidScrollBlock = { [weak self] in
            slider?.contentDidScrollBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let range = self.slider!.cropRange
                let range = self.slider!.cropRange
                //: self.currentRange = range
                self.currentRange = range
                //: if CMTIME_IS_VALID(range.start) {
                if CMTIME_IS_VALID(range.start) {
                    //: self.player?.seek( to: range.start, completionHandler: { finish in
                    self.player?.seek(to: range.start, completionHandler: { finish in
                        //: if finish {
                        if finish {
                            //: if self.playing {
                            if self.playing {
                                //: self.player?.play()
                                self.player?.play()
                                //: }else {
                            } else {
                                //: self.player?.pause()
                                self.player?.pause()
                            }
                        }
                        //: })
                    })
                }
            }

            //: slider?.dragWillBeginBlock = {
            slider?.dragWillBeginBlock = {
//                guard let self = self else { return }
//                self.player?.pause()
//                self.playing = false
            }

            //: slider?.dragDidEndBlock = { [weak self] in
            slider?.dragDidEndBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let range = self.slider!.cropRange
                let range = self.slider!.cropRange
                //: self.currentRange = range
                self.currentRange = range
                //: if CMTIME_IS_VALID(self.currentRange.start) {
                if CMTIME_IS_VALID(self.currentRange.start) {
                    //: self.player?.seek(to: self.currentRange.start, completionHandler: { finished in
                    self.player?.seek(to: self.currentRange.start, completionHandler: { _ in
//                        self.player?.play()
//                        self.playing = true
//                        self.playBtn.isHidden = true
                        //: })
                    })
                }
            }
        }

        //: self.slider?.isHidden = false
        self.slider?.isHidden = false
        //: let time = duration > maxduration ? maxduration : duration
        let time = duration > maxduration ? maxduration : duration
        //: let duration = CMTimeMake(value: Int64(self.timeScale)*Int64(time), timescale: self.timeScale)
        let duration = CMTimeMake(value: Int64(self.timeScale) * Int64(time), timescale: self.timeScale)
        //: let range = CMTimeRange(start: CMTimeMake(value: 0, timescale: self.timeScale), duration: duration)
        let range = CMTimeRange(start: CMTimeMake(value: 0, timescale: self.timeScale), duration: duration)
        //: self.currentRange = range
        self.currentRange = range

        //: self.slider?.resetPostion()
        self.slider?.reset()

        //: self.toastImageView.snp.makeConstraints { make in
        self.toastImageView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 220, height: 56))
            make.size.equalTo(CGSize(width: 220, height: 56))
            //: make.bottom.equalTo(self.slider!.snp.top).offset(-4)
            make.bottom.equalTo(self.slider!.snp.top).offset(-4)
        }

        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            //: self.toastImageView.removeFromSuperview()
            self.toastImageView.removeFromSuperview()
        }
    }

    /// 完成按钮事件
    //: @objc func bottomDoneAction() {
    @objc func nextDismiss() {
        //: guard self.videoURL != nil else { return }
        guard self.videoURL != nil else { return }
        //: self.isCompress = true
        self.isCompress = true
        //: self.editBtn.isHidden = true
        self.editBtn.isHidden = true

        //: videoInfo.videoPath = self.videoURL?.absoluteString ?? ""
        videoInfo.videoPath = self.videoURL?.absoluteString ?? ""
        //: if self.croped {
        if self.croped {
            //: videoInfo.needCut = true
            videoInfo.needCut = true
            //: if self.slider != nil {
            if self.slider != nil {
                //: videoInfo.fromTime = self.slider!.cropStart
                videoInfo.fromTime = self.slider!.cropStart
                //: videoInfo.toTime = self.slider!.cropDuration + self.slider!.cropStart
                videoInfo.toTime = self.slider!.cropDuration + self.slider!.cropStart
                //: videoInfo.duration = self.slider!.cropDuration
                videoInfo.duration = self.slider!.cropDuration
            }
            //: } else {
        } else {
            //: videoInfo.duration = self.duration
            videoInfo.duration = self.duration
        }

        // 开始视频压缩，成功后返回上级界面
        //: if self.videoEditHandler != nil {
        if self.videoEditHandler != nil {
            //: TalkingMomentVideoManager.shared.compressVideo(videoInfo: videoInfo, containerView: self.view, saveDocuments: true) { [weak self] outputPath, coverPath in
            MediumLabThen.shared.linguisticUnit(videoInfo: videoInfo, containerView: self.view, saveDocuments: true) { [weak self] outputPath, coverPath in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.popCurrentViewController()
                self.languageController()

                // 回调
                //: self.videoInfo.videoPath = outputPath
                self.videoInfo.videoPath = outputPath
                //: self.videoInfo.coverPath = coverPath
                self.videoInfo.coverPath = coverPath
                //: self.videoEditHandler!(self.videoInfo)
                self.videoEditHandler!(self.videoInfo)
            }
        }
    }

    /// 编辑完成按钮事件
    //: @objc func confrimEditAction() {
    @objc func linePrepare() {
        //: guard self.videoURL != nil else { return }
        guard self.videoURL != nil else { return }
        //: self.croped = true
        self.croped = true
        //: self.slider?.coverView.isHidden = false
        self.slider?.coverView.isHidden = false
        // 私密视频
        //: if self.currStyle == .intimateVideo {
        if self.currStyle == .intimateVideo {
            //: self.useVideoView.isHidden = false
            self.useVideoView.isHidden = false
            //: self.botBar.isHidden = true
            self.botBar.isHidden = true
            //: self.topBar.isHidden = false
            self.topBar.isHidden = false
            //: } else {
        } else {
            //: self.bottomDoneAction()
            self.nextDismiss()
        }
    }

    /// 播放按钮事件
    /// - Parameter sender: 播放按钮
    //: @objc func playAction(sender: UIButton) {
    @objc func sender(sender: UIButton) {
        //: sender.isHidden = true
        sender.isHidden = true
        //: self.player?.play()
        self.player?.play()
        //: self.playing = true
        self.playing = true
    }

    /// 结束播放
    //: func playEnd() {
    func addHigh() {
        //: if CMTIME_IS_VALID(self.currentRange.start) {
        if CMTIME_IS_VALID(self.currentRange.start) {
            //: self.player?.seek(to: self.currentRange.start, completionHandler: { [weak self] finished in
            self.player?.seek(to: self.currentRange.start, completionHandler: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.croping {
                if self.croping {
                    //: if self.playing {
                    if self.playing {
                        //: self.playBtn.isHidden = false
                        self.playBtn.isHidden = false
                        //: self.playing = false
                        self.playing = false
                        //: self.player?.pause()
                        self.player?.pause()
                    }
                    //: } else {
                } else {
                    //: self.player?.play()
                    self.player?.play()
                }
                //: })
            })
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = (touches as NSSet).anyObject() as AnyObject
        let touch = (touches as NSSet).anyObject() as AnyObject
        //: if touch.view == self.botBar || touch.view == self.topBar {
        if touch.view == self.botBar || touch.view == self.topBar {
            //: return
            return
        }

        //: if self.slider != nil {
        if self.slider != nil {
            //: var point = touch.location(in: self.view)
            var point = touch.location(in: self.view)
            //: point = self.slider!.layer.convert(point, from: self.view.layer)
            point = self.slider!.layer.convert(point, from: self.view.layer)
            //: if self.slider!.layer.contains(point) {
            if self.slider!.layer.contains(point) {
                //: return
                return
            }
        }

        //: if self.playing {
        if self.playing {
            //: self.player?.pause()
            self.player?.pause()
            //: self.playing = false
            self.playing = false
            //: self.playBtn.isHidden = false
            self.playBtn.isHidden = false
            //: } else {
        } else {
            //: self.player?.play()
            self.player?.play()
            //: self.playing = true
            self.playing = true
            //: self.playBtn.isHidden = true
            self.playBtn.isHidden = true
        }
    }
}

// MARK: - Notifications

//: extension TalkingVideoEditorController {
extension UpRecognizerDelegate {
    /// 通知：进入后台
    //: @objc func didEnterBackground() {
    @objc func executeForBackground() {
        //: self.player?.pause()
        self.player?.pause()
        //: self.playing = false
        self.playing = false
        //: self.playBtn.isHidden = false
        self.playBtn.isHidden = false
    }

    /// 通知：播放完成
    //: @objc func playbackFinished() {
    @objc func addFinished() {
        //: playEnd()
        addHigh()
    }

    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func viewFreeTalking() {
        //: self.player?.isMuted = true
        self.player?.isMuted = true
    }
}

// MARK: - Layout

//: extension TalkingVideoEditorController {
extension UpRecognizerDelegate {
    /// 播放设置
    //: private func settingPlayer() {
    private func makeValue() {
        //: guard self.videoURL != nil else { return }
        guard self.videoURL != nil else { return }
        //: let asset = AVAsset(url: self.videoURL!)
        let asset = AVAsset(url: self.videoURL!)
        //: let total = asset.duration
        let total = asset.duration
        //: self.duration = CMTimeGetSeconds(total)
        self.duration = CMTimeGetSeconds(total)
        //: self.timeScale = total.timescale
        self.timeScale = total.timescale
        //: let startCMTime = CMTimeMake(value: 0, timescale: total.timescale)
        let startCMTime = CMTimeMake(value: 0, timescale: total.timescale)
        //: self.currentRange = CMTimeRange(start: startCMTime, duration: total)
        self.currentRange = CMTimeRange(start: startCMTime, duration: total)
        //: self.originalRange = self.currentRange
        self.originalRange = self.currentRange

        //: self.player = AVPlayer(url: self.videoURL!)
        self.player = AVPlayer(url: self.videoURL!)
        //: self.previewLayer = AVPlayerLayer(player: self.player)
        self.previewLayer = AVPlayerLayer(player: self.player)
        //: self.previewLayer?.contentsGravity = .resizeAspectFill
        self.previewLayer?.contentsGravity = .resizeAspectFill
        //: self.previewLayer?.frame = self.view.bounds
        self.previewLayer?.frame = self.view.bounds // 这里不能占满全屏
        //: self.previewLayer?.backgroundColor = UIColor.clear.cgColor
        self.previewLayer?.backgroundColor = UIColor.clear.cgColor
        //: self.view.layer.insertSublayer(self.previewLayer!, at: 0)
        self.view.layer.insertSublayer(self.previewLayer!, at: 0)

        //: let item = self.player?.currentItem
        let item = self.player?.currentItem
        //: NotificationCenter.default.addObserver(self, selector: #selector(playbackFinished), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: item)
        NotificationCenter.default.addObserver(self, selector: #selector(addFinished), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: item)

        //: let step = CMTimeMake(value: asset.duration.value / 1000, timescale: asset.duration.timescale)
        let step = CMTimeMake(value: asset.duration.value / 1000, timescale: asset.duration.timescale)

        //: self.playerTimer = self.player?.addPeriodicTimeObserver(forInterval: step, queue: DispatchQueue.main, using: { [weak self] time in
        self.playerTimer = self.player?.addPeriodicTimeObserver(forInterval: step, queue: DispatchQueue.main, using: { [weak self] time in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: CMTimeShow(time)
            CMTimeShow(time)
            //: let endTime = CMTimeRangeGetEnd(self.currentRange)
            let endTime = CMTimeRangeGetEnd(self.currentRange)
            //: if CMTimeCompare(time, endTime) != -1 {
            if CMTimeCompare(time, endTime) != -1 {
                //: self.playEnd()
                self.addHigh()
            }

            //: if self.slider != nil && self.slider!.isHidden == false {
            if self.slider != nil, self.slider!.isHidden == false {
                //: let currentDuration = CMTimeGetSeconds(self.currentRange.duration)
                let currentDuration = CMTimeGetSeconds(self.currentRange.duration)
                //: let currentMinTime = CMTimeGetSeconds(self.currentRange.start)
                let currentMinTime = CMTimeGetSeconds(self.currentRange.start)
                //: let currentPlayerTime = CMTimeGetSeconds(time)
                let currentPlayerTime = CMTimeGetSeconds(time)

                //: let timeStamp = currentPlayerTime - currentMinTime
                let timeStamp = currentPlayerTime - currentMinTime

                //: guard currentDuration > 0 else { return }
                guard currentDuration > 0 else { return }

                //: let xposition = timeStamp / currentDuration
                let xposition = timeStamp / currentDuration
                //: self.slider?.overlay.updateIndcatorXposition(xposition)
                self.slider?.overlay.eigenvalueOfASquareMatrix(xposition)
            }
            //: }) as AnyObject?
        }) as AnyObject?

        //: self.player?.play()
        self.player?.play()
        //: self.playing = true
        self.playing = true
        //: self.playBtn.isHidden = true
        self.playBtn.isHidden = true
        //: if duration > maxduration {
        if duration > maxduration {
            //: self.editAction()
            self.performance()
        }
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupWithConstraint() {
        //: self.topBar.snp.makeConstraints { make in
        self.topBar.snp.makeConstraints { make in
            //: make.top.leading.trailing.equalToSuperview()
            make.top.leading.trailing.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(a_itemTitle)
        }

        //: self.backBtn.snp.makeConstraints { make in
        self.backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 50, height: 30))
            make.size.equalTo(CGSize(width: 50, height: 30))
        }

        //: self.botBar.snp.makeConstraints { make in
        self.botBar.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(48+kDeviceSafeBottomHeight)
            make.height.equalTo(48 + a_agentData)
        }

        //: self.editBtn.snp.makeConstraints { make in
        self.editBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 50, height: 30))
            make.size.equalTo(CGSize(width: 50, height: 30))
        }

        //: self.bottomDoneBtn.snp.makeConstraints { make in
        self.bottomDoneBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.size.equalTo(CGSize(width: 70, height: 28))
            make.size.equalTo(CGSize(width: 70, height: 28))
        }

        //: self.playBtn.snp.makeConstraints { make in
        self.playBtn.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 85, height: 85))
            make.size.equalTo(CGSize(width: 85, height: 85))
        }

        // 私密视频
        //: if self.currStyle == .intimateVideo {
        if self.currStyle == .intimateVideo {
            //: if self.slider == nil {
            if self.slider == nil { // 非编辑状态先展示“Use Video”
                //: self.useVideoView.isHidden = false
                self.useVideoView.isHidden = false
                //: self.botBar.isHidden = true
                self.botBar.isHidden = true
                //: } else {
            } else {
                //: self.useVideoView.isHidden = true
                self.useVideoView.isHidden = true
            }
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func uncoloured() {
        /// 私密视频事件
        //: if self.currStyle == .intimateVideo {
        if self.currStyle == .intimateVideo {
            //: useVideoView.block = { [weak self] isBurn, giftId in
            useVideoView.block = { [weak self] isBurn, giftId in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.videoInfo.isBurn = isBurn
                self.videoInfo.isBurn = isBurn
                //: self.videoInfo.giftId = giftId
                self.videoInfo.giftId = giftId
                //: self.useVideoView.isHidden = true
                self.useVideoView.isHidden = true

                //: self.bottomDoneAction()
                self.nextDismiss()
            }
        }
    }

    /// 添加通知
    //: private func func__addNotification() {
    private func picCheck() {
        // 监听应用进入后台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(didEnterBackground),
                                               selector: #selector(executeForBackground),
                                               //: name: UIApplication.willResignActiveNotification,
                                               name: UIApplication.willResignActiveNotification,
                                               //: object: nil)
                                               object: nil)

        /// 接收到音视频通话，取消视频压缩
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(viewFreeTalking),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: a_keyName,
                                               //: object: nil)
                                               object: nil)
    }
}
