
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorData:[UInt8] = [0x9,0xe,0x9,0x14,0x48,0x3,0xf,0x4,0x5,0x12,0x5a,0x49,0x40,0x8,0x1,0x13,0x40,0xe,0xf,0x14,0x40,0x2,0x5,0x5,0xe,0x40,0x9,0xd,0x10,0xc,0x5,0xd,0x5,0xe,0x14,0x5,0x4]

/*: "inside_img" :*/
fileprivate let str_userSelectedName:String = "transformnstransform"
fileprivate let str_makeName:String = "layer table class titlede_img"

/*: "You've got no message yet." :*/
fileprivate let str_rangeName:String = "You\'v"
fileprivate let str_videoTitle:String = "type addo m"
fileprivate let str_modelText:String = "tossagto"

/*: "icon_kong_kong_default" :*/
fileprivate let str_voiceEpisodeTitle:[Character] = ["i","c","o","n","_","k","o","n","g","_","k","o","n","g","_","d","e","f","a","u","l","t"]

/*: "Cancel" :*/
fileprivate let str_addData:String = "Cancelnormal false view var make"

/*: "OK" :*/
fileprivate let str_textContent:String = "Osucceed"

/*: "uid" :*/
fileprivate let str_deviceValue:[UInt8] = [0x75,0x69,0x64]

/*: "btn_message_report_nor" :*/
fileprivate let str_outsideContent:String = "btn_mview birthday message thought center"
fileprivate let str_dataTitle:String = "bottom messagege_r"
fileprivate let str_pinTitle:String = "_norvalue in"

/*: "#FF935D" :*/
fileprivate let str_errorName:String = "#FF935Dreturn selected fatal method index"

/*: "btn_message_block_nor" :*/
fileprivate let str_actionName:String = "min addbtn_"
fileprivate let str_labTitle:String = "view shared photoage_b"
fileprivate let str_textName:String = "loccorner"

/*: "#C179F9" :*/
fileprivate let str_indexData:[Character] = ["#","C","1","7","9","F"]
fileprivate let str_greetName:String = "succeed"

/*: "btn_message_untop_nor" :*/
fileprivate let str_tapText:[UInt8] = [0x62,0x74,0x6e,0x5f,0x6d,0x65,0x73,0x73,0x61,0x67,0x65,0x5f,0x75,0x6e,0x74,0x6f,0x70,0x5f,0x6e,0x6f,0x72]

/*: "btn_message_top_nor" :*/
fileprivate let str_intervalData:String = "btn_mself make in self color"
fileprivate let str_effectName:String = "_top_nocolor result"
fileprivate let str_hiddenData:[Character] = ["r"]

/*: "#8A79F9" :*/
fileprivate let str_modelVoiceValue:String = "#8A79F9name cell case text"

/*: "btn_message_delete_nor" :*/
fileprivate let str_randomColorText:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","d","e","l","e","t","e"]
fileprivate let str_addValue:String = "_norname table image min model"

