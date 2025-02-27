
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_selectionName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "Licensing" :*/
fileprivate let str_formatText:String = "Licensiheight view click for"
fileprivate let str_jumpText:String = "ncolor"

/*: "Granting licences to receive better video calls and earn more money" :*/
fileprivate let str_indexTitle:[UInt8] = [0x47,0x72,0x61,0x6e,0x74,0x69,0x6e,0x67,0x20,0x6c,0x69,0x63,0x65,0x6e,0x63,0x65,0x73,0x20,0x74,0x6f,0x20,0x72,0x65,0x63,0x65,0x69,0x76,0x65,0x20,0x62,0x65,0x74,0x74,0x65,0x72,0x20,0x76,0x69,0x64,0x65,0x6f,0x20,0x63,0x61,0x6c,0x6c,0x73,0x20,0x61,0x6e,0x64,0x20,0x65,0x61,0x72,0x6e,0x20,0x6d,0x6f,0x72,0x65,0x20,0x6d,0x6f,0x6e,0x65,0x79]

/*: "Turn on Camera and recording permissions in settings to use the feature properly" :*/
fileprivate let str_episodeTitle:[UInt8] = [0x79,0x6c,0x72,0x65,0x70,0x6f,0x72,0x70,0x20,0x65,0x72,0x75,0x74,0x61,0x65,0x66,0x20,0x65,0x68,0x74,0x20,0x65,0x73,0x75,0x20,0x6f,0x74,0x20,0x73,0x67,0x6e,0x69,0x74,0x74,0x65,0x73,0x20,0x6e,0x69,0x20,0x73,0x6e,0x6f,0x69,0x73,0x73,0x69,0x6d,0x72,0x65,0x70,0x20,0x67,0x6e,0x69,0x64,0x72,0x6f,0x63,0x65,0x72,0x20,0x64,0x6e,0x61,0x20,0x61,0x72,0x65,0x6d,0x61,0x43,0x20,0x6e,0x6f,0x20,0x6e,0x72,0x75,0x54]

/*: "Cancel" :*/
fileprivate let str_aboutText:String = "Cancelobserve view array height to"

/*: "Open" :*/
fileprivate let str_commentName:String = "data user frame equal indexOpen"

/*: "icon_peimisionlic_camera" :*/
fileprivate let str_inputName:[Character] = ["i","c","o","n","_","p","e","i","m","i","s","i","o","n","l","i","c","_","c","a","m","e","r"]
fileprivate let str_closeArrayTitle:String = "value"

/*: "icon_peimissionlic_mic" :*/
fileprivate let str_atValue:String = "ICON"
fileprivate let str_addPairName:String = "mierrori"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtLoadPermissionView.swift
//  NetEaseLib
//
//  Created by Charlotte on 2024/3/22.
//

//: import UIKit
import UIKit

//: class TalkingPermissionView: UIView {
class AtLoadPermissionView: UIView {
    var popRowImageView: UIImageView?

