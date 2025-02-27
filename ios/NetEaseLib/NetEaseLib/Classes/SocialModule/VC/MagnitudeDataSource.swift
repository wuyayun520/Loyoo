
//: Declare String Begin

/*: "Activity" :*/
fileprivate let str_tagValue:[Character] = ["A","c"]
fileprivate let str_managerName:String = "textivitexty"

/*: "Charm" :*/
fileprivate let str_fileLikeValue:String = "Charmtap outside model"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_clearTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "snap_img" :*/
fileprivate let str_faceQuickTitle:String = "tempnap"

/*: "leading_add_image" :*/
fileprivate let str_errorLeadingValue:String = "LEADIN"
fileprivate let str_buttonContent:[Character] = ["m","a","g","e"]

/*: "bg_rank_tabList" :*/
fileprivate let str_directionValue:[Character] = ["b","g","_","r"]
fileprivate let str_cellMoveName:String = "clear var frameank_t"

/*: "Yesterday" :*/
fileprivate let str_styleTitle:String = "Yesteclose random top"

/*: "Today" :*/
fileprivate let str_equalData:[Character] = ["T","o","d","a","y"]

/*: "Weekly" :*/
fileprivate let str_tableText:String = "Weeklyscale track"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MagnitudeDataSource.swift
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

//: class SocialRankTabVC: TalkingBaseViewController {
class MagnitudeDataSource: PropertyViewController {
	var belowCropDoing: Bool = false
	var modelSum: Int = 57
	var appearArray: [AnyHashable] = []

    var dataImageView: UIImageView?

    // MARK: params

    //: let titleViewWidth: CGFloat = 150+20*3
    let titleViewWidth: CGFloat = 150 + 20 * 3
    //: let titles = ["Activity".localized, "Charm".localized]
    let titles = [(String(str_tagValue) + str_managerName.replacingOccurrences(of: "text", with: "t")).localized, (String(str_fileLikeValue.prefix(5))).localized]
    //: var rankInfoModel = SocialRankModel()
    var rankInfoModel = ToImageMeasurable()

    //: let segmentedDataSource = JXSegmentedTitleDataSource()
    let segmentedDataSource = JXSegmentedTitleDataSource()
    //: let segmentedView = JXSegmentedView()
    let segmentedView = JXSegmentedView()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.hideNavi = true
        self.hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_clearTitle, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: setupSubviews()
        colorBack()
        //: requestAllData()
        motleySize()

        dataImageView = UIImageView(frame: self.view.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(Double(self.view.bounds.size.height)), width: CGFloat(Int(self.view.bounds.size.width)), height: CGFloat(0))))
        if let dataImageView = dataImageView {
            self.dataImageView?.image = UIImage(named: (str_faceQuickTitle.replacingOccurrences(of: "temp", with: "s") + "_img"))
            if (dataImageView.isHighlighted == true) && (dataImageView.animationDuration == TimeInterval(Double(dataImageView.frame.origin.y))) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(dataImageView)
            }
        }
    
            if (segmentedView.tintColor != nil && segmentedView.tintColor.cgColor == UIColor.black.cgColor) && (segmentedView.gestureRecognizers != nil && segmentedView.gestureRecognizers!.count == 11) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let dataHome = SectionView()
            dataHome.voiceOff = self.hideNavi


            
            dataHome.bottomFreeClose = { [self] toolPriceDoing in
            self.belowCropDoing = toolPriceDoing
            
            var dataHome = self.hideNavi
            dataHome = true
            if dataHome != self.belowCropDoing {
                self.belowCropDoing = dataHome
            }
            
            return self.belowCropDoing
            }
            dataHome.groupMagnitude = { [self] awardSum in
            self.modelSum = awardSum
            
            return self.modelSum
            }
            dataHome.moveArray = { [self] targetMoonArray in
            self.appearArray = targetMoonArray
            
            guard var value = self.appearArray as? [String] else {
                return nil
            }
            return value
            }
                segmentedView.addSubview(dataHome)
            }

	}

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()

        //: listContainerView.frame = CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: ScreenHeight-StatusBarNavigationBarHeight)
        listContainerView.frame = CGRect(x: 0, y: a_itemTitle, width: a_blockValue, height: a_formalValue - a_itemTitle)
        self.dataImageView?.image = UIImage(named: (str_errorLeadingValue.lowercased() + "g_add_i" + String(str_buttonContent)))
    }

    // MARK: - Lazy Load

    //: lazy var titleView = SocialRankTitleView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: StatusBarNavigationBarHeight)).then {
    lazy var titleView = DataConverterReactiveCompatible(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_itemTitle)).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
    }

    //: lazy var listContainerView: JXSegmentedListContainerView! = {
    lazy var listContainerView: JXSegmentedListContainerView! = //: return JXSegmentedListContainerView(dataSource: self)
        JXSegmentedListContainerView(dataSource: self)
    //: }()

    //: let bgImgView = UIImageView().then {
    let bgImgView = UIImageView().then {
        //: $0.frame = UIScreen.main.bounds
        $0.frame = UIScreen.main.bounds
        //: $0.image = UIImage.outsideText(name: "bg_rank_tabList")
        $0.image = UIImage.outsideText(name: (String(str_directionValue) + String(str_cellMoveName.suffix(5)) + "abList"))
    }
}

