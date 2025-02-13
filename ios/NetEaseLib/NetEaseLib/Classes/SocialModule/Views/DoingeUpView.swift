
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_backgroundTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_livetc_warn" :*/
fileprivate let str_colorImageTitle:String = "idataon"
fileprivate let str_statusData:[Character] = ["c","_","w","a","r","n"]

/*: "System notification" :*/
fileprivate let str_frameTitle:String = "view varSyst"
fileprivate let str_indicatorValue:String = "tibuttoncatio"
fileprivate let str_likeName:[Character] = ["n"]

/*: "Upload Now" :*/
fileprivate let str_equalData:String = "var top toUpl"
fileprivate let str_mediumName:String = "oad Nowequal menu view count"

/*: "btn_me_program_photo_delete" :*/
fileprivate let str_largeName:String = "btn_marray player print block"
fileprivate let str_lessTitle:String = "odatara"
fileprivate let str_userData:String = "m_phoview index label add"

/*: "content" :*/
fileprivate let str_imageName:String = "leading"
fileprivate let str_toColorValue:String = "statusestatus"

/*: "jumpKey" :*/
fileprivate let str_equalTitle:String = "jumpKeblock model user button"
fileprivate let str_withTitle:String = "use"

/*: "uploadUserHeaderPic" :*/
fileprivate let str_imageValue:String = "requestpload"
fileprivate let str_closeTickData:[Character] = ["H","e","a","d","e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let str_toValue:[Character] = ["t","r","u","e","P","e","r","s","o","n","A"]
fileprivate let str_mediumTitle:String = "utmessage"

/*: "headPic" :*/
fileprivate let str_commitValue:[Character] = ["h","e","a","d","P","i"]
fileprivate let str_cameraTitle:String = "C"

/*: "Modify the success" :*/
fileprivate let str_triggerEqualTitle:[Character] = ["M","o","d","i","f","y"," ","t","h","e"," "]
fileprivate let str_hiddenTitle:[Character] = ["s"]
fileprivate let str_toWillText:String = "ulengthlengthess"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingeUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class DoingeUpView: UIView {
    var streamRedImageView: UIImageView?

    //: var popView: MeasurementThen?
    var popView: MeasurementThen?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.coin()
        //: self.setupSubViewsConstraint()
        self.contents()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_backgroundTitle, encoding: .utf8)!)
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
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.outsideText(name: "icon_livetc_warn")
        imag.image = UIImage.outsideText(name: (str_colorImageTitle.replacingOccurrences(of: "data", with: "c") + "_livet" + String(str_statusData)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(str_frameTitle.suffix(4)) + "em no" + str_indicatorValue.replacingOccurrences(of: "button", with: "fi") + String(str_likeName)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
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
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(str_equalData.suffix(3)) + String(str_mediumName.prefix(7))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dataConverterMini), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.outsideText(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_largeName.prefix(5)) + "e_pr" + str_lessTitle.replacingOccurrences(of: "data", with: "g") + String(str_userData.prefix(5)) + "to_delete")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickPlace), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension DoingeUpView {
    //: func setViewData(dit: [String: String]) {
    func everyCurrent(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(str_imageName.replacingOccurrences(of: "leading", with: "co") + str_toColorValue.replacingOccurrences(of: "status", with: "nt"))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(str_equalTitle.prefix(6)) + str_withTitle.replacingOccurrences(of: "use", with: "y"))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func dataConverterMini() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (str_imageValue.replacingOccurrences(of: "request", with: "u") + "User" + String(str_closeTickData)) {
            //: updatePhotoButtonClick()
            finishColor()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(str_toValue) + str_mediumTitle.replacingOccurrences(of: "message", with: "h")) {
            //: MeasurementAppManager.share.loginUserMode.isTPAuth = "3"
            MeasurementAppManager.share.loginUserMode.isTPAuth = "3"
            //: LimitPushManager.share.func__pushUserVerifyController(toast: nil)
            LimitPushManager.share.invitationTo(toast: nil)
            //: dismiss()
            toUserApp()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func clickPlace() {
        //: dismiss()
        toUserApp()
    }

    //: func show() {
    func popAction() {
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
    @objc func toUserApp() {
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func finishColor() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        PrefaceReactiveCompatible.beModel(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = StreetSmartThen.censusVideo(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.colorController()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.equalDoing(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.toUserApp()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.toUserApp()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func equalDoing(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.priceVideo()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(str_commitValue) + str_cameraTitle.lowercased()): resultData]
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        ConstraintRequestTool.indexOf(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.toUserApp()
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.episode(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }
            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.afterTitle(showMsg: (String(str_triggerEqualTitle) + String(str_hiddenTitle) + str_toWillText.replacingOccurrences(of: "length", with: "c")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: MeasurementAppManager.share.loginUserMode.headPic = data["headPic"] as? String
            MeasurementAppManager.share.loginUserMode.headPic = data[(String(str_commitValue) + str_cameraTitle.lowercased())] as? String
            //: MeasurementAppManager.share.loginUserMode.headPicStatus = 0
            MeasurementAppManager.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension DoingeUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func coin() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func contents() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
