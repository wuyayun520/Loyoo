
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_inputLabIndexName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "btn_video_minimize" :*/
fileprivate let str_lessName:[Character] = ["b","t","n","_","v","i","d","e","o","_","m","i"]
fileprivate let str_keyValue:String = "NIMIZE"

/*: "btn_video_drop_nor" :*/
fileprivate let str_conversationData:String = "btn_viview equal user center cell"
fileprivate let str_makeAddName:String = "rop_norand let play"

/*: "btn_video_turn_nor" :*/
fileprivate let str_frameName:[Character] = ["b","t","n","_","v","i","d"]
fileprivate let str_tagIdentityText:String = "height let targeteo_tu"

/*: "btn_video_turn_pre" :*/
fileprivate let str_messageName:[Character] = ["b","t","n","_","v","i","d","e","o"]
fileprivate let str_extraData:String = "equal screen true other table_t"
fileprivate let str_atTitle:String = "urn_precorner make self"

/*: "Switch" :*/
fileprivate let str_toData:String = "social"
fileprivate let str_userName:String = "wicenterh"

/*: "btn_video_start_nor" :*/
fileprivate let str_inputData:[Character] = ["b","t","n","_","v","i","d","e","o","_","s","t","a","r","t","_","n","o","r"]

/*: "btn_video_start_pre" :*/
fileprivate let str_placeTitle:[Character] = ["b","t","n","_","v","i"]
fileprivate let str_firstTitleData:String = "deo_stafield primary else height"
fileprivate let str_liteValue:String = "rt_preif image class add"

/*: "Camera On" :*/
fileprivate let str_whiteValue:String = "text equal viewCamera"
fileprivate let str_shareName:[Character] = [" ","O","n"]

/*: "00:00" :*/
fileprivate let str_sectionValue:[Character] = ["0","0",":","0","0"]

/*: "Camera must be on" :*/
fileprivate let str_editOutsideContent:[Character] = ["C","a","m","e","r","a"," ","m","u","s","t"," ","b","e"," ","o","n"]

/*: "Camera Off" :*/
fileprivate let str_fatalData:[Character] = ["C","a","m","e","r","a"," ","O","f"]
fileprivate let str_sharedAppTitle:String = "video"

