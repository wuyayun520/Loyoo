
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorFrameValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "bg_message_top" :*/
fileprivate let str_observerName:String = "bg_mesreturn height let"

/*: "img_me_edit_photo_default" :*/
fileprivate let str_pathValue:String = "app user let return coinimg_me"
fileprivate let str_makeTitle:String = "name no in make self_photo"

/*: "icon_lounge" :*/
fileprivate let str_callOfName:String = "icon_loucolor model"
fileprivate let str_fitName:[Character] = ["n","g","e"]

/*: "#777777" :*/
fileprivate let str_postName:[Character] = ["#"]
fileprivate let str_equalValue:[Character] = ["7","7","7","7","7","7"]

/*: "btn_me_copy" :*/
fileprivate let str_roomData:String = "in awardbtn_me"

/*: "btn_me_verify" :*/
fileprivate let str_videoName:String = "btn_memodel let make gift"
fileprivate let str_countValue:String = "success"
fileprivate let str_playData:[Character] = ["v","e","r","i","f","y"]

/*: "btn_me_new_edit" :*/
fileprivate let str_imageIconTitle:String = "btn_mdata bottom push with"
fileprivate let str_insideIndexOfValue:[Character] = ["e","_","n","e","w","_","e","d","i","t"]

/*: "Followers" :*/
fileprivate let str_toData:[Character] = ["F","o","l"]
fileprivate let str_normalData:String = "lotablers"

/*: "Following" :*/
fileprivate let str_flexibleTitle:[Character] = ["F","o","l","l","o","w","i"]
fileprivate let str_outsideManagerName:[Character] = ["n","g"]

/*: "#D8D8D8" :*/
fileprivate let str_normalName:[Character] = ["#","D","8","D","8"]
fileprivate let str_viewData:[Character] = ["D","8"]

/*: "#FF506D" :*/
fileprivate let str_customName:String = "touch track data regular#FF506D"

/*: "Reviewing" :*/
fileprivate let str_targetName:String = "Reviewiself else equal title label"
fileprivate let str_miniName:[Character] = ["n","g"]

/*: "headPic" :*/
fileprivate let str_messageValue:[Character] = ["h","e","a","d","P"]
fileprivate let str_originValue:[Character] = ["i","c"]

/*: "Modify the success" :*/
fileprivate let str_toValue:String = "add path modelModify"
fileprivate let str_clearText:[Character] = ["s","u"]
fileprivate let str_remarkTitle:String = "turness"

/*: "UID:" :*/
fileprivate let str_resultName:String = "UID:return view"

/*: "btn_me_verifed" :*/
fileprivate let str_behaviorName:String = "error size ad view modelbtn_"
fileprivate let str_labName:[Character] = ["i","f","e","d"]