// MARK: - request

//: extension SocialRankTabVC {
extension MagnitudeDataSource {
    //: func requestAllData() {
    func motleySize() {
        //: SocialRequestManager.getRankListRequest(topName: nil, periodName: nil) {[weak self] succeed, result, errorModel in
        GoldRequestManager.getThroughCompletion(topName: nil, periodName: nil) { [weak self] succeed, result, _ in

            //: guard let self = self else { return }
            guard let self = self else { return }

            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: self.rankInfoModel = SocialRankModel.deserialize(from: result)!
            self.rankInfoModel = ToImageMeasurable.deserialize(from: result)!
            //: self.segmentedView.reloadData()
            self.segmentedView.reloadData()
        }
    }
}

// MARK: - Event

//: extension SocialRankTabVC {
extension MagnitudeDataSource {
    //: private func setupBindings() {
    private func beyondEdit() {}
}

// MARK: - JXSegmentedDelegate

//: extension SocialRankTabVC: JXSegmentedListContainerViewDataSource {
extension MagnitudeDataSource: JXSegmentedListContainerViewDataSource {
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
        //: let vc = SocialRankChildVC()
        let vc = NameViewController()
        //: let subTitle = titles[index]
        let subTitle = titles[index]
        //: if subTitle == "Activity".localized {
        if subTitle == (String(str_tagValue) + str_managerName.replacingOccurrences(of: "text", with: "t")).localized {
            //: vc.rankPeriodModel = self.rankInfoModel.activity ?? SocialPeriodModel()
            vc.rankPeriodModel = self.rankInfoModel.activity ?? PathLaterHandyJSON()
            //: } else {
        } else {
            //: vc.rankPeriodModel = self.rankInfoModel.charm ?? SocialPeriodModel()
            vc.rankPeriodModel = self.rankInfoModel.charm ?? PathLaterHandyJSON()
        }
        //: vc.titles = ["Yesterday".localized, "Today".localized, "Weekly".localized]
        vc.titles = [(String(str_styleTitle.prefix(5)) + "rday").localized, (String(str_equalData)).localized, (String(str_tableText.prefix(6))).localized]
        //: vc.type = index
        vc.type = index
        //: return vc
        return vc
    }
}

// MARK: - Layout

//: extension SocialRankTabVC {
extension MagnitudeDataSource {
    // 添加视图
    //: private func setupSubviews() {
    private func colorBack() {
        //: view.addSubview(bgImgView)
        view.addSubview(bgImgView)
        //: view.addSubview(titleView)
        view.addSubview(titleView)
        //: segmentedDataSource.itemWidth = 75
        segmentedDataSource.itemWidth = 75
        //: segmentedDataSource.itemSpacing = 20
        segmentedDataSource.itemSpacing = 20
        //: segmentedDataSource.titles = titles
        segmentedDataSource.titles = titles
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.titleNormalColor = UIColor.white.withAlphaComponent(0.7)
        segmentedDataSource.titleNormalColor = UIColor.white.withAlphaComponent(0.7)
        //: segmentedDataSource.titleSelectedColor = UIColor.white
        segmentedDataSource.titleSelectedColor = UIColor.white
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 18)
        segmentedDataSource.titleNormalFont = .thoughtImage(type: .Medium, fontSize: 18)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 22)
        segmentedDataSource.titleSelectedFont = .thoughtImage(type: .Medium, fontSize: 22)
        //: segmentedDataSource.itemWidthIncrement = 0
        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 22.0
        indicator.indicatorWidth = 22.0
        //: indicator.lineStyle = .lengthen
        indicator.lineStyle = .lengthen
        //: indicator.indicatorColor = .white
        indicator.indicatorColor = .white

        //: segmentedView.frame = CGRect(x: (ScreenWidth-titleViewWidth)/2.0, y: StatusBarNavigationBarHeight-actualHeight(h: 45), width: titleViewWidth, height: actualHeight(h: 30))
        segmentedView.frame = CGRect(x: (a_blockValue - titleViewWidth) / 2.0, y: a_itemTitle - actualHeight(h: 45), width: titleViewWidth, height: actualHeight(h: 30))
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: titleView.addSubview(segmentedView)
        titleView.addSubview(segmentedView)

        //: segmentedView.listContainer = listContainerView
        segmentedView.listContainer = listContainerView
        //: view.addSubview(listContainerView)
        view.addSubview(listContainerView)
    }
}