/*: "#FF506D" :*/
fileprivate let str_picGuideTitle:String = "#FF506Dwhite var to button data"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddDataManagerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TalkingChatListViewController: TalkingBaseViewController {
class AddDataManagerDelegate: PropertyViewController {
	var blockSum: Int = 63
	var momentDictionary: [AnyHashable: String] = [:]

    var savingImageView: UIImageView?

    //: private var canLoadMore = false
    private var canLoadMore = false // 是否可以加载更多数据
    //: private var curType = ChatListTopItemType.All
    private var curType = HypothesisSignedNumeric.All

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorData.map{$0^96}, encoding: .utf8)!)
    }

    //: init(isHalfView: Bool = false) {
    init(isHalfView: Bool = false) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.manager.isHalf = isHalfView
        self.manager.isHalf = isHalfView
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: TalkingIMManager.shared.func__refreshSysMsg()
        DateThen.shared.nonePush()
        // 公共聊天室
        //: self.manager.req_chatRommArr { [weak self] succeed in
        self.manager.neighbor { [weak self] succeed in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: half_showViewAnimation()
        beatificationTap()
        //: TalkingIMManager.shared.func__addDelegate(self)
        DateThen.shared.delegate(self)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.2) {
            //: self.getConversationList()
            self.startTarget()
        }
        //: createUI()
        equalityView()
        //: func__installNotificationObservers()
        colorStop()

        savingImageView = UIImageView(frame: self.view.frame.union(CGRect(x: CGFloat(Double(self.view.frame.origin.y)), y: CGFloat(0), width: CGFloat(Double(self.view.frame.origin.y)), height: CGFloat(0))))
        if let savingImageView = savingImageView {
            self.savingImageView?.image = UIImage(named: (str_userSelectedName.replacingOccurrences(of: "transform", with: "i") + String(str_makeName.suffix(6))))
            if (savingImageView.contentScaleFactor == 1.80) && ((savingImageView.inputAssistantItem.allowsHidingShortcuts != true) && (savingImageView.inputAssistantItem.trailingBarButtonGroups.count == 7)) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(savingImageView)
            }
        }
    
            if (topItemView.autoresizingMask == .flexibleLeftMargin) && (topItemView.layer.contentsRect.origin.y != 0) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let blockEqual = StandView(frame: topItemView.bounds.union(CGRect(x: CGFloat(0), y: CGFloat(97), width: CGFloat(336.97), height: CGFloat(0))))

            
            
            blockEqual.lastQuantity = { [self] emptyQuantity in
            self.blockSum = emptyQuantity
            
            return self.blockSum
            }
            blockEqual.pathFrameAcceptDictionary = { [self] abdicateDictionary in
            self.momentDictionary = abdicateDictionary
            
            guard var value = self.momentDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                topItemView.addSubview(blockEqual)
            }

	}

    // MARK: - Lazy load

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .grouped)
        let tableView = UITableView(frame: .zero, style: .grouped)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.register(TalkingChatListTableCell.self, forCellReuseIdentifier: TalkingChatListTableCell.className())
        tableView.register(TalkingAtThen.self, forCellReuseIdentifier: TalkingAtThen.className())
        //: tableView.addHeaderRefresh { [weak self] in
        tableView.thumbPunctuate { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.refreshOnlineStatus(isFirst: true)
            self.tv(isFirst: true)
        }
        //: tableView.addFooterRefresh { [weak self] in
        tableView.queryComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.getConversationListMore()
            self.high()
        }
        //: let footer = tableView.mj_footer as! MJRefreshAutoNormalFooter
        let footer = tableView.mj_footer as! MJRefreshAutoNormalFooter
        //: footer.setTitle("", for: MJRefreshState.idle)
        footer.setTitle("", for: MJRefreshState.idle)
        //: footer.setTitle("", for: MJRefreshState.noMoreData)
        footer.setTitle("", for: MJRefreshState.noMoreData)
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (str_rangeName + "e got n" + String(str_videoTitle.suffix(3)) + str_modelText.replacingOccurrences(of: "to", with: "e") + " yet.").localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(str_voiceEpisodeTitle))
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var removeCurrVBtn: UIButton = {
    private lazy var removeCurrVBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(removeCurrentViewButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapEqual), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: PropertyDateListManager = //: return PropertyDateListManager()
        .init()
    //: }()

    //: private lazy var topItemView: TalkingChatListTopItemView = {
    private lazy var topItemView: EnableeItemView = {
        //: let view = TalkingChatListTopItemView.init()
        let view = EnableeItemView()
        //: view.delegate = self
        view.delegate = self
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatListViewController {
extension AddDataManagerDelegate {
    /// 获取会话列表【增量返回】
    //: func getConversationList() {
    func startTarget() {
        //: self.manager.req_getConversationList { [weak self] isFinish in
        self.manager.beforeCell { [weak self] isFinish in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.canLoadMore = isFinish
            self.canLoadMore = isFinish
            // 获取用户在线状态逻辑
            //: var timeInterval = 0.5
            var timeInterval = 0.5
            //: var isFirst = false
            var isFirst = false
            //: if (self.manager.loadedOnlineStatus == false) {
            if self.manager.loadedOnlineStatus == false { // 首次
                //: self.manager.loadedOnlineStatus = true
                self.manager.loadedOnlineStatus = true
                //: timeInterval = 3
                timeInterval = 3
                //: isFirst = true
                isFirst = true
            }
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeInterval) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeInterval) {
                //: self.refreshOnlineStatus(isFirst: isFirst)
                self.tv(isFirst: isFirst)
            }
        }
    }

    /// 刷新在线状态
    /// - Parameter isFirst: 是否首次刷新
    //: func refreshOnlineStatus(isFirst: Bool) {
    func tv(isFirst: Bool) {
        //: self.manager.getConversationListOnlineStatus(isFirst: isFirst) { [weak self] succeed in
        self.manager.fileModel(isFirst: isFirst) { [weak self] succeed in
            //: self?.tableView.endRefresh()
            self?.tableView.infoTo()
            //: guard succeed == true else { return }
            guard succeed == true else { return }
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self?.tableView.mj_footer?.endRefreshing()
                self?.tableView.mj_footer?.endRefreshing()
                //: self?.tableView.reloadData()
                self?.tableView.reloadData()
            }
        }
    }

    /// 获取更多会话列表数据
    //: func getConversationListMore() {
    func high() {
        //: self.getConversationList()
        self.startTarget()
    }

    /// 过滤增量会话
    //: func cconfigData(listData: [TalkingConversationModel]) {
    func effectBy(listData: [AdministratorReactiveCompatible]) {
        // 获取用户信息
        //: if listData.count > 0 {
        if listData.count > 0 {
            //: self.manager.getUserInfoListFromCache(conversationList: listData) { [weak self] in
            self.manager.anSub(conversationList: listData) { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.reloadData()
                self.refreshRawData()
            }
        }

        //: refreshTableView()
        annotate()
    }

    /// 刷新表格
    //: func refreshTableView() {
    func annotate() {
        //: guard self.manager.officialArr.count != 0 ||
        guard self.manager.officialArr.count != 0 ||
            //: self.manager.topArr.count != 0 ||
            self.manager.topArr.count != 0 ||
            //: self.manager.normalArr.count != 0 else {
            self.manager.normalArr.count != 0
        else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: return
            return
        }

        //: self.tableView.endRefresh()
        self.tableView.infoTo()
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.tableView.mj_footer?.isHidden = !canLoadMore
        self.tableView.mj_footer?.isHidden = !canLoadMore
        //: self.reloadData()
        self.refreshRawData()

        // 没有更多数据
        //: if self.canLoadMore == false {
        if self.canLoadMore == false {
            //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
            self.tableView.mj_footer?.endRefreshingWithNoMoreData()
        }
    }

    /// 刷新
    //: func reloadData() {
    func refreshRawData() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingChatListViewController {
extension AddDataManagerDelegate {
    /// 返回上级页面手势事件
    //: @objc private func removeCurrentViewButtonClick() {
    @objc private func snapEqual() {
        //: half_dismissViewAnimation()
        unsubdividedChemicalThroughSearchedAnimation()
    }

    // 删除会话cell
    //: func deleteChatListCell(indexPath: IndexPath, conversationModel: TalkingConversationModel) {
    func laughAway(indexPath _: IndexPath, conversationModel: AdministratorReactiveCompatible) {
        //: if !TalkingIMManager.shared.func__checkCanOperateList() { return }
        if !DateThen.shared.equalList() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        NameAnimatTool.shared.collage(targetID: conversationModel.targetId)
        //: var type: ChatListDataType = .normalList
        var type: PicDataType = .normalList
        //: if conversationModel.isPinned { type = .topList }
        if conversationModel.isPinned { type = .topList }
        //: TalkingIMManager.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: type)
        DateThen.shared.infoType(targetId: conversationModel.targetId, dataType: type)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.timeEnd(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            //: if self.canLoadMore &&
            if self.canLoadMore,
               //: self.manager.topArr.count == 0 &&
               self.manager.topArr.count == 0,
               //: self.manager.normalArr.count == 0 {
               self.manager.normalArr.count == 0
            {
                //: self.getConversationList()
                self.startTarget()
            }
        }
    }

    // 置顶会话
    //: func setTopChatListCell(conversationModel: TalkingConversationModel) {
    func outTo(conversationModel: AdministratorReactiveCompatible) {
        //: if !TalkingIMManager.shared.func__checkCanOperateList() { return }
        if !DateThen.shared.equalList() { return }
        //: let isTop = !conversationModel.isPinned
        let isTop = !conversationModel.isPinned
        //: TalkingIMManager.shared.func__setConversationTop(convModel: conversationModel, isTop: isTop)
        DateThen.shared.streetSmartTop(convModel: conversationModel, isTop: isTop)

        //: if curType == .intimate {
        if curType == .intimate {
            //: self.manager.top_intimateData(convModel: conversationModel, isTop: isTop)
            self.manager.aware(convModel: conversationModel, isTop: isTop)
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(indexPath: IndexPath, conversationModel: TalkingConversationModel) {
    func plantMake(indexPath: IndexPath, conversationModel: AdministratorReactiveCompatible) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        TitleAlertShow.admittance(title: nil,
                                    //: message: kMessage_blocking,
                                    message: a_useDetailErrorValue,
                                    //: leftBtnTitle: "Cancel".localized,
                                    leftBtnTitle: (String(str_addData.prefix(6))).localized,
                                    //: rightBtnTitle: "OK".localized) {
                                    rightBtnTitle: "OK".localized)
        {
            //: TalkingAlertShow.hideAlert()
            TitleAlertShow.lastAlert()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            TitleAlertShow.lastAlert()

            //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: conversationModel.userID, isBlack: true) { succeed, result, errorModel in
            ConsumerRequestManager.nextIn(uid: conversationModel.userID, isBlack: true) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                // 拉黑成功，从列表中移除
                //: self.deleteChatListCell(indexPath: indexPath, conversationModel: conversationModel)
                self.laughAway(indexPath: indexPath, conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: a_backValue,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: [String(bytes: str_deviceValue, encoding: .utf8)!: conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func activeSpokenLanguage(conversationModel: AdministratorReactiveCompatible) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = LimitMediaAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.icon(view: nil)
    }
}

// MARK: - 通知

//: extension TalkingChatListViewController {
extension AddDataManagerDelegate {
    //: func func__installNotificationObservers() {
    func colorStop() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(even(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: a_messageNetData,
                                               //: object: nil)
                                               object: nil)
        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(equalPost(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: a_randomData,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户亲密度
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserIntimate(notif:)),
                                               selector: #selector(way(notif:)),
                                               //: name: MSGLIST_UPDATE_INTIMATE_NOTIFICATION,
                                               name: a_messageInfoName,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func even(notification: NSNotification) {
        //: let dic = notification.object as? Dictionary<String, Any>
        let dic = notification.object as? [String: Any]
        //: for userID in dic!.keys {
        for userID in dic!.keys {
            //: let aInfoWrap: CountMediumCacheModel = dic![userID] as! CountMediumCacheModel
            let aInfoWrap: CountMediumCacheModel = dic![userID] as! CountMediumCacheModel
            //: let aModel: TalkingConversationModel? = TalkingIMManager.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: AdministratorReactiveCompatible? = DateThen.shared.bullSEye(targetId: userID)
            //: if aModel != nil && aModel!.gj_userInfo != aInfoWrap {
            if aModel != nil, aModel!.gj_userInfo != aInfoWrap {
                //: aModel!.gj_userInfo = aInfoWrap
                aModel!.gj_userInfo = aInfoWrap
            }
        }
        //: setHaveLocalInmate()
        userPremium()

        //: self.reloadData()
        self.refreshRawData()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func userPremium() {
        //: let intimate: Dictionary<String, Any> = UserDefaults.standard.object(forKey: isConversationIntimateCacheKey) as? Dictionary<String, Any> ?? Dictionary.init()
        let intimate: [String: Any] = UserDefaults.standard.object(forKey: a_inputStatusValue) as? [String: Any] ?? Dictionary()
        //: for userID in intimate.keys {
        for userID in intimate.keys {
            //: let aModel: TalkingConversationModel? = TalkingIMManager.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: AdministratorReactiveCompatible? = DateThen.shared.bullSEye(targetId: userID)
            //: if aModel != nil {
            if aModel != nil {
                //: aModel!.gj_userInfo?.isHaveSession = true
                aModel!.gj_userInfo?.isHaveSession = true
            }
        }
        //: UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: isConversationIntimateCacheKey)
        UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: a_inputStatusValue)
    }

    /// 更新消息列表用户在线状态
    //: @objc private func func__updateUserOnlineStatus(notif: Notification) {
    @objc private func equalPost(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userOnlineStatus(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.userNumber(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }

    /// 更新消息列表用户亲密度
    //: @objc private func func__updateUserIntimate(notif: Notification) {
    @objc private func way(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userIntimate(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.sumimateDoing(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - BeginViewDelegate

//: extension TalkingChatListViewController: TalkingChatListTopItemViewDelegate {
extension AddDataManagerDelegate: BeginViewDelegate {
    //: func resetToTopItemView() {
    func equalDigitizer() {
        //: if self.curType == .intimate {
        if self.curType == .intimate {
            //: topItemView.resetToSeleteAll()
            topItemView.digitizerUp()
        }
    }

    //: func changeTopItem(type: ChatListTopItemType) {
    func beforeOnType(type: HypothesisSignedNumeric) {
        //: self.curType = type
        self.curType = type
        //: if self.curType == .All {
        if self.curType == .All {
            //: tableView.mj_header?.isHidden = false
            tableView.mj_header?.isHidden = false
            //: tableView.mj_footer?.isHidden = false
            tableView.mj_footer?.isHidden = false
            //: refreshTableView()
            annotate()
            //: } else {
        } else {
            //: self.manager.req_intimateData()
            self.manager.emptyCapture()
            //: tableView.mj_header?.isHidden = true
            tableView.mj_header?.isHidden = true
            //: tableView.mj_footer?.isHidden = true
            tableView.mj_footer?.isHidden = true

            //: if self.manager.intimateTopArr.count == 0 && self.manager.intimateNorArr.count == 0 {
            if self.manager.intimateTopArr.count == 0 && self.manager.intimateNorArr.count == 0 {
                //: self.tableView.isHidden = true
                self.tableView.isHidden = true
                //: self.emptyView.isHidden = false
                self.emptyView.isHidden = false
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
            //: uploadRecord.uploadRecordEvent(eventID: ClickIntimateTabNoP)
            a_textTurnName.photoOf(eventID: a_errorData)
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatListViewController: UITableViewDelegate, UITableViewDataSource {
extension AddDataManagerDelegate: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: if curType == .All {
        if curType == .All {
            //: return 5
            return 5
            //: } else {
        } else {
            //: return 2
            return 2
        }
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if curType == .All {
        if curType == .All {
            //: switch section {
            switch section {
            //: case ChatListSectionTyep.offical.rawValue:
            case SectionDefaultsSerializable.offical.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                //: return self.manager.officialArr.count
                return self.manager.officialArr.count

            //: case ChatListSectionTyep.chatRoom.rawValue:
            case SectionDefaultsSerializable.chatRoom.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                //: return self.manager.chatRoomArr.count
                return self.manager.chatRoomArr.count

            //: case ChatListSectionTyep.moreMsg.rawValue:
            case SectionDefaultsSerializable.moreMsg.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                // 首次加载完数据再展示，防止提前进入无数据
                //: if self.manager.loadedOnlineStatus == false { return 0 }
                if self.manager.loadedOnlineStatus == false { return 0 }
                //: return 1
                return 1

            //: case ChatListSectionTyep.top.rawValue:
            case SectionDefaultsSerializable.top.rawValue:
                //: return self.manager.topArr.count
                return self.manager.topArr.count

            //: case ChatListSectionTyep.normal.rawValue:
            case SectionDefaultsSerializable.normal.rawValue:
                //: return self.manager.normalArr.count
                return self.manager.normalArr.count

            //: default:
            default:
                //: return 0
                return 0
            }
            //: } else {
        } else {
            //: switch section {
            switch section {
            //: case ChatListSectionIntimateTyep.top.rawValue:
            case OnPicNumber.top.rawValue:
                //: return self.manager.intimateTopArr.count
                return self.manager.intimateTopArr.count
            //: case ChatListSectionIntimateTyep.normal.rawValue:
            case OnPicNumber.normal.rawValue:
                //: return self.manager.intimateNorArr.count
                return self.manager.intimateNorArr.count
            //: default:
            default:
                //: return 0
                return 0
            }
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: TalkingAtThen.className(), for: indexPath) as! TalkingAtThen
        //: var model: TalkingConversationModel?
        var model: AdministratorReactiveCompatible?
        //: if curType == .All {
        if curType == .All {
            //: if indexPath.section == ChatListSectionTyep.moreMsg.rawValue {
            if indexPath.section == SectionDefaultsSerializable.moreMsg.rawValue {
                //: model = self.manager.req_moreMsgGetPlaceholderModel()
                model = self.manager.track()
                //: } else {
            } else {
                //: model = self.manager.req_conversationModel(indexPath: indexPath)
                model = self.manager.commentCancel(indexPath: indexPath)
            }
            //: } else {
        } else {
            //: model = self.manager.req_IntimateConversationModel(indexPath: indexPath)
            model = self.manager.imageClose(indexPath: indexPath)
        }
        //: model = self.manager.getUserInfoFromCache(model: model)
        model = self.manager.voiceBackground(model: model)
        //: if !(model?.gj_userInfo?.tpAuth ?? false) {
        if !(model?.gj_userInfo?.tpAuth ?? false) {
            //: model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
            model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
        }
        //: cell.refreshCell(model: model)
        cell.runModel(model: model)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        //: if curType == .All {
        if curType == .All {
            //: guard let model = self.manager.req_conversationModel(indexPath: indexPath) else {
            guard let model = self.manager.commentCancel(indexPath: indexPath) else {
                //: return false
                return false
            }
            //: guard model.chatType == .private else { return false }
            guard model.chatType == .private else { return false }
            //: } else {
        } else {
            //: guard let model = self.manager.req_IntimateConversationModel(indexPath: indexPath) else {
            guard let model = self.manager.imageClose(indexPath: indexPath) else {
                //: return false
                return false
            }
            //: guard model.chatType == .private else { return false }
            guard model.chatType == .private else { return false }
        }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: let model: TalkingConversationModel?
        let model: AdministratorReactiveCompatible?
        //: if curType == .All {
        if curType == .All {
            //: model = self.manager.req_conversationModel(indexPath: indexPath)
            model = self.manager.commentCancel(indexPath: indexPath)
            //: } else {
        } else {
            //: model = self.manager.req_IntimateConversationModel(indexPath: indexPath)
            model = self.manager.imageClose(indexPath: indexPath)
        }
        //: if model == nil {
        if model == nil {
            //: return nil
            return nil
        }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model!)
            self.activeSpokenLanguage(conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.outsideText(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.outsideText(name: (String(str_outsideContent.prefix(5)) + "essa" + String(str_dataTitle.suffix(4)) + "eport" + String(str_pinTitle.prefix(4)))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = AneWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: (String(str_errorName.prefix(7))))

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(indexPath: indexPath, conversationModel: model!)
            self.plantMake(indexPath: indexPath, conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.outsideText(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.outsideText(name: (String(str_actionName.suffix(4)) + "mess" + String(str_labTitle.suffix(5)) + str_textName.replacingOccurrences(of: "corner", with: "k") + "_nor")).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = AneWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: (String(str_indexData) + str_greetName.replacingOccurrences(of: "succeed", with: "9")))

        // 置顶
        //: let topBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let topBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.setTopChatListCell(conversationModel: model!)
            self.outTo(conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: let image = model!.isPinned ? "btn_message_untop_nor":"btn_message_top_nor"
        let image = model!.isPinned ? String(bytes: str_tapText, encoding: .utf8)! : (String(str_intervalData.prefix(5)) + "essage" + String(str_effectName.prefix(7)) + String(str_hiddenData))
        //: if let topBtnTrashcan = UIImage.outsideText(name: image).cgImage {
        if let topBtnTrashcan = UIImage.outsideText(name: image).cgImage {
            //: topBtn.image = ImageWithoutRender(cgImage: topBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            topBtn.image = AneWithoutRender(cgImage: topBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: topBtn.backgroundColor = UIColor(hex: "#8A79F9")
        topBtn.backgroundColor = UIColor(hex: (String(str_modelVoiceValue.prefix(7))))

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(indexPath: indexPath, conversationModel: model!)
            self.laughAway(indexPath: indexPath, conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.outsideText(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.outsideText(name: (String(str_randomColorText) + String(str_addValue.prefix(4)))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = AneWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(str_picGuideTitle.prefix(7))))

        //: let actions = [deleteBtn, topBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, topBtn, blockBtn, reportBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    /// - UITableViewDelegate
    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76.0
        return 76.0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if self.manager.isHalf == false &&
        if self.manager.isHalf == false &&
            //: self.curType == .All &&
            self.curType == .All &&
            //: section == ChatListSectionTyep.offical.rawValue &&
            section == SectionDefaultsSerializable.offical.rawValue &&
            //: self.manager.officialArr.count > 0 &&
            self.manager.officialArr.count > 0 &&
            //: MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
            MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue
        {
            //: return 15.0
            return 15.0
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: if self.curType == .All && section == ChatListSectionTyep.offical.rawValue && self.manager.officialArr.count > 0 {
        if self.curType == .All && section == SectionDefaultsSerializable.offical.rawValue && self.manager.officialArr.count > 0 {
            //: let v = UIView()
            let v = UIView()
            //: v.backgroundColor = tableView.backgroundColor
            v.backgroundColor = tableView.backgroundColor
            //: return v
            return v
        }
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: if curType == .All {
        if curType == .All {
            //: if indexPath.section == ChatListSectionTyep.moreMsg.rawValue {
            if indexPath.section == SectionDefaultsSerializable.moreMsg.rawValue { // 更多消息
                //: let vc = TalkingMoreMessagesListViewController()
                let vc = WithManagerDelegate()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: return
                return
            }

            //: guard let model = self.manager.req_conversationModel(indexPath: indexPath) else {
            guard let model = self.manager.commentCancel(indexPath: indexPath) else {
                //: return
                return
            }
            //: if model.chatType == .group {
            if model.chatType == .group { // 群聊
                //: pushChatRoomList(model: model)
                subjectMatterModel(model: model)

                //: } else if model.chatType == .service {
            } else if model.chatType == .service { // 官方客服
                //: LimitPushManager.share.func__pushToWebVC(webViewType: .FAQ)
                LimitPushManager.share.recordIn(webViewType: .FAQ)
                //: uploadRecord.uploadRecordEvent(eventID: ClickCSCNoP, toUid: model.targetId)
                a_textTurnName.photoOf(eventID: a_endRecordValue, toUid: model.targetId)

                //: } else {
            } else {
                //: if model.targetId == ImageMacroDefine.getXiaoMiID() {
                if model.targetId == ImageMacroDefine.dataFormatting() { // 系统消息
                    //: uploadRecord.uploadRecordEvent(eventID: ClickSystemNotificationNoP, toUid: model.targetId)
                    a_textTurnName.photoOf(eventID: a_formatText, toUid: model.targetId)
                    //: } else {
                } else {
                    //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
                    a_textTurnName.photoOf(eventID: a_tabName, toUid: model.targetId)
                }

                //: let isFrom = self.manager.isHalf ? PrivateChatIsFromEnum.LiveRoom:PrivateChatIsFromEnum.Normal
                let isFrom = self.manager.isHalf ? UpGoldFromEnum.LiveRoom : UpGoldFromEnum.Normal
                //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: model.targetId, isFrom: isFrom) { vc in
                LimitPushManager.share.sharedMode(chatID: model.targetId, isFrom: isFrom) { vc in
                    //: if model.gj_userInfo != nil {
                    if model.gj_userInfo != nil {
                        //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                        vc.isHaveSession = model.gj_userInfo!.isHaveSession
                    }
                }
            }
            //: } else {
        } else {
            //: guard let model = self.manager.req_IntimateConversationModel(indexPath: indexPath) else {
            guard let model = self.manager.imageClose(indexPath: indexPath) else {
                //: return
                return
            }
            //: let isFrom = self.manager.isHalf ? PrivateChatIsFromEnum.LiveRoom:PrivateChatIsFromEnum.Normal
            let isFrom = self.manager.isHalf ? UpGoldFromEnum.LiveRoom : UpGoldFromEnum.Normal
            //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: model.targetId, isFrom: isFrom) { vc in
            LimitPushManager.share.sharedMode(chatID: model.targetId, isFrom: isFrom) { vc in
                //: if model.gj_userInfo != nil {
                if model.gj_userInfo != nil {
                    //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                    vc.isHaveSession = model.gj_userInfo!.isHaveSession
                }
            }
        }
    }
}

// MARK: - 跳转公共聊天室

//: extension TalkingChatListViewController {
extension AddDataManagerDelegate {
    //: func pushChatRoomList(model: TalkingConversationModel) {
    func subjectMatterModel(model: AdministratorReactiveCompatible) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickChatRoomNoP, toUid: model.targetId)
        a_textTurnName.photoOf(eventID: a_timeTitle, toUid: model.targetId)
        //: guard model.onlyOneRoomId.isEmptyString else {
        guard model.onlyOneRoomId.isEmptyString else {
            //: LimitPushManager.share.func__pushToGroupChat(groupId: model.onlyOneRoomId)
            LimitPushManager.share.valueId(groupId: model.onlyOneRoomId)
            //: return
            return
        }
        //: let vc = TalkingChatRoomListVC.init()
        let vc = ModelListVc()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingChatListViewController: IMManagerDelegate {
extension AddDataManagerDelegate: LoadObjectProtocol {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func titleManagerMake(data: [AdministratorReactiveCompatible]) {
        //: self.manager.req_initData()
        self.manager.gestureData()
        //: if self.curType == .intimate {
        if self.curType == .intimate {
            //: self.manager.req_intimateData()
            self.manager.emptyCapture()
        }
        //: cconfigData(listData: data)
        effectBy(listData: data)
    }
}

// MARK: - 半屏页面展示/隐藏动画

//: extension TalkingChatListViewController {
extension AddDataManagerDelegate {
    /// 半屏展示动画
    //: private func half_showViewAnimation() {
    private func beatificationTap() {
        //: guard self.manager.isHalf else { return }
        guard self.manager.isHalf else { return }
        //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_SHOW, object: nil, userInfo: nil)
        NotificationCenter.default.post(name: a_callData, object: nil, userInfo: nil)
        //: self.view.frame = CGRect(x: 0, y: ScreenHeight-HalfViewTopMargin, width: ScreenWidth, height: ScreenHeight)
        self.view.frame = CGRect(x: 0, y: a_formalValue - a_screenServerValue, width: a_blockValue, height: a_formalValue)
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.view.frame = CGRect(x: 0,
            self.view.frame = CGRect(x: 0,
                                     //: y: 0,
                                     y: 0,
                                     //: width: ScreenWidth,
                                     width: a_blockValue,
                                     //: height: ScreenHeight)
                                     height: a_formalValue)
        }
    }

    /// 半屏页消失动画
    //: private func half_dismissViewAnimation() {
    private func unsubdividedChemicalThroughSearchedAnimation() {
        //: guard self.manager.isHalf else { return }
        guard self.manager.isHalf else { return }
        // 语聊房要提前发通知，动画效果更流畅
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if ImageToThen.labelShared().isParty == true {
            //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_DISMISS, object: nil, userInfo: nil)
            NotificationCenter.default.post(name: a_giftTitle, object: nil, userInfo: nil)
        }
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.view.frame = CGRect(x: 0,
            self.view.frame = CGRect(x: 0,
                                     //: y: ScreenHeight-HalfViewTopMargin,
                                     y: a_formalValue - a_screenServerValue,
                                     //: width: ScreenWidth,
                                     width: a_blockValue,
                                     //: height: ScreenHeight)
                                     height: a_formalValue)
            //: } completion: { finish in
        } completion: { _ in
            //: self.removeFromParent()
            self.removeFromParent()
            //: self.view.removeFromSuperview()
            self.view.removeFromSuperview()
            //: if TalkingVoiceRoomManager.shared().isParty == false {
            if ImageToThen.labelShared().isParty == false {
                //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_DISMISS, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: a_giftTitle, object: nil, userInfo: nil)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingChatListViewController {
extension AddDataManagerDelegate {
    // MARK: - UI

    //: private func createUI() {
    private func equalityView() {
        //: if self.manager.isHalf == false {
        if self.manager.isHalf == false { // 全屏
            //: if MeasurementAppManager.share.appStatus == AppSkinStatus.special.rawValue {
            if MeasurementAppManager.share.appStatus == LabCustomReflectable.special.rawValue { // 审核模式
                //: view.backgroundColor = .clear
                view.backgroundColor = .clear
                //: view.addSubview(tableView)
                view.addSubview(tableView)
                //: tableView.snp.makeConstraints { make in
                tableView.snp.makeConstraints { make in
                    //: make.edges.equalToSuperview()
                    make.edges.equalToSuperview()
                }

                //: } else {
            } else {
                //: view.backgroundColor = .appBgColor()
                view.backgroundColor = .playerEqual()
                //: view.addSubview(topItemView)
                view.addSubview(topItemView)
                //: topItemView.snp.makeConstraints { make in
                topItemView.snp.makeConstraints { make in
                    //: make.leading.trailing.top.equalToSuperview()
                    make.leading.trailing.top.equalToSuperview()
                    //: make.height.equalTo(50)
                    make.height.equalTo(50)
                }
                //: view.addSubview(tableView)
                view.addSubview(tableView)
                //: tableView.snp.makeConstraints { make in
                tableView.snp.makeConstraints { make in
                    //: make.top.equalTo(topItemView.snp.bottom)
                    make.top.equalTo(topItemView.snp.bottom)
                    //: make.leading.trailing.bottom.equalToSuperview()
                    make.leading.trailing.bottom.equalToSuperview()
                }
            }

            //: } else {
        } else { // 半屏
            //: self.view.backgroundColor = .clear
            self.view.backgroundColor = .clear

            //: view.addSubview(removeCurrVBtn)
            view.addSubview(removeCurrVBtn)
            //: removeCurrVBtn.snp.makeConstraints { make in
            removeCurrVBtn.snp.makeConstraints { make in
                //: make.top.leading.trailing.equalToSuperview()
                make.top.leading.trailing.equalToSuperview()
                //: make.height.equalTo(HalfViewTopMargin)
                make.height.equalTo(a_screenServerValue)
            }

            //: view.addSubview(contentView)
            view.addSubview(contentView)
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(removeCurrVBtn.snp.bottom)
                make.top.equalTo(removeCurrVBtn.snp.bottom)
                //: make.leading.trailing.bottom.equalToSuperview()
                make.leading.trailing.bottom.equalToSuperview()
            }
            //: contentView.layoutIfNeeded()
            contentView.layoutIfNeeded()
            //: contentView.Corner(width: contentView.width,
            contentView.barRadii(width: contentView.width,
                                 //: height: contentView.height,
                                 height: contentView.height,
                                 //: corners: [.topLeft, .topRight],
                                 corners: [.topLeft, .topRight],
                                 //: cornerRadii: .init(width: 8, height: 8))
                                 cornerRadii: .init(width: 8, height: 8))

            //: contentView.addSubview(tableView)
            contentView.addSubview(tableView)
            //: tableView.snp.makeConstraints { make in
            tableView.snp.makeConstraints { make in
                //: make.top.leading.trailing.equalToSuperview()
                make.top.leading.trailing.equalToSuperview()
                //: make.bottom.equalTo(-kDeviceSafeBottomHeight)
                make.bottom.equalTo(-a_agentData)
            }
        }

        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalTo(tableView)
            make.edges.equalTo(tableView)
        }
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: self?.reloadData()
            self?.refreshRawData()
        }
    }
}
