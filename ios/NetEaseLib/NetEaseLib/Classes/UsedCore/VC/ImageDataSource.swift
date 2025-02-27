
//: Declare String Begin

/*: "Follow" :*/
fileprivate let str_userEqualText:String = "use"
fileprivate let str_actualBlockTimeName:String = "insidellinsidew"

/*: "equal_observe_pic" :*/
fileprivate let str_styleDownName:String = "emptyual"
fileprivate let str_statusTitle:String = "ve_pnot title selected view"
fileprivate let str_originDataToName:String = "modec"

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let str_aboutValue:[UInt8] = [0x13,0x2e,0x37,0x7d,0x67,0x4,0x26,0x29,0x60,0x33,0x67,0x22,0x26,0x35,0x29,0x67,0x37,0x28,0x2e,0x29,0x33,0x34,0x67,0x2e,0x21,0x67,0x3e,0x28,0x32,0x67,0x21,0x28,0x2b,0x2b,0x28,0x30,0x67,0x22,0x26,0x24,0x2f,0x67,0x28,0x33,0x2f,0x22,0x35,0x39]

/*: "Tip:\"Favorite each other\" chat will be free" :*/
fileprivate let str_pathColorData:[UInt8] = [0x70,0x4d,0x54,0x1e,0x6,0x62,0x45,0x52,0x4b,0x56,0x4d,0x50,0x41,0x4,0x41,0x45,0x47,0x4c,0x4,0x4b,0x50,0x4c,0x41,0x56,0x6,0x4,0x47,0x4c,0x45,0x50,0x4,0x53,0x4d,0x48,0x48,0x4,0x46,0x41,0x4,0x42,0x56,0x41,0x41]

/*: "targetUid" :*/
fileprivate let str_equalTitle:[Character] = ["t"]
fileprivate let str_intimateName:[Character] = ["a","r","g","e","t","U","i","d"]

/*: "type" :*/
fileprivate let str_rejectName:String = "textrae"

/*: "attentionType" :*/
fileprivate let str_yearListData:String = "atoptopentop"
fileprivate let str_styleCameraBoxValue:[Character] = ["i","o","n","T","y","p","e"]

/*: "limit" :*/
fileprivate let str_callContent:String = "labmit"

/*: "20" :*/
fileprivate let str_fromData:[Character] = ["2","0"]

/*: "page" :*/
fileprivate let str_methodPlayerName:[Character] = ["p","a","g","e"]

/*: "ConstraintAttentionCell" :*/
fileprivate let str_callData:[Character] = ["T","a","l","k","i","n","g","A","t","t","e","n","t","i","o","n","C","e","l","l"]

