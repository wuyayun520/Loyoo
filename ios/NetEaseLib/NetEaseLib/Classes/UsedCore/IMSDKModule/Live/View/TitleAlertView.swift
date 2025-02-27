
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_waitName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_cover_toast" :*/
fileprivate let str_clickName:String = "ICON"
fileprivate let str_viewValue:String = "_toastself view view kit"

/*: "OK" :*/
fileprivate let str_availableContent:String = "Ointimate"

/*: "Not for now" :*/
fileprivate let str_giftData:[Character] = ["N","o","t"," ","f","o","r"," ","n","o","w"]

/*: "Turn on" :*/
fileprivate let str_sexName:String = "Turn onview since model player"

/*: "Live Certification off" :*/
fileprivate let str_leadingTargetValue:[Character] = ["L","i","v","e"," ","C","e","r","t","i","f","i","c","a","t","i","o","n"," "]
fileprivate let str_norName:String = "oposition"

/*: "Please make sure your face is always in the video screen" :*/
fileprivate let str_indexContent:[UInt8] = [0x50,0x6c,0x65,0x61,0x73,0x65,0x20,0x6d,0x61,0x6b,0x65,0x20,0x73,0x75,0x72,0x65,0x20,0x79,0x6f,0x75,0x72,0x20,0x66,0x61,0x63,0x65,0x20,0x69,0x73,0x20,0x61,0x6c,0x77,0x61,0x79,0x73,0x20,0x69,0x6e,0x20,0x74,0x68,0x65,0x20,0x76,0x69,0x64,0x65,0x6f,0x20,0x73,0x63,0x72,0x65,0x65,0x6e]

/*: "Current network unavailable" :*/
fileprivate let str_addData:String = "Cuplayer self value model"
fileprivate let str_numberData:[Character] = ["r","r","e","n","t"," ","n","e","t","w","o","r","k"," ","u","n","a","v","a","i","l","a","b","l","e"]

/*: "Live Reminder" :*/
fileprivate let str_scaleValue:String = "array private selfLive R"
fileprivate let str_centerTitle:String = "emindecontrol"

/*: "You haven't used your free video opportunity yet, talk to someone first!" :*/
fileprivate let str_makeName:[UInt8] = [0xcf,0xf9,0xe3,0xb6,0xfe,0xf7,0xe0,0xf3,0xf8,0xb1,0xe2,0xb6,0xe3,0xe5,0xf3,0xf2,0xb6,0xef,0xf9,0xe3,0xe4,0xb6,0xf0,0xe4,0xf3,0xf3,0xb6,0xe0,0xff,0xf2,0xf3,0xf9,0xb6,0xf9,0xe6,0xe6,0xf9,0xe4,0xe2,0xe3,0xf8,0xff,0xe2,0xef,0xb6,0xef,0xf3,0xe2,0xba,0xb6,0xe2,0xf7,0xfa,0xfd,0xb6,0xe2,0xf9,0xb6,0xe5,0xf9,0xfb,0xf3,0xf9,0xf8,0xf3,0xb6,0xf0,0xff,0xe4,0xe5,0xe2,0xb7]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleAlertView.swift
//  AbroadTalking
//
//  Created by young on 2023/6/20.
//

//: import UIKit
import UIKit

//: enum LiveAlertViewType {
enum BeginViewType {
    //: case noFace
    case noFace // 无人脸
    //: case noNetwork
    case noNetwork // 无网络
    //: case turnOnLive
    case turnOnLive // 开播提醒
    //: case freeVideo
    case freeVideo // 免费视频挽留
}

//: class TalkingLiveAlertView: UIView {
class TitleAlertView: UIView {
    var tableMainManagerImageView: UIImageView?

    // 右边按钮点击事件
    //: var rightBlcok: (() -> Void)?
    var rightBlcok: (() -> Void)?

    //: private var popView: MeasurementThen?
    private var popView: MeasurementThen?
    //: private var type = LiveAlertViewType.noFace
    private var type = BeginViewType.noFace

