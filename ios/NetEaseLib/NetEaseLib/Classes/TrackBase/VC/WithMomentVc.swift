
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_infoData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "equal_observe_pic" :*/
fileprivate let str_fromText:[Character] = ["e","q","u","a","l","_","o","b","s","e","r","v","e","_","p","i","c"]

/*: "There's no posts yet." :*/
fileprivate let str_showContent:String = "type view app childTher"
fileprivate let str_localName:[Character] = ["o"," ","p","o","s"]
fileprivate let str_viewValue:[Character] = ["t","s"," ","y","e","t","."]

/*: "uid" :*/
fileprivate let str_managerAppData:String = "themeid"

/*: "page" :*/
fileprivate let str_sharedData:String = "paate"

/*: "list" :*/
fileprivate let str_toValue:[Character] = ["l","i","s","t"]

/*: "nickname" :*/
fileprivate let str_makeContent:String = "nicofa"
fileprivate let str_levelValue:String = "view"

/*: "age" :*/
fileprivate let str_birthOriginData:[Character] = ["a","g","e"]

/*: "sex" :*/
fileprivate let str_showTitle:[Character] = ["s","e","x"]

/*: "isTPAuth" :*/
fileprivate let str_sendName:String = "isTPAuthpop across"

/*: "headPic" :*/
fileprivate let str_lengthName:String = "headPicfor object self height"

/*: "pinCount" :*/
fileprivate let str_trackValue:[Character] = ["p","i","n","C","o","u","n","t"]

/*: "model" :*/
fileprivate let str_actionName:String = "mdatadel"

/*: "Unpin from profile" :*/
fileprivate let str_giftData:String = "Unpinplayer self true to var"
fileprivate let str_okName:String = "pi show your top at fro"

/*: "Delete Post" :*/
fileprivate let str_infoStartData:[Character] = ["D","e","l","e","t","e"," ","P","o","s","t"]

/*: "Pin to profile" :*/
fileprivate let str_minData:String = "wrap case in wrap intervalPin"
fileprivate let str_fatalData:[Character] = [" ","t","o"," ","p","r","o","f","i","l","e"]

/*: "id" :*/
fileprivate let str_errorValue:String = "model"

/*: "momentId" :*/
fileprivate let str_toolData:String = "momentIif cell height"
fileprivate let str_valueModeTitle:String = "transform"

/*: "status" :*/
fileprivate let str_messageValue:[Character] = ["s","t","a","t","u","s"]

/*: "Your post has been pinned" :*/
fileprivate let str_devoteViewTitle:[Character] = ["Y","o","u","r"," ","p"]
fileprivate let str_toName:String = "ost hequal nor"
fileprivate let str_giftName:[Character] = ["a","s"," ","b","e","e","n"," ","p","i","n","n","e","d"]

/*: "Your post has been Unpinned" :*/
fileprivate let str_cropTitle:String = "Your make button"
fileprivate let str_pageData:String = "position left datahas been"
fileprivate let str_showText:String = " Unpvar view"

/*: "DateViewCell" :*/
fileprivate let str_titleValue:String = "Talkiroom kit circle address"
fileprivate let str_addData:[Character] = ["n"]
fileprivate let str_numberContent:String = "menu bytItem"

