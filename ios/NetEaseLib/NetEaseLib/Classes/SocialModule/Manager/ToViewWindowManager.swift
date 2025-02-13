
//: Declare String Begin

/*: "content" :*/
fileprivate let str_roomData:[Character] = ["c","o","n","t","e","n","t"]

/*: "jumpKey" :*/
fileprivate let str_upContent:String = "jumpKeyany have"

/*: "uploadUserHeaderPic" :*/
fileprivate let str_addData:[Character] = ["u","p","l","o","a","d"]
fileprivate let str_resultData:String = "arc user var todayUserH"
fileprivate let str_makeTitle:String = "rPicto gift object"

/*: "truePersonAuth" :*/
fileprivate let str_blockTitle:[Character] = ["t","r","u","e","P","e","r","s","o","n","A","u","t","h"]

/*: "yyyy-MM-dd" :*/
fileprivate let str_centerName:String = "make res empty removeyyyy-M"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToViewWindowManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum AtWindowType: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
}

//: class TalkingPopupWindowManager: NSObject {
class ToViewWindowManager: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [AtWindowType]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<AtWindowType> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = ToViewWindowManager()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        disposeWithoutAuditor()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension ToViewWindowManager {
    //: func setObserver() {
    func disposeWithoutAuditor() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.put()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(toAt), name: a_cornerData, object: nil)
    }

    //: func setHomePopUpWindow() {
    func endWindow() {
        // 默认模式, 男性, 未订阅
        //: if MeasurementAppManager.share.loginUserMode.jumpType == 0,
        if MeasurementAppManager.share.loginUserMode.jumpType == 0,
           //: MeasurementAppManager.share.appUserConfigMode.payWinType == 2,
           MeasurementAppManager.share.appUserConfigMode.payWinType == 2,
           //: MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue,
           MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue,
           //: MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue,
           MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue,
           //: MeasurementAppManager.share.loginUserMode.loungePlus == false {
           MeasurementAppManager.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(AtWindowType.Web_Subscribe)
        }

        //: if  MeasurementAppManager.share.loginUserMode.showSignInPage && MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue && MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.loginUserMode.showSignInPage, MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue, MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(AtWindowType.sign_in)
        }

        //: if MeasurementAppManager.share.loginUserMode.isNaUser == false,
        if MeasurementAppManager.share.loginUserMode.isNaUser == false,
           //: MeasurementAppManager.share.appUserConfigMode.videoCover.count > 0,
           MeasurementAppManager.share.appUserConfigMode.videoCover.count > 0,
           //: MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue,
           MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue,
           //: MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
           MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(AtWindowType.video_Cover)
        }

        //: if MeasurementAppManager.share.appUserConfigMode.showNewGuidance, MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue && MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.appUserConfigMode.showNewGuidance, MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue, MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(AtWindowType.New_Guidance)
        }

        //: if MeasurementAppManager.share.appUserConfigMode.headPicRejectNotice.count > 0 && MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue && MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.appUserConfigMode.headPicRejectNotice.count > 0, MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue, MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue {
            //: refuseViewData["content"] = MeasurementAppManager.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(String(str_roomData))] = MeasurementAppManager.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(String(str_upContent.prefix(7)))] = (String(str_addData) + String(str_resultData.suffix(5)) + "eade" + String(str_makeTitle.prefix(4)))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(AtWindowType.Attestation_Refuse)
        }

        //: if MeasurementAppManager.share.appUserConfigMode.realPicRejectNotice.count > 0 && MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue && MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.appUserConfigMode.realPicRejectNotice.count > 0, MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue, MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue {
            //: refuseViewData["content"] = MeasurementAppManager.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(String(str_roomData))] = MeasurementAppManager.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(String(str_upContent.prefix(7)))] = (String(str_blockTitle))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(AtWindowType.Attestation_Refuse)
        }
    }

    //: func startLivePopUpWindow() {
    func modelStatus() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(AtWindowType.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func straitAndNarrowWindow() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(AtWindowType.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func messagePlayer() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(AtWindowType.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func heritage(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(String(str_roomData))] = dic[(String(str_roomData))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(String(str_upContent.prefix(7)))] = dic[(String(str_upContent.prefix(7)))] as? String
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard SocketReactiveCompatible.shared.isTalking == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(AtWindowType.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func toAt() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(AtWindowType.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func put() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.videoType(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func videoType(type: AtWindowType) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: LimitPushManager.share.func__pushToWebVC(webViewType: .SiginPopup)
            LimitPushManager.share.recordIn(webViewType: .SiginPopup)
        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = AlterThen(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
            //: view.show()
            view.timeIn()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = PhysicalObjectUpView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
            //: view.show()
            view.photoShow()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }
        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = RefreshWithUpView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
            //: view.show()
            view.topOut()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = MeasurementUpView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
            //: view.show()
            view.priceRow()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = a_collectionName.object(forKey: a_videoName)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.barValue(date: Date(), dateFormat: (String(str_centerName.suffix(6)) + "M-dd"))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                a_collectionName.set(today, forKey: a_videoName)
                //: LimitPushManager.share.func__pushToSubscribeAlert()
                LimitPushManager.share.callParams()
            }
        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = DoingeUpView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
            //: view.setViewData(dit: refuseViewData)
            view.everyCurrent(dit: refuseViewData)
            //: view.show()
            view.popAction()
        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = VideoUpView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
            //: view.show()
            view.colorShow()
 
        }
    }
}
