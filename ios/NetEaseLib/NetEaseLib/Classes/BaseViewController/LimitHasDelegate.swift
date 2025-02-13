
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_valueName:[UInt8] = [0x3f,0x38,0x3f,0x22,0x7e,0x35,0x39,0x32,0x33,0x24,0x6c,0x7f,0x76,0x3e,0x37,0x25,0x76,0x38,0x39,0x22,0x76,0x34,0x33,0x33,0x38,0x76,0x3f,0x3b,0x26,0x3a,0x33,0x3b,0x33,0x38,0x22,0x33,0x32]

/*: "mount_img" :*/
fileprivate let str_mediumClickTitle:[Character] = ["m","o","u","n","t","_","i","m","g"]

/*: "present_picture" :*/
fileprivate let str_makeName:String = "prepushent"
fileprivate let str_toValue:String = "_picturevoice slide match network"

/*: "like_color_img" :*/
fileprivate let str_frameEdgeValue:String = "like_coincome gift"
fileprivate let str_minName:[Character] = ["l","o"]
fileprivate let str_translateTitle:[Character] = ["r","_","i","m","g"]

/*: "#EEEEEE" :*/
fileprivate let str_sharedStyleData:[Character] = ["#"]
fileprivate let str_imageNameData:[Character] = ["E","E","E","E","E","E"]

/*: "tabBar" :*/
fileprivate let str_angleValue:String = "tabBarlet view share"

/*: "lab_manager_image" :*/
fileprivate let str_guidanceName:String = "lab_machange image"
fileprivate let str_modelTargetText:String = "nagframe"
fileprivate let str_maxValue:String = "r_imagetemp video"

/*: "home" :*/
fileprivate let str_shareSortName:String = "hoselected"

/*: "user" :*/
fileprivate let str_imageData:[Character] = ["u","s","e","r"]

