
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pushData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "visualisation_img" :*/
fileprivate let str_sizeData:String = "viroomu"
fileprivate let str_photoData:[Character] = ["n","_","i","m","g"]

/*: "price_image" :*/
fileprivate let str_dataContent:[Character] = ["p","r","i","c","e"]
fileprivate let str_colorText:[Character] = ["_","i","m","a","g","e"]

/*: "icon_rank_left" :*/
fileprivate let str_showText:String = "iconversationn"
fileprivate let str_makeName:String = "k_lefself by"
fileprivate let str_birthValue:String = "manager"

/*: "icon_rank_right" :*/
fileprivate let str_lastData:String = "content view appearicon_r"
fileprivate let str_formalModelValue:String = "table return originank_"

/*: "Yesterday" :*/
fileprivate let str_holderText:String = "Yestemake text crop"
fileprivate let str_frameData:[Character] = ["r","d","a","y"]

/*: "Today" :*/
fileprivate let str_playerData:[Character] = ["T","o","d","a","y"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameViewController.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import JXSegmentedView
import JXSegmentedView
//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankChildVC: TalkingBaseViewController {
class NameViewController: PropertyViewController {
	var ofCellDoing: Bool = false
	var modelSum: Int = 42
	var lanthanonNumber: Double = 84.8
	var goldArray: [AnyHashable] = []

    var spaceImageView: UIImageView?

    // MARK: params

    //: var titles = [String]()
    var titles = [String]()
    //: var rankPeriodModel = SocialPeriodModel()
    var rankPeriodModel = PathLaterHandyJSON()
    //: var type = 0
    var type = 0

    //: let segmentedDataSource = JXSegmentedTitleDataSource()
    let segmentedDataSource = JXSegmentedTitleDataSource()
    //: let segmentedView = JXSegmentedView()
    let segmentedView = JXSegmentedView()

    // MARK: Controller life

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pushData.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    
            if (segmentedView.tag == 9794) && (segmentedView.frame.origin.x == 89.81) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let fileAllocationTable = RecordView(frame: segmentedView.bounds.standardized)

            fileAllocationTable.modelEnable = { [self] intervalClose in
            self.ofCellDoing = intervalClose
            
            var fileAllocationTable = self.hideNavi
            fileAllocationTable = false
            if fileAllocationTable != self.ofCellDoing {
                self.ofCellDoing = fileAllocationTable
            }
            
            return self.ofCellDoing
            }
            fileAllocationTable.successfullyNumber = { [self] tableNumber in
            self.modelSum = tableNumber
            
            var fileAllocationTable = type
            fileAllocationTable &*= 7
            if fileAllocationTable > self.modelSum {
                self.modelSum = fileAllocationTable
            }
            
            return self.modelSum
            }
            fileAllocationTable.frameInterval = { [self] textQuantity in
            self.lanthanonNumber = textQuantity
            
            return self.lanthanonNumber
            }
            fileAllocationTable.managerBackRoomArray = { [self] nidusDeckArray in
            self.goldArray = nidusDeckArray
            
            guard var value = self.goldArray as? [String] else {
                return nil
            }
            return value
            }
                segmentedView.addSubview(fileAllocationTable)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear

        //: setupSubviews()
        windowSubviews()

        spaceImageView = UIImageView(frame: self.view.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(Int(self.view.center.y)), width: CGFloat(0), height: CGFloat(0))))
        if let spaceImageView = spaceImageView {
            self.spaceImageView?.image = UIImage(named: (str_sizeData.replacingOccurrences(of: "room", with: "s") + "alisatio" + String(str_photoData)))
            if (spaceImageView.isHighlighted == true) && (spaceImageView.preservesSuperviewLayoutMargins) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(spaceImageView)
            }
        }
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()

        //: listContainerView.frame = CGRect(x: 0, y: 60, width: view.bounds.size.width, height: view.bounds.size.height - 60)
        listContainerView.frame = CGRect(x: 0, y: 60, width: view.bounds.size.width, height: view.bounds.size.height - 60)
        self.spaceImageView?.image = UIImage(named: (String(str_dataContent) + String(str_colorText)))
    }

    // MARK: - Lazy Load

    //: let leftImgView = UIImageView().then {
    let leftImgView = UIImageView().then {
        //: $0.image = UIImage.outsideText(name: "icon_rank_left")
        $0.image = UIImage.outsideText(name: (str_showText.replacingOccurrences(of: "conversation", with: "co") + "_ran" + String(str_makeName.prefix(5)) + str_birthValue.replacingOccurrences(of: "manager", with: "t")))
    }

    //: let rightImgView = UIImageView().then {
    let rightImgView = UIImageView().then {
        //: $0.image = UIImage.outsideText(name: "icon_rank_right")
        $0.image = UIImage.outsideText(name: (String(str_lastData.suffix(6)) + String(str_formalModelValue.suffix(4)) + "right"))
    }

    //: lazy var listContainerView: JXSegmentedListContainerView! = {
    lazy var listContainerView: JXSegmentedListContainerView! = //: return JXSegmentedListContainerView(dataSource: self)
        JXSegmentedListContainerView(dataSource: self)
    //: }()
}

