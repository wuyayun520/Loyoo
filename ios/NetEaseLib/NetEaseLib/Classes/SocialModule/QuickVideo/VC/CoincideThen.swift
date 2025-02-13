
//: Declare String Begin

/*: "mic_image" :*/
fileprivate let str_downValue:String = "mic_imrequest fill"
fileprivate let str_videoName:String = "agto"

/*: "present_picture" :*/
fileprivate let str_pathText:String = "premake"
fileprivate let str_observeData:[Character] = ["n","t","_"]
fileprivate let str_taskData:[Character] = ["p","i","c","t","u","r","e"]

/*: "#201E50" :*/
fileprivate let str_gestureValue:[Character] = ["#","2","0","1","E"]
fileprivate let str_actualToValue:[Character] = ["5","0"]

/*: "#1F1624" :*/
fileprivate let str_addValue:String = "first in method view#1F162"
fileprivate let str_controlText:String = "4"

/*: "quick_video_topview" :*/
fileprivate let str_groupData:[Character] = ["q","u","i","c","k","_","v","i","d","e","o","_","t","o","p","v","i","e","w"]

/*: "btn_back_white" :*/
fileprivate let str_outsideName:[Character] = ["b","t","n","_","b","a","c","k","_","w","h","i","t","e"]

/*: "Random Video" :*/
fileprivate let str_videoTitle:String = "Random Vtrue make request video let"
fileprivate let str_makeData:[Character] = ["i","d","e","o"]

/*: "icon_rank_coin" :*/
fileprivate let str_commitData:[Character] = ["i","c","o","n","_","r","a"]
fileprivate let str_successText:String = "nk_cointop comment var view"

/*: "btn_quick_back_nor" :*/
fileprivate let str_voiceData:[Character] = ["b"]
fileprivate let str_clearText:String = "path placetn_qui"
fileprivate let str_qualityData:String = "if selfck_nor"

/*: "icon_video_skip" :*/
fileprivate let str_pileData:[Character] = ["i","c","o","n","_","v","i","d","e","o","_","s","k","i","p"]

/*: "#9610FF" :*/
fileprivate let str_itemContent:[Character] = ["#","9","6","1","0","F","F"]

/*: "#8566FF" :*/
fileprivate let str_localMakeTitle:[Character] = ["#","8","5","6","6"]
fileprivate let str_addName:String = "iconicon"

/*: "icon_coin_match_line" :*/
fileprivate let str_roomName:String = "height user value container leticon_"
fileprivate let str_rangeTitleValue:[Character] = ["t","c","h","_","l","i","n","e"]

/*: "matchId" :*/
fileprivate let str_sizeBetweenName:[UInt8] = [0xec,0xe0,0xf5,0xe2,0xe9,0xc8,0xe5]

/*: "source" :*/
fileprivate let str_rawTitle:[UInt8] = [0x73,0x6f,0x75,0x72,0x63,0x65]

/*: "type" :*/
fileprivate let str_fireValue:[UInt8] = [0x88,0x85,0x8c,0x99]

/*: "uid" :*/
fileprivate let str_valueName:String = "UID"

/*: "fromFreeCall" :*/
fileprivate let str_modelValue:String = "temp imagefromFr"
fileprivate let str_recordManagerValue:String = "plain makeeeCall"

/*: "cmd" :*/
fileprivate let str_valueData:[UInt8] = [0x64,0x6d,0x63]

/*: "requestCall" :*/
fileprivate let str_roomTitle:String = "rwithquwiths"

/*: "data" :*/
fileprivate let str_ofTitle:[UInt8] = [0x64,0x61,0x74,0x61]

/*: "onRequestCall" :*/
fileprivate let str_tableValue:String = "model content info guard toonRequest"
fileprivate let str_contentData:String = "Callsize value var self user"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoincideThen.swift
//  AbroadTalking
//
//  Created by young on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMatchResultViewController: TalkingBaseViewController {
class CoincideThen: PropertyViewController {
	var iconOpen: Bool = false
	var offPackageArray: [AnyHashable] = []
	var roomDoing: Bool = true
	var thanArray: [AnyHashable] = []

