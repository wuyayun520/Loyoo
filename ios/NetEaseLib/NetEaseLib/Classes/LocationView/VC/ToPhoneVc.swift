
//: Declare String Begin

/*: "midfield_img" :*/
fileprivate let str_loopValue:[Character] = ["m","i","d","f","i","e","l","d","_"]
fileprivate let str_makeName:String = "malemg"

/*: "btn_back_white" :*/
fileprivate let str_sName:String = "view height self valuebtn_"
fileprivate let str_sendContent:[Character] = ["e"]

/*: (+ :*/
fileprivate let str_photoName:String = "(+"

/*: )" :*/
fileprivate let str_styleTitle:[Character] = [")"]

/*: "area_icon_ :*/
fileprivate let str_mainLoadText:String = "area_irequest let sub"
fileprivate let str_blockHideContent:String = "make value bycon_"

/*: @2x" :*/
fileprivate let str_liveData:[Character] = ["@","2","x"]

/*: "get img error" :*/
fileprivate let str_viewName:String = "get imtype object search true guard"
fileprivate let str_hiddenTitle:[Character] = ["g"," ","e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToPhoneVc.swift
//  NetEaseLib
//
//  Created by Charlotte on 2024/7/31.
//

//: import UIKit
import UIKit

//: class TalkingBindPhoneVC: TalkingBaseViewController {
class ToPhoneVc: PropertyViewController {
	var imageDoing: Bool = false
	var selectWindowTotal: Int = 44
	var labelArray: [AnyHashable] = []
	var dataStateDictionary: [AnyHashable: String] = [:]

    var pictureImageView: UIImageView?

    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = ValueRegularLocationTool.share.reclaimOf()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.upwards()
        //: self.setupSubViewsConstraint()
        self.exaggerate()
        //: self.bindInteraction()
        self.loadThan()
        //: self.loginView.setPhoneView()
        self.loginView.resignSize()

        pictureImageView = UIImageView(frame: self.view.frame.insetBy(dx: CGFloat(0), dy: CGFloat(0)))
        if let pictureImageView = pictureImageView {
            self.pictureImageView?.image = UIImage(named: (String(str_loopValue) + str_makeName.replacingOccurrences(of: "male", with: "i")))
            if (pictureImageView.image != nil) && (pictureImageView.layer.position.x == 89.99) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(pictureImageView)
            }
        }
    
            if (loginView.layer.position.y == 15.19) && (loginView.layer.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let menuLet = GiftShotView(frame: loginView.frame.insetBy(dx: CGFloat(62), dy: CGFloat(623.02)))
            menuLet.dataName = areaModel.areaName
            menuLet.unsleepingSwitch = { [self] showClose in
            self.imageDoing = showClose
            
            var menuLet = self.hideNavi
                menuLet = true
                menuLet = false
            if menuLet != self.imageDoing {
                self.imageDoing = menuLet
            }
            
                self.imageDoing = true
                self.imageDoing = !self.imageDoing
            return self.imageDoing
            }
            menuLet.awakeMagnitude = { [self] momentMoveVoiceSum in
            self.selectWindowTotal = momentMoveVoiceSum
            
            return self.selectWindowTotal
            }
            menuLet.snapArray = { [self] lastArray in
            self.labelArray = lastArray
            
            guard var value = self.labelArray as? [String] else {
                return nil
            }
            return value
            }
            menuLet.indexDictionary = { [self] managerBagDictionary in
            self.dataStateDictionary = managerBagDictionary
            
            guard var value = self.dataStateDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                loginView.addSubview(menuLet)
            }

	}

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: NameFieldDelegate = {
        //: let loginView = TalkingLoginView.init(type: .LoginPhone)
        let loginView = NameFieldDelegate(type: .LoginPhone)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: a_limitRecordScreenName, width: 44, height: 44))
        //: btn.setImage(UIImage.outsideText(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_sName.suffix(4)) + "back_whit" + String(str_sendContent))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(push), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingBindPhoneVC {
extension ToPhoneVc {
    //: @objc func backBtnClick() {
    @objc func push() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__pushToAreaCodeVC() {
    func takeApart() {
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
            self.add()
        }
    }

    //: func func__updateAreaView() {
    func add() {
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
            imageName = (String(str_mainLoadText.prefix(6)) + String(str_blockHideContent.suffix(4))) + "\(imageName)@2x"
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
                printLog(message: (String(str_viewName.prefix(6)) + String(str_hiddenTitle)))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.recordFinish(urlStr: areaModel.url)
        }
    }

    /// 获取验证码跳转
    //: func func__pushCodeView(phone: String) {
    func allPhone(phone: String) {
        //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
        LoginReactiveCompatible.phone(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: let vc = TalkingLoginBindInputCodeVC()
                let vc = ValueViewController()
                //: vc.areaCodeNum = self.areaModel.areaCode
                vc.areaCodeNum = self.areaModel.areaCode
                //: vc.phoneOrEmailStr = phone
                vc.phoneOrEmailStr = phone
                //: vc.viewType = .BindPhone
                vc.viewType = .BindPhone
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
            }
            //: })
        })
    }
}

// MARK: - Layout

//: extension TalkingBindPhoneVC {
extension ToPhoneVc {
    // 添加视图
    //: private func setupSubviews() {
    private func upwards() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        add()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func exaggerate() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func loadThan() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushCodeView(phone:phone)
            self.allPhone(phone: phone)
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.takeApart()
        }
    }
}
