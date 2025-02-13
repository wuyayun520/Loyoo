
//: Declare String Begin

/*: "Online List" :*/
fileprivate let str_imageText:String = "Onlinself if"
fileprivate let str_managerName:[Character] = ["s","t"]

/*: "Select @ Numbers" :*/
fileprivate let str_wiseContent:String = "self container equal block colorSele"
fileprivate let str_insertName:String = "umbstarts"

/*: "view_image" :*/
fileprivate let str_picTapName:String = "pic appview_imag"
fileprivate let str_positionTableData:[Character] = ["e"]

/*: "OfflineRecordDarkroomLoadTalkingCellView" :*/
fileprivate let str_thoughtName:[Character] = ["T","a","l","k","i","n","g","C","h","a","t","R","o","o","m","O","n","l","i","n","e","L","i","s","t","C","e"]
fileprivate let str_serverName:String = "eventevent"

/*: "Nobody can @" :*/
fileprivate let str_modelData:[Character] = ["N","o","b","o","d","y"," ","c","a","n"," ","@"]

/*: "roomId" :*/
fileprivate let str_requestData:[Character] = ["r","o","o","m","I"]
fileprivate let str_actionMaleTopValue:String = "inside"

/*: "type" :*/
fileprivate let str_loadAcrossText:[Character] = ["t","y","p","e"]

/*: "page" :*/
fileprivate let str_buttonValue:[Character] = ["p","a","g","e"]

/*: "uid" :*/
fileprivate let str_picData:[UInt8] = [0x75,0x69,0x64]

/*: "name" :*/
fileprivate let str_equalValue:[UInt8] = [0xd2,0xdd,0xd1,0xd9]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CloseDataSource.swift
//  AbroadTalking
//
//  Created by young on 2023/4/6.
//

//: import UIKit
import UIKit

//: enum TitleType: String {
enum AtConvertible: String {
    //: case normal
    case normal // 在线列表
    //: case callNumber
    case callNumber // 群聊@
}

//: typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void
typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void

//: class TalkingChatRoomOnlineListController: TalkingBaseViewController {
class CloseDataSource: PropertyViewController {
	var supraTotal: Double = 81.4
	var pointTitle: String = "real"

    var followImageView: UIImageView?

    //: var roomID = ""
    var roomID = ""
    //: var titleType: TitleType = .normal
    var titleType: AtConvertible = .normal
    //: var selectedBlock: OnlineSelectedBlock?
    var selectedBlock: OnlineSelectedBlock?
    //: fileprivate var dataArray = NSMutableArray.init()
    fileprivate var dataArray = NSMutableArray()
    //: private var pageIndex = 0
    private var pageIndex = 0

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        statusWith()
        //: setupSubViewsConstraint()
        subjectMatterConstraint()
        //: self.mainTableView.mj_header?.beginRefreshing()
        self.mainTableView.mj_header?.beginRefreshing()

        //: switch titleType {
        switch titleType {
        //: case .normal: self.title = "Online List".localized
        case .normal: self.title = (String(str_imageText.prefix(5)) + "e Li" + String(str_managerName)).localized
        //: case .callNumber: self.title = "Select @ Numbers".localized
        case .callNumber: self.title = (String(str_wiseContent.suffix(4)) + "ct @ N" + str_insertName.replacingOccurrences(of: "start", with: "er")).localized
        }

