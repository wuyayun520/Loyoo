
//: Declare String Begin

/*: "point_image" :*/
fileprivate let str_useText:String = "point_imuser model data medium"
fileprivate let str_nowValue:[Character] = ["a","g","e"]

/*: "RubricView" :*/
fileprivate let str_callName:[Character] = ["T","a","l","k","i","n","g","V","i","d","e","o","C","a","l","l","T","a","b","l","e","C","e","l"]
fileprivate let str_formalData:String = "text"

/*: "page" :*/
fileprivate let str_requestValue:String = "PAGE"

/*: "limit" :*/
fileprivate let str_indexName:[Character] = ["l","i","m","i","t"]

/*: "endPage" :*/
fileprivate let str_bottomName:String = "type selfendPage"

/*: "data" :*/
fileprivate let str_userMainTitle:[Character] = ["d","a","t","a"]

/*: "There's no record of the call yet" :*/
fileprivate let str_titleData:[UInt8] = [0x54,0x68,0x65,0x72,0x65,0x27,0x73,0x20,0x6e,0x6f,0x20,0x72,0x65,0x63,0x6f,0x72,0x64,0x20,0x6f,0x66,0x20,0x74,0x68,0x65,0x20,0x63,0x61,0x6c,0x6c,0x20,0x79,0x65,0x74]

