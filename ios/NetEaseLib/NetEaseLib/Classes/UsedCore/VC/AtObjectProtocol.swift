
//: Declare String Begin

/*: "Fans" :*/
fileprivate let str_soundValue:String = "text titleFans"

/*: "midfield_img" :*/
fileprivate let str_makeTitle:[Character] = ["m","i","d","f","i","e"]
fileprivate let str_rowData:String = "ld_imgmodel text"

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let str_labAppName:[UInt8] = [0x54,0x69,0x70,0x3a,0x20,0x43,0x61,0x6e,0x27,0x74,0x20,0x65,0x61,0x72,0x6e,0x20,0x70,0x6f,0x69,0x6e,0x74,0x73,0x20,0x69,0x66,0x20,0x79,0x6f,0x75,0x20,0x66,0x6f,0x6c,0x6c,0x6f,0x77,0x20,0x65,0x61,0x63,0x68,0x20,0x6f,0x74,0x68,0x65,0x72,0x7e]

/*: "Tip:\"Favorite each other\" chat will be free" :*/
fileprivate let str_rawTitle:[UInt8] = [0x33,0xe,0x17,0x5d,0x45,0x21,0x6,0x11,0x8,0x15,0xe,0x13,0x2,0x47,0x2,0x6,0x4,0xf,0x47,0x8,0x13,0xf,0x2,0x15,0x45,0x47,0x4,0xf,0x6,0x13,0x47,0x10,0xe,0xb,0xb,0x47,0x5,0x2,0x47,0x1,0x15,0x2,0x2]

/*: "targetUid" :*/
fileprivate let str_imageTopText:String = "targetUidfalse tool view false"

/*: "type" :*/
fileprivate let str_liveValue:String = "labype"

/*: "limit" :*/
fileprivate let str_viewValue:[Character] = ["l","i","m","i","t"]

/*: "20" :*/
fileprivate let str_hisValue:String = "2value"

/*: "page" :*/
fileprivate let str_atData:[Character] = ["p","a","g","e"]

/*: "ConstraintAttentionCell" :*/
fileprivate let str_diskName:String = "reason tool view titleTalking"
fileprivate let str_makeData:[Character] = ["A","t","t","e","n","t","i","o"]
fileprivate let str_cardHandleViewData:String = "nCellto let aspect"

