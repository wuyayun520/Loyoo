
//: Declare String Begin

/*: "Public Chat Room" :*/
fileprivate let str_currentName:String = "shade app topPublic"
fileprivate let str_greetValue:[Character] = [" ","R","o","o","m"]

/*: "mount_img" :*/
fileprivate let str_playData:String = "M"
fileprivate let str_frameTitle:[Character] = ["o","u","n","t","_","i","m","g"]

/*: "You've got no list yet." :*/
fileprivate let str_scaleName:String = "You\'ve"
fileprivate let str_indexName:String = "interaction add height item got"
fileprivate let str_aspectLengthValue:[Character] = [" ","n","o"," ","l","i","s","t"," ","y","e","t","."]

/*: "TelevisionViewCell" :*/
fileprivate let str_voiceTitle:[Character] = ["T","a","l","k","i","n","g","C","h","a","t","R","o","o","m","L","i","s","t","C"]
fileprivate let str_equalValue:String = "eblockblock"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelListVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/6.
//

//: import UIKit
import UIKit

//: class TalkingChatRoomListVC: TalkingBaseViewController {
class ModelListVc: PropertyViewController {
	var gestureCount: Double = 65.3

    var labelImageView: UIImageView?

    //: var DataSource: [TalkingChatRoomListModel] = []
    var DataSource: [SheHandyJSON] = []

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Public Chat Room".localized
        self.title = (String(str_currentName.suffix(6)) + " Chat" + String(str_greetValue)).localized
        //: designView()
        noView()
        //: reqData()
        tableAcross()

        labelImageView = UIImageView(frame: self.view.bounds.insetBy(dx: CGFloat(0), dy: CGFloat(0)))
        if let labelImageView = labelImageView {
            self.labelImageView?.image = UIImage(named: (str_playData.lowercased() + String(str_frameTitle)))
		
		//: if_extract_code "colorQuoteHead" begin
		
		var colorQuoteHead = false
		if !colorQuoteHead {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = labelImageView.editingInteractionConfiguration == .none
		    }
		    colorQuoteHead = isValue
		}
		
		//: if_extract_code "colorQuoteHead" end
		
            if colorQuoteHead && (labelImageView.animationDuration == TimeInterval(Double(labelImageView.center.x))) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(labelImageView)
            }
        }
    
            if (MainTable.layer.shadowRadius == 1.81) && (MainTable.layer.contentsRect.origin.x != 0) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let gesturePackage = TimePeriodView(frame: MainTable.frame)
            gesturePackage.bagOpen = self.hideNavi

            gesturePackage.labCount = { [self] detailInterval in
            self.gestureCount = detailInterval
            
            return self.gestureCount
            }
                MainTable.addSubview(gesturePackage)
            }

	}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        let table = UITableView(frame: .zero, style: UITableView.Style.plain)
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
        //: table.addHeaderRefresh { [weak self] in
        table.thumbPunctuate { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.largenessReload()
        }
        //: return table
        return table
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "You've got no list yet.".localized
        style.TipsTitle = (str_scaleName + String(str_indexName.suffix(4)) + String(str_aspectLengthValue)).localized
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.reqData()
            self.tableAcross()
        }
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingChatRoomListVC {
extension ModelListVc {
    //: func reqData() {
    func tableAcross() {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: DoingSheRequestTool.req_getChatRoomList { succeed, result, errorModel in
        DoingSheRequestTool.listTap { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.infoTo()
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 {
                if array.count == 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingChatRoomListModel] = []
                var dataArr: [SheHandyJSON] = []

                //: if let datas = Array<TalkingChatRoomListModel>.deserialize(from: array as? Array) {
                if let datas = Array<SheHandyJSON>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingChatRoomListModel])!)
                    dataArr.append(contentsOf: (datas as? [SheHandyJSON])!)
                }
                //: self.DataSource = dataArr
                self.DataSource = dataArr
                //: self.emptyView.isHidden = (self.DataSource.count > 0)
                self.emptyView.isHidden = (self.DataSource.count > 0)
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func largenessReload() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: reqData()
        tableAcross()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatRoomListVC: UITableViewDelegate, UITableViewDataSource {
extension ModelListVc: UITableViewDelegate, UITableViewDataSource {
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
        //: let identifier = "TalkingChatRoomListCell"
        let identifier = (String(str_voiceTitle) + str_equalValue.replacingOccurrences(of: "block", with: "l"))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingChatRoomListCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TelevisionViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingChatRoomListCell(style: .default, reuseIdentifier: identifier)
            cell = TelevisionViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingChatRoomListModel = self.DataSource[indexPath.row]
        let model: SheHandyJSON = self.DataSource[indexPath.row]
        //: cell?.setChatRoomListCell(model: model)
        cell?.isometrical(model: model)

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.DataSource[indexPath.row]
        let model = self.DataSource[indexPath.row]
        //: LimitPushManager.share.func__pushToGroupChat(groupId: model.roomId)
        LimitPushManager.share.valueId(groupId: model.roomId)
    }
}

// MARK: - UI

//: extension TalkingChatRoomListVC {
extension ModelListVc {
    //: private func designView() {
    private func noView() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingChatRoomListCell.self, forCellReuseIdentifier: "TalkingChatRoomListCell")
        MainTable.register(TelevisionViewCell.self, forCellReuseIdentifier: (String(str_voiceTitle) + str_equalValue.replacingOccurrences(of: "block", with: "l")))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(1)
            make.top.equalTo(self.view).offset(1)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-1)
            make.bottom.equalTo(self.view.snp.bottom).offset(-1)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: view.addSubview(emptyView)
        view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