/*: "icon_kong_kong_default" :*/
fileprivate let str_textAngleName:[Character] = ["i","c","o","n","_","k","o","n","g","_"]
fileprivate let str_removeValue:String = "KONG"
fileprivate let str_permissionData:String = "atot"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SocietalDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallVC: TalkingBaseViewController {
class SocietalDataSource: PropertyViewController {
	var streetOpen: Bool = false
	var methodImageTotal: Int = 63
	var dismissArray: [AnyHashable] = []
	var styleAddDictionary: [AnyHashable: String] = [:]

    var layerImageView: UIImageView?

    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingVideoCallRecordModel] = []
    var DataSource: [EnableTransformable] = []
    //: var limit = 20
    var limit = 20
    //: var isdeleteEnd = false
    var isdeleteEnd = false

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: reqData()
        viewObserver()
    
		if var dataValue = self.callManag.uid { 
		if let layerImageView = layerImageView {
	
	            if (layerImageView.layer.position.y == 15.19) && (layerImageView.layer.mask != nil) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let menuLet = GiftShotView(frame: layerImageView.frame.insetBy(dx: CGFloat(62), dy: CGFloat(623.02)))
	            menuLet.dataName = dataValue
	            menuLet.unsleepingSwitch = { [self] showClose in
	            self.streetOpen = showClose
	            
	            var menuLet = animated
	                menuLet = true
	                menuLet = false
	            if menuLet != self.streetOpen {
	                self.streetOpen = menuLet
	            }
	            
	                self.streetOpen = true
	                self.streetOpen = !self.streetOpen
	            return self.streetOpen
	            }
	            menuLet.awakeMagnitude = { [self] momentMoveVoiceSum in
	            self.methodImageTotal = momentMoveVoiceSum
	            
	            var menuLet = pageIndex
	            menuLet &*= 3
	            if menuLet < self.methodImageTotal {
	                self.methodImageTotal = menuLet
	            }
	            
	            return self.methodImageTotal
	            }
	            menuLet.snapArray = { [self] lastArray in
	            self.dismissArray = lastArray
	            
	            guard var value = self.dismissArray as? [String] else {
	                return nil
	            }
	            return value
	            }
	            menuLet.indexDictionary = { [self] managerBagDictionary in
	            self.styleAddDictionary = managerBagDictionary
	            
	            guard var value = self.styleAddDictionary as? [String: String] else {
	                return nil
	            }
	            return value
	            }
	                layerImageView.addSubview(menuLet)
	            }
	
		}
	
		}
	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.clear
        self.view.backgroundColor = UIColor.clear
        //: designView()
        examineed()

        layerImageView = UIImageView(frame: self.view.bounds)
        if let layerImageView = layerImageView {
            self.layerImageView?.image = UIImage(named: (String(str_useText.prefix(8)) + String(str_nowValue)))
            if (!layerImageView.canBecomeFocused && layerImageView.isFocused) && (layerImageView.layer.anchorPointZ != 0) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(layerImageView)
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
        //: table.register(TalkingVideoCallTableCell.self, forCellReuseIdentifier: "TalkingVideoCallTableCell")
        table.register(RubricView.self, forCellReuseIdentifier: (String(str_callName) + str_formalData.replacingOccurrences(of: "text", with: "l")))
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
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
            self.fastener()
        }
        //: table.addFooterRefresh { [weak self] in
        table.queryComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.delayEqualRestore()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var callManag: TalkingCallMenuManager = {
    lazy var callManag: LaterErrorDelegate = {
        //: let call = TalkingCallMenuManager()
        let call = LaterErrorDelegate()
        //: return call
        return call
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingVideoCallVC {
extension SocietalDataSource {
    //: func reqData() {
    func viewObserver() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["page"] = pageIndex
        dict[(str_requestValue.lowercased())] = pageIndex
        //: dict["limit"] = limit
        dict[(String(str_indexName))] = limit

        //: DoingSheRequestTool.req_getCallTab(params: dict) { succeed, result, errorModel in
        DoingSheRequestTool.distil(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.infoTo()
            //: if succeed {
            if succeed {
                //: let data: Dictionary = result as! Dictionary<String, Any>
                let data: Dictionary = result as! [String: Any]
                //: let endPage = data["endPage"] as? Int
                let endPage = data[(String(str_bottomName.suffix(7)))] as? Int
                //: let array: Array =  data["data"] as! Array<Any>
                let array: Array = data[(String(str_userMainTitle))] as! [Any]
                //: if array.count == 0 {
                if array.count == 0 {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                        self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                        //: self.MainTable.mj_footer?.isHidden = true
                        self.MainTable.mj_footer?.isHidden = true
                    }
                    //: if self.DataSource.count == 0 &&  self.isdeleteEnd {
                    if self.DataSource.count == 0, self.isdeleteEnd {
                        //: self.setemptyView()
                        self.nameView()
                    }
                }
                //: var dataArr: [TalkingVideoCallRecordModel] = []
                var dataArr: [EnableTransformable] = []
                //: if let datas = Array<TalkingVideoCallRecordModel>.deserialize(from: array as? Array) {
                if let datas = Array<EnableTransformable>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingVideoCallRecordModel])!)
                    dataArr.append(contentsOf: (datas as? [EnableTransformable])!)
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
                //: if endPage ?? 0 > 0 {
                if endPage ?? 0 > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    //: self.MainTable.mj_footer?.isHidden = true
                    self.MainTable.mj_footer?.isHidden = true
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
                //: } else {
            } else {
                //: if self.pageIndex > 0 {
                if self.pageIndex > 0 {
                    //: self.pageIndex -= 1
                    self.pageIndex -= 1
                }
            }
        }
    }

    //: func headerRefresh() {
    func fastener() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        viewObserver()
    }

    //: func footerRefresh() {
    func delayEqualRestore() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        viewObserver()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoCallVC: UITableViewDelegate, UITableViewDataSource {
extension SocietalDataSource: UITableViewDelegate, UITableViewDataSource {
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
        //: return 60
        return 60
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingVideoCallTableCell"
        let identifier = (String(str_callName) + str_formalData.replacingOccurrences(of: "text", with: "l"))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingVideoCallTableCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? RubricView
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingVideoCallTableCell(style: .default, reuseIdentifier: identifier)
            cell = RubricView(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingVideoCallRecordModel = self.DataSource[indexPath.row]
        let model: EnableTransformable = self.DataSource[indexPath.row]
        //: cell?.setVideoCallCell(model: model)
        cell?.televisionSub(model: model)

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model: TalkingVideoCallRecordModel = self.DataSource[indexPath.row]
        let model: EnableTransformable = self.DataSource[indexPath.row]

        //: callManag.uid = "\(model.uid)"
        callManag.uid = "\(model.uid)"
        //: callManag.checkAndCallVideo { succeed in
        callManag.domainTitleComplection { _ in
        }
    }
}

/// MARK: - UI
//: extension TalkingVideoCallVC {
extension SocietalDataSource {
    //: private func designView() {
    private func examineed() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
        //: setemptyView()
        nameView()
    }

    //: func setemptyView() {
    func nameView() {
        //: self.emptyView.removeFromSuperview()
        self.emptyView.removeFromSuperview()
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "There's no record of the call yet".localized
        style.TipsTitle = String(bytes: str_titleData, encoding: .utf8)!.localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(str_textAngleName) + str_removeValue.lowercased() + "_def" + str_permissionData.replacingOccurrences(of: "to", with: "ul"))
        //: self.emptyView = EmptyView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: style)
        self.emptyView = EmptyView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue), style: style)
        //: self.view.addSubview(self.emptyView)
        self.view.addSubview(self.emptyView)
        //: self.view.bringSubviewToFront(self.emptyView)
        self.view.bringSubviewToFront(self.emptyView)
        //: self.emptyView.emptyBlock = {
        self.emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
    }
}
