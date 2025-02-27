
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_numberText:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_window_verification" :*/
fileprivate let str_modelData:[Character] = ["i","c","o","n","_","w","i","n","d","o","w","_","v","e","r","i","f","i","c","a","t","i","o","n"]

/*: "Go to certify" :*/
fileprivate let str_modeName:[Character] = ["G"]
fileprivate let str_toValue:String = "o to time model else size"

/*: "btn_me_program_photo_delete" :*/
fileprivate let str_backgroundValue:[Character] = ["b","t","n","_","m","e","_","p"]
fileprivate let str_startModeValue:String = "rawakegr"
fileprivate let str_sourceContent:String = "false thought pull thought viewoto_"

/*: "Authentication is under reviewing" :*/
fileprivate let str_equalName:[UInt8] = [0x41,0x75,0x74,0x68,0x65,0x6e,0x74,0x69,0x63,0x61,0x74,0x69,0x6f,0x6e,0x20,0x69,0x73,0x20,0x75,0x6e,0x64,0x65,0x72,0x20,0x72,0x65,0x76,0x69,0x65,0x77,0x69,0x6e,0x67]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MeasurementUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationPopUpView: UIView {
class MeasurementUpView: UIView {
    var upImageView: UIImageView?

    //: var popView: MeasurementThen?
    var popView: MeasurementThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.duringSetup()
        //: self.setupSubViewsConstraint()
        self.requestConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_numberText, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

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

    //: private lazy var backIcon: UIImageView = {
    private lazy var backIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.setUrlImage(urlStr: MeasurementAppManager.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.outsideText(name: "icon_window_verification"))
        imag.posit(urlStr: MeasurementAppManager.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.outsideText(name: (String(str_modelData))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Go to certify".localized, for: .normal)
        btn.setTitle((String(str_modeName) + String(str_toValue.prefix(5)) + "certify").localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 16)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(mopUpOn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.outsideText(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_backgroundValue) + str_startModeValue.replacingOccurrences(of: "awake", with: "o") + "am_ph" + String(str_sourceContent.suffix(4)) + "delete")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(throughAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationPopUpView {
extension MeasurementUpView {
    //: @objc private func finishBtnClick() {
    @objc private func mopUpOn() {
        //: dismiss()
        sendFrom()
        //: if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.isSuccessed.rawValue {
            //: return
            return
                //: } else if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.unknown.rawValue {
            //: LimitPushManager.share.func__pushUserVerifyController(toast: nil)
            LimitPushManager.share.invitationTo(toast: nil)
            //: } else if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.isOnGoing.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Authentication is under reviewing".localized)
            self.episode(showMsg: String(bytes: str_equalName, encoding: .utf8)!.localized)
            //: } else {
        } else {
            //: LimitPushManager.share.func__pushUserVerifyController(toast: nil)
            LimitPushManager.share.invitationTo(toast: nil)
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func throughAction() {
        //: dismiss()
        sendFrom()
    }

    //: func show() {
    func priceRow() {
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
    @objc func sendFrom() {
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationPopUpView {
extension MeasurementUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func duringSetup() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(backIcon)
        contentView.addSubview(backIcon)
        //: backIcon.addSubview(finishBtn)
        backIcon.addSubview(finishBtn)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func requestConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(ScreenHeight/4)
            make.top.equalTo(a_formalValue / 4)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 319, height: 386+60))
            make.size.equalTo(CGSize(width: 319, height: 386 + 60))
        }

        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(386)
            make.height.equalTo(386)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-25)
            make.bottom.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.height.equalTo(203)
            make.height.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backIcon.snp.bottom).offset(30)
            make.top.equalTo(backIcon.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
