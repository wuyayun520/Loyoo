
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_giftData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "leading_add_image" :*/
fileprivate let str_modelPairMakeData:String = "LEADING"
fileprivate let str_estimatedValue:String = "view user voice_ad"
fileprivate let str_makeValue:String = "location bottom model importd_image"

/*: "btn_back_white" :*/
fileprivate let str_thoughtText:[Character] = ["b","t","n","_","b","a"]
fileprivate let str_topName:String = "self to do appck_white"

/*: (+ :*/
fileprivate let str_donationValue:[Character] = ["(","+"]

/*: )" :*/
fileprivate let str_minimumData:String = ")"

/*: "area_icon_ :*/
fileprivate let str_normalData:[Character] = ["a","r","e","a","_","i","c","o","n","_"]

/*: @2x" :*/
fileprivate let str_viewValue:[Character] = ["@","2","x"]

/*: "get img error" :*/
fileprivate let str_giftContent:[Character] = ["g","e","t"," ","i","m","g"]
fileprivate let str_aspectData:[Character] = [" ","e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginViewController: TalkingBaseViewController {
class TitleRecognizerDelegate: PropertyViewController {
	var modelSum: Double = -90.8
	var listDictionary: [AnyHashable: String] = [:]
	var technologySum: Double = 67.0
	var headText: String = "need"
	var contentArray: [AnyHashable] = []
	var atDictionary: [AnyHashable: String] = [:]
	var videoEnable: Bool = false
	var imageIconSum: Double = 68.4
	var gestureDictionary: [AnyHashable: String] = [:]

    var makeImageView: UIImageView?

    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = ValueRegularLocationTool.share.reclaimOf()

    //: private var phoneOrEmailStr = ""
    private var phoneOrEmailStr = ""
    //: private var password: String?
    private var password: String?

    //: public var loginType: TalkingLoginVCType?
    public var loginType: ActualLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: ActualLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: loginType = type
        loginType = type
    }

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_giftData.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    
            if (backBtn.contentScaleFactor == 1.63) && (backBtn.layer.zPosition == 61.80) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let requestDown = ThanOfView()
            requestDown.startOff = animated

            requestDown.layerText = areaModel.areaCode
            
            
            requestDown.allMagnitude = { [self] brandSum in
            self.imageIconSum = brandSum
            
            self.imageIconSum = 0
            return self.imageIconSum
            }
            requestDown.awakeDictionary = { [self] collectionDictionary in
            self.gestureDictionary = collectionDictionary
            
            guard var value = self.gestureDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                backBtn.addSubview(requestDown)
            }

	}

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
            if (loginView.otherLeftLine.constraintsAffectingLayout(for: .horizontal).count == 81) && (loginView.otherLeftLine.convert(CGPoint.zero, to: loginView.otherLeftLine.superview).y == 42.65) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let sectionGift = ThanOfView(frame: loginView.otherLeftLine.frame.insetBy(dx: CGFloat(390.87), dy: CGFloat(463.39)))
            sectionGift.startOff = self.hideNavi

            sectionGift.layerText = phoneOrEmailStr
            
            
            sectionGift.allMagnitude = { [self] brandSum in
            self.modelSum = brandSum
            
                self.modelSum -= 1
                if self.modelSum <= 0 {
                    self.modelSum = self.modelSum + 1
                }
            return self.modelSum
            }
            sectionGift.awakeDictionary = { [self] collectionDictionary in
            self.listDictionary = collectionDictionary
            
            guard var value = self.listDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                loginView.otherLeftLine.addSubview(sectionGift)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.romaine()
        //: self.setupSubViewsConstraint()
        self.changeConstraint()
        //: self.bindInteraction()
        self.quantityerchange()

        makeImageView = UIImageView(frame: self.view.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(Double(self.view.frame.origin.x)), width: CGFloat(0), height: CGFloat(Int(self.view.bounds.size.width)))))
        if let makeImageView = makeImageView {
            self.makeImageView?.image = UIImage(named: (str_modelPairMakeData.lowercased() + String(str_estimatedValue.suffix(3)) + String(str_makeValue.suffix(7))))
            if (makeImageView.layoutGuides.count == 197) && (makeImageView.inputAccessoryViewController != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(makeImageView)
            }
        }
    
            if (self.prefersStatusBarHidden) && (self.nibBundle != nil && self.nibBundle!.bundlePath.hasSuffix("cell")) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let roomGift = ThanOfController()
            
            roomGift.topQuantity = { [self] brandSum in
            self.technologySum = brandSum
            
            return self.technologySum
            }
            roomGift.requestAddText = { [self] textText in
            self.headText = textText
            
            var roomGift = phoneOrEmailStr
            if let section = roomGift.max() {
                roomGift.insert(section, at: roomGift.startIndex)
            }
            if roomGift.contains(self.headText) {
                self.headText = roomGift
            }
            
            return self.headText
            }
            roomGift.scopeSuccessArray = { [self] userTimeCellArray in
            self.contentArray = userTimeCellArray
            
            guard var value = self.contentArray as? [String] else {
                return nil
            }
            return value
            }
            roomGift.clickDictionary = { [self] collectionDictionary in
            self.atDictionary = collectionDictionary
            
            guard var value = self.atDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.navigationController?.present(roomGift.self, animated: false) { [self] in
            self.videoEnable = false
                }
            }

	}

    //: deinit {
    deinit {}

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: NameFieldDelegate = {
        //: let loginView = TalkingLoginView.init(type: self.loginType!)
        let loginView = NameFieldDelegate(type: self.loginType!)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: a_limitRecordScreenName, width: 44, height: 44))
        //: btn.setImage(UIImage.outsideText(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_thoughtText) + String(str_topName.suffix(8)))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(lifestyle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginViewController {
