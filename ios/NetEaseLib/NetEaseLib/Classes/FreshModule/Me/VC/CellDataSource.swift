
//: Declare String Begin

/*: "open_picture" :*/
fileprivate let str_tableRenderText:String = "pull hidden let color viewopen_p"
fileprivate let str_centerValue:[Character] = ["i","c","t","u","r","e"]

/*: "mfBean" :*/
fileprivate let str_changeName:[UInt8] = [0x6e,0x61,0x65,0x42,0x66,0x6d]

/*: "bannerList" :*/
fileprivate let str_titleDelayOfName:[Character] = ["b","a","n","n","e","r","L","i","s","t"]

/*: "icon_me_chatsettings" :*/
fileprivate let str_controlValue:String = "image wrapicon_m"
fileprivate let str_pointData:String = "TSETTIN"
fileprivate let str_topKitValue:[Character] = ["g","s"]

/*: "icon_me_automatic" :*/
fileprivate let str_viewTitle:[Character] = ["i","c","o","n","_","m"]
fileprivate let str_showData:String = "e_autself let control string"
fileprivate let str_listValue:[Character] = ["o","m","a","t","i","c"]

/*: "icon_me_settings" :*/
fileprivate let str_onLayerContent:[Character] = ["i","c","o","n","_","m","e","_","s","e","t","t","i","n","g","s"]

/*: "icon_me_tc" :*/
fileprivate let str_clearValue:[Character] = ["i","c","o","n","_","m","e","_","t"]
fileprivate let str_nativeContent:String = "data"

/*: "icon_me_videoSet" :*/
fileprivate let str_imageModelData:String = "icotouch"
fileprivate let str_wrapTitle:String = "deoSetdetail across to block"

/*: "icon_me_bs" :*/
fileprivate let str_toData:[Character] = ["i","c","o","n","_","m","e","_","b","s"]

/*: "Enter \"Settings\" and open \"Camera\" permission to use this function normally" :*/
fileprivate let str_episodeValue:[UInt8] = [0x79,0x6c,0x6c,0x61,0x6d,0x72,0x6f,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x63,0x6e,0x75,0x66,0x20,0x73,0x69,0x68,0x74,0x20,0x65,0x73,0x75,0x20,0x6f,0x74,0x20,0x6e,0x6f,0x69,0x73,0x73,0x69,0x6d,0x72,0x65,0x70,0x20,0x22,0x61,0x72,0x65,0x6d,0x61,0x43,0x22,0x20,0x6e,0x65,0x70,0x6f,0x20,0x64,0x6e,0x61,0x20,0x22,0x73,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x22,0x20,0x72,0x65,0x74,0x6e,0x45]

/*: "Cancel" :*/
fileprivate let str_buttonValue:String = "let make for headCancel"