/*: "%02i:%02i" :*/
fileprivate let str_sizeName:[Character] = ["%","0","2","i",":","%","0","2"]
fileprivate let str_modelTimeData:String = "frame"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CardinalView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoInitivCallView: UIView {
class CardinalView: UIView {
    var itemMakeImageView: UIImageView?

    //: weak var delegate: Talking1v1VideoInteractionViewDelegate?
    weak var delegate: LaterObjectProtocol?
    //: private var chatModel = TalkingVideoChatModel()
    private var chatModel = ImageChatModel() // 引用类型，整个视频通话共用同一个model
    //: var durationTime = 0.0
    var durationTime = 0.0 // 视频时长
    //: private var countTimer: Timer?
    private var countTimer: Timer? // 通话时间定时器

    //: init(frame: CGRect, chatModel: TalkingVideoChatModel?) {
    init(frame: CGRect, chatModel: ImageChatModel?) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        actionInfo()
        //: setupSubViewsConstraint()
        earlyConstraint()
        //: if chatModel != nil {
        if chatModel != nil {
            //: self.chatModel = chatModel!
            self.chatModel = chatModel!
        }
        //: showViewsViaStage()
        numberernational()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_inputLabIndexName, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroryTimer()
        editRemove()
        //: invalidateIdleTimer()
        picAtColor()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 点击展示/隐藏交互按钮
    //: private lazy var touchHidenBtn: UIButton = {
    private lazy var touchHidenBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(changeInteractionShowState), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bill), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 最小化按钮
    //: private lazy var minimizeBtn: UIButton = {
    private lazy var minimizeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_video_minimize"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_lessName) + str_keyValue.lowercased())), for: .normal)
        //: btn.addTarget(self, action: #selector(minimizeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(showPriceClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 挂断/取消 按钮
    //: private lazy var hangupBtn: UIButton = {
    private lazy var hangupBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_conversationData.prefix(6)) + "deo_d" + String(str_makeAddName.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(hangupButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(localLab), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 旋转摄像头按钮
    //: private lazy var rotateCameraBtn: UIButton = {
    private lazy var rotateCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_video_turn_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_frameName) + String(str_tagIdentityText.suffix(5)) + "rn_nor")), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_video_turn_pre"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_messageName) + String(str_extraData.suffix(2)) + String(str_atTitle.prefix(7)))), for: .selected)
        //: btn.addTarget(self, action: #selector(rotateCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(spectralColor), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rotateCameraDesLab: UILabel = {
    private lazy var rotateCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab.font = UIFont.drogueSize(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Switch".localized
        lab.text = (str_toData.replacingOccurrences(of: "social", with: "S") + str_userName.replacingOccurrences(of: "center", with: "tc")).localized
        //: return lab
        return lab
        //: }()
    }()

    // 开启/关闭摄像头按钮
    //: private lazy var openCameraBtn: UIButton = {
    private lazy var openCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_video_start_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_inputData))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_video_start_pre"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_placeTitle) + String(str_firstTitleData.prefix(7)) + String(str_liteValue.prefix(6)))), for: .selected)
        //: btn.addTarget(self, action: #selector(openCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sendHoldfast), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var openCameraDesLab: UILabel = {
    private lazy var openCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab.font = UIFont.drogueSize(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Camera On".localized
        lab.text = (String(str_whiteValue.suffix(6)) + String(str_shareName)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 18)
        lab.font = UIFont.methodPlay(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoInitivCallView {
extension CardinalView {
    /// 展示视图状态
    //: private func showViewsViaStage() {
    private func numberernational() {
        //: minimizeBtn.isHidden = false
        minimizeBtn.isHidden = false
        //: hangupBtn.isHidden = false
        hangupBtn.isHidden = false
        //: rotateCameraBtn.isHidden = false
        rotateCameraBtn.isHidden = false
        //: rotateCameraDesLab.isHidden = false
        rotateCameraDesLab.isHidden = false
        //: openCameraBtn.isHidden = false
        openCameraBtn.isHidden = false
        //: openCameraDesLab.isHidden = false
        openCameraDesLab.isHidden = false
        //: touchHidenBtn.isEnabled = true
        touchHidenBtn.isEnabled = true
        //: timeLab.isHidden = false
        timeLab.isHidden = false
        //: self.timeLab.text = "00:00"
        self.timeLab.text = (String(str_sectionValue))
        //: startTalkCount()
        tapCount()
        //: touchHiddenTimer()
        hiddenTime()
        //: updateLayout()
        byBlock()
    }

    /// 最小化按钮事件
    //: @objc private func minimizeButtonClick() {
    @objc private func showPriceClick() {
        //: self.delegate?.interactionView_shouldDisplayMiniWindow()
        self.delegate?.skirt()
    }

    /// 添加视频通话画面窗口
    /// - Parameter view: 视频画面窗口
    //: func addWindowView(view: UIView) {
    func pulverise(view: UIView) {
        //: self.addSubview(view)
        self.addSubview(view)
    }

    /// 挂断按钮事件
    //: @objc private func hangupButtonClick() {
    @objc private func localLab() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoCancelButton)
        a_textTurnName.photoOf(eventID: a_netUserTitle)
        //: closeViewClick()
        carryThrough()
    }

    //: func closeViewClick() {
    func carryThrough() {
        //: self.destroryTimer()
        self.editRemove()
        //: self.delegate?.interactionView_shouldEndCall()
        self.delegate?.dub()
    }

    /// 接听按钮事件
    //: @objc private func acceptButtonClick() {
    @objc private func titleBirth() {
        //: self.delegate?.interactionView_shouldAcceptCall()
        self.delegate?.pastModel()
    }

    /// 关闭摄像头接听视频通话事件
    //: @objc private func acceptTurnOffCameraButtonClick() {
    @objc private func acknowledgeImageMove() {
        //: acceptButtonClick()
        titleBirth()
        //: self.openCameraBtn.isSelected = false
        self.openCameraBtn.isSelected = false
        //: openCameraButtonClick()
        sendHoldfast()
    }

    /// 打开摄像头接听视频通话事件
    //: @objc private func acceptOpenCameraButtonClick() {
    @objc private func groupClick() {
        //: acceptButtonClick()
        titleBirth()
        //: self.openCameraBtn.isSelected = true
        self.openCameraBtn.isSelected = true
        //: openCameraButtonClick()
        sendHoldfast()
    }

    /// 旋转摄像头事件
    //: @objc private func rotateCameraButtonClick() {
    @objc private func spectralColor() {
        //: if SenseTime_Use == false, self.openCameraBtn.isSelected == true {
        if a_keyPostText == false, self.openCameraBtn.isSelected == true { // 腾讯美颜 && 摄像头关闭时
            //: self.func__showStatusBarErrorMsg(showMsg: "Camera must be on".localized)
            self.episode(showMsg: (String(str_editOutsideContent)).localized)
            //: return
            return
        }
        //: self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        //: self.delegate?.interactionView_shouldChangeCamera(isFront: !self.rotateCameraBtn.isSelected)
        self.delegate?.blockDown(isFront: !self.rotateCameraBtn.isSelected)
    }

    /// 是否禁用摄像头事件
    //: @objc private func openCameraButtonClick() {
    @objc private func sendHoldfast() {
        //: self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        //: self.openCameraDesLab.text = self.openCameraBtn.isSelected ? "Camera Off".localized:"Camera On".localized
        self.openCameraDesLab.text = self.openCameraBtn.isSelected ? (String(str_fatalData) + str_sharedAppTitle.replacingOccurrences(of: "video", with: "f")).localized : (String(str_whiteValue.suffix(6)) + String(str_shareName)).localized
        //: self.delegate?.interactionView_shouldForbiddenCamera(forbidden: self.openCameraBtn.isSelected)
        self.delegate?.holderMatch(forbidden: self.openCameraBtn.isSelected)
    }

    /// 点击展示/隐藏通话中的按钮
    //: @objc private func changeInteractionShowState() {
    @objc private func bill() {
        //: let isHidden = !rotateCameraBtn.isHidden
        let isHidden = !rotateCameraBtn.isHidden
        //: minimizeBtn.isHidden = isHidden
        minimizeBtn.isHidden = isHidden
        //: rotateCameraBtn.isHidden = isHidden
        rotateCameraBtn.isHidden = isHidden
        //: rotateCameraDesLab.isHidden = isHidden
        rotateCameraDesLab.isHidden = isHidden
        //: openCameraBtn.isHidden = isHidden
        openCameraBtn.isHidden = isHidden
        //: openCameraDesLab.isHidden = isHidden
        openCameraDesLab.isHidden = isHidden

        //: hangupBtn.isHidden = isHidden
        hangupBtn.isHidden = isHidden
        //: timeLab.isHidden = isHidden
        timeLab.isHidden = isHidden

        //: if isHidden {
        if isHidden {
            //: invalidateIdleTimer()
            picAtColor()
            //: } else {
        } else {
            //: touchHiddenTimer()
            hiddenTime()
        }
    }

    //: private func destroryTimer() {
    private func editRemove() {
        //: if countTimer != nil {
        if countTimer != nil {
            //: countTimer?.invalidate()
            countTimer?.invalidate()
            //: countTimer = nil
            countTimer = nil
        }
    }
}

// MARK: - 通话计时器

//: extension TalkingVideoInitivCallView {
extension CardinalView {
    /// 开始通话计时
    //: private func startTalkCount() {
    private func tapCount() {
        //: guard self.countTimer == nil else { return }
        guard self.countTimer == nil else { return }

        //: self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: {[weak self] timer in
        self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.durationTime <= 0 {
            if self.durationTime <= 0 {
                //: self.closeViewClick()
                self.carryThrough()
            }
            //: self.changeTalkTime()
            self.geneticMutation()
            //: }, repeats: true)
        }, repeats: true)
    }

    // 展示通话时间
    //: private func changeTalkTime() {
    private func geneticMutation() {
        //: let duration = self.durationTime
        let duration = self.durationTime
        //: let min = floor(duration / 60)
        let min = floor(duration / 60)
        //: let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        //: timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: self.durationTime -= 1
        self.durationTime -= 1
    }
}

