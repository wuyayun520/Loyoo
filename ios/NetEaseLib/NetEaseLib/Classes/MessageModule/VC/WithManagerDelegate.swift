
//: Declare String Begin

/*: "New friends" :*/
fileprivate let str_outsideName:String = "equal make let labNew f"
fileprivate let str_shapeValue:[Character] = ["r","i","e","n","d","s"]

/*: "icon_yidu_pre" :*/
fileprivate let str_leadingViewContent:String = "icon_factor content interaction"
fileprivate let str_oldData:String = "_pretype image let array effect"

/*: "lab_manager_image" :*/
fileprivate let str_skipName:String = "call"
fileprivate let str_mainAddValue:[Character] = ["a","b","_","m","a","n","a","g","e","r","_","i","m","a","g","e"]

/*: "You've got no message yet." :*/
fileprivate let str_giftValue:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","m","e"]
fileprivate let str_tableText:String = "SSAGE"

/*: "icon_kong_kong_default" :*/
fileprivate let str_requestTitle:String = "add nameicon_k"
fileprivate let str_styleSuccessValue:String = "kontext"

/*: "Cancel" :*/
fileprivate let str_sizeMomentContent:String = "frame withCance"
fileprivate let str_cellText:String = "L"

/*: "OK" :*/
fileprivate let str_equalData:[Character] = ["O","K"]

/*: "uid" :*/
fileprivate let str_imageData:[UInt8] = [0x64,0x69,0x75]

/*: "Do you want to mark all messages as read?" :*/
fileprivate let str_tipData:[UInt8] = [0x44,0x6f,0x20,0x79,0x6f,0x75,0x20,0x77,0x61,0x6e,0x74,0x20,0x74,0x6f,0x20,0x6d,0x61,0x72,0x6b,0x20,0x61,0x6c,0x6c,0x20,0x6d,0x65,0x73,0x73,0x61,0x67,0x65,0x73,0x20,0x61,0x73,0x20,0x72,0x65,0x61,0x64,0x3f]

/*: "MoreMessages一键已读失败：code: :*/
fileprivate let str_saveData:[Character] = ["M","o","r","e","M","e","s","s","a","g","e"]
fileprivate let str_countLabelText:[Character] = ["s","一","\u{952e}","已","读","失","\u{8d25}","：","c","o","d","e",":"]

/*: , desc: :*/
fileprivate let str_makeData:String = "var selected index, desc:"

/*: "btn_message_report_nor" :*/
fileprivate let str_actualMContent:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","r","e","p"]
fileprivate let str_insideValue:[Character] = ["o"]
fileprivate let str_containerSpaceName:[Character] = ["r","t","_","n","o","r"]

/*: "#FF935D" :*/
fileprivate let str_videoName:String = "#FF935Dindex coin kit bottom time"

/*: "btn_message_block_nor" :*/
fileprivate let str_namePositionData:String = "point for in let imagebtn_me"
fileprivate let str_centerTimePushName:String = "intimate model if_b"
fileprivate let str_sectionValue:[Character] = ["l","o","c","k","_","n","o","r"]

/*: "#C179F9" :*/
fileprivate let str_buttonName:String = "#C179data shared for self"
fileprivate let str_normalText:String = "f9"

/*: "btn_message_delete_nor" :*/
fileprivate let str_firstNeedText:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","d","e","l","e"]
fileprivate let str_makeTitle:[Character] = ["t","e","_","n","o","r"]

/*: "#FF506D" :*/
fileprivate let str_ownerName:String = "view execute do self type#FF506D"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithManagerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/9/27.
//

//: import UIKit
import UIKit

//: class TalkingMoreMessagesListViewController: TalkingBaseViewController {
class WithManagerDelegate: PropertyViewController {
	var infoOpen: Bool = true
	var popTitle: String = "number"

    var genreModelImageView: UIImageView?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "New friends".localized
        self.title = (String(str_outsideName.suffix(5)) + String(str_shapeValue)).localized
        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        //: btn.setImage(UIImage.outsideText(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_leadingViewContent.prefix(5)) + "yidu" + String(str_oldData.prefix(4)))), for: .normal)
        //: btn.addTarget(self, action: #selector(clearBadgeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(luculentInClick), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: TalkingIMManager.shared.func__addDelegate(self)
        DateThen.shared.delegate(self)
        //: func__installNotificationObservers()
        funcContentPositionNotificationObservers()
        //: createUI()
        fromShow()
        //: self.manager.req_moreMsgInitData()
        self.manager.listMore()
        //: refreshTableView()
        equalMale()

