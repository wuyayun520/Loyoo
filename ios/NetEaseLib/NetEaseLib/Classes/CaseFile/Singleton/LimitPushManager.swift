
//: Declare String Begin

/*: "fee" :*/
fileprivate let str_handleSizeValue:String = "fframe"

/*: "VIPFee" :*/
fileprivate let str_currentTheValue:String = "VIPFeeimage engagement"

/*: "chattingNum" :*/
fileprivate let str_formText:[Character] = ["c","h","a","t","t","i","n","g","N","u","m"]

/*: "You're already in her live room" :*/
fileprivate let str_detailViewData:[UInt8] = [0x92,0xa4,0xbe,0xec,0xb9,0xae,0xeb,0xaa,0xa7,0xb9,0xae,0xaa,0xaf,0xb2,0xeb,0xa2,0xa5,0xeb,0xa3,0xae,0xb9,0xeb,0xa7,0xa2,0xbd,0xae,0xeb,0xb9,0xa4,0xa4,0xa6]

/*: "toUid" :*/
fileprivate let str_makeName:[UInt8] = [0x74,0x6f,0x55,0x69,0x64]

/*: "momentId" :*/
fileprivate let str_domainTitle:[UInt8] = [0x64,0x49,0x74,0x6e,0x65,0x6d,0x6f,0x6d]

/*: "extra" :*/
fileprivate let str_frameTitle:[UInt8] = [0x65,0x78,0x74,0x72,0x61]

/*: "uid" :*/
fileprivate let str_edgeCommentDataValue:[UInt8] = [0x75,0x69,0x64]

/*: "onlineStatus" :*/
fileprivate let str_managerBottomData:[UInt8] = [0x6f,0x6e,0x6c,0x69,0x6e,0x65,0x53,0x74,0x61,0x74,0x75,0x73]

/*: "isNewUser" :*/
fileprivate let str_fillData:[UInt8] = [0x72,0x65,0x73,0x55,0x77,0x65,0x4e,0x73,0x69]

/*: "userStatus" :*/
fileprivate let str_buttonFilterData:[UInt8] = [0x75,0x73,0x65,0x72,0x53,0x74,0x61,0x74,0x75,0x73]

/*: "Account is restricted！" :*/
fileprivate let str_clearBagData:[Character] = ["A","c","c","o","u","n","t"," ","i","s"," ","r","e","s","t","r","i","c","t","e","d","！"]

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let str_equalTargetData:[UInt8] = [0x46,0x61,0x69,0x6c,0x65,0x64,0x20,0x74,0x6f,0x20,0x65,0x6e,0x74,0x65,0x72,0x20,0x74,0x68,0x65,0x20,0x63,0x68,0x61,0x74,0x20,0x72,0x6f,0x6f,0x6d,0x2e,0x20,0x50,0x6c,0x65,0x61,0x73,0x65,0x20,0x74,0x72,0x79,0x20,0x61,0x67,0x61,0x69,0x6e,0x20,0x6c,0x61,0x74,0x65,0x72]

/*: "url" :*/
fileprivate let str_viewText:[Character] = ["u","r","l"]

/*: "userDetail" :*/
fileprivate let str_userData:String = "froms"
fileprivate let str_modelText:[Character] = ["e","r","D","e","t","a","i","l"]

/*: "&type=7" :*/
fileprivate let str_freeName:String = "&type=7translation icon by for translate"

/*: "amount" :*/
fileprivate let str_valueText:[UInt8] = [0x61,0x6d,0x6f,0x75,0x6e,0x74]

/*: "transparency" :*/
fileprivate let str_enableName:String = "tfillnsp"
fileprivate let str_modelValue:[Character] = ["a","r","e","n","c","y"]

/*: "`%^{}\"[]|\\<>" :*/
fileprivate let str_pathValue:String = "`%"
fileprivate let str_viewName:String = "^{}\"[]"

/*: "version= :*/
fileprivate let str_collectTitle:[Character] = ["v","e","r","s","i","o","n","="]

/*: &packageId= :*/
fileprivate let str_topValue:String = "&pacshare center import head with"

/*: &bundleId= :*/
fileprivate let str_mainData:String = "&bunraw task in class for"
fileprivate let str_toDataValue:[Character] = ["="]