    //: init(frame: CGRect, type: LiveAlertViewType) {
    init(frame: CGRect, type: BeginViewType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.type = type
        self.type = type
        //: setupSubviews()
        globalTotal()
        //: setupSubViewsConstraint()
        confinementSubTimeViewsItem()
        //: refreshUI()
        cookieUi()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_waitName, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.outsideText(name: "icon_cover_toast")
        iamg.image = UIImage.outsideText(name: (str_clickName.lowercased() + "_cover" + String(str_viewValue.prefix(6))))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 18)
        lab.font = UIFont.methodPlay(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.drogueSize(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(userAt), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var leftBtn: UIButton = {
    private lazy var leftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 16)
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.offt(), for: .normal)
        //: btn.setTitle("Not for now".localized, for: .normal)
        btn.setTitle((String(str_giftData)).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.offt().cgColor
        //: btn.addTarget(self, action: #selector(leftButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(distanceAndRove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .appThemeColor()
        btn.backgroundColor = .offt()
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(str_sexName.prefix(7))).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(userAt), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveAlertView {
extension TitleAlertView {
    //: func show() {
    func shack() {
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
    @objc func afterward() {
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }

    //: @objc private func leftButtonClick() {
    @objc private func distanceAndRove() {
        //: dismiss()
        afterward()
    }

    //: @objc private func rightButtonClick() {
    @objc private func userAt() {
        //: dismiss()
        afterward()
        //: rightBlcok?()
        rightBlcok?()
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: if type != .freeVideo {
        if type != .freeVideo {
            //: dismiss()
            afterward()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveAlertView {
extension TitleAlertView {
    // 刷新视图
    //: private func refreshUI() {
    private func cookieUi() {
        //: switch (type) {
        switch type {
        //: case .noFace:
        case .noFace:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(str_leadingTargetValue) + str_norName.replacingOccurrences(of: "position", with: "ff")).localized
            //: contentLab.text = "Please make sure your face is always in the video screen".localized
            contentLab.text = String(bytes: str_indexContent, encoding: .utf8)!.localized

        //: case .noNetwork:
        case .noNetwork:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(str_leadingTargetValue) + str_norName.replacingOccurrences(of: "position", with: "ff")).localized
            //: contentLab.text = "Current network unavailable".localized
            contentLab.text = (String(str_addData.prefix(2)) + String(str_numberData)).localized

        //: case .turnOnLive:
        case .turnOnLive:
            //: titleLab.text = "Live Reminder".localized
            titleLab.text = (String(str_scaleValue.suffix(6)) + str_centerTitle.replacingOccurrences(of: "control", with: "r")).localized
            //: contentLab.text = ""
            contentLab.text = ""

        //: case .freeVideo:
        case .freeVideo:
            //: titleLab.text = ""
            titleLab.text = ""
            //: contentLab.text = "You haven't used your free video opportunity yet, talk to someone first!".localized
            contentLab.text = String(bytes: str_makeName.map{$0^150}, encoding: .utf8)!.localized
        }
    }

    // 添加视图
    //: private func setupSubviews() {
    private func globalTotal() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: contentView.addSubview(leftBtn)
            contentView.addSubview(leftBtn)
            //: contentView.addSubview(rightBtn)
            contentView.addSubview(rightBtn)
            //: } else {
        } else {
            //: contentView.addSubview(closeBtn)
            contentView.addSubview(closeBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func confinementSubTimeViewsItem() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-114)
            make.top.equalTo(self.snp.centerY).offset(-114)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-39)
            make.top.equalTo(-39)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
            make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(8)
            make.top.equalTo(topIcon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(10)
            make.top.equalTo(titleLab.snp.bottom).offset(10)
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }

        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: leftBtn.snp.makeConstraints { make in
            leftBtn.snp.makeConstraints { make in
                //: make.top.equalTo(titleLab.snp.bottom).offset(20)
                make.top.equalTo(titleLab.snp.bottom).offset(20)
                //: make.leading.equalTo(13)
                make.leading.equalTo(13)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
            }
            //: rightBtn.snp.makeConstraints { make in
            rightBtn.snp.makeConstraints { make in
                //: make.top.size.equalTo(leftBtn)
                make.top.size.equalTo(leftBtn)
                //: make.trailing.equalTo(-13)
                make.trailing.equalTo(-13)
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }

            //: } else {
        } else {
            //: closeBtn.snp.makeConstraints { make in
            closeBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.top.equalTo(contentLab.snp.bottom).offset(20)
                make.top.equalTo(contentLab.snp.bottom).offset(20)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }
        }
    }
}
