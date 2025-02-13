
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelValue:[UInt8] = [0x59,0x5e,0x59,0x44,0x18,0x53,0x5f,0x54,0x55,0x42,0xa,0x19,0x10,0x58,0x51,0x43,0x10,0x5e,0x5f,0x44,0x10,0x52,0x55,0x55,0x5e,0x10,0x59,0x5d,0x40,0x5c,0x55,0x5d,0x55,0x5e,0x44,0x55,0x54]

/*: "Personal information" :*/
fileprivate let str_equalValue:String = "intimate"
fileprivate let str_systemValueTitle:[Character] = ["e","r","s","o","n","a","l"," ","i","n","f","o","r","m","a","t","i","o","n"]

/*: "like_color_img" :*/
fileprivate let str_moreName:String = "like_fill database var title"
fileprivate let str_bottomValue:String = "item social let as scaler_img"

/*: _ :*/
fileprivate let str_videoValueTitle:String = "show"

/*: "male" :*/
fileprivate let str_acceptName:[UInt8] = [0x6d,0x61,0x6c,0x65]

/*: "female" :*/
fileprivate let str_checkTitle:String = "addemale"

/*: "newHeadPic" :*/
fileprivate let str_nameValue:[Character] = ["n","e","w","H","e","a"]
fileprivate let str_removeReloadData:String = "try top valuedPic"

/*: "invite_code" :*/
fileprivate let str_statusTitle:[Character] = ["i","n","v","i","t","e","_","c","o","d","e"]

/*: "codeFillType" :*/
fileprivate let str_downName:String = "codeFlet if view"
fileprivate let str_buttonText:String = "illTypetrue with equal key"

/*: "RegisterSuccess" :*/
fileprivate let str_removeData:String = "Regismoment view button"
fileprivate let str_infoText:String = "burness"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InstalmentViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class InstalmentViewController: PropertyViewController {
	var jumpOpen: Bool = true
	var labelInterval: Double = -90.1
	var firstArray: [AnyHashable] = []
	var weekDictionary: [AnyHashable: String] = [:]

    var controlImageView: UIImageView?

    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelValue.map{$0^48}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        labUp(isOpen: false)
    
            if ((editInfoView.contentView.inputAssistantItem.trailingBarButtonGroups.count == 8) && (editInfoView.contentView.inputAssistantItem.leadingBarButtonGroups.count == 5)) && (editInfoView.contentView.layer.contentsRect.size.width != 1) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let saveData = UpwardlyView()


            saveData.viewUserDoing = { [self] contentViewSwitch in
            self.jumpOpen = contentViewSwitch
            
            var saveData = self.hideNavi
            saveData = false
            if saveData != self.jumpOpen {
                self.jumpOpen = saveData
            }
            
            return self.jumpOpen
            }
            saveData.valueInterval = { [self] mSayMagnitude in
            self.labelInterval = mSayMagnitude
            
            return self.labelInterval
            }
            saveData.nameArray = { [self] freeArray in
            self.firstArray = freeArray
            
            guard var value = self.firstArray as? [String] else {
                return nil
            }
            return value
            }
            saveData.bottomDictionary = { [self] windowDictionary in
            self.weekDictionary = windowDictionary
            
            guard var value = self.weekDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                editInfoView.contentView.addSubview(saveData)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (str_equalValue.replacingOccurrences(of: "intimate", with: "P") + String(str_systemValueTitle)).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.bar()
        //: self.setupSubViewsConstraint()
        self.fillIn()
        //: self.bindInteraction()
        self.sumubate()
        //: addTapGestureRecognizer()
        moveRecognizer()

        //: func__checkFinishBtnState()
        toponym()

        controlImageView = UIImageView(frame: self.view.frame)
        if let controlImageView = controlImageView {
            self.controlImageView?.image = UIImage(named: (String(str_moreName.prefix(5)) + "colo" + String(str_bottomValue.suffix(5))))
            if (controlImageView.animationImages?.count == (controlImageView.canBecomeFocused ? 3 : 1)) && (controlImageView.constraints.count == 30) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(controlImageView)
            }
        }
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: CircumferenceView = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = CircumferenceView()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension InstalmentViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func noNavi() {
        //: super.naviPopback()
        super.noNavi()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(MeasurementAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(a_viewContent)_\(MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_acceptName, encoding: .utf8)! : (str_checkTitle.replacingOccurrences(of: "add", with: "f")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        a_textTurnName.photoOf(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func at() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(MeasurementAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(a_onTitle)_\(MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_acceptName, encoding: .utf8)! : (str_checkTitle.replacingOccurrences(of: "add", with: "f")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        a_textTurnName.photoOf(eventID: eventID)

        //: if MeasurementAppManager.share.userFillInfoMode.headImage != nil {
        if MeasurementAppManager.share.userFillInfoMode.headImage != nil {
            //: let image = MeasurementAppManager.share.userFillInfoMode.headImage!
            let image = MeasurementAppManager.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(str_nameValue) + String(str_removeReloadData.suffix(4)))] = image.jpegData(compressionQuality: 1)
        }
        
        if MeasurementAppManager.share.userFillInfoMode.inviteCode.count > 0 {
            params[(String(str_statusTitle))] = MeasurementAppManager.share.userFillInfoMode.inviteCode
        } else {
            let inviteCode = UserDefaults.standard.string(forKey: a_noName)
            if inviteCode?.count ?? 0 > 1 {
                params[(String(str_statusTitle))] = inviteCode
                params[(String(str_downName.prefix(5)) + String(str_buttonText.prefix(7)))] = 1
            }
        }

        //: if MeasurementAppManager.share.userFillInfoMode.sex == "1" {
        if MeasurementAppManager.share.userFillInfoMode.sex == "1" {
            //: view.endEditing(true)
            view.endEditing(true)
            //: ProgressHUD.show()
            SizeHungReactiveCompatible.picCurrent()
            //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
            LoginReactiveCompatible.theEqual(params: params) { succeed, result, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: if succeed {
                if succeed {
                    // 发送通知
                    //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                    NotificationCenter.default.post(name: a_bottomData, object: nil, userInfo: result as! [String: Any])
                    // 注册成功埋点
                    //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                    RegularAdjustManager.share.windowKey(key: (String(str_removeData.prefix(5)) + "terSu" + str_infoText.replacingOccurrences(of: "burn", with: "cc")))

                    //: if MeasurementAppManager.share.loginUserMode.remindBindEmail == true {
                    if MeasurementAppManager.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                        //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            //: LimitPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                            LimitPushManager.share.errorPureBack(isShowBack: false)
                        }
                    }
                }
            }
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = MixRecognizerDelegate()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.colorController()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func toponym() {
        //: let headImg = MeasurementAppManager.share.userFillInfoMode.headImage ?? nil
        let headImg = MeasurementAppManager.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension InstalmentViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func format() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        PrefaceReactiveCompatible.beModel(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = StreetSmartThen.censusVideo(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: LimitPushManager.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                LimitPushManager.share.beforeRoom()?.present(vc, animated: true)
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
                            //: MeasurementAppManager.share.userFillInfoMode.headImage = photos![0]
                            MeasurementAppManager.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.toponym()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension InstalmentViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func bar() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func fillIn() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func sumubate() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: DataInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                format()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.at()
                //: break
            }

            //: return
        }
    }
}
