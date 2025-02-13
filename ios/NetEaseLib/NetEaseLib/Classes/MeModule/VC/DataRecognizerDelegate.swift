
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_messageTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "Settings" :*/
fileprivate let str_layerFrameSendName:String = "var if stringSetti"
fileprivate let str_borderValue:[Character] = ["n","g","s"]

/*: "mount_img" :*/
fileprivate let str_selectionValue:[Character] = ["m","o","u","n","t","_","i","m","g"]

/*: "Security" :*/
fileprivate let str_successData:[Character] = ["S","e","c","u","r","i","t","y"]

/*: "More" :*/
fileprivate let str_rangeKitTitle:[Character] = ["M","o","r","e"]

/*: "Logout succeeded!" :*/
fileprivate let str_modelData:String = "Logoutraw self content"
fileprivate let str_infoData:String = "ed!let self"

/*: "MediumView" :*/
fileprivate let str_videoExtraValue:String = "Talkicollection name to label"
fileprivate let str_leadingData:String = "let tablengSet"

/*: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!" :*/
fileprivate let str_edgeData:[UInt8] = [0x50,0x6c,0x65,0x61,0x73,0x65,0x20,0x63,0x6f,0x6d,0x6d,0x75,0x6e,0x69,0x63,0x61,0x74,0x65,0x20,0x77,0x69,0x74,0x68,0x20,0x6f,0x6e,0x6c,0x69,0x6e,0x65,0x20,0x73,0x65,0x72,0x76,0x69,0x63,0x65,0x20,0x66,0x69,0x72,0x73,0x74,0x20,0x61,0x6e,0x64,0x20,0x74,0x68,0x65,0x6e,0x20,0x75,0x70,0x6c,0x6f,0x61,0x64,0x20,0x6c,0x6f,0x67,0x73,0x2c,0x20,0x6c,0x6f,0x67,0x73,0x20,0x61,0x72,0x65,0x20,0x75,0x73,0x65,0x64,0x20,0x74,0x6f,0x20,0x61,0x6e,0x61,0x6c,0x79,0x7a,0x65,0x20,0x70,0x72,0x6f,0x62,0x6c,0x65,0x6d,0x73,0x20,0x79,0x6f,0x75,0x20,0x65,0x6e,0x63,0x6f,0x75,0x6e,0x74,0x65,0x72,0x65,0x64,0x20,0x69,0x6e,0x20,0x74,0x68,0x65,0x20,0x75,0x73,0x65,0x20,0x6f,0x66,0x20,0x74,0x68,0x65,0x20,0x41,0x70,0x70,0x21]

/*: "Cancel" :*/
fileprivate let str_ofWiseValue:String = "Canceelse data add type"
fileprivate let str_countData:String = "equal"

/*: "OK" :*/
fileprivate let str_inputRemoveName:String = "user"

