
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_topTitle:[UInt8] = [0xca,0xcd,0xca,0xd7,0x8b,0xc0,0xcc,0xc7,0xc6,0xd1,0x99,0x8a,0x83,0xcb,0xc2,0xd0,0x83,0xcd,0xcc,0xd7,0x83,0xc1,0xc6,0xc6,0xcd,0x83,0xca,0xce,0xd3,0xcf,0xc6,0xce,0xc6,0xcd,0xd7,0xc6,0xc7]

/*: "lab_manager_image" :*/
fileprivate let str_randomDateUserText:[Character] = ["l","a","b","_","m","a","n","a","g","e","r"]
fileprivate let str_playerName:String = "_imagetarget let text"

/*: "LaterItemCell" :*/
fileprivate let str_tableName:String = "progress colorTalkin"
fileprivate let str_managerName:String = "entRecontent let"
fileprivate let str_timeName:String = "emakemake"

/*: "momentId" :*/
fileprivate let str_modelValue:[UInt8] = [0x64,0x49,0x74,0x6e,0x65,0x6d,0x6f,0x6d]

/*: "lastId" :*/
fileprivate let str_successValue:String = "lastIdequal color"

/*: "limit" :*/
fileprivate let str_rowTitle:[Character] = ["l","i","m","i","t"]

/*: "list" :*/
fileprivate let str_titleData:[Character] = ["l","i","s","t"]

/*: "more>>" :*/
fileprivate let str_gestureData:String = "image"
fileprivate let str_roomModelCenterData:[Character] = ["o","r","e",">",">"]

/*: "Comment on success" :*/
fileprivate let str_barTitle:String = "frame model text view bothCommen"
fileprivate let str_callText:String = "ucceturn"

/*: "replyId" :*/
fileprivate let str_equalMomentNameValue:[Character] = ["r","e","p","l","y"]
fileprivate let str_mustText:String = "hidden user letId"

/*: "type" :*/
fileprivate let str_picTextData:[UInt8] = [0x74,0x79,0x70,0x65]

/*: "comment" :*/
fileprivate let str_roomText:[Character] = ["c","o","m","m","e","n"]
fileprivate let str_unknownActionTitle:String = "view"

/*: "number" :*/
fileprivate let str_arrayImageMName:[UInt8] = [0x72,0x65,0x62,0x6d,0x75,0x6e]

/*: "Delete Post" :*/
fileprivate let str_showValue:String = "Delemodel model range count bottom"
fileprivate let str_centerText:String = "click"

/*: "id" :*/
fileprivate let str_imageValue:String = "ibottom"

/*: "model" :*/
fileprivate let str_infoFileData:[UInt8] = [0x6d,0x6f,0x64,0x65,0x6c]

/*: "The content cannot be empty!" :*/
fileprivate let str_normalValue:[Character] = ["T","h","e"," ","c","o","n","t","e","n","t"," ","c","a","n","n","o","t"," ","b","e"]
fileprivate let str_selectedText:String = " empty!outside show model"

/*: "content" :*/
fileprivate let str_labelGroupTitle:[Character] = ["c","o","n","t","e","n","t"]

/*: "Delete" :*/
fileprivate let str_voiceBottomData:String = "Deletecontent manager if extension"

/*: "Delete Comment?" :*/
fileprivate let str_dataRowValue:[Character] = ["D","e","l","e","t","e"]
fileprivate let str_placeData:String = "false to var Com"

/*: "Cancel" :*/
fileprivate let str_sizeInputCornerText:String = "gift banCancel"

/*: "Reply" :*/
fileprivate let str_opName:String = "Replymodel bubble in"

/*: "  :*/
fileprivate let str_resultData:String = " "

/*: "Details" :*/
fileprivate let str_momentEqualValue:[Character] = ["D","e","t","a","i","l","s"]

/*: "icon_moment_nor_report" :*/
fileprivate let str_attachIndexName:String = "view viewicon_"
fileprivate let str_itemName:String = "let self appear self_nor_"
fileprivate let str_equalValue:String = "pic"