/*: "Settings" :*/
fileprivate let str_viewResultValue:String = "Settintype stack video"
fileprivate let str_managerName:String = "evens"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellDataSource.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class CellDataSource: PropertyViewController {
	var nearbyDoing: Bool = false
	var colorViewMagnitude: Int = 16
	var userOn: Bool = false
	var localTotal: Int = 3

    var shadeImageView: UIImageView?

    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(TotalOutputStreamable, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.playerEqual()
        //: reloadLocalData()
        viewEqual()
        //: func__reqBanner()
        barVideo()
        //: setupSubviews()
        fromSubviews()
        //: setupSubViewsConstraint()
        sinceMakeBack()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(atOf),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: a_askName,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(draw),
                                               //: name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION,
                                               name: a_imageTitle,
                                               //: object: nil)
                                               object: nil)

        shadeImageView = UIImageView(frame: self.view.frame.union(CGRect(x: CGFloat(Int(self.view.bounds.origin.y)), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
        if let shadeImageView = shadeImageView {
            self.shadeImageView?.image = UIImage(named: (String(str_tableRenderText.suffix(6)) + String(str_centerValue)))
            if (shadeImageView.center.x == 68.53) && (shadeImageView.alignmentRectInsets.top == 13) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(shadeImageView)
            }
        }
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        draw()
    
            if (tableView.isExclusiveTouch) && (tableView.backgroundColor != nil && tableView.backgroundColor!.cgColor == UIColor.cyan.cgColor) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let mentalImage = PackageView()
            mentalImage.policyJoinClose = self.hideNavi


            
            mentalImage.tableOpen = { [self] headOpen in
            self.userOn = headOpen
            
            var mentalImage = self.hideNavi
                mentalImage = true
                mentalImage = !mentalImage
            if mentalImage != self.userOn {
                self.userOn = mentalImage
            }
            
            return self.userOn
            }
            mentalImage.needQuantity = { [self] enableLineQuantity in
            self.localTotal = enableLineQuantity
            
            return self.localTotal
            }
                tableView.addSubview(mentalImage)
            }

	}

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
	if let shadeImageView = shadeImageView {

            if (shadeImageView.isExclusiveTouch) && (shadeImageView.backgroundColor != nil && shadeImageView.backgroundColor!.cgColor == UIColor.cyan.cgColor) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let mentalImage = PackageView()
            mentalImage.policyJoinClose = self.hideNavi


            
            mentalImage.tableOpen = { [self] headOpen in
            self.nearbyDoing = headOpen
            
            var mentalImage = self.hideNavi
                mentalImage = true
                mentalImage = !mentalImage
            if mentalImage != self.nearbyDoing {
                self.nearbyDoing = mentalImage
            }
            
            return self.nearbyDoing
            }
            mentalImage.needQuantity = { [self] enableLineQuantity in
            self.colorViewMagnitude = enableLineQuantity
            
            return self.colorViewMagnitude
            }
                shadeImageView.addSubview(mentalImage)
            }

	}

	}

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(SmartThen.self, forCellReuseIdentifier: SmartThen.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(UpBannerCell.self, forCellReuseIdentifier: UpBannerCell.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(AugustaThen.self, forCellReuseIdentifier: AugustaThen.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(LimitViewCell.self, forCellReuseIdentifier: LimitViewCell.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(LoadView.self, forCellReuseIdentifier: LoadView.className())
        //: table.addHeaderRefresh { [weak self] in
        table.thumbPunctuate { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.pageAppUpRefresh()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [NumerosityMeasurable] = //: return Array<NumerosityMeasurable>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension CellDataSource {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func pageAppUpRefresh() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        draw()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func draw() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        TableReactiveCompatible.bring { _, _, _ in
            //: self.reloadLocalData()
            self.viewEqual()
            //: self.tableView.endRefresh()
            self.tableView.infoTo()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if PropertyMManageressPushListener.giftShared().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: a_videoDeviceData, object: nil, userInfo: [String(bytes: str_changeName.reversed(), encoding: .utf8)!: 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func barVideo() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        GoldRequestManager().headNet(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(String(str_titleDelayOfName))] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = NumerosityMeasurable.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func viewEqual() {
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue && MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue, MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(str_controlValue.suffix(6)) + "e_cha" + str_pointData.lowercased() + String(str_topKitValue))),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (String(str_viewTitle) + String(str_showData.prefix(5)) + String(str_listValue))),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (String(str_onLayerContent)))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (String(str_onLayerContent)))]
        }
        //: if MeasurementAppManager.share.appUserConfigMode.showTaskCenter {
        if MeasurementAppManager.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (String(str_clearValue) + str_nativeContent.replacingOccurrences(of: "data", with: "c"))), at: 0)
        }
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (str_imageModelData.replacingOccurrences(of: "touch", with: "n") + "_me_vi" + String(str_wrapTitle.prefix(6)))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if a_keyPostText, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (String(str_toData))), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension CellDataSource {
    //: @objc func pushEdit() {
    @objc func atOf() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = TableModelViewController()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    //: func judgeCameraAuthorization() {
    func side() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        PrefaceReactiveCompatible.appBlock(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard SocketReactiveCompatible.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.episode(showMsg: a_viewNetValue)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = AttractivenessBeautyVc()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                TitleAlertShow.admittance(title: nil, message: String(bytes: str_episodeValue.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(str_buttonValue.suffix(6))).localized, rightBtnTitle: (String(str_viewResultValue.prefix(6)) + str_managerName.replacingOccurrences(of: "even", with: "g")).localized) {
                    //: TalkingAlertShow.hideAlert()
                    TitleAlertShow.lastAlert()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    TitleAlertShow.lastAlert()
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
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension CellDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: LoadView.className(), for: indexPath) as! LoadView
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.pathCreate(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.componentBtn()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: SmartThen.className(), for: indexPath) as! SmartThen
            //: cell.setViewData()
            cell.videoTarget()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: UpBannerCell.className(), for: indexPath) as! UpBannerCell
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.busyWith(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: AugustaThen.className(), for: indexPath) as! AugustaThen
            //: cell.setViewData()
            cell.userData()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: LimitViewCell.className(), for: indexPath) as! LimitViewCell
            //: cell.setViewData()
            cell.quantityersperseStart()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = EventRecognizerDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = MolarConcentrationDataSource()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = DataRecognizerDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: LimitPushManager.share.func__pushToWebVC(webViewType: .TaskCenter)
            LimitPushManager.share.recordIn(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            side()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = HungViewDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension CellDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func fromSubviews() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func sinceMakeBack() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
