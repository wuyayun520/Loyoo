
//: Declare String Begin

/*: "row_picture" :*/
fileprivate let str_contentData:[Character] = ["r","o","w","_","p","i","c","t","u","r"]
fileprivate let str_ofName:[Character] = ["e"]

/*: "UserLikeCell" :*/
fileprivate let str_toData:String = "share letTalki"
fileprivate let str_bottomValue:String = "thought lessngWhoL"

/*: "page" :*/
fileprivate let str_modeValue:String = "titleage"

/*: "list" :*/
fileprivate let str_blockImageData:[Character] = ["l","i","s","t"]

/*: "badNumber" :*/
fileprivate let str_managerValue:[UInt8] = [0x62,0x61,0x64,0x4e,0x75,0x6d,0x62,0x65,0x72]

/*: "You've got no like yet." :*/
fileprivate let str_resultRawTitle:String = "You\'v"
fileprivate let str_colorEqualData:String = "error recording data imageno lik"
fileprivate let str_gameFileValue:String = "e yet.cancel type ease type self"

/*: "icon_kong_kong_default" :*/
fileprivate let str_makeBeautyValue:String = "istarton"
fileprivate let str_toTitleMakeValue:[Character] = ["o","n","g","_","d","e","f","a","u","l","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SymmetricDataSource.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TalkingWhoLikeViewController: TalkingBaseViewController {
class SymmetricDataSource: PropertyViewController {
	var lastEnable: Bool = true
	var hollerithCardSum: Int = 67
	var bigCount: Double = -35.6
	var imageTitle: String = "max"
	var beanArray: [AnyHashable] = []

    var toImageView: UIImageView?

    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingWhoLikeMeModel] = []
    var DataSource: [TextAppHandyJSON] = []
    //: var number = 0
    var number = 0
    //: var isdeleteEnd = false
    var isdeleteEnd = false

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.clear
        self.view.backgroundColor = UIColor.clear
        //: designView()
        paradigmDesign()
        //: reqData()
        confirmation()

        toImageView = UIImageView(frame: self.view.bounds.insetBy(dx: CGFloat(Double(self.view.bounds.origin.y)), dy: CGFloat(self.view.isFocused ? 5 : 3)))
        if let toImageView = toImageView {
            self.toImageView?.image = UIImage(named: (String(str_contentData) + String(str_ofName)))
            if (toImageView.clipsToBounds) && (toImageView.animationDuration == TimeInterval(Double(toImageView.bounds.size.width))) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(toImageView)
            }
        }
    
            if (!emptyView.autoresizesSubviews) && (emptyView.constraintsAffectingLayout(for: .horizontal).count == 58) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let heightRowExplain = LineView(frame: emptyView.bounds.offsetBy(dx: CGFloat(254.56), dy: CGFloat(514.61)))
            heightRowExplain.imageOn = isdeleteEnd


            
            heightRowExplain.inscriptionOn = { [self] periodicTableOff in
            self.lastEnable = periodicTableOff
            
            var heightRowExplain = isdeleteEnd
            heightRowExplain = false
            if heightRowExplain != self.lastEnable {
                self.lastEnable = heightRowExplain
            }
            
            self.lastEnable = true
            return self.lastEnable
            }
            heightRowExplain.colorIconQuantity = { [self] filterMagnitude in
            self.hollerithCardSum = filterMagnitude
            
            var heightRowExplain = number
            heightRowExplain += 1
            if heightRowExplain > self.hollerithCardSum {
                self.hollerithCardSum = heightRowExplain
            }
            
            return self.hollerithCardSum
            }
            heightRowExplain.giftMagnitude = { [self] timeNumber in
            self.bigCount = timeNumber
            
            return self.bigCount
            }
            heightRowExplain.imageContent = { [self] viewStartContent in
            self.imageTitle = viewStartContent
            
            return self.imageTitle
            }
            heightRowExplain.voiceInfoGiftArray = { [self] giftExamineArray in
            self.beanArray = giftExamineArray
            
            guard var value = self.beanArray as? [String] else {
                return nil
            }
            return value
            }
                emptyView.addSubview(heightRowExplain)
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
        //: table.register(TalkingWhoLikeCell.self, forCellReuseIdentifier: "TalkingWhoLikeCell")
        table.register(UserLikeCell.self, forCellReuseIdentifier: (String(str_toData.suffix(5)) + String(str_bottomValue.suffix(6)) + "ikeCell"))
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
            self.texts()
        }
        //: table.addFooterRefresh { [weak self] in
        table.queryComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.selectDoing()
        }
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingWhoLikeViewController {
extension SymmetricDataSource {
    //: func reqData() {
    func confirmation() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["page"] = pageIndex
        dict[(str_modeValue.replacingOccurrences(of: "title", with: "p"))] = pageIndex

        //: DoingSheRequestTool.req_whoLikeMeList(params: dict) { succeed, result, errorModel in
        DoingSheRequestTool.halfFinish(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.infoTo()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(String(str_blockImageData))] as! [Any]
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
                        self.invite()
                    }
                }
                //: var dataArr: [TalkingWhoLikeMeModel] = []
                var dataArr: [TextAppHandyJSON] = []
                //: if let datas = Array<TalkingWhoLikeMeModel>.deserialize(from: array as? Array) {
                if let datas = Array<TextAppHandyJSON>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingWhoLikeMeModel])!)
                    dataArr.append(contentsOf: (datas as? [TextAppHandyJSON])!)
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
    func texts() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        confirmation()
    }

    //: func footerRefresh() {
    func selectDoing() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        confirmation()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingWhoLikeViewController: UITableViewDelegate, UITableViewDataSource {
extension SymmetricDataSource: UITableViewDelegate, UITableViewDataSource {
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
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingWhoLikeCell"
        let identifier = (String(str_toData.suffix(5)) + String(str_bottomValue.suffix(6)) + "ikeCell")
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingWhoLikeCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? UserLikeCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingWhoLikeCell(style: .default, reuseIdentifier: identifier)
            cell = UserLikeCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingWhoLikeMeModel = self.DataSource[indexPath.row]
        let model: TextAppHandyJSON = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath)
        cell?.poiseAdd(model: model, index: indexPath)
        //: cell?.delegate = self
        cell?.delegate = self
        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model: TalkingWhoLikeMeModel = self.DataSource[indexPath.row]
        let model: TextAppHandyJSON = self.DataSource[indexPath.row]
        //: LimitPushManager.share.func__pushToUserDetailVC(uid: model.uid)
        LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: model.uid)
    }
}