/*: "You've got no Be liked yet." :*/
fileprivate let str_postPathContent:String = "You\'v"
fileprivate let str_picName:String = "t no frame self let count target"
fileprivate let str_colorTitle:[Character] = ["e","d"," ","y","e","t","."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtObjectProtocol.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingBeAttentionVC: TalkingBaseViewController {
class AtObjectProtocol: PropertyViewController {
	var totalDoing: Bool = false
	var regardMagnitude: Int = 90
	var dataSum: Double = -45.3
	var fetalAgeContent: String = "commit"
	var withArray: [AnyHashable] = []
	var tableDictionary: [AnyHashable: String] = [:]
	var barFinishEnable: Bool = true
	var viewTotal: Int = 12
	var buttonMagnitude: Double = -35.0
	var userTitle: String = "error"
	var objectArray: [AnyHashable] = []
	var expensivenessDictionary: [AnyHashable: String] = [:]

    var makeImageView: UIImageView?

    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [CloseMeasurable] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
            if (MainTable.isExclusiveTouch) && (MainTable.layer.position.y == 96.45) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let pathLet = CleanView(frame: MainTable.bounds.standardized)
            pathLet.colorCommandInterval = self.pageIndex

            
            pathLet.errorViewDoing = { [self] viewSwitch in
            self.barFinishEnable = viewSwitch
            
            var pathLet = animated
                pathLet = true
                pathLet = !pathLet
            if pathLet != self.barFinishEnable {
                self.barFinishEnable = pathLet
            }
            
            return self.barFinishEnable
            }
            pathLet.routeTotal = { [self] titleSum in
            self.viewTotal = titleSum
            
            var pathLet = self.pageIndex
                pathLet -= 1
                if pathLet != 87 {
                    pathLet = pathLet + 1
                }
            if pathLet > self.viewTotal {
                self.viewTotal = pathLet
            }
            
            return self.viewTotal
            }
            pathLet.topPriceInterval = { [self] arrayMagnitude in
            self.buttonMagnitude = arrayMagnitude
            
            return self.buttonMagnitude
            }
            pathLet.harvestMoonTitle = { [self] replyName in
            self.userTitle = replyName
            
            do {
                self.userTitle = try String(contentsOf: NSURL.fileURL(withPathComponents: ["temp", "year", "plist"])!, encoding: .utf8)
            } catch {
                self.userTitle = error.localizedDescription
            }
            return self.userTitle
            }
            pathLet.bestowmentArray = { [self] partyArray in
            self.objectArray = partyArray
            
            guard var value = self.objectArray as? [String] else {
                return nil
            }
            return value
            }
            pathLet.canDictionary = { [self] tableDictionary in
            self.expensivenessDictionary = tableDictionary
            
            guard var value = self.expensivenessDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                MainTable.addSubview(pathLet)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Fans"
        self.title = (String(str_soundValue.suffix(4)))
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        orientation()
        //: reqData()
        frameFrom()

        makeImageView = UIImageView(frame: self.view.bounds)
        if let makeImageView = makeImageView {
            self.makeImageView?.image = UIImage(named: (String(str_makeTitle) + String(str_rowData.prefix(6))))
            if (makeImageView.layer.anchorPoint.x != 0.5) && (makeImageView.autoresizingMask == .flexibleWidth) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(makeImageView)
            }
        }
    
	if let makeImageView = makeImageView {

            if (makeImageView.clipsToBounds) && (makeImageView.superview != nil && makeImageView.superview!.isHidden) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let iconSection = CleanView()
            iconSection.colorCommandInterval = self.pageIndex

            
            iconSection.errorViewDoing = { [self] viewSwitch in
            self.totalDoing = viewSwitch
            
            var iconSection = self.hideNavi
            iconSection = false
            if iconSection != self.totalDoing {
                self.totalDoing = iconSection
            }
            
            return self.totalDoing
            }
            iconSection.routeTotal = { [self] titleSum in
            self.regardMagnitude = titleSum
            
            var iconSection = pageIndex
            iconSection += 1
            if iconSection < self.regardMagnitude {
                self.regardMagnitude = iconSection
            }
            
            return self.regardMagnitude
            }
            iconSection.topPriceInterval = { [self] arrayMagnitude in
            self.dataSum = arrayMagnitude
            
            return self.dataSum
            }
            iconSection.harvestMoonTitle = { [self] replyName in
            self.fetalAgeContent = replyName
            
            self.fetalAgeContent = String("t")
            return self.fetalAgeContent
            }
            iconSection.bestowmentArray = { [self] partyArray in
            self.withArray = partyArray
            
            guard var value = self.withArray as? [String] else {
                return nil
            }
            return value
            }
            iconSection.canDictionary = { [self] tableDictionary in
            self.tableDictionary = tableDictionary
            
            guard var value = self.tableDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                makeImageView.addSubview(iconSection)
            }

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
            self.ladenRefresh()
        }
        //: table.addFooterRefresh { [weak self] in
        table.queryComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.handleRestore()
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
            label.text = String(bytes: str_labAppName, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = String(bytes: str_rawTitle.map{$0^103}, encoding: .utf8)!.localized
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

//: extension TalkingBeAttentionVC {
extension AtObjectProtocol {
    //: func reqData() {
    func frameFrom() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = MeasurementAppManager.share.loginUserMode.userID
        dict[(String(str_imageTopText.prefix(9)))] = MeasurementAppManager.share.loginUserMode.userID
        //: dict["type"] = "2"
        dict[(str_liveValue.replacingOccurrences(of: "lab", with: "t"))] = "2"
        //: dict["limit"] = "20"
        dict[(String(str_viewValue))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(String(str_atData))] = String(pageIndex)

        //: DoingSheRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        DoingSheRequestTool.global(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.infoTo()
            //: if succeed {
            if succeed {
                //: let array: Array = result as! Array<Any>
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
    func ladenRefresh() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        frameFrom()
    }

    //: func footerRefresh() {
    func handleRestore() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        frameFrom()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingBeAttentionVC: JXPagingViewListViewDelegate {
extension AtObjectProtocol: JXPagingViewListViewDelegate {
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

//: extension TalkingBeAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension AtObjectProtocol: UITableViewDelegate, UITableViewDataSource {
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
        let identifier = (String(str_diskName.suffix(7)) + String(str_makeData) + String(str_cardHandleViewData.prefix(5)))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ConstraintAttentionCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = ConstraintAttentionCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: CloseMeasurable = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .beLike)
        cell?.directError(model: model, index: indexPath, Atype: .beLike)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - QuantityAttentionDelegate

//: extension TalkingBeAttentionVC: AttentionDelegate {
extension AtObjectProtocol: QuantityAttentionDelegate {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func wireTab(_: IndexPath) {}

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func stochasticProcess(_ index: IndexPath) {
        //: var model = self.DataSource[index.row]
        var model = self.DataSource[index.row]
        //: model.mutualAtt = !model.mutualAtt!
        model.mutualAtt = !model.mutualAtt!
        //: self.DataSource[index.row] = model
        self.DataSource[index.row] = model
    }
}

// MARK: - UI

//: extension TalkingBeAttentionVC {
extension AtObjectProtocol {
    //: private func designView() {
    private func orientation() {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "You've got no Be liked yet.".localized
        style.TipsTitle = (str_postPathContent + "e go" + String(str_picName.prefix(5)) + "Be lik" + String(str_colorTitle)).localized
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
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49 - 44 : 49))
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
        MainTable.register(ConstraintAttentionCell.self, forCellReuseIdentifier: (String(str_diskName.suffix(7)) + String(str_makeData) + String(str_cardHandleViewData.prefix(5))))
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