// MARK: - 【通话中】触屏隐藏交互按钮逻辑

//: extension TalkingVideoInitivCallView {
extension CardinalView {
    /// 触摸隐藏开启延时
    //: private func touchHiddenTimer() {
    private func hiddenTime() {
        //: invalidateIdleTimer()
        picAtColor()
        //: self.perform(#selector(hideInteractionView), afterDelay: 10)
        self.perform(#selector(giftStar), afterDelay: 10)
    }

    /// 销毁延迟
    //: private func invalidateIdleTimer() {
    private func picAtColor() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(hideInteractionView), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(giftStar), object: nil)
    }

    /// 延时到时隐藏视图
    //: @objc private func hideInteractionView() {
    @objc private func giftStar() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.changeInteractionShowState()
            self.bill()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallView {
extension CardinalView {
    /// 添加视图
    //: private func setupSubviews() {
    private func actionInfo() {
        //: self.addSubview(touchHidenBtn)
        self.addSubview(touchHidenBtn)
        //: self.addSubview(minimizeBtn)
        self.addSubview(minimizeBtn)
        //: self.addSubview(hangupBtn)
        self.addSubview(hangupBtn)
        //: self.addSubview(rotateCameraBtn)
        self.addSubview(rotateCameraBtn)
        //: self.addSubview(rotateCameraDesLab)
        self.addSubview(rotateCameraDesLab)
        //: self.addSubview(openCameraBtn)
        self.addSubview(openCameraBtn)
        //: self.addSubview(openCameraDesLab)
        self.addSubview(openCameraDesLab)
        //: self.addSubview(timeLab)
        self.addSubview(timeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func earlyConstraint() {
        //: touchHidenBtn.snp.makeConstraints { make in
        touchHidenBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: minimizeBtn.snp.makeConstraints { make in
        minimizeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(a_limitRecordScreenName + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.width.height.equalTo(actualWidth(w: 42))
            make.width.height.equalTo(actualWidth(w: 42))
        }
        //: hangupBtn.snp.makeConstraints { make in
        hangupBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-a_agentData - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
        //: rotateCameraBtn.snp.makeConstraints { make in
        rotateCameraBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
            //: make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
            make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
        }
        //: rotateCameraDesLab.snp.makeConstraints { make in
        rotateCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(rotateCameraBtn)
            make.centerX.equalTo(rotateCameraBtn)
            //: make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
            make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
        }
        //: openCameraBtn.snp.makeConstraints { make in
        openCameraBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
            //: make.bottom.size.equalTo(rotateCameraBtn)
            make.bottom.size.equalTo(rotateCameraBtn)
        }
        //: openCameraDesLab.snp.makeConstraints { make in
        openCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(openCameraBtn)
            make.centerX.equalTo(openCameraBtn)
            //: make.top.equalTo(rotateCameraDesLab)
            make.top.equalTo(rotateCameraDesLab)
        }

        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+20)
            make.top.equalTo(a_limitRecordScreenName + 20)
        }
    }

    /// 更新约束
    //: private func updateLayout() {
    private func byBlock() {
        //: rotateCameraBtn.snp.updateConstraints { make in
        rotateCameraBtn.snp.updateConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
        }
        //: openCameraBtn.snp.updateConstraints { make in
        openCameraBtn.snp.updateConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
        }
        //: hangupBtn.snp.remakeConstraints { make in
        hangupBtn.snp.remakeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-a_agentData - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
    }
}