        genreModelImageView = UIImageView(frame: self.view.frame.intersection(CGRect(x: CGFloat(Double(self.view.frame.origin.x)), y: CGFloat(Int(self.view.frame.origin.x)), width: CGFloat(Double(self.view.bounds.size.width)), height: CGFloat(0))))
        if let genreModelImageView = genreModelImageView {
            self.genreModelImageView?.image = UIImage(named: (str_skipName.replacingOccurrences(of: "call", with: "l") + String(str_mainAddValue)))
            if (genreModelImageView.layer.mask != nil) && (genreModelImageView.isAnimating == true) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(genreModelImageView)
            }
        }
    
            if (tableView.isHidden) && (tableView.layer.shadowRadius == 0.27) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let tableMode = LockColorView()

            
            tableMode.giftConversationOff = { [self] layerInviteOpen in
            self.infoOpen = layerInviteOpen
            
            var tableMode = self.hideNavi
            tableMode = false
            if tableMode != self.infoOpen {
                self.infoOpen = tableMode
            }
            
                self.infoOpen = false
                self.infoOpen = !self.infoOpen
            return self.infoOpen
            }
            tableMode.extraContent = { [self] colorContent in
            self.popTitle = colorContent
            
            return self.popTitle
            }
                tableView.addSubview(tableMode)
            }

	}

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

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
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (String(str_giftValue) + str_tableText.lowercased() + " yet.").localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(str_requestTitle.suffix(6)) + "ong_" + str_styleSuccessValue.replacingOccurrences(of: "text", with: "g") + "_default")
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: PropertyDateListManager = //: return PropertyDateListManager()
        .init()
    //: }()
}

// MARK: - 刷新