// MARK: - request

//: extension SocialRankChildVC {
extension NameViewController {
    //: private func setupBindings() {
    private func makeEmpty() {}
}

// MARK: - Event

//: extension SocialRankChildVC {
extension NameViewController {
    //: private func getModelArray(subTitle: String) -> [SocialRankItemModel] {
    private func plunk(subTitle: String) -> [DoingItemModel] {
        //: if subTitle == "Yesterday".localized {
        if subTitle == (String(str_holderText.prefix(5)) + String(str_frameData)).localized {
            //: return addEmptyModel(data: rankPeriodModel.yesterday?.res ?? [])
            return accountTitleTheory(data: rankPeriodModel.yesterday?.res ?? [])
            //: } else if subTitle == "Today".localized {
        } else if subTitle == (String(str_playerData)).localized {
            //: return addEmptyModel(data: rankPeriodModel.today?.res ?? [])
            return accountTitleTheory(data: rankPeriodModel.today?.res ?? [])
            //: } else {
        } else {
            //: return addEmptyModel(data: rankPeriodModel.weekly?.res ?? [])
            return accountTitleTheory(data: rankPeriodModel.weekly?.res ?? [])
        }
    }

    /// 添加占位数据（保证UI展示美观）
    /// - Parameter data: 数据源
    /// - Returns: 添加空数据后的数据源
    //: private func addEmptyModel(data: [SocialRankItemModel]) -> [SocialRankItemModel] {
    private func accountTitleTheory(data: [DoingItemModel]) -> [DoingItemModel] {
        //: var mData = data
        var mData = data
        //: if mData.count == 0 {
        if mData.count == 0 {
            //: return []
            return []
            //: } else if mData.count >= 9 {
        } else if mData.count >= 9 {
            //: return mData
            return mData
            //: } else {
        } else {
            //: for _ in mData.count...9 {
            for _ in mData.count ... 9 {
                //: var model = SocialRankItemModel()
                var model = DoingItemModel()
                //: model.isEmpty = true
                model.isEmpty = true
                //: mData.append(model)
                mData.append(model)
            }

            //: return mData
            return mData
        }
    }
}

//: extension SocialRankChildVC: JXSegmentedListContainerViewListDelegate {
extension NameViewController: JXSegmentedListContainerViewListDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return view
        return view
    }
}

//: extension SocialRankChildVC: JXSegmentedListContainerViewDataSource {
extension NameViewController: JXSegmentedListContainerViewDataSource {
    //: func numberOfLists(in listContainerView: JXSegmentedListContainerView) -> Int {
    func numberOfLists(in _: JXSegmentedListContainerView) -> Int {
        //: if let titleDataSource = segmentedView.dataSource as? JXSegmentedBaseDataSource {
        if let titleDataSource = segmentedView.dataSource as? JXSegmentedBaseDataSource {
            //: return titleDataSource.dataSource.count
            return titleDataSource.dataSource.count
        }
        //: return 0
        return 0
    }