/*: & :*/
fileprivate let str_fillContent:String = "equal"

/*: ? :*/
fileprivate let str_callShadowName:[Character] = ["?"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimitPushManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: public class LimitPushManager: NSObject {
public class LimitPushManager: NSObject {
    //: @objc static public let share = LimitPushManager()
    @objc public static let share = LimitPushManager()
    //: private override init() {}
    override private init() {}
}

//: extension LimitPushManager {
extension LimitPushManager {
    // MARK: - 随机视频入口

    //: func func__pushToRandomVideoVC(isBeginRand: Bool) {
    func hitOrMiss(isBeginRand: Bool) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickInRandomvideo)
        a_textTurnName.photoOf(eventID: a_recordBarPlainValue)
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard SocketReactiveCompatible.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.episode(showMsg: a_viewNetValue)
            //: return
            return
        }
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        PrefaceReactiveCompatible.voiceMicrophone { isOpen in
            //: guard isOpen == true else { return }
            guard isOpen == true else { return }
            //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
            DataLabThen.pingCompletion { succeed, result, _ in
                //: guard succeed else { return }
                guard succeed else { return }
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: let vc = TalkingRandomVideoViewController()
                let vc = AtPartyDelegate()
                //: vc.fee = json["fee"].intValue
                vc.fee = json[(str_handleSizeValue.replacingOccurrences(of: "frame", with: "ee"))].intValue
                //: vc.vipFee = json["VIPFee"].intValue
                vc.vipFee = json[(String(str_currentTheValue.prefix(6)))].intValue
                //: vc.chattingNum = json["chattingNum"].intValue
                vc.chattingNum = json[(String(str_formText))].intValue
                //: vc.isBeginRand = isBeginRand
                vc.isBeginRand = isBeginRand
                //: vc.isFirstRandow = isBeginRand
                vc.isFirstRandow = isBeginRand
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.colorController()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    // MARK: - 完善资料

    //: func func__pushToFillUserInfoVC() {
    func titleStart() {
        //: MeasurementAppManager.share.userFillInfoMode = UserFillInfoModel.init()
        MeasurementAppManager.share.userFillInfoMode = ConcertGoerInfoModel()
        //: let VC = TalkingLoginGenderVC()
        let VC = GenderTalkingLoginRecognizerDelegate()
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = beforeRoom()
        //: if currentVC != nil {
        if currentVC != nil {
            //: currentVC?.navigationController?.pushViewController(VC, animated: true)
            currentVC?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    // MARK: - 绑定邮箱

    /// - Parameters:
    ///   - type: 类型
    ///   - isShowBack: 是否显示返回按钮
    //: func func__pushToLockUserEmailVC(isShowBack: Bool = true) {
    func errorPureBack(isShowBack: Bool = true) {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = beforeRoom()
        //: if currentVC != nil {
        if currentVC != nil {
            //: if currentVC!.isKind(of: TalkingLoginBindEmailVC.self) ||
            if currentVC!.isKind(of: CountLabelRecognizerDelegate.self) ||
                //: currentVC!.isKind(of: TalkingLoginMainViewController.self) {
                currentVC!.isKind(of: MediumViewController.self)
            {
                //: return
                return
            }
            //: let vc = TalkingLoginBindEmailVC()
            let vc = CountLabelRecognizerDelegate()
            //: vc.isBack = isShowBack
            vc.isBack = isShowBack
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    // MARK: - 跳转个人资料

    //: func func__pushToUserDetailVC(uid: String?) {
    func funcToStuffDetailUtilizerUid(uid: String?) {
        //: guard let currentVC = self.currentViewController() else { return }
        guard let currentVC = self.colorController() else { return }
        //: if let liveVC = currentVC as? TalkingLiveBeautifyViewController, TalkingLiveManager.shared().isLive {
        if let liveVC = currentVC as? MTheoryThen, PropertyMManageressPushListener.giftShared().isLive {
            // 从主播页跳转个人资料时，切小屏模式
            //: liveVC.topView.miniButtonClick()
            liveVC.topView.blockClick()

            //: } else if currentVC.isKind(of: TalkingVoiceRoomViewController.self), TalkingVoiceRoomManager.shared().isParty {
        } else if currentVC.isKind(of: BlockManagerDelegate.self), ImageToThen.labelShared().isParty {
            //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
            ImageToThen.labelShared().toTitle()

            //: } else if let profileVC = currentVC as? TalkingUserDetailViewController {
        } else if let profileVC = currentVC as? PassageViewDelegate {
            // 同一用户的资料页已经在顶部，只刷新
            //: if profileVC.uid == uid {
            if profileVC.uid == uid {
                //: profileVC.requestAllData()
                profileVC.ofData()
                //: return
                return
            }
        }

        //: let vc = TalkingUserDetailViewController(tempUid: uid)
        let vc = PassageViewDelegate(tempUid: uid)
        //: getNavigationController()?.pushViewController(vc, animated: true)
        isochronalStack()?.pushViewController(vc, animated: true)
    }

    // MARK: - 观众侧进入直播间

    /// 观众侧跳转到直播间
    /// - Parameters:
    ///   - uid: 主播id
    ///   - enterType: 入口
    //: func func_audiencePushToLiveRoomVC(uid: String, enterType: LiveEnterType) {
    func versionText(uid: String, enterType: ActualEnterType) {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard PrefaceReactiveCompatible.picStart() == false else { return }

        // 同一直播间只能进一次
        //: guard String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) != uid else {
        guard String(PropertyMManageressPushListener.giftShared().liveRoomModel.streamerInfo.uid) != uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You're already in her live room".localized)
            self.episode(showMsg: String(bytes: str_detailViewData.map{$0^203}, encoding: .utf8)!.localized)
            //: return
            return
        }
        // 校验接口，通过后进入直播间
        //: TalkingAudienceManager().req_enterLiveRoom(streamerUid: uid) { succeed, result, errorModel in
        TextAudienceManager().actionOfCompletion(streamerUid: uid) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: guard let livemodel = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) else { return }
            guard let livemodel = AtModelType.deserialize(from: result as? Dictionary) else { return }
            // 退出之前的直播间
            //: let currentVC = self.func__getCurrentActivityVC()
            let currentVC = self.beforeRoom()
            //: if let vcArr = currentVC?.navigationController?.viewControllers {
            if let vcArr = currentVC?.navigationController?.viewControllers {
                //: for index in 0..<(vcArr.count) {
                for index in 0 ..< (vcArr.count) {
                    //: let vc = vcArr[index]
                    let vc = vcArr[index]
                    //: if vc.isKind(of: TalkingLivePullStreamsViewController.self) == true {
                    if vc.isKind(of: MarkRecognizerDelegate.self) == true {
                        //: (vc as! TalkingLivePullStreamsViewController).popCurrentViewController()
                        (vc as! MarkRecognizerDelegate).targetAnimated()
                    }
                }
            }

            // 进入新直播间
            //: TalkingLiveManager.shared().liveRoomModel = livemodel
            PropertyMManageressPushListener.giftShared().liveRoomModel = livemodel
            //: let liveVc = TalkingLivePullStreamsViewController()
            let liveVc = MarkRecognizerDelegate()
            //: liveVc.type = enterType
            liveVc.type = enterType
            //: currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            // 埋点
            //: switch enterType {
            switch enterType {
            //: case .match:
            case .match:
                //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveWindowNoP, toUid: uid)
                a_textTurnName.photoOf(eventID: a_topData, toUid: uid)
            //: case .userDetail:
            case .userDetail:
                //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveWindowNoP, toUid: uid)
                a_textTurnName.photoOf(eventID: a_keyText, toUid: uid)
            //: case .unknown: break
            case .unknown: break
            }
        }
    }

    /// 进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func func_pushToVoiceRoomVC(roomId: String? = nil) {
    func sizeIn(roomId: String? = nil) {
        //: if TalkingLiveManager.shared().isLive == true {
        if PropertyMManageressPushListener.giftShared().isLive == true { // 直播中
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            episode(showMsg: a_connectTitle)
            //: return
            return
        }
        //: if roomId == TalkingVoiceRoomManager.shared().partyModel.roomId {
        if roomId == ImageToThen.labelShared().partyModel.roomId { // 返回语聊房
            //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
            ImageToThen.labelShared().beWhenGoback()
            //: return
            return
        }
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if ImageToThen.labelShared().isParty == true { // 切换语聊房
            //: if roomId != nil {
            if roomId != nil {
                //: TalkingVoiceRoomManager.shared().voiceRoom_switch(roomId: roomId!, beforeRoomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
                ImageToThen.labelShared().willEnd(roomId: roomId!, beforeRoomId: ImageToThen.labelShared().partyModel.roomId)
            }
            //: return
            return
        }
        //: TalkingVoiceRoomManager.shared().voiceRoom_checkAndTurnOn(roomId: roomId)
        ImageToThen.labelShared().actionTap(roomId: roomId)
    }

    // MARK: - 跳转聊天

    /// 跳转到消息列表页
    /// - Parameter isHalf: 是否半屏展示
    //: func func__pushToChatListVC(isHalfView: Bool = false) {
    func behindDateError(isHalfView: Bool = false) {
        //: let vc = TalkingChatListViewController(isHalfView: isHalfView)
        let vc = AddDataManagerDelegate(isHalfView: isHalfView)
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = beforeRoom()
        //: if isHalfView == false {
        if isHalfView == false {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
        }
    }

    /// 跳转到消息聊天页
    /// - Parameters:
    ///   - chatID: 对方Id
    ///   - isFrom: 私聊页入口
    /// - Returns: 消息聊天页

    //: func func__pushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, completion: ((_ vc: TalkingPrivateChatController) -> Void)? = nil ) {
    func sharedMode(chatID: String, isFrom: UpGoldFromEnum = .Normal, completion: ((_ vc: DoingRecognizerDelegate) -> Void)? = nil) {
        //: guard chatID.count > 0 else { return }
        guard chatID.count > 0 else { return }

        //: if chatID != ImageMacroDefine.getXiaoMiID() {
        if chatID != ImageMacroDefine.dataFormatting() { // 系统消息
            //: ProgressHUD.show()
            SizeHungReactiveCompatible.picCurrent()
            //: let param = ["toUid": chatID, "momentId": "0", "extra": "1"]
            let param = [String(bytes: str_makeName, encoding: .utf8)!: chatID, String(bytes: str_domainTitle.reversed(), encoding: .utf8)!: "0", String(bytes: str_frameTitle, encoding: .utf8)!: "1"]
            //: DoingSheRequestTool.req_refreshUserChatInfo(param: param) { [weak self] succeed, result, errorModel in
            DoingSheRequestTool.modelImageCompletion(param: param) { [weak self] succeed, result, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: guard succeed else { return }
                guard succeed else { return }

                //: let userWrap = CountMediumCacheModel.func__transformedChatinfo(userDic: result as! Dictionary<String, Any>)
                let userWrap = CountMediumCacheModel.funcWith(userDic: result as! [String: Any])
                //: DBUserInfoManager.cache_updateMsgUserInfoAndPostNotif(with: userWrap)
                InfoReactiveCompatible.cropFollowPavementStreetwise(with: userWrap)
                // 更新消息列表用户在线状态
                //: let userInfo = ["uid": chatID,
                let userInfo = [String(bytes: str_edgeCommentDataValue, encoding: .utf8)!: chatID,
                                //: "onlineStatus": userWrap.onlineStatus,
                                String(bytes: str_managerBottomData, encoding: .utf8)!: userWrap.onlineStatus,
                                //: "isNewUser":userWrap.isNewUser,
                                String(bytes: str_fillData.reversed(), encoding: .utf8)!: userWrap.isNewUser,
                                //: "userStatus": userWrap.userStatus]
                                String(bytes: str_buttonFilterData, encoding: .utf8)!: userWrap.userStatus]
                //: NotificationCenter.default.post(name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                NotificationCenter.default.post(name: a_randomData,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: userInfo)
                                                userInfo: userInfo)
                //: if userWrap.userStatus == 3 {
                if userWrap.userStatus == 3 { /// 被封号
                    //: self.func__showStatusBarErrorMsg(showMsg: "Account is restricted！".localized)
                    self.episode(showMsg: (String(str_clearBagData)).localized)
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    let chatVC = self.wood(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    //: completion?(chatVC)
                    completion?(chatVC)
                }
            }
            //: }else{
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: CountMediumCacheModel())
                let chatVC = self.wood(chatID: chatID, isFrom: isFrom, userWrap: CountMediumCacheModel())
                //: completion?(chatVC)
                completion?(chatVC)
            }
        }
    }

    //: func func__canPushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, userWrap: CountMediumCacheModel ) -> TalkingPrivateChatController {
    func wood(chatID: String, isFrom: UpGoldFromEnum = .Normal, userWrap: CountMediumCacheModel) -> DoingRecognizerDelegate {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = beforeRoom()
        //: if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
        if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index] .isKind(of: TalkingPrivateChatController.self) == true {
                if vcArr[index].isKind(of: DoingRecognizerDelegate.self) == true {
                    //: let vc = vcArr[index] as! TalkingPrivateChatController
                    let vc = vcArr[index] as! DoingRecognizerDelegate
                    //: if vc.targetId == chatID {
                    if vc.targetId == chatID {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return vc
                        return vc
                    }
                }
            }
        }

        //: let vc = TalkingPrivateChatController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        let vc = DoingRecognizerDelegate(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        //: if isFrom == .LiveRoom {
        if isFrom == .LiveRoom {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
            //: } else {
        } else {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
        //: return vc
        return vc
    }

    // MARK: - 跳转群聊

    //: func func__pushToGroupChat(groupId: String) {
    func valueId(groupId: String) {
        //: guard groupId.count > 0 else { return }
        guard groupId.count > 0 else { return }
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: DoingSheRequestTool.req_checkChatRoom(roomId: groupId) { succeed, result, errorModel in
        DoingSheRequestTool.afterDoingPremium(roomId: groupId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 106 {
                if errorModel?.errorCode == 106 {
                    //: } else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                    self.episode(showMsg: errorModel?.errorMsg ?? "")
                    //: if errorModel?.errorCode == 103 {
                    if errorModel?.errorCode == 103 { // 不在家族里
                    }
                }

                //: return
                return
            }

            //: guard let data = result as? [String: Any] else {
            guard let data = result as? [String: Any] else {
                //: return
                return
            }

            //: if ImageMacroDefine.isGroupChat(groupId) {
            if ImageMacroDefine.subject(groupId) {
                //: } else {
            } else { // 公共聊天室
                //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                    //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                    guard self.makeAbstraction(roomId: groupId) == false else { return }
                    //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                    let vc = DocumentControllerDelegate(groupType: GroupType_Meeting, infoData: data)
                    //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                    self.beforeRoom()?.navigationController?.pushViewController(vc, animated: true)

                    //: } fail: { code, desc in
                } fail: { code, _ in
                    //: if code == 10013 {
                    if code == 10013 { // 程序异常退出，未退出聊天室
                        //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                        guard self.makeAbstraction(roomId: groupId) == false else { return }
                        //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                        let vc = DocumentControllerDelegate(groupType: GroupType_Meeting, infoData: data)
                        //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                        self.beforeRoom()?.navigationController?.pushViewController(vc, animated: true)
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                        self.episode(showMsg: String(bytes: str_equalTargetData, encoding: .utf8)!.localized)
                    }
                }
            }
        }
    }

    /// 检测堆栈中是否有群聊控制器，有则跳转到群聊页
    /// - Parameter roomId: 房间Id
    /// - Returns: 检测结果（true: 有; false: 无）
    //: private func func__checkIsGroupChatVC(roomId: String) -> Bool {
    private func makeAbstraction(roomId: String) -> Bool {
        //: let currentVC = self.func__getCurrentActivityVC()
        let currentVC = self.beforeRoom()
        //: if let vcArr = currentVC?.navigationController?.viewControllers {
        if let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index].isKind(of: TalkingGroupChatController.self) == true {
                if vcArr[index].isKind(of: DocumentControllerDelegate.self) == true {
                    //: let vc = vcArr[index] as! TalkingGroupChatController
                    let vc = vcArr[index] as! DocumentControllerDelegate
                    //: if vc.infoModel.roomId == roomId {
                    if vc.infoModel.roomId == roomId {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return true
                        return true
                    }
                }
            }
        }

        //: return false
        return false
    }

    // MARK: - 真人认证

    //: func func__pushUserVerifyController(toast: String?) {
    func invitationTo(toast: String?) {
        //: let tpAuth = TPUserAuth(rawValue: MeasurementAppManager.share.loginUserMode.isTPAuth)
        let tpAuth = LaterUserValueConvertible(rawValue: MeasurementAppManager.share.loginUserMode.isTPAuth)
        //: switch(tpAuth) {
        switch tpAuth {
        //: case .unknown, .isRefused:
        case .unknown, .isRefused:
            //: let vc = TalkingFaceVerificationVC()
            let vc = FacialLeadingVerificationVc()
            //: vc.toastStr = toast ?? ""
            vc.toastStr = toast ?? ""
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = beforeRoom()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: case .isOnGoing:
        case .isOnGoing:
            //: let vc = TalkingFinalVerificationVC()
            let vc = ManagerVerificationVc()
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = beforeRoom()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }

    // MARK: - 任意用户的动态列表

    //: func func__pushUserPostListWithUid(uid: String) {
    func win(uid _: String) {}

    // MARK: - 反馈feebook

    //: func func__pushFeedbackVC() {
    func hostBy() {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = beforeRoom()
        //: let vc = TalkingFeedbackVC.init()
        let vc = FeedbackTalkingViewController()
        //: currentVC?.navigationController?.pushViewController(vc, animated: true)
        currentVC?.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: - 消息跳转

    //: func func__actionPushForMessage(jumpModel: TalkingMessageJumpModel) {
    func reverence(jumpModel: DataDateJumpModel) {
        //: if jumpModel.jumpKey == "url" {
        if jumpModel.jumpKey == (String(str_viewText)) {
            //: func__pushToWebVC(urlStr: jumpModel.url)
            comb(urlStr: jumpModel.url)
            //: } else if jumpModel.jumpKey == "userDetail"{
        } else if jumpModel.jumpKey == (str_userData.replacingOccurrences(of: "from", with: "u") + String(str_modelText)) {}
    }

    // MARK: - 会员订阅网页

    //: @objc public func func__pushToSubscribePageWebVC() {
    @objc public func birth() {
        //: LimitPushManager.share.func__pushToWebVC(webViewType: .SubscribePage)
        LimitPushManager.share.recordIn(webViewType: .SubscribePage)
    }

    // MARK: - 设置密码页面

    /// 跳转设置密码页面
    /// - Parameters:
    ///   - type: 手机号/邮箱
    ///   - content: 展示内容
    ///   - isNewPwd: 是否新设置密码（修改需要验证码）
    //: func func__pushToSetNewPasswordVC(type: LoginType, content: String, isNewPwd: Bool) {
    func use(type: DifferentiateHashable, content: String, isNewPwd: Bool) {
        //: let vc = TalkingSetNewPasswordVC()
        let vc = CommensuratePasswordVc()
        //: vc.type = type
        vc.type = type
        //: vc.content = content
        vc.content = content
        //: vc.isNewPwd = isNewPwd
        vc.isNewPwd = isNewPwd
        //: func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
        beforeRoom()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - 跳转H5

//: extension LimitPushManager {
extension LimitPushManager {
    // 跳转全屏H5入口
    //: func func__pushToWebVC(webViewType: WebUrlType) {
    func recordIn(webViewType: BrandSubscriptType) {
        //: func__pushToWebVC(webViewType: webViewType, webConfig: TalkingWebConfig())
        segue(webViewType: webViewType, webConfig: LabConfig())
    }

    /// 余额不足跳转充值/订阅页
    /// - Parameters:
    ///   - clickEvent: 埋点事件
    ///   - sufficient: 余额是否充足（默认true）
    //: func func__jumpToWebRecharge(clickEvent: String = "", sufficient: Bool = true, appendParams: String = "&type=7") {
    func billParams(clickEvent: String = "", sufficient: Bool = true, appendParams: String = (String(str_freeName.prefix(7)))) {
        //: let payWinType = MeasurementAppManager.share.appUserConfigMode.payWinType
        let payWinType = MeasurementAppManager.share.appUserConfigMode.payWinType
        // 样式：半屏充值页 || (已订阅 && 余额不足)
        //: if payWinType == 1 || (MeasurementAppManager.share.loginUserMode.loungePlus && sufficient == false) {
        if payWinType == 1 || (MeasurementAppManager.share.loginUserMode.loungePlus && sufficient == false) { // 半屏充值页
            //: func__pushToHalfWebVC(webViewType: .RechargeHalfPage, clickEvent: clickEvent)
            pathSub(webViewType: .RechargeHalfPage, clickEvent: clickEvent)

            //: } else if payWinType == 2 {
        } else if payWinType == 2 { // 会员订阅弹窗
            //: func__pushToSubscribeAlert(appendParams: appendParams)
            callParams(appendParams: appendParams)
        }
    }

    /// 跳转会员订阅弹窗
    /// - Parameter appendParams: url拼接参数（假视频流程拼接："&type=6；默认流程："&type=7"）
    //: func func__pushToSubscribeAlert(appendParams: String = "&type=7") {
    func callParams(appendParams: String = (String(str_freeName.prefix(7)))) {
        //: var urlStr = TalkingWebManager.getFullUrl(urlType: .SubscribeAlert)
        var urlStr = SheManager.sizeType(urlType: .SubscribeAlert)
        //: urlStr.append(appendParams)
        urlStr.append(appendParams)
        //: LimitPushManager.share.func__pushToWebVC(urlStr: urlStr)
        LimitPushManager.share.comb(urlStr: urlStr)
        // 曝光用户数埋点
        //: uploadRecord.uploadRecordEvent(eventID: subscribtionRecordButton, parameterStr: ["amount": 0])
        a_textTurnName.daguerreotype(eventID: a_routeErrorData, parameterStr: [String(bytes: str_valueText, encoding: .utf8)!: 0])
    }

    /// 跳转半屏H5入口
    /// - Parameters:
    ///   - webViewType: 网页URL
    ///   - clickEvent: 埋点事件
    //: func func__pushToHalfWebVC(webViewType: WebUrlType, clickEvent: String = "") {
    func pathSub(webViewType: BrandSubscriptType, clickEvent: String = "") {
        //: var config = TalkingWebConfig.init()
        var config = LabConfig()
        //: config.showLoadingView = false
        config.showLoadingView = false
        //: config.isHalfView = true
        config.isHalfView = true
        //: func__pushToWebVC(webViewType: webViewType, webConfig: config)
        segue(webViewType: webViewType, webConfig: config)
        // 充值埋点
        //: if webViewType == .RechargeHalfPage {
        if webViewType == .RechargeHalfPage {
            //: RECHARGE_CLICK_EVENT = clickEvent
            a_okUseTopValue = clickEvent
            //: if clickEvent.count > 0 {
            if clickEvent.count > 0 {
                //: uploadRecord.uploadRecordEvent(eventID: clickEvent, parameterStr: ["amount": 0])
                a_textTurnName.daguerreotype(eventID: clickEvent, parameterStr: [String(bytes: str_valueText, encoding: .utf8)!: 0])
            }
        }
    }

    //: func func__pushToWebVC(webViewType: WebUrlType, webConfig: TalkingWebConfig) {
    func segue(webViewType: BrandSubscriptType, webConfig: LabConfig) {
        //: let urlStr = TalkingWebManager.getFullUrl(urlType: webViewType)
        let urlStr = SheManager.sizeType(urlType: webViewType)
        //: func__pushToWebView(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
        viewConfig(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
    }

    //: func func__pushToWebVC(urlStr: String?, webConfig: TalkingWebConfig? = nil) {
    func comb(urlStr: String?, webConfig: LabConfig? = nil) {
        //: let config = (webConfig == nil) ? TalkingWebConfig():webConfig
        let config = (webConfig == nil) ? LabConfig() : webConfig
        //: func__pushToWebView(urlStr: urlStr, webViewType: nil, webConfig: config!)
        viewConfig(urlStr: urlStr, webViewType: nil, webConfig: config!)
    }

    //: func func__pushToWebView(urlStr: String?, webViewType: WebUrlType?, webConfig: TalkingWebConfig) {
    func viewConfig(urlStr: String?, webViewType: BrandSubscriptType?, webConfig: LabConfig) {
        //: guard urlStr != nil && urlStr != "" else { return }
        guard urlStr != nil, urlStr != "" else { return }
        //: var config = webConfig
        var config = webConfig

        // 有值且大于0，半屏按照比例展示
        //: if config.widthHeight ?? 0 > 0 {
        if config.widthHeight ?? 0 > 0 {
            //: config.isHalfView = true
            config.isHalfView = true
        }
        // 解析url中带的参数
        //: let urlParams = JSON(urlStr!.urlParameters ?? [:])
        let urlParams = JSON(urlStr!.urlParameters ?? [:])
        //: if urlParams["transparency"].stringValue == "1" { // 透明背景
        if urlParams[(str_enableName.replacingOccurrences(of: "fill", with: "ra") + String(str_modelValue))].stringValue == "1" { // 透明背景
            //: config.clearBgColor = true
            config.clearBgColor = true
        }

        // url拼接参数
        //: let allowCharSet: CharacterSet = CharacterSet.init(charactersIn: "`%^{}\"[]|\\<>").inverted
        let allowCharSet = CharacterSet(charactersIn: "`%^{}\"[]|\\<>").inverted
        //: var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        //: let otherParams = "version=\(AppNetVersion)&packageId=\(PackageID)&bundleId=\(AppBundle)"
        let otherParams = (String(str_collectTitle)) + "\(a_conversationTitle)" + (String(str_topValue.prefix(4)) + "kageId=") + "\(a_pathValue)" + (String(str_mainData.prefix(4)) + "dleId" + String(str_toDataValue)) + "\(a_countDisplayValue)"
        //: if urlStr.contains("?") {
        if urlStr.contains("?") {
            //: urlStr = "\(urlStr)&\(otherParams)"
            urlStr = "\(urlStr)&\(otherParams)"
            //: } else {
        } else {
            //: urlStr = "\(urlStr)?\(otherParams)"
            urlStr = "\(urlStr)?\(otherParams)"
        }

        //: let vc = TalkingWebViewController.init(urlString: urlStr, webViewType: webViewType, webConfig: config)
        let vc = MForefrontViewController(urlString: urlStr, webViewType: webViewType, webConfig: config)

        // 展示网页
        //: if let currentVC = func__getCurrentActivityVC() {
        if let currentVC = beforeRoom() {
            // 如果当前视图是模态上来的，跳转到下级时只能使用模态效果跳转
            //: var currentVCIsPresent = false
            var currentVCIsPresent = false
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: MForefrontViewController.self) &&
                //: (currentVC as! TalkingWebViewController).isModal == true {
                (currentVC as! MForefrontViewController).isModal == true
            {
                //: currentVCIsPresent = true
                currentVCIsPresent = true
            }

            //: if config.isHalfView {
            if config.isHalfView { // 半屏使用present
                //: if config.widthHeight == nil {
                if config.widthHeight == nil {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight*2/3)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue * 2 / 3)
                    //: vc.tranConfig.configCorner(corners: [.topLeft, .topRight], radius: 18)
                    vc.tranConfig.blockPop(corners: [.topLeft, .topRight], radius: 18)
                    //: } else {
                } else {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenWidth/config.widthHeight!)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: a_blockValue, height: a_blockValue / config.widthHeight!)
                }
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else if config.clearBgColor || currentVCIsPresent {
            } else if config.clearBgColor || currentVCIsPresent { // 透明背景只能用present
                //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
                vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else {
            } else {
                //: vc.isModal = false
                vc.isModal = false
                //: currentVC.navigationController?.pushViewController(vc, animated: true)
                currentVC.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - 获取当前视图、导航

//: extension LimitPushManager {
public extension LimitPushManager {
    //: @objc public func func__getCurrentActivityVC() -> UIViewController? {
    @objc func beforeRoom() -> UIViewController? {
        //: return currentViewController()
        return colorController()
    }
}

//: struct TalkingMessageJumpModel: HandyJSON {
struct DataDateJumpModel: HandyJSON {
    //: var jumpKey: String?
    var jumpKey: String? // 评论的id
    //: var jumpUid: String?
    var jumpUid: String?
    //: var url: String?
    var url: String?
}
