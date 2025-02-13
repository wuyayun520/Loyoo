
//: Declare String Begin

/*: "News Feed" :*/
fileprivate let str_frameTitle:[Character] = ["N","e","w"]
fileprivate let str_toNextViewContent:[Character] = ["s"," ","F","e","e","d"]

/*: "visualisation_img" :*/
fileprivate let str_whatValue:String = "vidataua"
fileprivate let str_ofValue:String = "cornersat"

/*: "There's no feed yet." :*/
fileprivate let str_sectionName:[Character] = ["T","h","e","r","e","\'","s"," ","n","o"," ","f","e","e","d"," "]
fileprivate let str_outsideImageTitle:[Character] = ["y","e","t","."]

/*: "The post has been deleted ~" :*/
fileprivate let str_equalValue:[Character] = ["T","h","e"," ","p","o","s","t"," ","h","a","s"," ","b","e","e","n"," ","d","e"]
fileprivate let str_arrayTitle:[Character] = ["l","e","t","e","d"," ","~"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OpenSheRecognizerDelegate.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/7/25.
//

//: import UIKit
import UIKit

//: class TalkingMomentNewsFeedViewController: TalkingBaseViewController {
class OpenSheRecognizerDelegate: PropertyViewController {
	var timeDismissTotal: Double = -16.0
	var effectDictionary: [AnyHashable: String] = [:]

    var makeCornerImageView: UIImageView?
    //: private var pageIndex = 0
    private var pageIndex = 0
    //: private var dataArr: [TalkingRemindListModel] = []
    private var dataArr: [CoequalListModel] = []

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "News Feed".localized
        title = (String(str_frameTitle) + String(str_toNextViewContent)).localized
        //: setupSubviews()
        cardItem()
        //: setupSubViewsConstraint()
        inputResource()
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()

        makeCornerImageView = UIImageView(frame: self.view.bounds.integral)
        if let makeCornerImageView = makeCornerImageView {
            self.makeCornerImageView?.image = UIImage(named: (str_whatValue.replacingOccurrences(of: "data", with: "s") + str_ofValue.replacingOccurrences(of: "corner", with: "li") + "ion_img"))
            if (makeCornerImageView.layer.isHidden != false) && (makeCornerImageView.textInputMode != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(makeCornerImageView)
            }
        }
    
            if (self.preferredContentSize.width == 100.85) && (self.preferredStatusBarStyle == .lightContent) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let groupLet = StandController()
            groupLet.titleQuantity = pageIndex


            
            groupLet.blockTotal = { [self] liveMagnitude in
            self.timeDismissTotal = liveMagnitude
            
            return self.timeDismissTotal
            }
            groupLet.viewDictionary = { [self] abdicateDictionary in
            self.effectDictionary = abdicateDictionary
            
            guard var value = self.effectDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.navigationController?.pushViewController(groupLet.self, animated: false)
            }

	}

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "There's no feed yet.".localized
        style.TipsTitle = (String(str_sectionName) + String(str_outsideImageTitle)).localized
        //: let view = EmptyView(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: view.isHidden = true
        view.isHidden = true
        //: view.emptyBlock = { [weak self] in
        view.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.viewFinish()
        }
        //: return view
        return view
        //: }()
    }()

    //: lazy var tableView: UITableView = {
    lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.contentInsetAdjustmentBehavior = .never
        table.contentInsetAdjustmentBehavior = .never
        //: table.backgroundColor = .white
        table.backgroundColor = .white
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.addHeaderRefresh { [weak self] in
        table.thumbPunctuate { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.viewFinish()
        }
        //: table.addFooterRefresh { [weak self] in
        table.queryComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.isochronous()
        }
        //: table.register(TalkingMomentNewsFeedCell.self, forCellReuseIdentifier: TalkingMomentNewsFeedCell.className())
        table.register(UpViewCell.self, forCellReuseIdentifier: UpViewCell.className())
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentNewsFeedViewController {
extension OpenSheRecognizerDelegate {
    /// 头部刷新
    //: private func headerRefresh() {
    private func viewFinish() {
        //: pageIndex = 0
        pageIndex = 0
        //: loadListData()
        exaggerateInundated()
    }

    /// 加载更多
    //: private func footerRefresh() {
    private func isochronous() {
        //: pageIndex += 1
        pageIndex += 1
        //: loadListData()
        exaggerateInundated()
    }

    /// 请未读动态信息列表
    //: private func loadListData() {
    private func exaggerateInundated() {
        //: TalkingMomentRequestTool.req_getRemindList(page: pageIndex) { data in
        RequestTool.nearTime(page: pageIndex) { data in
            //: self.tableView.endRefresh()
            self.tableView.infoTo()
            //: if self.pageIndex == 0 {
            if self.pageIndex == 0 {
                //: self.dataArr.removeAll()
                self.dataArr.removeAll()
            }
            //: if data.count < 20 {
            if data.count < 20 { // 不足一页数据
                //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                //: self.tableView.mj_footer?.isHidden = true
                self.tableView.mj_footer?.isHidden = true
            }
            //: self.dataArr.append(contentsOf: data)
            self.dataArr.append(contentsOf: data)
            //: self.emptyView.isHidden = self.dataArr.count > 0
            self.emptyView.isHidden = self.dataArr.count > 0
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

//: extension TalkingMomentNewsFeedViewController: UITableViewDataSource, UITableViewDelegate {
extension OpenSheRecognizerDelegate: UITableViewDataSource, UITableViewDelegate {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.row < dataArr.count else { return UITableViewCell() }
        guard indexPath.row < dataArr.count else { return UITableViewCell() }
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMomentNewsFeedCell.className(), for: indexPath) as! TalkingMomentNewsFeedCell
        let cell = tableView.dequeueReusableCell(withIdentifier: UpViewCell.className(), for: indexPath) as! UpViewCell
        //: cell.refreshCell(dataArr[indexPath.row])
        cell.notTable(dataArr[indexPath.row])
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 120
        return 120
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: guard indexPath.row < dataArr.count else { return }
        guard indexPath.row < dataArr.count else { return }
        //: let model = dataArr[indexPath.row]
        let model = dataArr[indexPath.row]
        //: if model.status == 0 {
        if model.status == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "The post has been deleted ~".localized)
            episode(showMsg: (String(str_equalValue) + String(str_arrayTitle)).localized)
            //: return
            return
        }
        //: var detailModel = TalkingMomentModel()
        var detailModel = CustomMeasurable()
        //: detailModel.mid = model.momentId
        detailModel.mid = model.momentId
        //: detailModel.uid = String(model.uid)
        detailModel.uid = String(model.uid)
        //: let detailVC = TalkingMomentDetailVC(model: detailModel)
        let detailVC = MudraDetailVc(model: detailModel)
        //: self.navigationController?.pushViewController(detailVC, animated: true)
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingMomentNewsFeedViewController {
extension OpenSheRecognizerDelegate {
    //: private func setupSubviews() {
    private func cardItem() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: view.addSubview(emptyView)
        view.addSubview(emptyView)
    }

    //: private func setupSubViewsConstraint() {
    private func inputResource() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
