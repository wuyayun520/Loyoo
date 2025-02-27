
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_leadingLabelName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "btn_live_nor" :*/
fileprivate let str_contentFromTitle:String = "invite let rawbtn_live_"
fileprivate let str_coverContent:String = "naddr"

/*: "Live" :*/
fileprivate let str_statusRequestValue:String = "string from text responseLive"

/*: "btn_party_nor" :*/
fileprivate let str_fileExampleOfContent:[Character] = ["b","t","n","_","p","a","r","t","y","_","n","o","r"]

/*: "Party" :*/
fileprivate let str_colorText:String = "Partyname source text"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HungErrorThen.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/9/20.
//

//: import UIKit
import UIKit

//: class TalkingTabLiveView: UIView {
class HungErrorThen: UIView {
    var sunnaImageView: UIImageView?
    //: private var popView: MeasurementThen?
    private var popView: MeasurementThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupOf()
        //: setupSubViewsConstraint()
        numbereraction()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_leadingLabelName, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.layer.cornerRadius = 24
        view.layer.cornerRadius = 24
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_live_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_contentFromTitle.suffix(9)) + str_coverContent.replacingOccurrences(of: "add", with: "o"))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(equalDown), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.blockOf()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.methodPlay(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Live".localized
        lab.text = (String(str_statusRequestValue.suffix(4))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var partyBtn: UIButton = {
    private lazy var partyBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_party_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_fileExampleOfContent))), for: .normal)
        //: btn.addTarget(self, action: #selector(partyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(eraseName), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var partyLab: UILabel = {
    private lazy var partyLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.blockOf()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.methodPlay(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Party".localized
        lab.text = (String(str_colorText.prefix(5))).localized
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabLiveView {
extension HungErrorThen {
    /// 展示视图
    //: func show() {
    func imageBackground() {
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: popView = MeasurementThen(frame: UIScreen.main.bounds)
        popView = MeasurementThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.anInit(view: self)
        //: popView?.showInView(view: ImageMacroDefine.getWindow())
        popView?.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
    }

    /// 隐藏视图
    //: func dismiss() {
    func uprightAll() {
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }

    /// 直播按钮事件
    //: @objc private func liveButtonAction() {
    @objc private func equalDown() {
        //: dismiss()
        uprightAll()
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: a_clickTitle, object: nil)
    }

    /// 语聊房按钮事件
    //: @objc private func partyButtonAction() {
    @objc private func eraseName() {
        //: dismiss()
        uprightAll()
        //: LimitPushManager.share.func_pushToVoiceRoomVC()
        LimitPushManager.share.sizeIn()
    }
}

// MARK: - Layout

//: extension TalkingTabLiveView {
extension HungErrorThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupOf() {
        //: addSubview(backView)
        addSubview(backView)
        //: backView.addSubview(liveBtn)
        backView.addSubview(liveBtn)
        //: backView.addSubview(liveLab)
        backView.addSubview(liveLab)
        //: backView.addSubview(partyBtn)
        backView.addSubview(partyBtn)
        //: backView.addSubview(partyLab)
        backView.addSubview(partyLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func numbereraction() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(163 + kDeviceSafeBottomHeight)
            make.height.equalTo(163 + a_agentData)
        }

        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 32))
            make.top.equalTo(actualWidth(w: 32))
            //: make.leading.equalTo(actualWidth(w: 63))
            make.leading.equalTo(actualWidth(w: 63))
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalTo(liveBtn)
            make.centerX.equalTo(liveBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(a_blockValue / 2)
        }

        //: partyBtn.snp.makeConstraints { make in
        partyBtn.snp.makeConstraints { make in
            //: make.top.width.height.equalTo(liveBtn)
            make.top.width.height.equalTo(liveBtn)
            //: make.trailing.equalTo(-actualWidth(w: 63))
            make.trailing.equalTo(-actualWidth(w: 63))
        }
        //: partyLab.snp.makeConstraints { make in
        partyLab.snp.makeConstraints { make in
            //: make.top.equalTo(partyBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(partyBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalTo(partyBtn)
            make.centerX.equalTo(partyBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(a_blockValue / 2)
        }
    }
}
