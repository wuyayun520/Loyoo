
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_roomData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "btn_live_more_beauty_nor" :*/
fileprivate let str_bottomModelValue:String = "btn_lhidden self else make text"
fileprivate let str_labelName:String = "model service string self pathive_"
fileprivate let str_viewTitle:String = "view if return string tomore_"
fileprivate let str_positionText:String = "view moment image blocky_nor"

/*: "Beautify" :*/
fileprivate let str_voiceData:[Character] = ["B","e","a"]
fileprivate let str_frameText:[Character] = ["u","t","i","f","y"]

/*: "btn_live_more_switch_nor" :*/
fileprivate let str_toData:String = "btn_liview model"
fileprivate let str_hiddenValue:String = "like model view returne_swit"

/*: "Switch" :*/
fileprivate let str_pageData:String = "touch modelSwitch"

/*: "btn_live_more_stop_nor" :*/
fileprivate let str_finishData:String = "btn_livmake in else view"
fileprivate let str_equalTitle:String = "location model labele_more"
fileprivate let str_cryData:String = "size action as to_nor"

/*: "Stop Live" :*/
fileprivate let str_viewValue:[Character] = ["S"]
fileprivate let str_imageName:[Character] = ["t","o","p"," ","L","i","v","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableMoreView.swift
//  AbroadTalking
//
//  Created by young on 2023/7/11.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomMoreView: UIView {
class TableMoreView: UIView {
    var viewIconImageView: UIImageView?

    //: private let contentV_H = (104+kDeviceSafeBottomHeight)
    private let contentV_H = (104 + a_agentData)
    //: private let beautifySettingView_H = (258+kDeviceSafeBottomHeight+50)
    private let beautifySettingView_H = (258 + a_agentData + 50)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupWithinTop()
        //: setupSubViewsConstraint()
        seek()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_roomData, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dismissDetail), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 0
        v.spacing = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var beautifyBtn: TalkingButton = {
    private lazy var beautifyBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton()
        let btn = PathErrorTalkingButton()
        btn.setImage(UIImage.outsideText(name: "btn_live_more_beauty_nor"), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .thoughtImage(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.complexion(), for: .normal)
        //: btn.setTitle("Beautify".localized, for: .normal)
        btn.setTitle((String(str_voiceData) + String(str_frameText)).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(beautifyButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(goOut), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var switchBtn: TalkingButton = {
    private lazy var switchBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton()
        let btn = PathErrorTalkingButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_live_more_switch_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_toData.prefix(6)) + "ve_mor" + String(str_hiddenValue.suffix(6)) + "ch_nor")), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .thoughtImage(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.complexion(), for: .normal)
        //: btn.setTitle("Switch".localized, for: .normal)
        btn.setTitle((String(str_pageData.suffix(6))).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(switchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tableRelease), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stopBtn: TalkingButton = {
    private lazy var stopBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton()
        let btn = PathErrorTalkingButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_live_more_stop_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_finishData.prefix(7)) + String(str_equalTitle.suffix(6)) + "_stop" + String(str_cryData.suffix(4)))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .thoughtImage(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.complexion(), for: .normal)
        //: btn.setTitle("Stop Live".localized, for: .normal)
        btn.setTitle((String(str_viewValue) + String(str_imageName)).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(stopLiveButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(animal), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 美颜视图
    //: private lazy var beautifyView: STBeautyAdjustView = {
    private lazy var beautifyView: STBeautyAdjustView = {
        //: let view = STBeautyAdjustView.init(frame: CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: beautifySettingView_H))
        let view = STBeautyAdjustView(frame: CGRect(x: 0, y: a_formalValue, width: a_blockValue, height: beautifySettingView_H))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveRoomMoreView {
extension TableMoreView {
    /// 停止直播
    //: private func req_stopLive() {
    private func smallItem() {
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

// MARK: - Event

//: extension TalkingLiveRoomMoreView {
extension TableMoreView {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func dismissDetail() {
        //: dismiss()
        addOff()
    }

    /// 美颜按钮
    //: @objc private func beautifyButtonClick() {
    @objc private func goOut() {
        //: self.contentView.isHidden = true
        self.contentView.isHidden = true
        //: self.beautifyView.isHidden = false
        self.beautifyView.isHidden = false
        //: self.beautifyView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: beautifySettingView_H)
        self.beautifyView.frame = CGRect(x: 0, y: a_formalValue, width: a_blockValue, height: beautifySettingView_H)
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.beautifyView.frame.origin.y -= self.beautifyView.height
            self.beautifyView.frame.origin.y -= self.beautifyView.height
        }
    }

    /// 切换摄像头按钮
    //: @objc private func switchButtonClick() {
    @objc private func tableRelease() {
        //: dismiss()
        addOff()
        //: self.contentView.isHidden = true
        self.contentView.isHidden = true
        //: TalkingLiveManager.shared().switchTRTCCamer(front: switchBtn.isSelected)
        PropertyMManageressPushListener.giftShared().libraryNext(front: switchBtn.isSelected)
        //: switchBtn.isSelected = !switchBtn.isSelected
        switchBtn.isSelected = !switchBtn.isSelected
    }

    /// 停止直播按钮
    //: @objc private func stopLiveButtonClick() {
    @objc private func animal() {
        //: dismiss()
        addOff()
        //: req_stopLive()
        smallItem()
    }
}

// MARK: - 展示/隐藏视图

//: extension TalkingLiveRoomMoreView {
extension TableMoreView {
    /// 展示视图
    //: func showView() {
    func observerView() {
        //: currentViewController()?.view.addSubview(self)
        colorController()?.view.addSubview(self)
        //: self.contentView.isHidden = false
        self.contentView.isHidden = false
        //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: contentV_H)
        self.contentView.frame = CGRect(x: 0, y: a_formalValue, width: a_blockValue, height: contentV_H)
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y -= self.contentView.height
            self.contentView.frame.origin.y -= self.contentView.height
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func addOff() {
        //: if self.beautifyView.isHidden == false {
        if self.beautifyView.isHidden == false {
            // 保存美颜设置
            //: STFilterCacheCost.share.store()
            STFilterCacheCost.share.store()

            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.beautifyView.frame.origin.y += self.beautifyView.height
                self.beautifyView.frame.origin.y += self.beautifyView.height
                //: } completion: { finish in
            } completion: { _ in
                //: self.beautifyView.isHidden = true
                self.beautifyView.isHidden = true
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }

            //: } else {
        } else {
            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.contentView.frame.origin.y += self.contentView.height
                self.contentView.frame.origin.y += self.contentView.height
                //: } completion: { finish in
            } completion: { _ in
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomMoreView {
extension TableMoreView {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupWithinTop() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(beautifyBtn)
        stackView.addArrangedSubview(beautifyBtn)
        //: stackView.addArrangedSubview(switchBtn)
        stackView.addArrangedSubview(switchBtn)
        //: stackView.addArrangedSubview(stopBtn)
        stackView.addArrangedSubview(stopBtn)
        //: addSubview(beautifyView)
        addSubview(beautifyView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func seek() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
        }
        //: let width = ScreenWidth/4
        let width = a_blockValue / 4
        //: beautifyBtn.snp.makeConstraints { make in
        beautifyBtn.snp.makeConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
            //: make.height.equalTo(contentV_H-kDeviceSafeBottomHeight)
            make.height.equalTo(contentV_H - a_agentData)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(beautifyBtn)
            make.width.height.equalTo(beautifyBtn)
        }
        //: stopBtn.snp.makeConstraints { make in
        stopBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(beautifyBtn)
            make.width.height.equalTo(beautifyBtn)
        }
    }
}