/*: "Posts" :*/
fileprivate let str_itemValue:String = "import imagePosts"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithMomentVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class WithMomentVc: PropertyViewController {
	var cellEnable: Bool = true
	var levelQuantity: Double = 56.7
	var appearViewName: String = "at"
	var aggregationArray: [AnyHashable] = []

    var beautyImageView: UIImageView?

    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [CustomMeasurable] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_infoData.reversed(), encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        eigenvalueState()
        //: setupSubViewsConstraint()
        dataIn()
        //: bindInteraction()
        range()
        //: reqData()
        resultData()

        beautyImageView = UIImageView(frame: self.view.frame.standardized)
        if let beautyImageView = beautyImageView {
            self.beautyImageView?.image = UIImage(named: (String(str_fromText)))
            if (beautyImageView.viewWithTag(5764) != nil) && (beautyImageView.layer.anchorPointZ != 0) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(beautyImageView)
            }
        }
    
            if (self.isBeingDismissed && !self.isViewLoaded) && (self.preferredInterfaceOrientationForPresentation == .portraitUpsideDown) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let dartPlayer = ViewBarController()
            
            dartPlayer.tipEnable = { [self] textOpen in
            self.cellEnable = textOpen
            
            var dartPlayer = self.hideNavi
                dartPlayer = true
                dartPlayer = true
            if dartPlayer != self.cellEnable {
                self.cellEnable = dartPlayer
            }
            
            return self.cellEnable
            }
            dartPlayer.modelTimeNumber = { [self] loadCount in
            self.levelQuantity = loadCount
            
                self.levelQuantity -= 1
                if self.levelQuantity != 89 {
                    self.levelQuantity = self.levelQuantity + 1
                }
            return self.levelQuantity
            }
            dartPlayer.elementTitle = { [self] writeText in
            self.appearViewName = writeText
            
            var dartPlayer = self.uid
            dartPlayer = String(dartPlayer.drop(while: { $0.isNewline }))
            if dartPlayer.hasPrefix(self.appearViewName) {
                self.appearViewName = dartPlayer
            }
            
            return self.appearViewName
            }
            dartPlayer.postArray = { [self] reArray in
            self.aggregationArray = reArray
            
            guard var value = self.aggregationArray as? [String] else {
                return nil
            }
            return value
            }
                self.navigationController?.pushViewController(dartPlayer.self, animated: true)
            }

	}

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (String(str_showContent.suffix(4)) + "e\'s n" + String(str_localName) + String(str_viewValue))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension WithMomentVc {
    //: func reqData() {
    func resultData() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict[(str_managerAppData.replacingOccurrences(of: "theme", with: "u"))] = uid
        //: dict["page"] = pageIndex
        dict[(str_sharedData.replacingOccurrences(of: "at", with: "g"))] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        RequestTool.thrusting(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.infoTo()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict[(String(str_toValue))] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [CustomMeasurable] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<CustomMeasurable>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(str_makeContent.replacingOccurrences(of: "of", with: "kn") + str_levelValue.replacingOccurrences(of: "view", with: "me"))] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict[(String(str_birthOriginData))] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict[(String(str_showTitle))] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict[(str_managerAppData.replacingOccurrences(of: "theme", with: "u"))] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(str_sendName.prefix(8)))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(String(str_lengthName.prefix(7)))] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(str_trackValue))] as! Int
                        //: model.caculateItemHeight()
                        model.eraseAdd()
                        //: if model.uid == MeasurementAppManager.share.loginUserMode.userID {
                        if model.uid == MeasurementAppManager.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.episode(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension WithMomentVc {
    //: func headerRefresh() {
    func commensurate() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        resultData()
    }

    //: func footerRefresh() {
    func beyondTouch() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        resultData()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func replyNotification(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: CustomMeasurable = userinfo[(str_actionName.replacingOccurrences(of: "data", with: "o"))] as! CustomMeasurable
        //: if model.uid == MeasurementAppManager.share.loginUserMode.userID {
        if model.uid == MeasurementAppManager.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func balloon(model: CustomMeasurable, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = MediumDataSource(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.messageWith(cellTitleList: [(String(str_giftData.prefix(5)) + String(str_okName.suffix(4)) + "m profile").localized, (String(str_infoStartData)).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.messageWith(cellTitleList: [(String(str_minData.suffix(3)) + String(str_fatalData)).localized, (String(str_infoStartData)).localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.messageWith(cellTitleList: [(String(str_giftData.prefix(5)) + String(str_okName.suffix(4)) + "m profile").localized, (String(str_infoStartData)).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.messageWith(cellTitleList: [(String(str_infoStartData)).localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(str_giftData.prefix(5)) + String(str_okName.suffix(4)) + "m profile").localized {
                //: self.topMoment(isTop: 0, model: model)
                self.capitalFromTitleTheory(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(str_minData.suffix(3)) + String(str_fatalData)).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.capitalFromTitleTheory(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(str_infoStartData)).localized {
                //: ProgressHUD.show()
                SizeHungReactiveCompatible.picCurrent()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                RequestTool.regard(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    SizeHungReactiveCompatible.dataMessage()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.episode(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func capitalFromTitleTheory(isTop: Int, model: CustomMeasurable) {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(String(str_toolData.prefix(7)) + str_valueModeTitle.replacingOccurrences(of: "transform", with: "d"))] = model.mid
        //: dict["status"] = isTop
        dict[(String(str_messageValue))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        RequestTool.equalTheme(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.afterTitle(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.episode(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension WithMomentVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingMomentItemCell"
        let identifier = (String(str_titleValue.prefix(5)) + "ngMome" + String(str_addData) + String(str_numberContent.suffix(5)) + "Cell")
        //: var cell = TalkingMomentItemCell(style: .default, reuseIdentifier: identifier, isMyHost: true)
        var cell = DateViewCell(style: .default, reuseIdentifier: identifier, isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: CustomMeasurable = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.quantityimate(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.balloon(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = MudraDetailVc(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension WithMomentVc {
    // 添加视图
    //: private func setupSubviews() {
    private func eigenvalueState() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.playerEqual()
        //: self.title = "Posts".localized
        self.title = (String(str_itemValue.suffix(5))).localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: "TalkingMomentItemCell")
        mainTableView.register(DateViewCell.self, forCellReuseIdentifier: (String(str_titleValue.prefix(5)) + "ngMome" + String(str_addData) + String(str_numberContent.suffix(5)) + "Cell"))
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func dataIn() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func range() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.thumbPunctuate { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.commensurate()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.queryComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.beyondTouch()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(replyNotification(notification:)), name: a_conversationSenseName, object: nil)
    }
}