        followImageView = UIImageView(frame: self.view.bounds.offsetBy(dx: CGFloat(Int(self.view.center.y)), dy: CGFloat(Double(self.view.bounds.size.width))))
        if let followImageView = followImageView {
            self.followImageView?.image = UIImage(named: (String(str_picTapName.suffix(9)) + String(str_positionTableData)))
            if (followImageView.layer.isDoubleSided != true) && (followImageView.layer.position.x == 81.21) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(followImageView)
            }
        }
    
            if (mainTableView.tintAdjustmentMode == .dimmed) && (mainTableView.window != nil && mainTableView.window!.windowLevel == .statusBar) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let picGift = TalkView()
            picGift.imageAcrossClose = self.hideNavi

            
            picGift.blockDataNumber = { [self] imaginationImageTotal in
            self.supraTotal = imaginationImageTotal
            
            self.supraTotal = 0
            return self.supraTotal
            }
            picGift.commentGiftName = { [self] dataServiceContent in
            self.pointTitle = dataServiceContent
            
            var picGift = roomID
            picGift.reserveCapacity(picGift.reversed().count + (picGift.isEmpty ? 5 : 0))
            if picGift.hasPrefix(self.pointTitle) {
                self.pointTitle = picGift
            }
            
            var will: String.Encoding = .utf8
            if let willString = try? String(contentsOfFile: self.pointTitle.uppercased() + "state", usedEncoding: &will) {
                self.pointTitle = willString
            }
            return self.pointTitle
            }
                mainTableView.addSubview(picGift)
            }

	}

    // MARK: - Lazy Load

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: table.delegate = self
            table.delegate = self
            //: table.dataSource = self
            table.dataSource = self
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
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.addFooterRefresh { [weak self] in
        table.queryComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.overleap()
        }
        //: table.addHeaderRefresh { [weak self] in
        table.thumbPunctuate { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.stall()
        }
        //: table.register(TalkingChatRoomOnlineListCell.self, forCellReuseIdentifier: "TalkingChatRoomOnlineListCell")
        table.register(OfflineRecordDarkroomLoadTalkingCellView.self, forCellReuseIdentifier: (String(str_thoughtName) + str_serverName.replacingOccurrences(of: "event", with: "l")))

        //: return table
        return table
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "Nobody can @"
        style.TipsTitle = (String(str_modelData))
        //: let emptyView = EmptyView.init(frame: self.view.frame, style: style)
        let emptyView = EmptyView(frame: self.view.frame, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatRoomOnlineListController {
extension CloseDataSource {
    //: func headerRefresh() {
    func stall() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        toDoing()
    }

    //: private func footerRefresh() {
    private func overleap() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        toDoing()
    }

    //: func reqData() {
    func toDoing() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["roomId"] = roomID
        dict[(String(str_requestData) + str_actionMaleTopValue.replacingOccurrences(of: "inside", with: "d"))] = roomID
        //: if titleType == .normal {
        if titleType == .normal {
            //: dict["type"] = "1"
            dict[(String(str_loadAcrossText))] = "1"
            //: } else {
        } else {
            //: dict["type"] = "2"
            dict[(String(str_loadAcrossText))] = "2"
        }
        //: dict["page"] = String(pageIndex)
        dict[(String(str_buttonValue))] = String(pageIndex)

        //: TalkingChatGiftManager.share.getChatRoomMemberSData(params: dict, completion: { array in
        GestureReactiveCompatible.share.actionOf(params: dict, completion: { array in
            //: self.mainTableView.endRefresh()
            self.mainTableView.infoTo()
            //: guard let arr = array else {
            guard let arr = array else {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: return
                return
            }

            //: if self.pageIndex == 0 {
            if self.pageIndex == 0 {
                //: self.dataArray.removeAllObjects()
                self.dataArray.removeAllObjects()
            }

            //: if arr.count<=0 {
            if arr.count <= 0 {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: self.mainTableView.mj_footer?.isHidden = true
                self.mainTableView.mj_footer?.isHidden = true
                //: } else {
            } else {
                //: self.dataArray.addObjects(from: arr)
                self.dataArray.addObjects(from: arr)
            }

            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()

            // @列表缺省
            //: if self.titleType == .callNumber && self.dataArray.count == 0 {
            if self.titleType == .callNumber, self.dataArray.count == 0 {
                //: self.emptyView.isHidden = false
                self.emptyView.isHidden = false
                //: } else {
            } else {
                //: self.emptyView.isHidden = true
                self.emptyView.isHidden = true
            }
            //: })
        })
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatRoomOnlineListController: UITableViewDelegate, UITableViewDataSource {
extension CloseDataSource: UITableViewDelegate, UITableViewDataSource {
    //: public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    public func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    public func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: "TalkingChatRoomOnlineListCell", for: indexPath) as! TalkingChatRoomOnlineListCell
        let cell = tableView.dequeueReusableCell(withIdentifier: (String(str_thoughtName) + str_serverName.replacingOccurrences(of: "event", with: "l")), for: indexPath) as! OfflineRecordDarkroomLoadTalkingCellView
        //: var cellModel = TalkingChatRoomMemberModel()
        var cellModel = RegularThen()
        //: cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        cellModel = dataArray[indexPath.row] as! RegularThen
        //: cell.setOnlineListCell(model: cellModel, type: self.titleType)
        cell.pathStop(model: cellModel, type: self.titleType)
        //: return cell
        return cell
    }

    //: public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: let cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        let cellModel = dataArray[indexPath.row] as! RegularThen
        //: switch self.titleType {
        switch self.titleType {
        //: case .normal:
        case .normal:
            //: LimitPushManager.share.func__pushToUserDetailVC(uid: cellModel.uid)
            LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: cellModel.uid)

        //: case .callNumber:
        case .callNumber:
            //: guard let block = selectedBlock else { return }
            guard let block = selectedBlock else { return }
            //: let dict = ["uid": cellModel.uid, "name": cellModel.nickname]
            let dict = [String(bytes: str_picData, encoding: .utf8)!: cellModel.uid, String(bytes: str_equalValue.map{$0^188}, encoding: .utf8)!: cellModel.nickname]
            //: block(dict)
            block(dict)
        }
    }
}

// MARK: - Layout

//: extension TalkingChatRoomOnlineListController {
extension CloseDataSource {
    // 添加视图
    //: private func setupSubviews() {
    private func statusWith() {
        //: self.view.addSubview(self.mainTableView)
        self.view.addSubview(self.mainTableView)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
    }

    //: private func setupSubViewsConstraint() {
    private func subjectMatterConstraint() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}