    //: var popView: MeasurementThen?
    var popView: MeasurementThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.collectionWithSubviews()
        //: self.setupSubViewsConstraint()
        self.brownieData()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_selectionName, encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.blockOf()
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 20)
        lb.font = UIFont.methodPlay(fontSize: 20)
        //: lb.text = "Licensing".localized
        lb.text = (String(str_formatText.prefix(7)) + str_jumpText.replacingOccurrences(of: "color", with: "g")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.blockOf()
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 16)
        lb.font = UIFont.drogueSize(fontSize: 16)
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue && MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue && MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue {
            //: lb.text = "Granting licences to receive better video calls and earn more money".localized
            lb.text = String(bytes: str_indexTitle, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: lb.text = "Turn on Camera and recording permissions in settings to use the feature properly".localized
            lb.text = String(bytes: str_episodeTitle.reversed(), encoding: .utf8)!.localized
        }
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var cancleBtn: UIButton = {
    lazy var cancleBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_aboutText.prefix(6))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.appValueDetailColor(), for: .normal)
        btn.setTitleColor(.observerShared(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.offt().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(titleualMatterList), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(str_commentName.suffix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(gestureClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingPermissionView {
extension AtLoadPermissionView {
    //: func show() {
    func buttonCall() {
        //: popView = MeasurementThen.init(frame: UIScreen.main.bounds)
        popView = MeasurementThen(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: popView?.initWithView(view: self)
        popView?.anInit(view: self)
        //: popView?.showInView(view: ImageMacroDefine.getWindow())
        popView?.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func cancleBtnClick() {
    @objc func titleualMatterList() {
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func gestureClick() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
        //: cancleBtnClick()
        titleualMatterList()
    }

    //: func setPermissionIconView(type: TalkingPermissionsType) {
    func listingFill(type: PermissionsType) {
        //: let count = type == .cameraAndMicrophone ? 2: 1
        let count = type == .cameraAndMicrophone ? 2 : 1
        //: for index in 0..<count {
        for index in 0 ..< count {
            //: let icon = UIImageView()
            let icon = UIImageView()
            //: icon.contentMode = .scaleAspectFill
            icon.contentMode = .scaleAspectFill
            //: backView.addSubview(icon)
            backView.addSubview(icon)
            //: if count == 1 {
            if count == 1 {
                //: icon.snp.makeConstraints { make in
                icon.snp.makeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(62)
                    make.size.equalTo(62)
                    //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                    make.top.equalTo(messageLB.snp.bottom).offset(20)
                }
                //: } else {
            } else {
                //: if index == 0 {
                if index == 0 {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.leading.equalTo(61)
                        make.leading.equalTo(61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                    //: } else {
                } else {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.trailing.equalTo(-61)
                        make.trailing.equalTo(-61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                }
            }
            //: switch type {
            switch type {
            //: case .camera:
            case .camera:
                //: icon.image = UIImage.outsideText(name: "icon_peimisionlic_camera")
                icon.image = UIImage.outsideText(name: (String(str_inputName) + str_closeArrayTitle.replacingOccurrences(of: "value", with: "a")))
            //: case .microphone:
            case .microphone:
                //: icon.image = UIImage.outsideText(name: "icon_peimissionlic_mic")
                icon.image = UIImage.outsideText(name: (str_atValue.lowercased() + "_pei" + str_addPairName.replacingOccurrences(of: "error", with: "ss") + "onlic_mic"))
            //: case .cameraAndMicrophone:
            case .cameraAndMicrophone:
                //: if index == 0 {
                if index == 0 {
                    //: icon.image = UIImage.outsideText(name: "icon_peimisionlic_camera")
                    icon.image = UIImage.outsideText(name: (String(str_inputName) + str_closeArrayTitle.replacingOccurrences(of: "value", with: "a")))
                    //: } else {
                } else {
                    //: icon.image = UIImage.outsideText(name: "icon_peimissionlic_mic")
                    icon.image = UIImage.outsideText(name: (str_atValue.lowercased() + "_pei" + str_addPairName.replacingOccurrences(of: "error", with: "ss") + "onlic_mic"))
                }
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension TalkingPermissionView {
extension AtLoadPermissionView {
    // 添加视图
    //: private func setupSubviews() {
    private func collectionWithSubviews() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(cancleBtn)
        backView.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func brownieData() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(295)
            make.width.equalTo(295)
            //: make.height.equalTo(321)
            make.height.equalTo(321)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(32)
            make.top.equalTo(32)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleLB.snp.bottom).offset(21)
            make.top.equalTo(titleLB.snp.bottom).offset(21)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: cancleBtn.snp.makeConstraints { make in
        cancleBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(130)
            make.width.equalTo(130)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.size.equalTo(cancleBtn)
            make.bottom.size.equalTo(cancleBtn)
        }
    }
}