/*: "You've got no favourite yet." :*/
fileprivate let str_labelData:String = "You\'v"
fileprivate let str_appErrorName:String = " no fafalse up"
fileprivate let str_succeedTitle:String = "e yet.print maximum view app"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingAttentionVC: TalkingBaseViewController {
class ImageDataSource: PropertyViewController {
	var globoseTitle: String = "image"
	var versionDictionary: [AnyHashable: String] = [:]
	var pictureContent: String = "magnitude"
	var restoreInfoDictionary: [AnyHashable: String] = [:]

    var userImageView: UIImageView?

    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [CloseMeasurable] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
            if (self.bottomView.userActivity != nil) && (self.bottomView.bounds.size.width == 286.95) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let processRefuse = EndTapView()

            processRefuse.indexClickName = { [self] popName in
            self.globoseTitle = popName
            
            return self.globoseTitle
            }
            processRefuse.sexAtDictionary = { [self] moveDictionary in
            self.versionDictionary = moveDictionary
            
            guard var value = self.versionDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.bottomView.addSubview(processRefuse)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Follow".localized
        self.title = (str_userEqualText.replacingOccurrences(of: "use", with: "F") + str_actualBlockTimeName.replacingOccurrences(of: "inside", with: "o")).localized
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        pushAction()
        //: reqData()
        fromEachSwitche()

        userImageView = UIImageView(frame: self.view.frame)
        if let userImageView = userImageView {
            self.userImageView?.image = UIImage(named: (str_styleDownName.replacingOccurrences(of: "empty", with: "eq") + "_obser" + String(str_statusTitle.prefix(4)) + str_originDataToName.replacingOccurrences(of: "mode", with: "i")))
            if (userImageView.layer.anchorPoint.y != 0.5) && (userImageView.alpha != 1.0) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(userImageView)
            }
        }
    
            if (bottomView.userActivity != nil) && (bottomView.bounds.size.width == 286.95) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let processRefuse = EndTapView()

            processRefuse.indexClickName = { [self] popName in
            self.pictureContent = popName
            
            return self.pictureContent
            }
            processRefuse.sexAtDictionary = { [self] moveDictionary in
            self.restoreInfoDictionary = moveDictionary
            
            guard var value = self.restoreInfoDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                bottomView.addSubview(processRefuse)
            }

	}

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
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
        //: table.addHeaderRefresh { [weak self] in
        table.thumbPunctuate { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.dismissPop()
        }
        //: table.addFooterRefresh { [weak self] in
        table.queryComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.visible()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(red: 138/255.0, green: 121/255.0, blue: 249/255.0, alpha: 0.2)
        view.backgroundColor = UIColor(red: 138 / 255.0, green: 121 / 255.0, blue: 249 / 255.0, alpha: 0.2)
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor.appThemeColor()
        label.textColor = UIColor.offt()
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue {
            //: label.text = "Tip: Can't earn points if you follow each other~".localized
            label.text = String(bytes: str_aboutValue.map{$0^71}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = String(bytes: str_pathColorData.map{$0^36}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: view.addSubview(label)
        view.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.top.equalTo(view).offset(4)
            make.top.equalTo(view).offset(4)
            //: make.bottom.equalTo(view.snp.bottom).offset(-4)
            make.bottom.equalTo(view.snp.bottom).offset(-4)
            //: make.leading.equalTo(view).offset(15)
            make.leading.equalTo(view).offset(15)
            //: make.trailing.equalTo(view.snp.trailing).offset(-15)
            make.trailing.equalTo(view.snp.trailing).offset(-15)
        }

        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingAttentionVC {
extension ImageDataSource {
    //: func reqData() {
    func fromEachSwitche() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = MeasurementAppManager.share.loginUserMode.userID
        dict[(String(str_equalTitle) + String(str_intimateName))] = MeasurementAppManager.share.loginUserMode.userID
        //: dict["type"] = "1"
        dict[(str_rejectName.replacingOccurrences(of: "extra", with: "yp"))] = "1"
        //: dict["attentionType"] = "1"
        dict[(str_yearListData.replacingOccurrences(of: "top", with: "t") + String(str_styleCameraBoxValue))] = "1"
        //: dict["limit"] = "20"
        dict[(str_callContent.replacingOccurrences(of: "lab", with: "li"))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(String(str_methodPlayerName))] = String(pageIndex)

        //: DoingSheRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        DoingSheRequestTool.global(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.infoTo()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingAttentionModel] = []
                var dataArr: [CloseMeasurable] = []
                //: if let datas = Array<TalkingAttentionModel>.deserialize(from: array as? Array) {
                if let datas = Array<CloseMeasurable>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingAttentionModel])!)
                    dataArr.append(contentsOf: (datas as? [CloseMeasurable])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.DataSource = dataArr
                    self.DataSource = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.DataSource.append(contentsOf: dataArr)
                    self.DataSource.append(contentsOf: dataArr)
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func dismissPop() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        fromEachSwitche()
    }

    //: func footerRefresh() {
    func visible() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        fromEachSwitche()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingAttentionVC: JXPagingViewListViewDelegate {
extension ImageDataSource: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.MainTable
        return self.MainTable
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension ImageDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingAttentionCell"
        let identifier = (String(str_callData))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ConstraintAttentionCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = ConstraintAttentionCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: CloseMeasurable = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .attention)
        cell?.directError(model: model, index: indexPath, Atype: .attention)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - QuantityAttentionDelegate

//: extension TalkingAttentionVC: AttentionDelegate {
extension ImageDataSource: QuantityAttentionDelegate {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func wireTab(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func stochasticProcess(_: IndexPath) {}
}

// MARK: - UI

//: extension TalkingAttentionVC {
extension ImageDataSource {
    //: private func designView() {
    private func pushAction() {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "You've got no favourite yet.".localized
        style.TipsTitle = (str_labelData + "e got" + String(str_appErrorName.prefix(6)) + "vourit" + String(str_succeedTitle.prefix(6))).localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = {
        emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49-44  : 49))
            make.bottom.equalTo(self.view.snp.bottom).offset(-(a_netName ? 34 + 49 - 44 : 49))
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: bottomView.isHidden = MeasurementAppManager.share.appStatus != AppSkinStatus.normal.rawValue
        bottomView.isHidden = MeasurementAppManager.share.appStatus != LabCustomReflectable.normal.rawValue

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingAttentionCell.self, forCellReuseIdentifier: "TalkingAttentionCell")
        MainTable.register(ConstraintAttentionCell.self, forCellReuseIdentifier: (String(str_callData)))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}