/*: "Comment" :*/
fileprivate let str_onPageValue:String = "gift"
fileprivate let str_countRandomData:[Character] = ["o","m","m","e","n","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MudraDetailVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/23.
//

//: import UIKit
import UIKit

//: typealias DeletePostback = () -> Void
typealias DeletePostback = () -> Void

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentDetailVC: TalkingBaseViewController {
class MudraDetailVc: PropertyViewController {
	var elementDoing: Bool = false
	var userSum: Int = 67
	var videoArray: [AnyHashable] = []
	var modelDictionary: [AnyHashable: String] = [:]

    var frameImageView: UIImageView?

    //: var delegete: DeletePostback?
    var delegete: DeletePostback?
    //: var momentModel = TalkingMomentModel()
    var momentModel = CustomMeasurable()
    //: var commentList = Array<TalkingCommentModel>()
    var commentList = [AppWithHandyJSON]()
    //: let inputViewHeight = 56+kDeviceSafeBottomHeight
    let inputViewHeight = 56 + a_agentData
    //: var lastId  = "0"
    var lastId = "0"
    //: var limit  = 10
    var limit = 10
    //: let quickCommentReplyIndex = -100
    let quickCommentReplyIndex = -100
    /// 点击评论按钮，滑动到评论区域
    //: var toCommentView = false
    var toCommentView = false

    //: init(model: TalkingMomentModel) {
    init(model: CustomMeasurable) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: momentModel = model
        momentModel = model
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_topTitle.map{$0^163}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        rule()
        //: setupSubViewsConstraint()
        withPlan()
        //: requestMomentDetail()
        dilapidate()
        //: requestCommentList()
        informationPush()

        frameImageView = UIImageView(frame: self.view.frame.union(CGRect(x: CGFloat(Double(self.view.center.y)), y: CGFloat(self.view.isExclusiveTouch ? 8 : 2), width: CGFloat(0), height: CGFloat(Int(self.view.bounds.origin.y)))))
        if let frameImageView = frameImageView {
            self.frameImageView?.image = UIImage(named: (String(str_randomDateUserText) + String(str_playerName.prefix(6))))
            if (frameImageView.mask != nil) && (frameImageView.clipsToBounds) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(frameImageView)
            }
        }
    
            if (comInputView.inputViewController != nil) && (comInputView.layer.shadowRadius == 2.80) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let cellBot = GiftShotView()
            cellBot.dataName = self.lastId
            cellBot.unsleepingSwitch = { [self] showClose in
            self.elementDoing = showClose
            
            var cellBot = toCommentView
                cellBot = false
                cellBot = !cellBot
            if cellBot != self.elementDoing {
                self.elementDoing = cellBot
            }
            
                self.elementDoing = true
                self.elementDoing = false
            return self.elementDoing
            }
            cellBot.awakeMagnitude = { [self] momentMoveVoiceSum in
            self.userSum = momentMoveVoiceSum
            
            var cellBot = quickCommentReplyIndex
                cellBot -= 1
                if cellBot <= 0 {
                    cellBot = cellBot + 1
                }
            if cellBot < self.userSum {
                self.userSum = cellBot
            }
            
            return self.userSum
            }
            cellBot.snapArray = { [self] lastArray in
            self.videoArray = lastArray
            
            guard var value = self.videoArray as? [String] else {
                return nil
            }
            return value
            }
            cellBot.indexDictionary = { [self] managerBagDictionary in
            self.modelDictionary = managerBagDictionary
            
            guard var value = self.modelDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                comInputView.addSubview(cellBot)
            }

	}

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.grouped)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue), style: UITableView.Style.grouped)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = false
        table.showsVerticalScrollIndicator = false
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.register(TalkingCommentReplyItemCell.self, forCellReuseIdentifier: "TalkingCommentReplyItemCell")
        table.register(LaterItemCell.self, forCellReuseIdentifier: (String(str_tableName.suffix(6)) + "gComm" + String(str_managerName.prefix(5)) + "plyItemC" + str_timeName.replacingOccurrences(of: "make", with: "l")))

        //: return table
        return table
        //: }()
    }()

    //: lazy var commentNumberLabel: UILabel = {
    lazy var commentNumberLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .thoughtImage(type: .Medium, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: return label
        return label
        //: }()
    }()

    //: lazy var comInputView: TalkingCommentInputView = {
    lazy var comInputView: LaterModelInputView = {
        //: let text = TalkingCommentInputView.init()
        let text = LaterModelInputView()
        //: text.delegate = self
        text.delegate = self
        //: return text
        return text
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundColor(color: .clear, forState: .normal)
        btn.achromaticColour(color: .clear, forState: .normal)
        //: btn.addTarget( self, action: #selector(dismissClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(recordReject), for: .touchUpInside)
        //: self.view.addSubview(btn)
        self.view.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingMomentDetailVC {
extension MudraDetailVc {
    //: func requestMomentDetail() {
    func dilapidate() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_modelValue.reversed(), encoding: .utf8)!] = momentModel.mid

        //: TalkingMomentRequestTool.req_MomentDetail(params: dict) { succeed, result, errorModel in
        RequestTool.will(params: dict) { succeed, result, errorModel in

            //: if succeed {
            if succeed {
                //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if var model = JSONDeserializer<CustomMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: model.isMomentDetail = true
                    model.isMomentDetail = true
                    //: model.caculateItemHeight()
                    model.eraseAdd()
                    //: self.momentModel = model
                    self.momentModel = model
                    //: self.setupMomentView()
                    self.nameShared()
                }
                //: } else {
            } else {
                //: if errorModel?.errorCode == 50206 {
                if errorModel?.errorCode == 50206 {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                    }
                }
            }
        }
    }

    //: func requestCommentList() {
    func informationPush() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_modelValue.reversed(), encoding: .utf8)!] = momentModel.mid
        //: dict["lastId"] = lastId
        dict[(String(str_successValue.prefix(6)))] = lastId
        //: dict["limit"] = limit
        dict[(String(str_rowTitle))] = limit
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()

        //: TalkingMomentRequestTool.req_CommentList(params: dict) { succeed, result, errorModel in
        RequestTool.areaBeauty(params: dict) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: if dict.count == 0 {
                if dict.count == 0 {
                    //: return
                    return
                }
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(String(str_titleData))] as! [Any]

                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingCommentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<AppWithHandyJSON>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.caculateCommentItemHeight()
                        model.cancel()
                        //: var replyArray: [TalkingCommentReplyModel] = []
                        var replyArray: [EventReplyModel] = []
                        //: for j in 0..<model.comment.count {
                        for j in 0 ..< model.comment.count {
                            //: var replymodel = model.comment[j]
                            var replymodel = model.comment[j]
                            //: replymodel.caculateReplyItemHeight()
                            replymodel.makeHeight()
                            //: replyArray.append(replymodel)
                            replyArray.append(replymodel)
                        }
                        //: if model.totalReply > 3 {
                        if model.totalReply > 3 {
                            //: var replymodel = TalkingCommentReplyModel.init()
                            var replymodel = EventReplyModel()
                            //: replymodel.allCountContent = String(format: "more>>")
                            replymodel.allCountContent = String(format: (str_gestureData.replacingOccurrences(of: "image", with: "m") + String(str_roomModelCenterData)))
                            //: replymodel.caculateReplyItemHeight()
                            replymodel.makeHeight()
                            //: replyArray.append(replymodel)
                            replyArray.append(replymodel)
                        }
                        //: model.comment = replyArray
                        model.comment = replyArray
                        //: self.commentList.append(model)
                        self.commentList.append(model)
                    }
                }

                //: if array.count>0 {
                if array.count > 0 {
                    //: let model = self.commentList.last
                    let model = self.commentList.last
                    //: self.lastId = model?.cid ?? "0"
                    self.lastId = model?.cid ?? "0"
                    //: self.mainTableView.reloadData()
                    self.mainTableView.reloadData()
                    //: self.mainTableView.endRefresh()
                    self.mainTableView.infoTo()
                    //: if array.count<self.limit {
                    if array.count < self.limit {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: } else {
                } else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.toCommentView {
                if self.toCommentView {
                    //: self.toCommentView = false
                    self.toCommentView = false
                    //: self.scrollToCommentView()
                    self.cuttingEdgeRoom()
                }

                //: } else {
            } else {
                //: if errorModel?.errorCode == 50206 {
                if errorModel?.errorCode == 50206 {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                    }
                }
            }
        }
    }

    //: func requestCommentWithParams(params: Dictionary<String, Any>, index: Int) {
    func paradigm(params: [String: Any], index: Int) {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()

        //: TalkingMomentRequestTool.req_SendComment(params: params) { [self] succeed, result, errorModel in
        RequestTool.property(params: params) { [self] succeed, result, _ in

            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()

            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Comment on success".localized)
                self.afterTitle(showMsg: (String(str_barTitle.suffix(6)) + "t on s" + str_callText.replacingOccurrences(of: "turn", with: "ss")).localized)
                //: if params["replyId"] != nil {
                if params[(String(str_equalMomentNameValue) + String(str_mustText.suffix(2)))] != nil {
                    //: var model = TalkingCommentModel()
                    var model = AppWithHandyJSON()
                    //: if index == self.quickCommentReplyIndex {
                    if index == self.quickCommentReplyIndex {
                        //: } else {
                    } else {
                        //: model = self.commentList[index]
                        model = self.commentList[index]
                    }

                    //: if model.uid!.count > 0 {
                    if model.uid!.count > 0 {
                        //: if var replyModel = JSONDeserializer<TalkingCommentReplyModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                        if var replyModel = JSONDeserializer<EventReplyModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                            //: model.totalReply += 1
                            model.totalReply += 1
                            //: var array = model.comment
                            var array = model.comment
//                            if array.count>3 {
//                                array.remove(at: array.count-2)
//                            }
                            //: replyModel.caculateReplyItemHeight()
                            replyModel.makeHeight()
                            //: array.insert(replyModel, at: 0)
                            array.insert(replyModel, at: 0)

//                            if array.count>3 {
//                                array.removeLast()
//                                var tempModel = EventReplyModel.init()
//                                tempModel.allCountContent = String(format: "%d comments >", model.totalReply)
//                                tempModel.caculateReplyItemHeight()
//                                array.append(tempModel)
//                            }
                            //: model.comment = array
                            model.comment = array
                            //: self.commentList[index] = model
                            self.commentList[index] = model
                        }
                    }

                    //: } else {
                } else {
                    //: if var model = JSONDeserializer<TalkingCommentModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<AppWithHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                        //: model.caculateCommentItemHeight()
                        model.cancel()
                        //: if model.uid == MeasurementAppManager.share.loginUserMode.userID {
                        if model.uid == MeasurementAppManager.share.loginUserMode.userID {
                            //: model.headPicFrame = MeasurementAppManager.share.loginUserMode.headPicFrame
                            model.headPicFrame = MeasurementAppManager.share.loginUserMode.headPicFrame
                        }
                        //: self.commentList.insert(model, at: 0)
                        self.commentList.insert(model, at: 0)
                    }
                }
                //: self.momentModel.replyNum!  += 1
                self.momentModel.replyNum! += 1
                //: self.setupMomentView()
                self.nameShared()
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: NotificationCenter.default.post(name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: self, userInfo: ["type": "comment".localized, "number": (self.momentModel.replyNum) ?? 0, "momentId": self.momentModel.mid ?? ""])
                NotificationCenter.default.post(name: a_changeName, object: self, userInfo: [String(bytes: str_picTextData, encoding: .utf8)!: (String(str_roomText) + str_unknownActionTitle.replacingOccurrences(of: "view", with: "t")).localized, String(bytes: str_arrayImageMName.reversed(), encoding: .utf8)!: (self.momentModel.replyNum) ?? 0, String(bytes: str_modelValue.reversed(), encoding: .utf8)!: self.momentModel.mid ?? ""])
            }
        }
    }

    /// 子评论列表
    //: func requestReplyList(cid: String, lastId: String, limit: Int, index: IndexPath) {
    func upIndex(cid: String, lastId: String, limit: Int, index: IndexPath) {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: ProgressHUD.dismiss()
        SizeHungReactiveCompatible.dataMessage()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["replyId"] = cid
        dict[(String(str_equalMomentNameValue) + String(str_mustText.suffix(2)))] = cid
        //: dict["lastId"] = lastId
        dict[(String(str_successValue.prefix(6)))] = lastId
        //: dict["limit"] = limit
        dict[(String(str_rowTitle))] = limit

        //: TalkingMomentRequestTool.req_CommentDetailList(params: dict) { succeed, result, errorModel in
        RequestTool.withCompletion(params: dict) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: if dict.count == 0 {
                if dict.count == 0 {
                    //: return
                    return
                }
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(String(str_titleData))] as! [Any]
                //: var cmodel = self.commentList[index.section]
                var cmodel = self.commentList[index.section]
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingCommentReplyModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<EventReplyModel>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.caculateReplyItemHeight()
                        model.makeHeight()
                        //: cmodel.comment.insert(model, at: cmodel.comment.count-1)
                        cmodel.comment.insert(model, at: cmodel.comment.count - 1)
                    }
                }
                //: if array.count == 0 {
                if array.count == 0 {
                    //: cmodel.comment.removeLast()
                    cmodel.comment.removeLast()
                }
                //: self.commentList[index.section] = cmodel
                self.commentList[index.section] = cmodel
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingMomentDetailVC {
extension MudraDetailVc {
    //: func footerRefresh() {
    func priority() {
        //: if self.lastId == "0" {
        if self.lastId == "0" {
            //: return
            return
        }
        //: requestCommentList()
        informationPush()
    }

    //: func scrollToCommentView() {
    func cuttingEdgeRoom() {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.mainTableView.scrollRectToVisible(CGRect(x: 0, y: self.momentModel.itemHeight ?? 56, width: ScreenWidth, height: ScreenHeight-CGFloat(self.inputViewHeight)-kDeviceSafeBottomHeight-StatusBarNavigationBarHeight), animated: true)
            self.mainTableView.scrollRectToVisible(CGRect(x: 0, y: self.momentModel.itemHeight ?? 56, width: a_blockValue, height: a_formalValue - CGFloat(self.inputViewHeight) - a_agentData - a_itemTitle), animated: true)
        }
    }

    //: @objc func BlockBtnClick() {
    @objc func original() {
        //: if self.momentModel.uid == MeasurementAppManager.share.loginUserMode.userID {
        if self.momentModel.uid == MeasurementAppManager.share.loginUserMode.userID {
            //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
            let vc = MediumDataSource(frame: self.view.frame)
            //: vc.initwithList(cellTitleList: ["Delete Post".localized])
            vc.messageWith(cellTitleList: [(String(str_showValue.prefix(4)) + "te Pos" + str_centerText.replacingOccurrences(of: "click", with: "t")).localized])

            //: vc.munuBlock = { [weak self] index, str in
            vc.munuBlock = { [weak self] _, _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: ProgressHUD.show()
                SizeHungReactiveCompatible.picCurrent()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = self.momentModel.mid
                dict["id"] = self.momentModel.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                RequestTool.regard(params: dict) { succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    SizeHungReactiveCompatible.dataMessage()
                    //: if succeed {
                    if succeed {
                        //: self.delegete?()
                        self.delegete?()
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                        //: NotificationCenter.default.post(name: DELETE_MINE_POST_NOTIFICATION, object: self, userInfo: ["model": self.momentModel])
                        NotificationCenter.default.post(name: a_statusName, object: self, userInfo: [String(bytes: str_infoFileData, encoding: .utf8)!: self.momentModel])
                    }
                }
            }

            //: } else {
        } else {
            //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: momentModel.uid ?? "")
            let reportView = LimitMediaAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: momentModel.uid ?? "")
            //: reportView.showReportViewIn(view: nil)
            reportView.icon(view: nil)
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: comInputView.inputTextView.resignFirstResponder()
        comInputView.inputTextView.resignFirstResponder()
    }

    //: @objc func dismissClick() {
    @objc func recordReject() {
        //: comInputView.inputTextView.text = ""
        comInputView.inputTextView.text = ""
        //: comInputView.resignkeyBoard()
        comInputView.kind()
    }
}