/*: "UID Copied" :*/
fileprivate let str_normalHalfTitle:String = "self modelUID Cop"
fileprivate let str_equalMessageValue:[Character] = ["i","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmartThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTopCell: UITableViewCell {
class SmartThen: UITableViewCell {
	var pictureDoing: Bool = false
	var tapCount: Double = 86.2
	var clickArray: [AnyHashable] = []
	var editDictionary: [AnyHashable: String] = [:]

    var listLayerImageView: UIImageView?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        imageRemove()
        //: setupSubViewsConstraint()
        addComponent()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    
            if (followersBtn.intrinsicContentSize.height == 268.60) && (followersBtn.convert(CGPoint(x: CGFloat(0), y: 0), from: followersBtn.superview).x == 42.78) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let renewLet = UpwardlyView(frame: followersBtn.bounds.insetBy(dx: CGFloat(478.60), dy: CGFloat(66)))


            renewLet.viewUserDoing = { [self] contentViewSwitch in
            self.pictureDoing = contentViewSwitch
            
            return self.pictureDoing
            }
            renewLet.valueInterval = { [self] mSayMagnitude in
            self.tapCount = mSayMagnitude
            
            return self.tapCount
            }
            renewLet.nameArray = { [self] freeArray in
            self.clickArray = freeArray
            
            guard var value = self.clickArray as? [String] else {
                return nil
            }
            return value
            }
            renewLet.bottomDictionary = { [self] windowDictionary in
            self.editDictionary = windowDictionary
            
            guard var value = self.editDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                followersBtn.addSubview(renewLet)
            }

	}

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorFrameValue, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.outsideText(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.outsideText(name: (String(str_observerName.prefix(6)) + "sage_top")))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var whiteBgView: UIView = {
    private lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImag: UIButton = {
    private lazy var iconImag: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "img_me_edit_photo_default"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_pathValue.suffix(6)) + "_edit" + String(str_makeTitle.suffix(6)) + "_default")), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(updatePhotoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(createAddLine), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nameLB: UILabel = {
    private lazy var nameLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lb.font = UIFont.thoughtImage(type: .Semibold, fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.blockOf()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "icon_lounge")
        img.image = UIImage.outsideText(name: (String(str_callOfName.prefix(8)) + String(str_fitName)))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var idBtn: TalkingButton = {
    private lazy var idBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = PathErrorTalkingButton()
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitleColor(UIColor.init(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_postName) + String(str_equalValue))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 14)
        //: btn.setImage(UIImage.outsideText(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_roomData.suffix(6)) + "_copy")), for: .normal)
        //: btn.addTarget(self, action: #selector(copyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cellTo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var verifyBtn: UIButton = {
    private lazy var verifyBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_me_verify"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_videoName.prefix(6)) + str_countValue.replacingOccurrences(of: "success", with: "_") + String(str_playData))), for: .normal)
        //: btn.addTarget(self, action: #selector(verifyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(isContent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var editImag: UIImageView = {
    private lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.outsideText(name: "btn_me_new_edit"))
        let imag = UIImageView(image: UIImage.outsideText(name: (String(str_imageIconTitle.prefix(5)) + String(str_insideIndexOfValue))))
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var editPushBtn: UIButton = {
    private lazy var editPushBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(editBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followersBtn: UIButton = {
    private lazy var followersBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followersBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(applyCustom), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .observerShared()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (String(str_toData) + str_normalData.replacingOccurrences(of: "table", with: "we")).localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.drogueSize(fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.methodPlay(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingBtn: UIButton = {
    private lazy var followingBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followingBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(inputClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .observerShared()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (String(str_flexibleTitle) + String(str_outsideManagerName)).localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.drogueSize(fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.methodPlay(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var line: UIView = {
    private lazy var line: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#D8D8D8")
        v.backgroundColor = UIColor(hex: (String(str_normalName) + String(str_viewData)))
        //: v.layer.cornerRadius = 1
        v.layer.cornerRadius = 1
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 12)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(str_customName.suffix(7))))
        //: lb.text = "Reviewing".localized
        lb.text = (String(str_targetName.prefix(7)) + String(str_miniName)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMeTopCell {
extension SmartThen {
    /// 更新个人资料
    //: private func req_updateInfo(img: UIImage) {
    private func modifyTotalerest(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.priceVideo()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(str_messageValue) + String(str_originValue)): resultData]
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        ConstraintRequestTool.indexOf(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard let self = self else {return}
            guard let self = self else { return }
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
            self.afterTitle(showMsg: (String(str_toValue.suffix(6)) + " the " + String(str_clearText) + str_remarkTitle.replacingOccurrences(of: "turn", with: "cc")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: MeasurementAppManager.share.loginUserMode.headPic = data["headPic"] as? String
            MeasurementAppManager.share.loginUserMode.headPic = data[(String(str_messageValue) + String(str_originValue))] as? String
            //: statusLB.isHidden = false
            statusLB.isHidden = false
            //: MeasurementAppManager.share.loginUserMode.headPicStatus = 0
            MeasurementAppManager.share.loginUserMode.headPicStatus = 0
            //: self.iconImag.setUrlImage(urlStr: MeasurementAppManager.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
            self.iconImag.fulfill(urlStr: MeasurementAppManager.share.loginUserMode.headPic ?? (String(str_pathValue.suffix(6)) + "_edit" + String(str_makeTitle.suffix(6)) + "_default"))
        }
    }
}

// MARK: - Event

//: extension TalkingMeTopCell {
extension SmartThen {
    /// 更新数据
    //: func setViewData() {
    func videoTarget() {
        //: iconImag.setUrlImage(urlStr: MeasurementAppManager.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
        iconImag.fulfill(urlStr: MeasurementAppManager.share.loginUserMode.headPic ?? (String(str_pathValue.suffix(6)) + "_edit" + String(str_makeTitle.suffix(6)) + "_default"))
        //: iconBorder.setHeadFrameUrlImage(urlStr: MeasurementAppManager.share.loginUserMode.headPicFrame)
        iconBorder.fileStr(urlStr: MeasurementAppManager.share.loginUserMode.headPicFrame)
        //: nameLB.textColor = MeasurementAppManager.share.loginUserMode.loungePlus ? .userVipColor():.appTitleColor()
        nameLB.textColor = MeasurementAppManager.share.loginUserMode.loungePlus ? .withTime() : .blockOf()
        //: nameLB.text = MeasurementAppManager.share.loginUserMode.nickname
        nameLB.text = MeasurementAppManager.share.loginUserMode.nickname
        //: loungeImgV.isHidden = !MeasurementAppManager.share.loginUserMode.loungePlus
        loungeImgV.isHidden = !MeasurementAppManager.share.loginUserMode.loungePlus
        //: idBtn.setTitle("UID:" + MeasurementAppManager.share.loginUserMode.userID, for: .normal)
        idBtn.setTitle((String(str_resultName.prefix(4))) + MeasurementAppManager.share.loginUserMode.userID, for: .normal)
        //: if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.isSuccessed.rawValue {
            //: verifyBtn.setImage(UIImage.outsideText(name: "btn_me_verifed"), for: .normal)
            verifyBtn.setImage(UIImage.outsideText(name: (String(str_behaviorName.suffix(4)) + "me_ver" + String(str_labName))), for: .normal)
            //: } else {
        } else {
            //: verifyBtn.setImage(UIImage.outsideText(name: "btn_me_verify"), for: .normal)
            verifyBtn.setImage(UIImage.outsideText(name: (String(str_videoName.prefix(6)) + str_countValue.replacingOccurrences(of: "success", with: "_") + String(str_playData))), for: .normal)
        }
        //: statusLB.isHidden = (MeasurementAppManager.share.loginUserMode.headPicStatus != HeadePicStatus.isOnGoing.rawValue)
        statusLB.isHidden = (MeasurementAppManager.share.loginUserMode.headPicStatus != DocumentTransformable.isOnGoing.rawValue)
        //: followersNum.text = MeasurementAppManager.share.loginUserMode.fansNum ?? "0"
        followersNum.text = MeasurementAppManager.share.loginUserMode.fansNum ?? "0"
        //: followingNum.text = MeasurementAppManager.share.loginUserMode.attentionNum ?? "0"
        followingNum.text = MeasurementAppManager.share.loginUserMode.attentionNum ?? "0"
    }

    /// copy Id
    //: @objc private func copyBtnClick() {
    @objc private func cellTo() {
        //: let paste = UIPasteboard.general
        let paste = UIPasteboard.general
        //: paste.string = MeasurementAppManager.share.loginUserMode.userID
        paste.string = MeasurementAppManager.share.loginUserMode.userID
        //: self.func__showStatusBarSuccessMsg(showMsg: "UID Copied".localized)
        self.afterTitle(showMsg: (String(str_normalHalfTitle.suffix(7)) + String(str_equalMessageValue)).localized)
    }

    /// 更新photo
    //: @objc private func updatePhotoButtonClick() {
    @objc private func createAddLine() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        PrefaceReactiveCompatible.beModel(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = StreetSmartThen.censusVideo(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
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
                            self.modifyTotalerest(img: image)
                        }
                        //: return
                }
            }
        }
    }

    /// 真人认证
    //: @objc private func verifyBtnClick() {
    @objc private func isContent() {
        // 先判断上传的头像是否通过，再判断真人认证状态
//        if MeasurementAppManager.share.loginUserMode.headPicStatus == DocumentTransformable.unknown.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Please finish uploading your avatar first")
//        } else if MeasurementAppManager.share.loginUserMode.headPicStatus == DocumentTransformable.isOnGoing.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Avatar is under reviewing")
//        } else {
//            isTPAuthTool()
//        }
        //: isTPAuthTool()
        nextLive()
    }

    //: private func isTPAuthTool() {
    private func nextLive() {
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
            //: let vc = TalkingFinalVerificationVC()
            let vc = ManagerVerificationVc()
            //: LimitPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            LimitPushManager.share.beforeRoom()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: LimitPushManager.share.func__pushUserVerifyController(toast: nil)
            LimitPushManager.share.invitationTo(toast: nil)
        }
    }

    /// 编辑个人资料
    //: @objc private func editBtnClick() {
    @objc private func snapClick() {
        //: LimitPushManager.share.func__pushToUserDetailVC(uid: MeasurementAppManager.share.loginUid)
        LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: MeasurementAppManager.share.loginUid)
    }

    /// followers
    //: @objc private func followersBtnClick() {
    @objc private func applyCustom() {
        //: let vc = TalkingFavouriteViewController()
        let vc = AssemblageThen()
        //: vc.currentIndex = 0
        vc.currentIndex = 0
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.colorController()?.navigationController?.pushViewController(vc, animated: true)
    }

    /// following
    //: @objc private func followingBtnClick() {
    @objc private func inputClick() {
        //: let vc = TalkingFavouriteViewController()
        let vc = AssemblageThen()
        //: vc.currentIndex = 1
        vc.currentIndex = 1
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.colorController()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingMeTopCell {
extension SmartThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func imageRemove() {
        //: self.contentView.addSubview(bgImgView)
        self.contentView.addSubview(bgImgView)
        //: bgImgView.addSubview(whiteBgView)
        bgImgView.addSubview(whiteBgView)
        //: whiteBgView.addSubview(iconImag)
        whiteBgView.addSubview(iconImag)
        //: whiteBgView.addSubview(iconBorder)
        whiteBgView.addSubview(iconBorder)
        //: whiteBgView.addSubview(nameLB)
        whiteBgView.addSubview(nameLB)
        //: whiteBgView.addSubview(loungeImgV)
        whiteBgView.addSubview(loungeImgV)
        //: whiteBgView.addSubview(idBtn)
        whiteBgView.addSubview(idBtn)
        //: whiteBgView.addSubview(verifyBtn)
        whiteBgView.addSubview(verifyBtn)
        //: whiteBgView.addSubview(editImag)
        whiteBgView.addSubview(editImag)
        //: whiteBgView.addSubview(editPushBtn)
        whiteBgView.addSubview(editPushBtn)
        //: whiteBgView.addSubview(followersBtn)
        whiteBgView.addSubview(followersBtn)
        //: whiteBgView.addSubview(statusLB)
        whiteBgView.addSubview(statusLB)
        //: followersBtn.addSubview(followersLab)
        followersBtn.addSubview(followersLab)
        //: followersBtn.addSubview(followersNum)
        followersBtn.addSubview(followersNum)
        //: whiteBgView.addSubview(followingBtn)
        whiteBgView.addSubview(followingBtn)
        //: followingBtn.addSubview(followingLab)
        followingBtn.addSubview(followingLab)
        //: followingBtn.addSubview(followingNum)
        followingBtn.addSubview(followingNum)
        //: whiteBgView.addSubview(line)
        whiteBgView.addSubview(line)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func addComponent() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
            //: make.height.equalTo(StatusBarHeight+181)
            make.height.equalTo(a_limitRecordScreenName + 181)
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(StatusBarHeight+9)
            make.top.equalTo(a_limitRecordScreenName + 9)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(160)
            make.height.equalTo(160)
        }

        //: iconImag.snp.makeConstraints { make in
        iconImag.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(12)
            make.leading.top.equalToSuperview().offset(12)
            //: make.width.height.equalTo(69)
            make.width.height.equalTo(69)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(7)
            make.leading.top.equalToSuperview().offset(7)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.top).offset(-7)
            make.top.equalTo(iconImag.snp.top).offset(-7)
            //: make.centerX.equalTo(iconImag)
            make.centerX.equalTo(iconImag)
            //: make.size.equalTo(CGSize.init(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(10)
            make.leading.equalTo(iconImag.snp.trailing).offset(10)
            //: make.top.equalTo(iconImag)
            make.top.equalTo(iconImag)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(a_blockValue / 2)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(4)
            make.leading.equalTo(nameLB.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }

        //: idBtn.snp.makeConstraints { make in
        idBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(12)
            make.leading.equalTo(iconImag.snp.trailing).offset(12)
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: verifyBtn.snp.makeConstraints { make in
        verifyBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB)
            make.leading.equalTo(nameLB)
            //: make.top.equalTo(idBtn.snp.bottom).offset(8)
            make.top.equalTo(idBtn.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: editImag.snp.makeConstraints { make in
        editImag.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconImag)
            make.centerY.equalTo(iconImag)
            //: make.trailing.equalToSuperview().offset(-16)
            make.trailing.equalToSuperview().offset(-16)
            //: make.width.equalTo(6)
            make.width.equalTo(6)
            //: make.height.equalTo(11)
            make.height.equalTo(11)
        }
        //: editPushBtn.snp.makeConstraints { make in
        editPushBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(editImag)
            make.centerY.equalTo(editImag)
            //: make.trailing.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: followersBtn.snp.makeConstraints { make in
        followersBtn.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom)
            make.top.equalTo(iconImag.snp.bottom)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
            //: make.trailing.equalTo(whiteBgView.snp.centerX)
            make.trailing.equalTo(whiteBgView.snp.centerX)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: followingBtn.snp.makeConstraints { make in
        followingBtn.snp.makeConstraints { make in
            //: make.top.equalTo(followersBtn)
            make.top.equalTo(followersBtn)
            //: make.trailing.bottom.equalToSuperview()
            make.trailing.bottom.equalToSuperview()
            //: make.leading.equalTo(whiteBgView.snp.centerX)
            make.leading.equalTo(whiteBgView.snp.centerX)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom).offset(32)
            make.top.equalTo(iconImag.snp.bottom).offset(32)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 2, height: 27))
            make.size.equalTo(CGSize(width: 2, height: 27))
        }
    }
}