    var colorImageView: UIImageView?

    //: private var currentModel = TalkingMatchResultModel()
    private var currentModel = TallyModelType() // 当前展示的model

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 每次打开更新金额
        //: refreshCoin()
        sizeCoin()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
    
            if (backView.semanticContentAttribute == .spatial) && (backView.motionEffects.count == 17) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let dataLet = BeyondPointHeightView()
            dataLet.transferClose = animated
            dataLet.backTotal = currentModel.type

            dataLet.fullTitle = currentModel.nickname
            dataLet.addressOff = { [self] lastOff in
            self.roomDoing = lastOff
            
            var dataLet = self.hideNavi
                dataLet = true
                dataLet = !dataLet
            if dataLet != self.roomDoing {
                self.roomDoing = dataLet
            }
            
                self.roomDoing = true
                self.roomDoing = !self.roomDoing
            return self.roomDoing
            }
            dataLet.valueArray = { [self] rowArray in
            self.thanArray = rowArray
            
            guard var value = self.thanArray as? [String] else {
                return nil
            }
            return value
            }
                backView.addSubview(dataLet)
            }

	}

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
            if (skipBtn.alpha != 1.0) && (skipBtn.semanticContentAttribute == .spatial) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let menuVoice = BeyondPointHeightView(frame: skipBtn.bounds.union(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
            menuVoice.transferClose = currentModel.isTPAuth
            menuVoice.backTotal = currentModel.uid

            menuVoice.fullTitle = currentModel.sex
            menuVoice.addressOff = { [self] lastOff in
            self.iconOpen = lastOff
            
            var menuVoice = animated
            menuVoice = true
            if menuVoice != self.iconOpen {
                self.iconOpen = menuVoice
            }
            
                self.iconOpen = false
                self.iconOpen = !self.iconOpen
            return self.iconOpen
            }
            menuVoice.valueArray = { [self] rowArray in
            self.offPackageArray = rowArray
            
            guard var value = self.offPackageArray as? [String] else {
                return nil
            }
            return value
            }
                skipBtn.addSubview(menuVoice)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        confinementRow()
        //: setupSubViewsConstraint()
        setupDown()
        //: refreshUI()
        television()

        /// 添加刷新余额的通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshCoin),
                                               selector: #selector(sizeCoin),
                                               //: name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION,
                                               name: a_marginName,
                                               //: object: nil)
                                               object: nil)

        colorImageView = UIImageView(frame: self.view.frame.standardized)
        if let colorImageView = colorImageView {
            self.colorImageView?.image = UIImage(named: (String(str_downValue.prefix(6)) + str_videoName.replacingOccurrences(of: "to", with: "e")))
            if (colorImageView.alpha != 1.0) && (colorImageView.isExclusiveTouch) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(colorImageView)
            }
        }
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        SocketReactiveCompatible.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        SocketReactiveCompatible.shared.errorDelegate = nil
        self.colorImageView?.image = UIImage(named: (str_pathText.replacingOccurrences(of: "make", with: "se") + String(str_observeData) + String(str_taskData)))
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIImageView = {
    private lazy var backView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.makeData(colors: [UIColor(hex: (String(str_gestureValue) + String(str_actualToValue)))!.cgColor, UIColor(hex: (String(str_addValue.suffix(6)) + str_controlText.capitalized))!.cgColor], size: CGSize(width: a_blockValue, height: a_formalValue))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.outsideText(name: "quick_video_topview")
        topView.image = UIImage.outsideText(name: (String(str_groupData)))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: backBtn.setImage(UIImage.outsideText(name: "btn_back_white"), for: .normal)
        backBtn.setImage(UIImage.outsideText(name: (String(str_outsideName))), for: .normal)
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(gapImageSend), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.top.equalTo(StatusBarHeight+12)
            make.top.equalTo(a_limitRecordScreenName + 12)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangMediumFont(fontSize: 17)
        titleLab.font = UIFont.methodPlay(fontSize: 17)
        //: titleLab.textColor = UIColor.white
        titleLab.textColor = UIColor.white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(str_videoTitle.prefix(8)) + String(str_makeData)).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 余额
        //: let coinBtn = TalkingButton()
        let coinBtn = PathErrorTalkingButton()
        //: coinBtn.tag = 1001
        coinBtn.tag = 1001
        //: coinBtn.setImage(UIImage.outsideText(name: "icon_rank_coin"), for: .normal)
        coinBtn.setImage(UIImage.outsideText(name: (String(str_commitData) + String(str_successText.prefix(7)))), for: .normal)
        //: coinBtn.setImage(UIImage.outsideText(name: "icon_rank_coin"), for: .disabled)
        coinBtn.setImage(UIImage.outsideText(name: (String(str_commitData) + String(str_successText.prefix(7)))), for: .disabled)
        //: coinBtn.isEnabled = false
        coinBtn.isEnabled = false
        //: coinBtn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        coinBtn.setTitleColor(UIColor.blockOf(), for: .normal)
        //: coinBtn.setTitle("\(MeasurementAppManager.share.loginUserMode.mf_coin)", for: .normal)
        coinBtn.setTitle("\(MeasurementAppManager.share.loginUserMode.mf_coin)", for: .normal)
        //: coinBtn.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        coinBtn.titleLabel?.font = UIFont.thoughtImage(type: .Semibold, fontSize: 15)
        //: coinBtn.backgroundColor = UIColor.white
        coinBtn.backgroundColor = UIColor.white
        //: coinBtn.layer.cornerRadius = 12
        coinBtn.layer.cornerRadius = 12
        //: coinBtn.imageAlignment = .left
        coinBtn.imageAlignment = .left