// MARK: - NoteViewDelegate

//: extension TalkingMomentDetailVC: CommentInputViewDelegate {
extension MudraDetailVc: NoteViewDelegate {
    //: func func__replyTextMsg(msgStr: String, row: IndexPath) {
    func concatenate(msgStr: String, row: IndexPath) {
        //: if msgStr.count == 0 {
        if msgStr.count == 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "The content cannot be empty!".localized)
            self.episode(showMsg: (String(str_normalValue) + String(str_selectedText.prefix(7))).localized)
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_modelValue.reversed(), encoding: .utf8)!] = momentModel.mid
        //: dict["content"] = msgStr
        dict[(String(str_labelGroupTitle))] = msgStr

        //: let model = self.commentList[row.section]
        let model = self.commentList[row.section]
        //: let replymodel = model.comment[row.row]
        let replymodel = model.comment[row.row]
        //: dict["replyId"] = replymodel.cid
        dict[(String(str_equalMomentNameValue) + String(str_mustText.suffix(2)))] = replymodel.cid
        //: requestCommentWithParams(params: dict, index: row.section)
        paradigm(params: dict, index: row.section)
    }

    //: func func__sendTextMsg(msgStr: String, index: Int) {
    func modelIndex(msgStr: String, index: Int) {
        //: if msgStr.count == 0 {
        if msgStr.count == 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "The content cannot be empty!".localized)
            self.episode(showMsg: (String(str_normalValue) + String(str_selectedText.prefix(7))).localized)
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_modelValue.reversed(), encoding: .utf8)!] = momentModel.mid
        //: dict["content"] = msgStr
        dict[(String(str_labelGroupTitle))] = msgStr
        //: if index >= 0 {
        if index >= 0 {
            //: let model = self.commentList[index]
            let model = self.commentList[index]
            //: dict["replyId"] = model.cid
            dict[(String(str_equalMomentNameValue) + String(str_mustText.suffix(2)))] = model.cid
            //: } else if index == quickCommentReplyIndex {
        } else if index == quickCommentReplyIndex {}

        //: requestCommentWithParams(params: dict, index: index)
        paradigm(params: dict, index: index)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func countBean(heightToBottom: CGFloat) {
        //: comInputView.snp.updateConstraints { make in
        comInputView.snp.updateConstraints { make in
            //: make.bottom.equalTo(self.view).offset(-heightToBottom)
            make.bottom.equalTo(self.view).offset(-heightToBottom)
        }
        //: if heightToBottom>100 {
        if heightToBottom > 100 {
            //: backBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: self.view.frame.size.height-heightToBottom-inputViewHeight)
            backBtn.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: self.view.frame.size.height - heightToBottom - inputViewHeight)
            //: backBtn.isHidden = false
            backBtn.isHidden = false
        }
        //: else {
        else {
            //: backBtn.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            backBtn.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            //: backBtn.isHidden = true
            backBtn.isHidden = true
        }
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func vanguardHeight(height: CGFloat) {
        //: comInputView.snp.updateConstraints { make in
        comInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }
        //: self.view.needsUpdateConstraints()
        self.view.needsUpdateConstraints()
        //: self.view.updateConstraintsIfNeeded()
        self.view.updateConstraintsIfNeeded()
        //: backBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: backBtn.frame.size.height-height)
        backBtn.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: backBtn.frame.size.height - height)
        //: backBtn.isHidden = false
        backBtn.isHidden = false
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }

    /// 删除个人评论
    //: func deleteReplay(cid: String) {
    func country(cid: String) {
        //: if self.momentModel.uid == MeasurementAppManager.share.loginUserMode.userID {
        if self.momentModel.uid == MeasurementAppManager.share.loginUserMode.userID {
            //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
            let vc = MediumDataSource(frame: self.view.frame)
            //: vc.initwithList(cellTitleList: ["Delete".localized])
            vc.messageWith(cellTitleList: [(String(str_voiceBottomData.prefix(6))).localized])

            //: vc.munuBlock = { [weak self] index, str in
            vc.munuBlock = { [weak self] _, _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.attribAlert(title: "Delete Comment?".localized, attributedMessage: NSMutableAttributedString.init(), leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized) {
                TitleAlertShow.outsideWill(title: (String(str_dataRowValue) + String(str_placeData.suffix(4)) + "ment?").localized, attributedMessage: NSMutableAttributedString(), leftBtnTitle: (String(str_sizeInputCornerText.suffix(6))).localized, rightBtnTitle: (String(str_voiceBottomData.prefix(6))).localized) {
                    //: TalkingAlertShow.hideAlert()
                    TitleAlertShow.lastAlert()

                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    TitleAlertShow.lastAlert()
                    //: ProgressHUD.show()
                    SizeHungReactiveCompatible.picCurrent()
                    //: var dict = Dictionary<String, Any>()
                    var dict = [String: Any]()
                    //: dict["id"] = cid
                    dict["id"] = cid
                    //: TalkingMomentRequestTool.req_DeleteMomentReply(params: dict) { succeed, result, errorModel in
                    RequestTool.fileAllocationTable(params: dict) { succeed, _, _ in
                        //: ProgressHUD.dismiss()
                        SizeHungReactiveCompatible.dataMessage()
                        //: if succeed {
                        if succeed {
                            //: for (index, model) in self.commentList.enumerated() {
                            for (index, model) in self.commentList.enumerated() {
                                //: if cid == model.cid {
                                if cid == model.cid {
                                    //: self.commentList.remove(at: index)
                                    self.commentList.remove(at: index)
                                    //: break
                                    break
                                }
                            }
                            //: self.mainTableView.reloadData()
                            self.mainTableView.reloadData()
                            //: self.momentModel.replyNum!  -= 1
                            self.momentModel.replyNum! -= 1
                            //: self.setupMomentView()
                            self.nameShared()
                            //: NotificationCenter.default.post(name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: self, userInfo: ["type": "comment".localized, "number": (self.momentModel.replyNum) ?? 0, "momentId": self.momentModel.mid ?? ""])
                            NotificationCenter.default.post(name: a_changeName, object: self, userInfo: [String(bytes: str_picTextData, encoding: .utf8)!: (String(str_roomText) + str_unknownActionTitle.replacingOccurrences(of: "view", with: "t")).localized, String(bytes: str_arrayImageMName.reversed(), encoding: .utf8)!: (self.momentModel.replyNum) ?? 0, String(bytes: str_modelValue.reversed(), encoding: .utf8)!: self.momentModel.mid ?? ""])
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingMomentDetailVC: UITableViewDelegate, UITableViewDataSource {
extension MudraDetailVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return self.commentList.count
        return self.commentList.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: return model.comment.count
        return model.comment.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]
        //: if model.comment.count == 1 {
        if model.comment.count == 1 {
            //: return replymodel.itemHeight! + 5
            return replymodel.itemHeight! + 5
        }
        //: return replymodel.itemHeight!
        return replymodel.itemHeight!
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingCommentReplyItemCell"
        let identifier = (String(str_tableName.suffix(6)) + "gComm" + String(str_managerName.prefix(5)) + "plyItemC" + str_timeName.replacingOccurrences(of: "make", with: "l"))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingCommentReplyItemCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? LaterItemCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingCommentReplyItemCell(style: .default, reuseIdentifier: identifier)
            cell = LaterItemCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: if model.comment.count>0 {
        if model.comment.count > 0 {
            //: let replymodel = model.comment[indexPath.row]
            let replymodel = model.comment[indexPath.row]
            //: cell?.configCell(model: replymodel)
            cell?.end(model: replymodel)
        }
        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]

        //: var height = CGFloat()
        var height = CGFloat()
        //: if (model.comment.count == 1) {
        if model.comment.count == 1 {
            //: height = replymodel.itemHeight! + 5
            height = replymodel.itemHeight! + 5
            //: } else {
        } else {
            //: height = replymodel.itemHeight!
            height = replymodel.itemHeight!
        }
        //: let tcell: TalkingCommentReplyItemCell = cell as! TalkingCommentReplyItemCell
        let tcell: LaterItemCell = cell as! LaterItemCell
        //: tcell.shearTableViewSection(cell: cell, tableView: tableView, indexPath: indexPath as NSIndexPath, radius: 6, height: height)
        tcell.onTitle(cell: cell, tableView: tableView, indexPath: indexPath as NSIndexPath, radius: 6, height: height)
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]
        //: if replymodel.allCountContent  == "more>>" {
        if replymodel.allCountContent == (str_gestureData.replacingOccurrences(of: "image", with: "m") + String(str_roomModelCenterData)) {
            //: let lastmodel = model.comment[model.comment.count-2]
            let lastmodel = model.comment[model.comment.count - 2]
            //: requestReplyList(cid: model.cid!, lastId: lastmodel.cid ?? "", limit: 5, index: indexPath)
            upIndex(cid: model.cid!, lastId: lastmodel.cid ?? "", limit: 5, index: indexPath)
            //: } else {
        } else {
            //: self.comInputView.updatePlaceholder(holder: "Reply".localized + "\(replymodel.nickname)" + ":", index: 0, row: indexPath, type: 2)
            self.comInputView.holderType(holder: (String(str_opName.prefix(5))).localized + "\(replymodel.nickname)" + ":", index: 0, row: indexPath, type: 2)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headeView: TalkingCommentItemCell = TalkingCommentItemCell.init(style: .default, reuseIdentifier: nil)
        let headeView = ManagerViewCell(style: .default, reuseIdentifier: nil)
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: headeView.configCell(model: model)
        headeView.frankSex(model: model)
        //: headeView.commentReplyBlock = { [weak self] nickname in
        headeView.commentReplyBlock = { [weak self] nickname in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.comInputView.updatePlaceholder(holder: "Reply".localized + " \(nickname)" + ":", index: section, row: IndexPath(), type: 1)
            self.comInputView.holderType(holder: (String(str_opName.prefix(5))).localized + " \(nickname)" + ":", index: section, row: IndexPath(), type: 1)
        }
        //: headeView.DeleteReplyBlock = {[weak self] cid in
        headeView.DeleteReplyBlock = { [weak self] cid in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteReplay(cid: cid)
            self.country(cid: cid)
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: if model.comment.count == 0 {
        if model.comment.count == 0 {
            //: return model.itemHeight!-8
            return model.itemHeight! - 8
        }
        //: return model.itemHeight!
        return model.itemHeight!
    }
}

// MARK: - Layout

//: extension TalkingMomentDetailVC {
extension MudraDetailVc {
    // 添加视图
    //: private func setupSubviews() {
    private func rule() {
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: self.title = "Details".localized
        self.title = (String(str_momentEqualValue)).localized

        //: let btn=UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
        //: if self.momentModel.uid == MeasurementAppManager.share.loginUserMode.userID {
        if self.momentModel.uid == MeasurementAppManager.share.loginUserMode.userID {
            //: btn.setTitle("Delete".localized, for: .normal)
            btn.setTitle((String(str_voiceBottomData.prefix(6))).localized, for: .normal)
            //: btn.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
            btn.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
            //: btn.setTitleColor(.appTitleColor(), for: .normal)
            btn.setTitleColor(.blockOf(), for: .normal)
            //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
            btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 15)
            //: } else {
        } else {
            //: btn.setImage(UIImage.outsideText(name: "icon_moment_nor_report"), for: .normal)
            btn.setImage(UIImage.outsideText(name: (String(str_attachIndexName.suffix(5)) + "moment" + String(str_itemName.suffix(5)) + "repor" + str_equalValue.replacingOccurrences(of: "pic", with: "t"))), for: .normal)
        }
        //: btn.addTarget(self, action: #selector(BlockBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(original), for: .touchUpInside)
        //: let item=UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem=item
        self.navigationItem.rightBarButtonItem = item

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: self.view.addSubview(comInputView)
        self.view.addSubview(comInputView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func withPlan() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(0)
            make.top.equalTo(self.view).offset(0)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-inputViewHeight)
            make.bottom.equalTo(self.view.snp.bottom).offset(-inputViewHeight)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
        //: comInputView.snp.makeConstraints { make in
        comInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(inputViewHeight)
            make.height.equalTo(inputViewHeight)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func control() {
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.queryComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.priority()
        }
    }

    //: func setupMomentView() {
    func nameShared() {
        //: let view = UIView.init()
        let view = UIView()
        //: let cell: TalkingMomentItemCell = TalkingMomentItemCell.init(style: .default, reuseIdentifier: nil)
        let cell = DateViewCell(style: .default, reuseIdentifier: nil)
        //: cell.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: momentModel.itemHeight ?? 56 - 12 )
        cell.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: momentModel.itemHeight ?? 56 - 12)
        //: cell.initwith(isListTableCell: false)
        cell.totalercalaryYearAt(isListTableCell: false)
        //: cell.configCell(model: momentModel)
        cell.quantityimate(model: momentModel)
        //: cell.playVideo()
        cell.equilateral()
        //: view.frame = cell.frame
        view.frame = cell.frame
        //: view.addSubview(cell)
        view.addSubview(cell)

        //: if (momentModel.replyNum! > 0) {
        if momentModel.replyNum! > 0 {
            //: commentNumberLabel.text = String(format: "Comment".localized + " \(momentModel.replyNum!)")
            commentNumberLabel.text = String(format: (str_onPageValue.replacingOccurrences(of: "gift", with: "C") + String(str_countRandomData)).localized + " \(momentModel.replyNum!)")
            //: view.addSubview(commentNumberLabel)
            view.addSubview(commentNumberLabel)
            //: commentNumberLabel.snp.makeConstraints { make in
            commentNumberLabel.snp.makeConstraints { make in
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: make.top.equalTo(momentModel.itemHeight!+16)
                make.top.equalTo(momentModel.itemHeight! + 16)
                //: make.size.equalTo(CGSize(width: ScreenWidth, height: 22))
                make.size.equalTo(CGSize(width: a_blockValue, height: 22))
            }
            //: view.height = momentModel.itemHeight!+38
            view.height = momentModel.itemHeight! + 38
        }

        //: self.mainTableView.tableHeaderView = view
        self.mainTableView.tableHeaderView = view
    }
}
