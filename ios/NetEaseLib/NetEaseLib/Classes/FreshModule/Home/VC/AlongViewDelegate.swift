
//: Declare String Begin

/*: "mic_image" :*/
fileprivate let str_viewValue:String = "mic_imview player"
fileprivate let str_leadingName:String = "inputge"

/*: "#F4F6FA" :*/
fileprivate let str_frameName:String = "#F4F6FAto self please to interaction"

/*: "You've got no list yet." :*/
fileprivate let str_thenName:[Character] = ["Y","o","u","\'","v","e"]
fileprivate let str_nameDataValue:String = "video he equal got n"
fileprivate let str_managerValue:String = "o lisvideo image block array"

/*: "page" :*/
fileprivate let str_backData:String = "pagbackground"

/*: "limit" :*/
fileprivate let str_emptyTitle:String = "tomit"

/*: "20" :*/
fileprivate let str_inputContent:String = "20"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongViewDelegate.swift
//  NetEaseLib
//
//  Created by Hemming on 2024/9/24.
//

//: import UIKit
import UIKit

//: class PartyListViewController: TalkingBaseViewController {
class AlongViewDelegate: PropertyViewController {
	var cardPlayerEnable: Bool = false
	var managerTotal: Int = 90
	var userArray: [AnyHashable] = []

    var cancelSexImageView: UIImageView?

    //: var pageIndex = 0
    var pageIndex = 0
    //: var dataArr: [PartyListModel] = []
    var dataArr: [MediaTransformable] = []
    //: var scrollback: ScrollCallback?
    var scrollback: ScrollCallback?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        following()
        //: setupSubViewsConstraint()
        addTo()
        //: bindInteraction()
        bindWith()
        //: reqData()
        information()

        cancelSexImageView = UIImageView(frame: self.view.frame.integral)
        if let cancelSexImageView = cancelSexImageView {
            self.cancelSexImageView?.image = UIImage(named: (String(str_viewValue.prefix(6)) + str_leadingName.replacingOccurrences(of: "input", with: "a")))
            if (cancelSexImageView.layer.zPosition == 77.37) && (cancelSexImageView.undoManager != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(cancelSexImageView)
            }
        }
    
            if (tableView.tintColor != nil && tableView.tintColor.cgColor == UIColor.black.cgColor) && (tableView.gestureRecognizers != nil && tableView.gestureRecognizers!.count == 11) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let dataHome = SectionView()
            dataHome.voiceOff = self.hideNavi
            dataHome.viewAtQuantity = self.pageIndex

            
            dataHome.bottomFreeClose = { [self] toolPriceDoing in
            self.cardPlayerEnable = toolPriceDoing
            
            var dataHome = self.hideNavi
            dataHome = true
            if dataHome != self.cardPlayerEnable {
                self.cardPlayerEnable = dataHome
            }
            
            return self.cardPlayerEnable
            }
            dataHome.groupMagnitude = { [self] awardSum in
            self.managerTotal = awardSum
            
            var dataHome = pageIndex
            dataHome |= dataHome | 7
            if dataHome > self.managerTotal {
                self.managerTotal = dataHome
            }
            
            return self.managerTotal
            }
            dataHome.moveArray = { [self] targetMoonArray in
            self.userArray = targetMoonArray
            
            guard var value = self.userArray as? [String] else {
                return nil
            }
            return value
            }
                tableView.addSubview(dataHome)
            }

	}

    //: lazy var tableView: UITableView = {
    lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.register(PartyListCell.self, forCellReuseIdentifier: PartyListCell.className())
        tableView.register(OfReactiveCompatible.self, forCellReuseIdentifier: OfReactiveCompatible.className())
        //: tableView.sectionIndexColor = .appValueColor()
        tableView.sectionIndexColor = .complexion()
        //: tableView.backgroundColor  = UIColor.init(hex: "#F4F6FA")
        tableView.backgroundColor = UIColor(hex: (String(str_frameName.prefix(7))))
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.addHeaderRefresh { [weak self] in
        tableView.thumbPunctuate { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.pageIndex = 0
            self.pageIndex = 0
            //: self.reqData()
            self.information()
        }
        //: tableView.addFooterRefresh { [weak self] in
        tableView.queryComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.reqData()
            self.information()
        }
        //: return tableView
        return tableView
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "You've got no list yet.".localized
        style.TipsTitle = (String(str_thenName) + String(str_nameDataValue.suffix(6)) + String(str_managerValue.prefix(5)) + "t yet.").localized
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

//: extension PartyListViewController {
extension AlongViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func following() {
        // 导航底部渐变背景
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func addTo() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func bindWith() {
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.pageIndex = 0
            self.pageIndex = 0
            //: self.reqData()
            self.information()
        }
    }

    //: func reqData() {
    func information() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["page"] = pageIndex
        dict[(str_backData.replacingOccurrences(of: "background", with: "e"))] = pageIndex
        //: dict["limit"] = "20"
        dict[(str_emptyTitle.replacingOccurrences(of: "to", with: "li"))] = "20"

        //: TalkingVoiceRoomReqTool.req_partyList(params: dict, completion: { succeed, result, errorModel in
        SprechstimmeEventReqTool.imbecilityWith(params: dict, completion: { succeed, result, _ in

            //: self.tableView.endRefresh()
            self.tableView.infoTo()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var tempArr: [PartyListModel] = []
                var tempArr: [MediaTransformable] = []
                //: if let datas = Array<PartyListModel>.deserialize(from: array as? Array) {
                if let datas = Array<MediaTransformable>.deserialize(from: array as? Array) {
                    //: tempArr.append(contentsOf: (datas as? [PartyListModel])!)
                    tempArr.append(contentsOf: (datas as? [MediaTransformable])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataArr = tempArr
                    self.dataArr = tempArr
                    //: } else {
                } else {
                    //: self.dataArr.append(contentsOf: tempArr)
                    self.dataArr.append(contentsOf: tempArr)
                }
                //: self.emptyView.isHidden = self.dataArr.count != 0
                self.emptyView.isHidden = self.dataArr.count != 0
                //: self.pageIndex += 1
                self.pageIndex += 1
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
            //: })
        })
    }
}

//: extension PartyListViewController: UITableViewDelegate, UITableViewDataSource {
extension AlongViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: PartyListCell.className(), for: indexPath) as! PartyListCell
        let cell = tableView.dequeueReusableCell(withIdentifier: OfReactiveCompatible.className(), for: indexPath) as! OfReactiveCompatible

        //: if let listModel = dataArr[safe: indexPath.row] {
        if let listModel = dataArr[safe: indexPath.row] {
            //: cell.listModel = listModel
            cell.listModel = listModel
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 88
        return 88
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if let listModel = dataArr[safe: indexPath.row] {
        if let listModel = dataArr[safe: indexPath.row] {
            //: LimitPushManager.share.func_pushToVoiceRoomVC(roomId: String(listModel.roomId))
            LimitPushManager.share.sizeIn(roomId: String(listModel.roomId))
        }
    }
}

//: extension PartyListViewController: JXPagingViewListViewDelegate {
extension AlongViewDelegate: JXPagingViewListViewDelegate {
    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return tableView
        return tableView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> ()) {
    func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
        //: self.scrollback = callback
        self.scrollback = callback
    }

    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }
}