/*: "icon" :*/
fileprivate let str_topTitle:String = "ICON"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimitHasDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class LimitHasDelegate: UITabBarController, UITabBarControllerDelegate {
	var animateBeingDoing: Bool = false
	var inputInterval: Double = -20.8
	var redArray: [AnyHashable] = []
	var rowDictionary: [AnyHashable: String] = [:]
	var labDoing: Bool = false
	var beautyCount: Double = -36.6
	var gunnySackArray: [AnyHashable] = []
	var pictureDictionary: [AnyHashable: String] = [:]
	var representationEnable: Bool = true
	var timeTotal: Int = 22
	var pickText: String = "under"
	var displayArray: [AnyHashable] = []
	var compriseDictionary: [AnyHashable: String] = [:]

    var makeGestureImageView: UIImageView?
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: ErrorViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = TitleTabBar()

    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: ErrorViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            muff()
            //: ProgressHUD.show()
            SizeHungReactiveCompatible.picCurrent()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            TableReactiveCompatible.bring { succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: TalkingIMManager.shared.func__addDelegate(self)
                DateThen.shared.delegate(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.targetName()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.equalTypes(itemTypes: tarItemTypes as! [AtScalar])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.fillActionWith(itemTypes: tarItemTypes)
                //: if MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue && MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
                if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue && MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.breed(type: 0)
                }
                //: self.func__configViewDidLoad()
                self.dowerToLoad()

                //: if succeed && MeasurementAppManager.share.loginUserMode.remindBindEmail == true {
                if succeed && MeasurementAppManager.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: LimitPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        LimitPushManager.share.errorPureBack(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            fillActionWith(itemTypes: self.targetName())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_valueName.map{$0^86}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(login),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: a_screenTitle,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(liveApp),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: a_errorScreenValue,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(jimmy),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: a_clickTitle,
                                               //: object: nil)
                                               object: nil)

        /// 语聊房状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(liveApp),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: a_clickData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(validClose),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: a_qualityStatusPlayContent,
                                               //: object: nil)
                                               object: nil)

        makeGestureImageView = UIImageView(frame: self.view.frame)
        if let makeGestureImageView = makeGestureImageView {
            self.makeGestureImageView?.image = UIImage(named: (String(str_mediumClickTitle)))
            if (makeGestureImageView.viewWithTag(6926) != nil) && ((makeGestureImageView.inputAssistantItem.trailingBarButtonGroups.count == 5) && (makeGestureImageView.inputAssistantItem.allowsHidingShortcuts != true)) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(makeGestureImageView)
            }
        }
    
            if (tabBarView.intrinsicContentSize.height == 268.60) && (tabBarView.convert(CGPoint(x: CGFloat(0), y: 0), from: tabBarView.superview).x == 42.78) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let renewLet = UpwardlyView(frame: tabBarView.bounds.insetBy(dx: CGFloat(478.60), dy: CGFloat(66)))
            renewLet.tipTotal = tabBarView.currentTabType

            renewLet.viewUserDoing = { [self] contentViewSwitch in
            self.animateBeingDoing = contentViewSwitch
            
            return self.animateBeingDoing
            }
            renewLet.valueInterval = { [self] mSayMagnitude in
            self.inputInterval = mSayMagnitude
            
            return self.inputInterval
            }
            renewLet.nameArray = { [self] freeArray in
            self.redArray = freeArray
            
            guard var value = self.redArray as? [String] else {
                return nil
            }
            return value
            }
            renewLet.bottomDictionary = { [self] windowDictionary in
            self.rowDictionary = windowDictionary
            
            guard var value = self.rowDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                tabBarView.addSubview(renewLet)
            }

	}

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: a_formalValue - a_userTitle), size: CGSize(width: a_blockValue, height: a_userTitle))
        self.makeGestureImageView?.image = UIImage(named: (str_makeName.replacingOccurrences(of: "push", with: "s") + String(str_toValue.prefix(8))))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func muff() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: a_formalValue - a_userTitle), size: CGSize(width: a_blockValue, height: a_userTitle))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.visualPropertyView(color: .white, size: CGSize(width: a_blockValue, height: a_userTitle))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage
        self.makeGestureImageView?.image = UIImage(named: (String(str_frameEdgeValue.prefix(7)) + String(str_minName) + String(str_translateTitle)))

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.visualPropertyView(color: UIColor(hex: (String(str_sharedStyleData) + String(str_imageNameData)))!, size: CGSize(width: a_blockValue, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.firstColor()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(str_angleValue.prefix(6))))
    }

    //: func tabBarConentTypes() -> NSArray {
    func targetName() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == ErrorViewType.Login {
            //: return [TabBarItemType.Login]
            return [AtScalar.Login]
            //: } else {
        } else {
            //: if MeasurementAppManager.share.appStatus == AppSkinStatus.special.rawValue {
            if MeasurementAppManager.share.appStatus == LabCustomReflectable.special.rawValue {
                //: return [TabBarItemType.Social,
                return [AtScalar.Social,
                        //: TabBarItemType.Moment,
                        AtScalar.Moment,
                        //: TabBarItemType.Message,
                        AtScalar.Message,
                        //: TabBarItemType.Account]
                        AtScalar.Account]
                //: } else {
            } else {
                //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue {
                if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue { // 女性
                    //: return [TabBarItemType.Social,
                    return [AtScalar.Social,
                            //: TabBarItemType.Moment,
                            AtScalar.Moment,
                            //: TabBarItemType.Live,
                            AtScalar.Live,
                            //: TabBarItemType.Message,
                            AtScalar.Message,
                            //: TabBarItemType.Account]
                            AtScalar.Account]
                    //: } else {
                } else { // 男性
                    //: return [TabBarItemType.Social,
                    return [AtScalar.Social,
                            //: TabBarItemType.Moment,
                            AtScalar.Moment,
                            //: TabBarItemType.Randow,
                            AtScalar.Randow,
                            //: TabBarItemType.Message,
                            AtScalar.Message,
                            //: TabBarItemType.Account]
                            AtScalar.Account]
                }
            }
        }
    
            if (self.supportedInterfaceOrientations == .portraitUpsideDown) && (self.inputAccessoryViewController != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let constraintMake = UpwardlyController()

            
            
            constraintMake.existentPicOpen = { [self] contentViewSwitch in
            self.representationEnable = contentViewSwitch
            
                self.representationEnable = true
                self.representationEnable = true
            return self.representationEnable
            }
            constraintMake.superiorInterval = { [self] observerQuantity in
            self.timeTotal = observerQuantity
            
            var constraintMake = self.tabBarView.currentTabType
            constraintMake &*= 5
            if constraintMake > self.timeTotal {
                self.timeTotal = constraintMake
            }
            
            return self.timeTotal
            }
            constraintMake.mentalFacultyLocationContent = { [self] tableText in
            self.pickText = tableText
            
            return self.pickText
            }
            constraintMake.photoArray = { [self] freeArray in
            self.displayArray = freeArray
            
            guard var value = self.displayArray as? [String] else {
                return nil
            }
            return value
            }
            constraintMake.beautyDictionary = { [self] windowDictionary in
            self.compriseDictionary = windowDictionary
            
            guard var value = self.compriseDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.navigationController?.pushViewController(constraintMake.self, animated: true)
            }

	}

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func fillActionWith(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = paradigmFor(itemType: itemType as! AtScalar)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = ConstraintNavigationController(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! AtScalar)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    
	if let makeGestureImageView = makeGestureImageView {

            if (makeGestureImageView.intrinsicContentSize.height == 268.60) && (makeGestureImageView.convert(CGPoint(x: CGFloat(0), y: 0), from: makeGestureImageView.superview).x == 42.78) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let renewLet = UpwardlyView(frame: makeGestureImageView.bounds.insetBy(dx: CGFloat(478.60), dy: CGFloat(66)))
            renewLet.tipTotal = tabBarView.currentTabType

            renewLet.viewUserDoing = { [self] contentViewSwitch in
            self.labDoing = contentViewSwitch
            
            return self.labDoing
            }
            renewLet.valueInterval = { [self] mSayMagnitude in
            self.beautyCount = mSayMagnitude
            
            return self.beautyCount
            }
            renewLet.nameArray = { [self] freeArray in
            self.gunnySackArray = freeArray
            
            guard var value = self.gunnySackArray as? [String] else {
                return nil
            }
            return value
            }
            renewLet.bottomDictionary = { [self] windowDictionary in
            self.pictureDictionary = windowDictionary
            
            guard var value = self.pictureDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                makeGestureImageView.addSubview(renewLet)
            }

	}

	}

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func paradigmFor(itemType: AtScalar) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
            //: ret = TalkingSocialViewController()
            ret = EquilateralViewDelegate()

        //: case .Moment:
        case .Moment:
            //: ret = TalkingMomentViewController()
            ret = TitleNavigationDelegate()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = ObjectLimitRecognizerDelegate()

        //: case .Account:
        case .Account:
            //: ret = TalkingMeViewController()
            ret = CellDataSource()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = MediumViewController()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = TalkingMaleStaticRandomVideoVC()
            ret = TalkingVideoVc()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        self.makeGestureImageView?.image = UIImage(named: (String(str_guidanceName.prefix(6)) + str_modelTargetText.replacingOccurrences(of: "frame", with: "e") + String(str_maxValue.prefix(7))))
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! ConstraintNavigationController
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.equalRecover(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension LimitHasDelegate {
    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func validClose() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        isochronalStack()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        breed(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = colorController(), vc is EquilateralViewDelegate {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! EquilateralViewDelegate).modelDataImage()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func addConstraint() {
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard ImageToThen.labelShared().isParty == false else { // 语聊房
            //: if String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid {
            if String(ImageToThen.labelShared().partyModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid {
                //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
                ImageToThen.labelShared().beWhenGoback()
                //: } else {
            } else {
                //: func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
                episode(showMsg: a_mineDeviceName)
            }
            //: return
            return
        }
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard PropertyMManageressPushListener.giftShared().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            episode(showMsg: a_connectTitle)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = HungErrorThen()
        //: tabView.show()
        tabView.imageBackground()
    }

    //: func func__configViewDidLoad() {
    func dowerToLoad() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        TitleTalkingManager.share.imageRelease()
        //: AppManagerRequest.func__reportDeviceID()
        TableReactiveCompatible.application()
        //: func__getLoginUserConfig(true)
        login(true)
    }

    //: func selectTabbar(type: Int) {
    func breed(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func liveApp() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.imbed()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func jimmy() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard PrefaceReactiveCompatible.picStart() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = a_collectionName.bool(forKey: a_errorValue)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            PropertyMManageressPushListener.giftShared().frontCustomMake()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        a_collectionName.set(true, forKey: a_errorValue)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = CellReactiveCompatible()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func language(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.checkHidde(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func cocketShow() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        SocketReactiveCompatible.shared.equalSocket()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func doWant(type: AtScalar = .Social) -> Bool {
        //: guard MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue else { return false }
        //: guard MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue else { return false }
        //: guard MeasurementAppManager.share.appUserConfigMode.userCountryType == 1 else { return false }
        guard MeasurementAppManager.share.appUserConfigMode.userCountryType == 1 else { return false }
        //: guard MeasurementAppManager.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard MeasurementAppManager.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingVoiceRoomManager.shared().isParty,
        guard !ImageToThen.labelShared().isParty,
              //: !TalkingLiveManager.shared().isLive,
              !PropertyMManageressPushListener.giftShared().isLive,
              //: !TalkingSocketManager.shared.isTalking,
              !SocketReactiveCompatible.shared.isTalking,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !SocketReactiveCompatible.shared.isCalling else { return false }
        //: let arr = MeasurementAppManager.share.appUserConfigMode.popLiveTabArr
        let arr = MeasurementAppManager.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            ToViewWindowManager.shared.modelStatus()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension LimitHasDelegate {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func login(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        TableReactiveCompatible.afterPost { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.cocketShow()
                //: if MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
                if MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.infoShared()
                    //: self.needShowLiveAlertView()
                    self.doWant()
                    //: self.func__selectClubTabbar()
                    self.quality()
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.makeWindow()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func quality() {
        //: if MeasurementAppManager.share.loginUserMode.jumpType == 1 {
        if MeasurementAppManager.share.loginUserMode.jumpType == 1 {
            //: return
            return
        }
        //: switchRandowTabBarImage(isHidde: true)
        language(isHidde: true)
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue, MeasurementAppManager.share.appUserConfigMode.homeTab == "home" {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue, MeasurementAppManager.share.appUserConfigMode.homeTab == (str_shareSortName.replacingOccurrences(of: "selected", with: "me")) {
            //: let type = 2
            let type = 2
            //: selectTabbar(type: type)
            breed(type: type)
            //: switchRandowTabBarImage(isHidde: false)
            language(isHidde: false)
        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func makeWindow() {
        //: guard MeasurementAppManager.share.loginUserMode.updateInfo == true else {
        guard MeasurementAppManager.share.loginUserMode.updateInfo == true else {
            //: return
            return
        }
        //: let manager = TalkingPopupWindowManager.shared
        let manager = ToViewWindowManager.shared
        //: manager.setHomePopUpWindow()
        manager.endWindow()

        //: if MeasurementAppManager.share.loginUserMode.jumpType == 2, MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if MeasurementAppManager.share.loginUserMode.jumpType == 2, MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            DoingeCallManager.shared.cellShow()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension LimitHasDelegate {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if MeasurementAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.appStatus == LabCustomReflectable.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = AtScalar(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                addConstraint()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            language(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if doWant(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if MeasurementAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.appStatus == LabCustomReflectable.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        uploadThroughGift()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == AtScalar.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? ObjectLimitRecognizerDelegate
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.penetrate()
            }
            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: ObjectLimitRecognizerDelegate.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! ObjectLimitRecognizerDelegate).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func uploadThroughGift() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case AtScalar.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            a_textTurnName.photoOf(eventID: a_intimateTitle)
        //: case TabBarItemType.Randow.rawValue: break
        case AtScalar.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case AtScalar.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            a_textTurnName.photoOf(eventID: a_useValue)
        //: case TabBarItemType.Message.rawValue:
        case AtScalar.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            a_textTurnName.photoOf(eventID: a_keyData)
        //: case TabBarItemType.Account.rawValue:
        case AtScalar.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            a_textTurnName.photoOf(eventID: a_detailChangeTitle)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - LoadObjectProtocol

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension LimitHasDelegate: LoadObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func innumerableness(count _: Int) {
        //: refreshUnreadIMMessageCount()
        length()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func appEvent(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json[(String(str_imageData))]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo[(str_topTitle.lowercased())].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.databasePic(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func length() {
        //: if TalkingIMManager.shared.isConnection {
        if DateThen.shared.isConnection {
            //: let unreadMsgCount = MeasurementAppManager.share.unreadMessageNum
            let unreadMsgCount = MeasurementAppManager.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.ofActivity(unread: unreadMsgCount, barType: .Message)
        }
    }
}