extension TitleRecognizerDelegate {
    //: @objc func backBtnClick() {
    @objc func lifestyle() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__getPhoneCodeAction() {
    func statuteTitle() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
            LoginReactiveCompatible.month(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: if succeed {
                if succeed {
                    //: self.func__pushToPhoneCodeVC()
                    self.boner()
                }
                //: })
            })
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: phoneOrEmailStr, isBind: false) { succeed, result, errorModel in
            LoginReactiveCompatible.object(emailStr: phoneOrEmailStr, isBind: false) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: if succeed {
                if succeed {
                    //: self.func__pushToPhoneCodeVC()
                    self.boner()
                }
            }
        }
    }

    /// 密码登录
    //: private func func__passwordLogin() {
    private func sizeHiddenLive() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: guard let pwd = password else { return }
        guard let pwd = password else { return }
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_passwordLogin(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { succeed, result, errorModel in
            LoginReactiveCompatible.cuttingEdge(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
            }
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_passwordEmailLogin(emailStr: phoneOrEmailStr, pwd: pwd) { succeed, result, errorModel in
            LoginReactiveCompatible.handle(emailStr: phoneOrEmailStr, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
            }
        }
    }

    //: func func__pushToAreaCodeVC() {
    func serviceJostle() {
        //: let vc = TalkingAreaCodeChoiceVC()
        let vc = UnimprisonedHavenViewController()
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        //: vc.backCountryCode = { [weak self] areaModel in
        vc.backCountryCode = { [weak self] areaModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.areaModel = areaModel
            self.areaModel = areaModel
            //: self.func__updateAreaView()
            self.from()
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func boner() {
        //: let vc = TalkingLoginCodeVC(type: self.loginType!)
        let vc = ManagerViewController(type: self.loginType!)
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: vc.areaCodeNum = areaModel.areaCode
            vc.areaCodeNum = areaModel.areaCode
        }
        //: vc.phoneOrEmailStr = phoneOrEmailStr
        vc.phoneOrEmailStr = phoneOrEmailStr
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }

    //: func func__updateAreaView() {
    func from() {
        //: self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (String(str_normalData)) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = MonochromeThen.default.nearKey(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: self.loginView.areaImageView.image = UIImage(data: data)
                self.loginView.areaImageView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: self.loginView.areaImageView.image = UIImage.placeImgSquare()
                self.loginView.areaImageView.image = UIImage.pineTreeStateSquare()
                //: printLog(message: "get img error")
                printLog(message: (String(str_giftContent) + String(str_aspectData)))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.recordFinish(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginViewController {
extension TitleRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func romaine() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        from()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func changeConstraint() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func quantityerchange() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.phoneOrEmailStr = phone
            self.phoneOrEmailStr = phone
            //: self.password = pwd
            self.password = pwd
            //: if pwd?.count ?? 0 > 0 {
            if pwd?.count ?? 0 > 0 { // pwd
                //: self.func__passwordLogin()
                self.sizeHiddenLive()
                //: } else {
            } else { // OTP
                //: self.func__getPhoneCodeAction()
                self.statuteTitle()
            }
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.serviceJostle()
        }

        //: addTapGestureRecognizer()
        moveRecognizer()
    }
}