//        coinBtn.spaceBetweenTitleAndImage = 3
        //: nav.addSubview(coinBtn)
        nav.addSubview(coinBtn)
        //: coinBtn.snp.makeConstraints { make in
        coinBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var picturesView: TalkingMatchResultPicturesView = {
    private lazy var picturesView: TextPicturesView = {
        //: let v = TalkingMatchResultPicturesView(frame: .zero)
        let v = TextPicturesView(frame: .zero)
        //: v.matchBackBlock = { [weak self] in
        v.matchBackBlock = { [weak self] in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: self.clickBackButtonAction()
            self.gapImageSend()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var showLastBtn: UIButton = {
    private lazy var showLastBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.outsideText(name: "btn_quick_back_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (String(str_voiceData) + String(str_clearText.suffix(6)) + "ck_ba" + String(str_qualityData.suffix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(showLastButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pointOfCountersection), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "icon_video_skip"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_pileData))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(gapImageSend), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(rowClick), for: .touchUpInside)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#9610FF")!.cgColor, UIColor.init(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: [UIColor(hex: (String(str_itemContent)))!.cgColor, UIColor(hex: (String(str_localMakeTitle) + str_addName.replacingOccurrences(of: "icon", with: "F")))!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.numberOfLines = 2
        btn.titleLabel?.numberOfLines = 2

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var showLastArr: [TalkingMatchResultModel] = {
    lazy var showLastArr: [TallyModelType] = //: return Array<TallyModelType>()
        .init()
    //: }()

    //: lazy var dzView: UIImageView = {
    lazy var dzView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.outsideText(name: "icon_coin_match_line")
        view.image = UIImage.outsideText(name: (String(str_roomName.suffix(5)) + "coin_ma" + String(str_rangeTitleValue)))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultViewController {
extension CoincideThen {
    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func gapImageSend() {
        //: if self.presentedViewController != nil {
        if self.presentedViewController != nil { // 可能有重置弹窗未消除的情况，许手动消除
            //: self.presentedViewController?.dismiss(animated: true)
            self.presentedViewController?.dismiss(animated: true)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 拨打视频通话socket
    //: @objc private func callButtonClick() {
    @objc private func rowClick() {
        //: var data: [String: Any] = ["matchId": self.currentModel.matchId,
        var data: [String: Any] = [String(bytes: str_sizeBetweenName.map{$0^129}, encoding: .utf8)!: self.currentModel.matchId,
                                   //: "source": self.currentModel.source,
                                   String(bytes: str_rawTitle, encoding: .utf8)!: self.currentModel.source,
                                   //: "type": self.currentModel.type,
                                   String(bytes: str_fireValue.map{$0^252}, encoding: .utf8)!: self.currentModel.type,
                                   //: "uid": self.currentModel.uid]
                                   (str_valueName.lowercased()): self.currentModel.uid]
        //: if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 && MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0, MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_modelValue.suffix(6)) + String(str_recordManagerValue.suffix(6))))
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_valueData.reversed(), encoding: .utf8)!: (str_roomTitle.replacingOccurrences(of: "with", with: "e") + "tCall"), String(bytes: str_ofTitle, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        SocketReactiveCompatible.shared.sendBeautyMoment(info: info)
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        SocketReactiveCompatible.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        SocketReactiveCompatible.shared.errorDelegate = self
    }

    /// 通知刷新余额
    //: @objc private func refreshCoin() {
    @objc private func sizeCoin() {
        //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
        TableReactiveCompatible.conversion { succeed, _, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! PathErrorTalkingButton
            //: coinBtn.setTitle(MeasurementAppManager.share.loginUserMode.mf_coin, for: .normal)
            coinBtn.setTitle(MeasurementAppManager.share.loginUserMode.mf_coin, for: .normal)
        }
    }

    /// 展示上一个视频速配结果
    //: @objc private func showLastButtonClick() {
    @objc private func pointOfCountersection() {
        //: showLastArr.removeLast()
        showLastArr.removeLast()
        //: refreshUI()
        television()
    }
}

// MARK: - SocketManagerMatchResultDelegate

//: extension TalkingMatchResultViewController: SocketManagerVideoMatchDelegate {
extension CoincideThen: ViewOpenObjectProtocol {
    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func videoEqual(data _: [String: Any]) {}

    /// 匹配成功，可以拨打通话（此处跳转特殊处理）
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func limit(data: [String: Any]) {
        //: var arrM = self.navigationController!.viewControllers
        var arrM = self.navigationController!.viewControllers
        //: for (index, vc) in self.navigationController!.viewControllers.enumerated() {
        for (index, vc) in self.navigationController!.viewControllers.enumerated() {
            //: if vc.isKind(of: TalkingMatchResultViewController.self) {
            if vc.isKind(of: CoincideThen.self) {
                //: arrM.remove(at: index)
                arrM.remove(at: index)
                //: break
                break
            }
        }
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.currentModel.uid
        newData[(str_valueName.lowercased())] = self.currentModel.uid
        //: let vc = TalkingVideoChatViewController()
        let vc = HumanActivityPartyDelegate()
        //: vc.chatModel = TalkingVideoChatModel.getVideoModel(info: newData, situation: .Start)
        vc.chatModel = ImageChatModel.dismissPrivacy(info: newData, situation: .Start)

        //: vc.hidesBottomBarWhenPushed = true
        vc.hidesBottomBarWhenPushed = true
        //: arrM.append(vc)
        arrM.append(vc)
        //: self.navigationController?.setViewControllers(arrM, animated: true)
        self.navigationController?.setViewControllers(arrM, animated: true)
    }
}

// MARK: - OfErrorDelegate

//: extension TalkingMatchResultViewController: TalkingSocketManagerErrorDelegate {
extension CoincideThen: OfErrorDelegate {
    /// socket收到失败消息
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func mixUp(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_tableValue.suffix(9)) + String(str_contentData.prefix(4))) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.episode(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.CallEnd.rawValue {
            if errorNo == StarringStrideable.CallEnd.rawValue {
                //: clickBackButtonAction()
                gapImageSend()
                //: } else if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            } else if errorNo == StarringStrideable.MoneyLack.rawValue {
                //: guard MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue else { return }
                //: LimitPushManager.share.func__jumpToWebRecharge(sufficient: false)
                LimitPushManager.share.billParams(sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMatchResultViewController {
extension CoincideThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func confinementRow() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.addSubview(navView)
        backView.addSubview(navView)
        //: backView.addSubview(picturesView)
        backView.addSubview(picturesView)
        //: backView.addSubview(showLastBtn)
        backView.addSubview(showLastBtn)
        //: backView.addSubview(skipBtn)
        backView.addSubview(skipBtn)
        //: backView.addSubview(callBtn)
        backView.addSubview(callBtn)
        //: callBtn.addSubview(dzView)
        callBtn.addSubview(dzView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupDown() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(a_itemTitle)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-(kDeviceSafeBottomHeight+36))
            make.bottom.equalTo(-(a_agentData + 36))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(69)
            make.height.equalTo(69)
            //: make.width.equalTo(140)
            make.width.equalTo(140)
        }

        //: picturesView.snp.makeConstraints { make in
        picturesView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.trailing.equalTo(-22)
            make.trailing.equalTo(-22)
            //: make.bottom.equalTo(callBtn.snp.top).offset(-32)
            make.bottom.equalTo(callBtn.snp.top).offset(-32)
        }
        //: showLastBtn.snp.makeConstraints { make in
        showLastBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(CGSize(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: dzView.snp.makeConstraints { make in
        dzView.snp.makeConstraints { make in
            //: make.leading.equalTo(146)
            make.leading.equalTo(146)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(8)
            make.height.equalTo(8)
            //: make.width.equalTo(42)
            make.width.equalTo(42)
        }
        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(callBtn.snp.trailing).offset(21)
            make.leading.equalTo(callBtn.snp.trailing).offset(21)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func television() {
        //: if showLastArr.count > 0 {
        if showLastArr.count > 0 { // 最后一个是最新数据
            //: currentModel = showLastArr.last!
            currentModel = showLastArr.last!
        }
        //: setPriceBtn()
        mislay()
        //: picturesView.updatePicturesView(model: currentModel)
        picturesView.tooModel(model: currentModel)
        //: picturesView.matchPlayVideoBlock = { [weak self] (videoUrl) in
        picturesView.matchPlayVideoBlock = { [weak self] videoUrl in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoUrl)
            let vc = LargePlayerDelegate(videoPath: videoUrl)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.colorController()?.navigationController?.pushViewController(vc, animated: true)
        }

        //: showLastBtn.isHidden = (showLastArr.count >= 2) ? false:true
        showLastBtn.isHidden = (showLastArr.count >= 2) ? false : true

        // 审核模式隐藏金币
        //: if MeasurementAppManager.share.appStatus != AppSkinStatus.normal.rawValue {
        if MeasurementAppManager.share.appStatus != LabCustomReflectable.normal.rawValue {
            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! PathErrorTalkingButton
            //: coinBtn.isHidden = true
            coinBtn.isHidden = true
            //: setPriceBtn()
            mislay()
        }
    }

    //: func setPriceBtn() {
    func mislay() {
        //: let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: MeasurementAppManager.share.loginUserMode.freeCallTimes)
        let attrString = String.makeFee(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: MeasurementAppManager.share.loginUserMode.freeCallTimes)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: callBtn.setAttributedTitle(attrString, for: .normal)
        callBtn.setAttributedTitle(attrString, for: .normal)
    }
}