//: extension TalkingMoreMessagesListViewController {
extension WithManagerDelegate {
    /// 刷新表格
    //: func refreshTableView() {
    func equalMale() {
        //: guard self.manager.moreMsgArr.count != 0 else {
        guard self.manager.moreMsgArr.count != 0 else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: self.reloadData()
            self.quarterback()
            //: return
            return
        }

        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.reloadData()
        self.quarterback()
    }

    /// 刷新
    //: func reloadData() {
    func quarterback() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingMoreMessagesListViewController {
extension WithManagerDelegate {
    // 删除会话cell
    //: func deleteChatListCell(conversationModel: TalkingConversationModel) {
    func positionModel(conversationModel: AdministratorReactiveCompatible) {
        //: if !TalkingIMManager.shared.func__checkCanOperateList() { return }
        if !DateThen.shared.equalList() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        NameAnimatTool.shared.collage(targetID: conversationModel.targetId)
        //: TalkingIMManager.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: .moreList)
        DateThen.shared.infoType(targetId: conversationModel.targetId, dataType: .moreList)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.timeEnd(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            // 刷新表格，更新红点
            //: self.refreshTableView()
            self.equalMale()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(conversationModel: TalkingConversationModel) {
    func billToOmit(conversationModel: AdministratorReactiveCompatible) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        TitleAlertShow.admittance(title: nil,
                                    //: message: kMessage_blocking,
                                    message: a_useDetailErrorValue,
                                    //: leftBtnTitle: "Cancel".localized,
                                    leftBtnTitle: (String(str_sizeMomentContent.suffix(5)) + str_cellText.lowercased()).localized,
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
                //: self.deleteChatListCell(conversationModel: conversationModel)
                self.positionModel(conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: a_backValue,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: [String(bytes: str_imageData.reversed(), encoding: .utf8)!: conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func valueModel(conversationModel: AdministratorReactiveCompatible) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = LimitMediaAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.icon(view: nil)
    }

    /// 清除红点角标
    //: @objc private func clearBadgeButtonClick() {
    @objc private func luculentInClick() {
        //: let config = ShowAlertConfig()
        let config = MarkAlertConfig()
        //: config.alignment = .center
        config.alignment = .center

        //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        TitleAlertShow.appearAll(message: String(bytes: str_tipData, encoding: .utf8)!.localized, leftBtnTitle: (String(str_sizeMomentContent.suffix(5)) + str_cellText.lowercased()).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            TitleAlertShow.lastAlert()

            //: }, rightBlock: {
        }, rightBlock: {
            //: guard self.manager.req_moreMsgGetUnredConversationCount() > 0 else { return }
            guard self.manager.conversationEqual() > 0 else { return }
            //: self.manager.moreMsgArr.forEach { model in
            self.manager.moreMsgArr.forEach { model in
                //: guard model.unreadCount > 0 else { return }
                guard model.unreadCount > 0 else { return }
                //: V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                    //: } fail: { code, desc in
                } fail: { code, desc in
                    //: UploadLogTool.writeLog(msg: "MoreMessages一键已读失败：code:\(code), desc:\(String(describing: desc))")
                    TitleMediumLogTool.commitMedium(msg: (String(str_saveData) + String(str_countLabelText)) + "\(code)" + (String(str_makeData.suffix(7))) + "\(String(describing: desc))")
                }
            }

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - 通知

//: extension TalkingMoreMessagesListViewController {
extension WithManagerDelegate {
    //: func func__installNotificationObservers() {
    func funcContentPositionNotificationObservers() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(conversationVideo(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: a_messageNetData,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(sharedNotif(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: a_randomData,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func conversationVideo(notification: NSNotification) {
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
        videoLine()

        //: self.reloadData()
        self.quarterback()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func videoLine() {
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
    @objc private func sharedNotif(notif: Notification) {
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
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMoreMessagesListViewController: UITableViewDelegate, UITableViewDataSource {
extension WithManagerDelegate: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.manager.moreMsgArr.count
        return self.manager.moreMsgArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: TalkingAtThen.className(), for: indexPath) as! TalkingAtThen
        //: var model = self.manager.req_moreMsgConversationModel(indexPath: indexPath)
        var model = self.manager.slide(indexPath: indexPath)
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
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.slide(indexPath: indexPath) else {
            //: return false
            return false
        }
        //: guard model.chatType == .private else { return false }
        guard model.chatType == .private else { return false }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else { return nil }
        guard let model = self.manager.slide(indexPath: indexPath) else { return nil }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model)
            self.valueModel(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.outsideText(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.outsideText(name: (String(str_actualMContent) + String(str_insideValue) + String(str_containerSpaceName))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = AneWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: (String(str_videoName.prefix(7))))

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(conversationModel: model)
            self.billToOmit(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.outsideText(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.outsideText(name: (String(str_namePositionData.suffix(6)) + "ssage" + String(str_centerTimePushName.suffix(2)) + String(str_sectionValue))).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = AneWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: (String(str_buttonName.prefix(5)) + str_normalText.uppercased()))

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(conversationModel: model)
            self.positionModel(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.outsideText(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.outsideText(name: (String(str_firstNeedText) + String(str_makeTitle))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = AneWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(str_ownerName.suffix(7))))

        //: let actions = [deleteBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, blockBtn, reportBtn]
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
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.slide(indexPath: indexPath) else {
            //: return
            return
        }
        // 入口埋点
        //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
        a_textTurnName.photoOf(eventID: a_tabName, toUid: model.targetId)
        //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: model.targetId) { vc in
        LimitPushManager.share.sharedMode(chatID: model.targetId) { vc in
            //: if model.gj_userInfo != nil {
            if model.gj_userInfo != nil {
                //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                vc.isHaveSession = model.gj_userInfo!.isHaveSession
            }
        }
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingMoreMessagesListViewController: IMManagerDelegate {
extension WithManagerDelegate: LoadObjectProtocol {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func titleManagerMake(data _: [AdministratorReactiveCompatible]) {
        //: self.manager.req_moreMsgInitData()
        self.manager.listMore()
        //: refreshTableView()
        equalMale()
    }
}

// MARK: - Layout

//: extension TalkingMoreMessagesListViewController {
extension WithManagerDelegate {
    /// UI
    //: private func createUI() {
    private func fromShow() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
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
            self?.quarterback()
        }
    }
}
