
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_leadingName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "Personal information" :*/
fileprivate let str_viewMinimizeName:String = "Perstable self view"
fileprivate let str_callName:String = "infwith"
fileprivate let str_equalData:String = "whiten"

/*: "mount_img" :*/
fileprivate let str_viewValue:String = "text outside organize title selfmount_i"
fileprivate let str_recordValue:String = "the"

/*: _ :*/
fileprivate let str_appText:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_backName:[UInt8] = [0x80,0x8c,0x81,0x88]

/*: "female" :*/
fileprivate let str_videoName:String = "fdeadlinemaldeadline"

/*: "sex" :*/
fileprivate let str_colorName:String = "bottomex"

/*: "nickname" :*/
fileprivate let str_infoData:String = "titleicktitleame"

/*: "birthday" :*/
fileprivate let str_upMakeText:String = "BIRT"

/*: "%.2d" :*/
fileprivate let str_layerTitle:String = "%.2dmodel info length size view"

/*: - :*/
fileprivate let str_handleTitle:String = "show"

/*: "User :*/
fileprivate let str_makeContent:String = "height ofUser"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DocumentViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class DocumentViewController: PropertyViewController {
	var outsideDoing: Bool = true
	var databaseArray: [AnyHashable] = []
	var modelOn: Bool = true
	var giftArray: [AnyHashable] = []

    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
 
    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        labUp(isOpen: false)
	}
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            MeasurementAppManager.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            MeasurementAppManager.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(str_viewMinimizeName.prefix(4)) + "onal " + str_callName.replacingOccurrences(of: "with", with: "o") + "rmat" + str_equalData.replacingOccurrences(of: "white", with: "io")).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.liveGift()
        //: self.setupSubViewsConstraint()
        self.convert()
        //: self.bindInteraction()
        self.the()
        //: addTapGestureRecognizer()
        moveRecognizer()
	}

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditInfoView = {
    lazy var editInfoView: AfterwardInfoView = {
        //: let infoView = TalkingLoginEditInfoView.init()
        let infoView = AfterwardInfoView()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension DocumentViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func noNavi() {
        //: super.naviPopback()
        super.noNavi()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(MeasurementAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(a_domainContent)_\(MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_backName.map{$0^237}, encoding: .utf8)! : (str_videoName.replacingOccurrences(of: "deadline", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        a_textTurnName.photoOf(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func componentPart() {
        if MeasurementAppManager.share.userFillInfoMode.nickName.count <= 0 {
            loadPlayName()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = MeasurementAppManager.share.userFillInfoMode.sex
        params[(str_colorName.replacingOccurrences(of: "bottom", with: "s"))] = MeasurementAppManager.share.userFillInfoMode.sex
        //: params["nickname"] = MeasurementAppManager.share.userFillInfoMode.nickName
        params[(str_infoData.replacingOccurrences(of: "title", with: "n"))] = MeasurementAppManager.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", MeasurementAppManager.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", MeasurementAppManager.share.userFillInfoMode.birthDay))-\(MeasurementAppManager.share.userFillInfoMode.birthYear)"
        params[(str_upMakeText.lowercased() + "hday")] = "\(String(format: "%.2d", MeasurementAppManager.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", MeasurementAppManager.share.userFillInfoMode.birthDay))-\(MeasurementAppManager.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC.init()
        let VC = InstalmentViewController()
        //: VC.params = params
        VC.params = params
        colorController()?.navigationController?.pushViewController(VC, animated: true)
    }
 
    /// skip事件
    //: private func func__skipBtnAction() {
    private func skip() {
        //: func__checkNickName()
        loadPlayName()
        //: MeasurementAppManager.share.userFillInfoMode.setBirth()
        MeasurementAppManager.share.userFillInfoMode.pathEqual()
        MeasurementAppManager.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        componentPart()
    }

    //: private func func__checkNickName() {
    private func loadPlayName() {
        //: let randCode = Int(arc4random_uniform(899999)+100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: MeasurementAppManager.share.userFillInfoMode.nickName = "User\(randCode)"
        MeasurementAppManager.share.userFillInfoMode.nickName = (String(str_makeContent.suffix(4))) + "\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension DocumentViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func liveGift() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func convert() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func the() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: DataInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: break
                break
            //: case .NickName:
            case .NickName:
                break
            //: break
            //: case .Birth: break
            case .Birth: break

            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(MeasurementAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(a_topTurnTitle)_\(MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_backName.map{$0^237}, encoding: .utf8)! : (str_videoName.replacingOccurrences(of: "deadline", with: "e")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                a_textTurnName.photoOf(eventID: eventID)
                // 校验验证码
                if MeasurementAppManager.share.userFillInfoMode.inviteCode.count > 0 {
                    let params = ["invite_code": MeasurementAppManager.share.userFillInfoMode.inviteCode]
                    LoginReactiveCompatible.status(params: params) { succeed, _, _ in
                        guard succeed else { return }
                        self.componentPart()
                    }
                    
                } else {
                    self.componentPart()
                }

                
                
            //: break
            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(MeasurementAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(a_versionContent)_\(MeasurementAppManager.share.userFillInfoMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_backName.map{$0^237}, encoding: .utf8)! : (str_videoName.replacingOccurrences(of: "deadline", with: "e")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                a_textTurnName.photoOf(eventID: eventID)
                //: self.func__skipBtnAction()
                self.skip()
            }
        }
    }
}