// MARK: - EqualLikeDelegate

//: extension TalkingWhoLikeViewController: WhoLikeDelegate {
extension SymmetricDataSource: EqualLikeDelegate {
    //: func quickGreetingSeleteIndex(_ index: IndexPath) {
    func safetyMargin(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: MainTable.reloadData()
        MainTable.reloadData()
        //: if self.DataSource.count==0 {
        if self.DataSource.count == 0 {
            //: self.isdeleteEnd = true
            self.isdeleteEnd = true
            //: pageIndex = 0
            pageIndex = 0
            //: reqData()
            confirmation()
        }
        //: number -= 1
        number -= 1
        //: NotificationCenter.default.post(name: WHOLIKEME_BADGENUMBER_NOTIF, object: self, userInfo: ["badNumber": (number)])
        NotificationCenter.default.post(name: a_halfData, object: self, userInfo: [String(bytes: str_managerValue, encoding: .utf8)!: number])
    }

    //: func likeSeleteIndex(_ index: IndexPath) {
    func timeMake(_ index: IndexPath) {
        //: quickGreetingSeleteIndex(index)
        safetyMargin(index)
    }
}

// MARK: - UI

//: extension TalkingWhoLikeViewController {
extension SymmetricDataSource {
    //: private func designView() {
    private func paradigmDesign() {
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
        invite()
    }

    //: func setemptyView() {
    func invite() {
        //: self.emptyView.removeFromSuperview()
        self.emptyView.removeFromSuperview()
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "You've got no like yet.".localized
        style.TipsTitle = (str_resultRawTitle + "e got " + String(str_colorEqualData.suffix(6)) + String(str_gameFileValue.prefix(6))).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (str_makeBeautyValue.replacingOccurrences(of: "start", with: "c") + "_kong_k" + String(str_toTitleMakeValue))
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
