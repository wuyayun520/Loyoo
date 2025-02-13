
//: Declare String Begin

/*: "TalkingAreaCodeChoiceCellID" :*/
fileprivate let str_colorData:String = "player errorTalki"
fileprivate let str_pointName:String = "behind indexaCode"
fileprivate let str_blockData:String = "eCelinfo let let"
fileprivate let str_agentAddTitle:[Character] = ["l","I","D"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "Select Country Code" :*/
fileprivate let str_giftHaveName:[Character] = ["S","e","l","e","c","t"," ","C","o","u","n","t","r","y"," "]
fileprivate let str_succeedSizeText:String = "equal self leftCode"

/*: "border_window_picture" :*/
fileprivate let str_sendManagerName:[Character] = ["b","o","r","d","e","r","_","w"]
fileprivate let str_bubbleValue:[Character] = ["i","n"]
fileprivate let str_thoughtText:[Character] = ["d","o","w","_","p","i","c","t","u","r","e"]

/*: "#F4F6FA" :*/
fileprivate let str_showData:String = "#Fcontent view type user false"
fileprivate let str_topNameText:[Character] = ["4","F","6","F","A"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UnimprisonedHavenViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: class TalkingAreaCodeChoiceVC: TalkingBaseViewController {
class UnimprisonedHavenViewController: PropertyViewController {
	var smallQuantity: Int = 56
	var groupActionText: String = "add"
	var statusViewArray: [AnyHashable] = []
	var sectionQuantity: Int = 97
	var scopeName: String = "item"
	var nameualMatterArray: [AnyHashable] = []
	var infoSum: Int = 41
	var labName: String = "component"
	var imageStartArray: [AnyHashable] = []

    var prizeImageView: UIImageView?

    //: public var backCountryCode: ((TalkingAreaModel) -> Void)?
    public var backCountryCode: ((PropertyModelType) -> Void)?

    //: private let TalkingAreaCodeChoiceCellID = "TalkingAreaCodeChoiceCellID"
    private let TalkingAreaCodeChoiceCellID = (String(str_colorData.suffix(5)) + "ngAre" + String(str_pointName.suffix(5)) + "Choic" + String(str_blockData.prefix(4)) + String(str_agentAddTitle))

    //: private var sectionTitlesArray = [String]()
    private var sectionTitlesArray = [String]()
    //: private var sectionArray = [Array<Any>]()
    private var sectionArray = [[Any]]()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toValue, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    
            if (tableView.preservesSuperviewLayoutMargins) && (tableView.convert(CGRect.zero, from: tableView.superview).origin.y == 86.68) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let showLet = ViewBarView(frame: tableView.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(67), width: CGFloat(0), height: CGFloat(0))))
            showLet.genreDestroySwitch = self.hideNavi

            
            showLet.premiumInterval = { [self] rowNumber in
            self.sectionQuantity = rowNumber
            
            return self.sectionQuantity
            }
            showLet.indexText = { [self] writeText in
            self.scopeName = writeText
            
            self.scopeName = String(repeating: "=" as Character, count: self.scopeName.lowercased().count)
            return self.scopeName
            }
            showLet.progressArray = { [self] reArray in
            self.nameualMatterArray = reArray
            
            guard var value = self.nameualMatterArray as? [String] else {
                return nil
            }
            return value
            }
                tableView.addSubview(showLet)
            }

	}

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
            if (tableView.convert(CGRect(x: 0, y: CGFloat(62), width: 0, height: 0), to: tableView.superview).origin.x == 66.69) && (tableView.convert(CGRect(x: CGFloat(0), y: CGFloat(248.97), width: CGFloat(0), height: CGFloat(87)), to: tableView.superview).size.height == 34.89) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let listName = ViewBarView()
            listName.genreDestroySwitch = self.hideNavi

            
            listName.premiumInterval = { [self] rowNumber in
            self.infoSum = rowNumber
            
            return self.infoSum
            }
            listName.indexText = { [self] writeText in
            self.labName = writeText
            
            let atStar = self.labName.prefix(through: self.labName.index(self.labName.startIndex, offsetBy: self.labName.lowercased().count)).isEmpty
            self.labName.removeAll(keepingCapacity: atStar)
            return self.labName
            }
            listName.progressArray = { [self] reArray in
            self.imageStartArray = reArray
            
            guard var value = self.imageStartArray as? [String] else {
                return nil
            }
            return value
            }
                tableView.addSubview(listName)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Select Country Code".localized
        self.title = (String(str_giftHaveName) + String(str_succeedSizeText.suffix(4))).localized

        //: createDefaultData()
        enable()
        //: self.setupSubviews()
        self.addLast()
        //: self.setupSubViewsConstraint()
        self.deadline()
        //: self.bindInteraction()
        self.aList()

        prizeImageView = UIImageView(frame: self.view.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(Double(self.view.frame.origin.x)), width: CGFloat(0), height: CGFloat(0))))
        if let prizeImageView = prizeImageView {
            self.prizeImageView?.image = UIImage(named: (String(str_sendManagerName) + String(str_bubbleValue) + String(str_thoughtText)))
            if (prizeImageView.layer.position.x == 92.16) && (prizeImageView.clearsContextBeforeDrawing) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(prizeImageView)
            }
        }
    
            if (tableView.preservesSuperviewLayoutMargins) && (tableView.convert(CGRect.zero, from: tableView.superview).origin.y == 86.68) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let showLet = ViewBarView(frame: tableView.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(67), width: CGFloat(0), height: CGFloat(0))))
            showLet.genreDestroySwitch = self.hideNavi

            
            showLet.premiumInterval = { [self] rowNumber in
            self.smallQuantity = rowNumber
            
            return self.smallQuantity
            }
            showLet.indexText = { [self] writeText in
            self.groupActionText = writeText
            
            self.groupActionText = String(repeating: "=" as Character, count: self.groupActionText.lowercased().count)
            return self.groupActionText
            }
            showLet.progressArray = { [self] reArray in
            self.statusViewArray = reArray
            
            guard var value = self.statusViewArray as? [String] else {
                return nil
            }
            return value
            }
                tableView.addSubview(showLet)
            }

	}

    //: deinit {
    deinit {}

    //: lazy var tableView: UITableView = {
    lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.register(TalkingAreaCodeChoiceCell.classForCoder(), forCellReuseIdentifier: TalkingAreaCodeChoiceCellID)
        tableView.register(DateView.classForCoder(), forCellReuseIdentifier: TalkingAreaCodeChoiceCellID)
        //: tableView.sectionIndexColor = .appValueColor()
        tableView.sectionIndexColor = .complexion()
        //: tableView.backgroundColor  = UIColor.init(hex: "#F4F6FA")
        tableView.backgroundColor = UIColor(hex: (String(str_showData.prefix(2)) + String(str_topNameText)))
        //: return tableView
        return tableView
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingAreaCodeChoiceVC {
extension UnimprisonedHavenViewController {
    //: private func createDefaultData() {
    private func enable() {
        //: let arr = TalkingLocationTool.share.areaArr
        let arr = ValueRegularLocationTool.share.areaArr

        //: let collation = UILocalizedIndexedCollation.current()
        let collation = UILocalizedIndexedCollation.current()

        //: let sectionNumb = collation.sectionTitles.count
        let sectionNumb = collation.sectionTitles.count

        //: var sectionTempArray = [Array<Any>]()
        var sectionTempArray = [[Any]]()

        //: for _ in 0..<sectionNumb {
        for _ in 0 ..< sectionNumb {
            //: sectionTempArray.append([])
            sectionTempArray.append([])
        }

        //: for areaModel: TalkingAreaModel in arr {
        for areaModel: PropertyModelType in arr {
            //: let sectionIndex =  collation.section(for: areaModel, collationStringSelector: #selector(getter: areaModel.areaName))
            let sectionIndex = collation.section(for: areaModel, collationStringSelector: #selector(getter: areaModel.areaName))
            //: sectionTempArray[sectionIndex].append(areaModel)
            sectionTempArray[sectionIndex].append(areaModel)
        }

        //: for index in 0..<sectionNumb {
        for index in 0 ..< sectionNumb {
            //: let tempArr = sectionTempArray[index]
            let tempArr = sectionTempArray[index]
            //: let sortArr = collation.sortedArray(from: tempArr, collationStringSelector: #selector(getter: TalkingAreaModel().areaName))
            let sortArr = collation.sortedArray(from: tempArr, collationStringSelector: #selector(getter: PropertyModelType().areaName))
            //: sectionTempArray[index] = sortArr
            sectionTempArray[index] = sortArr
        }

        //: for (index, value) in sectionTempArray.enumerated() {
        for (index, value) in sectionTempArray.enumerated() {
            //: if value.count > 0 {
            if value.count > 0 {
                //: let titleStr = collation.sectionTitles[index]
                let titleStr = collation.sectionTitles[index]
                //: sectionTitlesArray.append(titleStr)
                sectionTitlesArray.append(titleStr)
                //: sectionArray.append(value)
                sectionArray.append(value)
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingAreaCodeChoiceVC {
extension UnimprisonedHavenViewController {}

// MARK: - Delegate

//: extension TalkingAreaCodeChoiceVC: UITableViewDelegate, UITableViewDataSource {
extension UnimprisonedHavenViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return sectionTitlesArray.count
        return sectionTitlesArray.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if sectionArray.count > section {
        if sectionArray.count > section {
            //: let array: [TalkingAreaModel] = sectionArray[section] as! [TalkingAreaModel]
            let array: [PropertyModelType] = sectionArray[section] as! [PropertyModelType]
            //: return array.count
            return array.count
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell: TalkingAreaCodeChoiceCell = tableView.dequeueReusableCell(withIdentifier: TalkingAreaCodeChoiceCellID, for: indexPath) as! TalkingAreaCodeChoiceCell
        let cell: DateView = tableView.dequeueReusableCell(withIdentifier: TalkingAreaCodeChoiceCellID, for: indexPath) as! DateView
        //: let array: [TalkingAreaModel] = sectionArray[indexPath.section] as! [TalkingAreaModel]
        let array: [PropertyModelType] = sectionArray[indexPath.section] as! [PropertyModelType]
        //: cell.func__updateUIWithModel(areaModel: array[indexPath.row])
        cell.back(areaModel: array[indexPath.row])

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 50
        return 50
    }

    //: func sectionIndexTitles(for tableView: UITableView) -> [String]? {
    func sectionIndexTitles(for _: UITableView) -> [String]? {
        //: return sectionTitlesArray
        return sectionTitlesArray
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headView = UIView.init()
        let headView = UIView()
        //: headView.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: 30)
        headView.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: 30)
        //: headView.backgroundColor = .white
        headView.backgroundColor = .white

        //: let label = UILabel.init()
        let label = UILabel()
        //: label.frame = CGRect(x: 15, y: 0, width: ScreenWidth-30, height: 30)
        label.frame = CGRect(x: 15, y: 0, width: a_blockValue - 30, height: 30)
        //: label.text = sectionTitlesArray[section]
        label.text = sectionTitlesArray[section]
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .thoughtImage(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: headView.addSubview(label)
        headView.addSubview(label)
        //: return headView
        return headView
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 30
        return 30
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let array: [TalkingAreaModel] = sectionArray[indexPath.section] as! [TalkingAreaModel]
        let array: [PropertyModelType] = sectionArray[indexPath.section] as! [PropertyModelType]
        //: let areaModel = array[indexPath.row]
        let areaModel = array[indexPath.row]
        //: if self.backCountryCode != nil {
        if self.backCountryCode != nil {
            //: self.backCountryCode!(areaModel)
            self.backCountryCode!(areaModel)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: - Layout

//: extension TalkingAreaCodeChoiceVC {
extension UnimprisonedHavenViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func addLast() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func deadline() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalToSuperview()
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func aList() {}
}