/*: "#999999" :*/
fileprivate let str_shareSectionValue:[Character] = ["#","9","9","9","9","9","9"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: enum SettingsType: String {
enum ConstraintNameConvertible: String {
    //: case Contact_information   = "Contact information"
    case Contact_information = "Contact information"
    //: case Turnon_Notif          = "Notifications"
    case Turnon_Notif = "Notifications"
    //: case Social_Preferences    = "Social Preferences"
    case Social_Preferences = "Social Preferences"
    //: case Announcement_Settings = "Announcement Settings"
    case Announcement_Settings = "Announcement Settings"
    //: case Terms                 = "Terms of Use"
    case Terms = "Terms of Use"
    //: case Privacy               = "Privacy Policy"
    case Privacy = "Privacy Policy"
    //: case Aboutus               = "About us"
    case Aboutus = "About us"
    //: case Upload_Log            = "Upload Log"
    case Upload_Log = "Upload Log"
    //: case Black_List            = "Blacklist"
    case Black_List = "Blacklist"
    //: case Feedback              = "Feedback"
    case Feedback
    //: case Logout                = "Logout"
    case Logout
}

//: class TalkingSettingsVC: TalkingBaseViewController {
class DataRecognizerDelegate: PropertyViewController {
	var levelEnable: Bool = true
	var clickQuantity: Int = 2
	var likeTitle: String = "array"
	var labPlayerArray: [AnyHashable] = []
	var digitalDictionary: [AnyHashable: String] = [:]
	var blockOn: Bool = true
	var videoQuantity: Double = -3.3
	var viewArray: [AnyHashable] = []
	var ofTopDictionary: [AnyHashable: String] = [:]

    var userImageView: UIImageView?
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_messageTitle, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
            if (self.supportedInterfaceOrientations == .portraitUpsideDown) && (self.inputAccessoryViewController != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let constraintMake = UpwardlyController()

            
            
            constraintMake.existentPicOpen = { [self] contentViewSwitch in
            self.levelEnable = contentViewSwitch
            
            var constraintMake = self.hideNavi
            constraintMake = !constraintMake
            if constraintMake != self.levelEnable {
                self.levelEnable = constraintMake
            }
            
                self.levelEnable = true
                self.levelEnable = true
            return self.levelEnable
            }
            constraintMake.superiorInterval = { [self] observerQuantity in
            self.clickQuantity = observerQuantity
            
            return self.clickQuantity
            }
            constraintMake.mentalFacultyLocationContent = { [self] tableText in
            self.likeTitle = tableText
            
            return self.likeTitle
            }
            constraintMake.photoArray = { [self] freeArray in
            self.labPlayerArray = freeArray
            
            guard var value = self.labPlayerArray as? [String] else {
                return nil
            }
            return value
            }
            constraintMake.beautyDictionary = { [self] windowDictionary in
            self.digitalDictionary = windowDictionary
            
            guard var value = self.digitalDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.navigationController?.pushViewController(constraintMake.self, animated: true)
            }

	}

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    
            if ((MainTable.inputAssistantItem.trailingBarButtonGroups.count == 8) && (MainTable.inputAssistantItem.leadingBarButtonGroups.count == 5)) && (MainTable.layer.contentsRect.size.width != 1) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let saveData = UpwardlyView()


            saveData.viewUserDoing = { [self] contentViewSwitch in
            self.blockOn = contentViewSwitch
            
            var saveData = animated
            saveData = false
            if saveData != self.blockOn {
                self.blockOn = saveData
            }
            
            return self.blockOn
            }
            saveData.valueInterval = { [self] mSayMagnitude in
            self.videoQuantity = mSayMagnitude
            
            return self.videoQuantity
            }
            saveData.nameArray = { [self] freeArray in
            self.viewArray = freeArray
            
            guard var value = self.viewArray as? [String] else {
                return nil
            }
            return value
            }
            saveData.bottomDictionary = { [self] windowDictionary in
            self.ofTopDictionary = windowDictionary
            
            guard var value = self.ofTopDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                MainTable.addSubview(saveData)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Settings".localized
        self.title = (String(str_layerFrameSendName.suffix(5)) + String(str_borderValue)).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.playerEqual()
        //: designView()
        design()

        userImageView = UIImageView(frame: self.view.bounds.standardized)
        if let userImageView = userImageView {
            self.userImageView?.image = UIImage(named: (String(str_selectionValue)))
            if (userImageView.layer.anchorPointZ != 0) && (userImageView.canResignFirstResponder != true) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(userImageView)
            }
        }
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [[SettingsType]] = {
    private lazy var DataSource: [[ConstraintNameConvertible]] = {
        //: var array = [[SettingsType]]()
        var array = [[ConstraintNameConvertible]]()
        //: var array1: [SettingsType] = [.Contact_information]
        var array1: [ConstraintNameConvertible] = [.Contact_information]
        //: var array2: [SettingsType] = [.Turnon_Notif]
        var array2: [ConstraintNameConvertible] = [.Turnon_Notif]
        //: var array3: [SettingsType] = [.Social_Preferences, .Announcement_Settings]
        var array3: [ConstraintNameConvertible] = [.Social_Preferences, .Announcement_Settings]

        //: var array4: [SettingsType] = [.Terms, .Privacy]
        var array4: [ConstraintNameConvertible] = [.Terms, .Privacy]
        //: var array5: [SettingsType] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        var array5: [ConstraintNameConvertible] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        //: var array6: [SettingsType] = [.Logout]
        var array6: [ConstraintNameConvertible] = [.Logout]

        //: array.append(array1)
        array.append(array1)
        //: array.append(array2)
        array.append(array2)
        //: array.append(array3)
        array.append(array3)
        //: array.append(array4)
        array.append(array4)
        //: array.append(array5)
        array.append(array5)
        //: array.append(array6)
        array.append(array6)
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue - a_userTitle), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: private lazy var headerSource: [String] = {
    private lazy var headerSource: [String] = {
        //: var array = ["", "", "", "Security".localized, "More".localized, ""]
        var array = ["", "", "", (String(str_successData)).localized, (String(str_rangeKitTitle)).localized, ""]
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsVC {
extension DataRecognizerDelegate {
    /// logout
    //: func logoutTool() {
    func tool() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard PrefaceReactiveCompatible.picStart() == false else { return }
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard SocketReactiveCompatible.shared.isTalking == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.episode(showMsg: a_viewNetValue)
            //: return
            return
        }

        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingLoginRequestTool.req_loginOut { t in
        LoginReactiveCompatible.index { t in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if t {
            if t {
                //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: a_senseContent, object: nil, userInfo: nil)
            }
        }
    }

    //: func LockAccount() {
    func label() {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        ConstraintRequestTool.giveItAWhirlCompletion(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.tool()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.afterTitle(showMsg: (String(str_modelData.prefix(6)) + " succeed" + String(str_infoData.prefix(3))).localized)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension DataRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerSource.count
        return headerSource.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let verr: [SettingsType] = DataSource[section]
        let verr: [ConstraintNameConvertible] = DataSource[section]
        //: return verr.count
        return verr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 3 || section == 4 {
        if section == 3 || section == 4 {
            //: return 41
            return 41
        }
        //: return 12
        return 12
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingSettingCell"
        let identifier = (String(str_videoExtraValue.prefix(5)) + String(str_leadingData.suffix(5)) + "tingCell")
        //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingSettingCell
        let cell: MediumView = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! MediumView

        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [ConstraintNameConvertible] = DataSource[indexPath.section]

        //: if indexPath.section == DataSource.count - 1 {
        if indexPath.section == DataSource.count - 1 {
            //: cell.setLogout(detail: verr[indexPath.row].rawValue)
            cell.imageInvite(detail: verr[indexPath.row].rawValue)

            //: cell.logutBtn.rx.tap.subscribe { [weak self] (event) in
            cell.logutBtn.rx.tap.subscribe { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.logoutTool()
                self.tool()
                //: }.disposed(by: bag)
            }.disposed(by: bag)

            //: } else {
        } else {
            //: cell.setCellMessage(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count-1 )
            cell.instance(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count - 1)
        }

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [ConstraintNameConvertible] = DataSource[indexPath.section]
        //: if verr[indexPath.row] == .Feedback {
        if verr[indexPath.row] == .Feedback {
            //: let vc = TalkingFeedbackVC.init()
            let vc = FeedbackTalkingViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Black_List {
        } else if verr[indexPath.row] == .Black_List {
            //: let vc = TalkingBlacklistVC.init()
            let vc = LimitBlacklistVc()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Terms {
        } else if verr[indexPath.row] == .Terms {
            //: LimitPushManager.share.func__pushToWebVC(webViewType: .TermsofUse)
            LimitPushManager.share.recordIn(webViewType: .TermsofUse)
            //: } else if verr[indexPath.row] == .Privacy {
        } else if verr[indexPath.row] == .Privacy {
            //: LimitPushManager.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
            LimitPushManager.share.recordIn(webViewType: .PrivacyPolicy)
            //: } else if verr[indexPath.row] == .Contact_information {
        } else if verr[indexPath.row] == .Contact_information {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = CloseCellViewController()
            //: vc.setUnicersalView(type: .Contact_information)
            vc.offStatus(type: .Contact_information)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Turnon_Notif {
        } else if verr[indexPath.row] == .Turnon_Notif {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = CloseCellViewController()
            //: vc.setUnicersalView(type: .Notifications)
            vc.offStatus(type: .Notifications)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Social_Preferences {
        } else if verr[indexPath.row] == .Social_Preferences {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = CloseCellViewController()
            //: vc.setUnicersalView(type: .Social_Preferences)
            vc.offStatus(type: .Social_Preferences)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

            //: } else if verr[indexPath.row] == .Announcement_Settings {
        } else if verr[indexPath.row] == .Announcement_Settings {
            //: LimitPushManager.share.func__pushToWebVC(webViewType: .GiftBroadcast)
            LimitPushManager.share.recordIn(webViewType: .GiftBroadcast)

            //: } else if verr[indexPath.row] == .Aboutus {
        } else if verr[indexPath.row] == .Aboutus {
            //: let vc = TalkingAboutUsVC.init()
            let vc = CircumferenceThen()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Upload_Log {
        } else if verr[indexPath.row] == .Upload_Log {
            //: let config = ShowAlertConfig()
            let config = MarkAlertConfig()
            //: config.horizontalPadding = 30
            config.horizontalPadding = 30
            //: config.textFont = UIFont.pingfangRugularFont(fontSize: 16)
            config.textFont = UIFont.drogueSize(fontSize: 16)
            //: TalkingAlertShow.alert(title: nil, message: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, rightBlock: {
            TitleAlertShow.admittance(title: nil, message: String(bytes: str_edgeData, encoding: .utf8)!.localized, leftBtnTitle: (String(str_ofWiseValue.prefix(5)) + str_countData.replacingOccurrences(of: "equal", with: "l")).localized, rightBtnTitle: "OK".localized, rightBlock: {
                //: UploadLogTool.shared.uploadLog()
                TitleMediumLogTool.shared.humanActionWrite()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 40))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: 40))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.playerEqual()
        //: let title = UILabel.init()
        let title = UILabel()
        //: title.textColor = UIColor.init(hex: "#999999")
        title.textColor = UIColor(hex: (String(str_shareSectionValue)))
        //: title.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        title.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: title.text = headerSource[section]
        title.text = headerSource[section]
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(view).offset(30)
            make.leading.equalTo(view).offset(30)
            //: make.centerY.equalTo(view)
            make.centerY.equalTo(view)
        }
        //: return view
        return view
    }
}

// MARK: - UI

//: extension TalkingSettingsVC {
extension DataRecognizerDelegate {
    //: private func designView() {
    private func design() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: "TalkingSettingCell")
        MainTable.register(MediumView.self, forCellReuseIdentifier: (String(str_videoExtraValue.prefix(5)) + String(str_leadingData.suffix(5)) + "tingCell"))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
