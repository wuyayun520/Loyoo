
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_indexData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "#9256FF" :*/
fileprivate let str_addMediumData:[Character] = ["#","9","2","5","6","F","F"]

/*: "bg_kb_tc" :*/
fileprivate let str_insidePositionName:[Character] = ["b","g","_","k","b"]
fileprivate let str_labelName:[Character] = ["_","t","c"]

/*: "Start Live to work!" :*/
fileprivate let str_keyText:String = "Starrandom genre thought"
fileprivate let str_positionData:String = "e to photo color"
fileprivate let str_backgroundValue:[Character] = ["w","o","r","k","!"]

/*: "Start Live" :*/
fileprivate let str_targetData:String = "Stform to case frame background"
fileprivate let str_buttonBottomData:String = "pi content any for trueart Live"

/*: "#9610FF" :*/
fileprivate let str_managerName:String = "label if image origin the#9610FF"

/*: "#8566FF" :*/
fileprivate let str_productText:String = "#8566FFelse in"

/*: "btn_intimate_close" :*/
fileprivate let str_maxValue:String = "self pricebtn_"
fileprivate let str_ageName:String = "left view let makete_c"
fileprivate let str_pathValue:String = "LOSE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PhysicalObjectUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/8/14.
//

//: import UIKit
import UIKit

//: class TalkingLiveTipsPopUpView: UIView {
class PhysicalObjectUpView: UIView {
    var breadboxImageView: UIImageView?
    //: var endBlock: (() -> Void)?
    var endBlock: (() -> Void)?

    //: var popView: MeasurementThen?
    var popView: MeasurementThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        showStart()
        //: setupSubViewsConstraint()
        fact()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_indexData, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.borderColor = UIColor(hex: "#9256FF")?.cgColor
        view.layer.borderColor = UIColor(hex: (String(str_addMediumData)))?.cgColor
        //: view.layer.borderWidth = 8
        view.layer.borderWidth = 8
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.outsideText(name: "bg_kb_tc")
        iamg.image = UIImage.outsideText(name: (String(str_insidePositionName) + String(str_labelName)))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLabel: UILabel = {
    private lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.blockOf()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 19)
        lab.font = UIFont.thoughtImage(type: .Medium, fontSize: 19)
        //: lab.text = "Start Live to work!".localized
        lab.text = (String(str_keyText.prefix(4)) + "t Liv" + String(str_positionData.prefix(5)) + String(str_backgroundValue)).localized
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var startLiveBtn: UIButton = {
    private lazy var startLiveBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Start Live".localized, for: .normal)
        btn.setTitle((String(str_targetData.prefix(2)) + String(str_buttonBottomData.suffix(8))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: let colors = [UIColor(hex: "#9610FF")!.cgColor, UIColor(hex: "#8566FF")!.cgColor]
        let colors = [UIColor(hex: (String(str_managerName.suffix(7))))!.cgColor, UIColor(hex: (String(str_productText.prefix(7))))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: colors, size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(startLiveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(laterBack), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.outsideText(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_maxValue.suffix(4)) + "intima" + String(str_ageName.suffix(4)) + str_pathValue.lowercased())), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(itemTotal), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveTipsPopUpView {
extension PhysicalObjectUpView {
    /// 开始直播按钮点击事件
    //: @objc private func startLiveBtnClick() {
    @objc private func laterBack() {
        //: dismiss()
        maxDismiss()
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: a_clickTitle, object: nil)
    }

    /// 关闭按钮点击事件
    //: @objc private func closeBtnClick() {
    @objc private func itemTotal() {
        //: dismiss()
        maxDismiss()
    }

    //: func show() {
    func photoShow() {
        //: popView = MeasurementThen(frame: UIScreen.main.bounds)
        popView = MeasurementThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.anInit(view: self)
        //: popView?.showInView(view: ImageMacroDefine.getWindow())
        popView?.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc private func dismiss() {
    @objc private func maxDismiss() {
        //: endBlock?()
        endBlock?()
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingLiveTipsPopUpView {
extension PhysicalObjectUpView {
    /// 添加视图
    //: private func setupSubviews() {
    private func showStart() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(titleLabel)
        contentView.addSubview(titleLabel)
        //: contentView.addSubview(startLiveBtn)
        contentView.addSubview(startLiveBtn)
        //: addSubview(closeBtn)
        addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func fact() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.centerY.equalToSuperview().offset(-actualWidth(w: 30))
            make.centerY.equalToSuperview().offset(-actualWidth(w: 30))
            //: make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 263)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 263)))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: 28))
            make.top.equalTo(actualWidth(w: 28))
            //: make.size.equalTo(CGSize(width: actualWidth(w: 100), height: actualWidth(w: 100)))
            make.size.equalTo(CGSize(width: actualWidth(w: 100), height: actualWidth(w: 100)))
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(actualWidth(w: 10))
            make.top.equalTo(topIcon.snp.bottom).offset(actualWidth(w: 10))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }

        //: startLiveBtn.snp.makeConstraints { make in
        startLiveBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualWidth(w: 28))
            make.bottom.equalTo(-actualWidth(w: 28))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