    //: func listContainerView(_ listContainerView: JXSegmentedListContainerView, initListAt index: Int) -> JXSegmentedListContainerViewListDelegate {
    func listContainerView(_: JXSegmentedListContainerView, initListAt index: Int) -> JXSegmentedListContainerViewListDelegate {
        //: let listView = SocialRankListView()
        let listView = ModelListView()
        //: listView.type = self.type
        listView.type = self.type
        //: listView.dataArray = self.getModelArray(subTitle: titles[index])
        listView.dataArray = self.plunk(subTitle: titles[index])
        //: return listView
        return listView
    }
}

// MARK: - Layout

//: extension SocialRankChildVC {
extension NameViewController {
    //: private func setupSubviews() {
    private func windowSubviews() {
        //: let totalWidth = 270.0
        let totalWidth = 270.0

        //: segmentedDataSource.titles = titles
        segmentedDataSource.titles = titles
        //: segmentedDataSource.itemWidth = totalWidth/3
        segmentedDataSource.itemWidth = totalWidth / 3
        //: segmentedDataSource.itemSpacing = 0
        segmentedDataSource.itemSpacing = 0
        //: segmentedDataSource.titleNormalColor = .white.withAlphaComponent(0.7)
        segmentedDataSource.titleNormalColor = .white.withAlphaComponent(0.7)
        //: segmentedDataSource.isTitleMaskEnabled = true
        segmentedDataSource.isTitleMaskEnabled = true
        //: segmentedDataSource.titleSelectedColor = UIColor.RGBA(207, 72, 255, 1)
        segmentedDataSource.titleSelectedColor = UIColor.each(207, 72, 255, 1)
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 15)
        segmentedDataSource.titleNormalFont = .thoughtImage(type: .Medium, fontSize: 15)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 15)
        segmentedDataSource.titleSelectedFont = .thoughtImage(type: .Medium, fontSize: 15)

        // 配置指示器
        //: let indicator = JXSegmentedIndicatorBackgroundView()
        let indicator = JXSegmentedIndicatorBackgroundView()
        //: indicator.indicatorHeight = 36
        indicator.indicatorHeight = 36
        //: indicator.indicatorWidthIncrement = 0
        indicator.indicatorWidthIncrement = 0
        //: indicator.indicatorCornerRadius = 18
        indicator.indicatorCornerRadius = 18
        //: indicator.indicatorColor = .white
        indicator.indicatorColor = .white

        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.layer.masksToBounds = true
        segmentedView.layer.masksToBounds = true
        //: segmentedView.layer.cornerRadius = 18
        segmentedView.layer.cornerRadius = 18
        //: segmentedView.backgroundColor = UIColor.RGBA(212, 131, 255, 1)
        segmentedView.backgroundColor = UIColor.each(212, 131, 255, 1)
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1

        //: segmentedView.frame = CGRect(x: (ScreenWidth-270)/2, y: 10, width: totalWidth, height: 36)
        segmentedView.frame = CGRect(x: (a_blockValue - 270) / 2, y: 10, width: totalWidth, height: 36)
        //: view.addSubview(segmentedView)
        view.addSubview(segmentedView)

        //: leftImgView.frame = CGRect(x: segmentedView.origin.x-22, y: 6, width: 20, height: 27)
        leftImgView.frame = CGRect(x: segmentedView.origin.x - 22, y: 6, width: 20, height: 27)
        //: view.addSubview(leftImgView)
        view.addSubview(leftImgView)

        //: rightImgView.frame = CGRect(x: segmentedView.origin.x+totalWidth+2, y: 6, width: 20, height: 27)
        rightImgView.frame = CGRect(x: segmentedView.origin.x + totalWidth + 2, y: 6, width: 20, height: 27)
        //: view.addSubview(rightImgView)
        view.addSubview(rightImgView)

        //: segmentedView.listContainer = listContainerView
        segmentedView.listContainer = listContainerView
        //: view.addSubview(listContainerView)
        view.addSubview(listContainerView)
    }
}
