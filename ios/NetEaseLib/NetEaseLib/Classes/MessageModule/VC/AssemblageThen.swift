
//: Declare String Begin

/*: "snap_img" :*/
fileprivate let str_outsideData:[Character] = ["s","n","a","p","_","i"]
fileprivate let str_giftName:String = "mhidden"

/*: "#777777" :*/
fileprivate let str_countBlackData:String = "#7777"
fileprivate let str_layerTargetText:String = "77"

/*: "#333333" :*/
fileprivate let str_contentImageData:[Character] = ["#","3","3","3","3","3","3"]

/*: "Followers" :*/
fileprivate let str_fromName:[Character] = ["F","o","l","l","o","w","e","r","s"]

/*: "Following" :*/
fileprivate let str_insideData:String = "let if make path letFollo"

/*: "nav_back_black_nor" :*/
fileprivate let str_balanceData:String = "nav_back_text self text"
fileprivate let str_sendValue:[Character] = ["b","l","a","c","k","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AssemblageThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TalkingFavouriteViewController: TalkingBaseViewController {
class AssemblageThen: PropertyViewController {
	var modeCount: Int = 84
	var occupyText: String = "donation"
	var startArray: [AnyHashable] = []

    var wiseImageView: UIImageView?

    //: var currentIndex = 0
    var currentIndex = 0
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: createUI()
        tabularMatter()
        //: layoutSubViewsConstraints()
        communication()

        wiseImageView = UIImageView(frame: self.view.frame.standardized)
        if let wiseImageView = wiseImageView {
            self.wiseImageView?.image = UIImage(named: (String(str_outsideData) + str_giftName.replacingOccurrences(of: "hidden", with: "g")))
            if (!wiseImageView.canBecomeFocused && wiseImageView.isFocused) && (wiseImageView.keyCommands != nil && wiseImageView.keyCommands!.count == 7) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(wiseImageView)
            }
        }
    
            if (pagerView.convert(CGRect(x: 0, y: CGFloat(62), width: 0, height: 0), to: pagerView.superview).origin.x == 66.69) && (pagerView.convert(CGRect(x: CGFloat(0), y: CGFloat(248.97), width: CGFloat(0), height: CGFloat(87)), to: pagerView.superview).size.height == 34.89) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let listName = ViewBarView()
            listName.genreDestroySwitch = self.hideNavi

            
            listName.premiumInterval = { [self] rowNumber in
            self.modeCount = rowNumber
            
            var listName = currentIndex
            listName &*= 9
            if listName < self.modeCount {
                self.modeCount = listName
            }
            
            return self.modeCount
            }
            listName.indexText = { [self] writeText in
            self.occupyText = writeText
            
            let atStar = self.occupyText.prefix(through: self.occupyText.index(self.occupyText.startIndex, offsetBy: self.occupyText.lowercased().count)).isEmpty
            self.occupyText.removeAll(keepingCapacity: atStar)
            return self.occupyText
            }
            listName.progressArray = { [self] reArray in
            self.startArray = reArray
            
            guard var value = self.startArray as? [String] else {
                return nil
            }
            return value
            }
                pagerView.addSubview(listName)
            }

	}

    // MARK: - Lazy load

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 50, y: StatusBarHeight, width: ScreenWidth-100, height: actualHeight(h: 54)))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 50, y: a_limitRecordScreenName, width: a_blockValue - 100, height: actualHeight(h: 54)))
//        segmentedDataSource.itemWidth = ScreenWidth/2
//        segmentedDataSource.itemSpacing = 0
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = true
        segmentedDataSource.isItemSpacingAverageEnabled = true
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (str_countBlackData.capitalized + str_layerTargetText.capitalized))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (String(str_contentImageData)))!
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .thoughtImage(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 20)
        segmentedDataSource.titleSelectedFont = .thoughtImage(type: .Medium, fontSize: 20)
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 8
        indicator.verticalOffset = 8
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (String(str_contentImageData)))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.defaultSelectedIndex = currentIndex
        segmentedView.defaultSelectedIndex = currentIndex
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: a_limitRecordScreenName, width: a_blockValue, height: a_formalValue - a_limitRecordScreenName)
        //: view.defaultSelectedIndex = currentIndex
        view.defaultSelectedIndex = currentIndex
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = //: return ["Followers".localized, "Following".localized]
        [(String(str_fromName)).localized, (String(str_insideData.suffix(5)) + "wing").localized]
    //: }()

    //: private lazy var dataVC: [TalkingBaseViewController] = {
    private lazy var dataVC: [PropertyViewController] = //: return [AtObjectProtocol(), ImageDataSource()]
        [AtObjectProtocol(), ImageDataSource()]
    //: }()

    //: private lazy var backButton: UIButton = {
    private lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.outsideText(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.outsideText(name: (String(str_balanceData.prefix(9)) + String(str_sendValue))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .black
        btn.tintColor = .black
        //: btn.addTarget(self, action: #selector(backButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickCurrent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - JXSegmentedViewDelegate

//: extension TalkingFavouriteViewController: JXSegmentedViewDelegate {
extension AssemblageThen: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt _: Int) {}

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingFavouriteViewController: JXPagingViewDelegate {
extension AssemblageThen: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: popularVC.hideNavi = true
        popularVC.hideNavi = true
        //: return popularVC as! JXPagingViewListViewDelegate
        return popularVC as! JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Event

//: extension TalkingFavouriteViewController {
extension AssemblageThen {
    /// 返回按钮事件
    //: @objc private func backButtonClick() {
    @objc private func clickCurrent() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: - UI

//: extension TalkingFavouriteViewController {
extension AssemblageThen {
    //: private func createUI() {
    private func tabularMatter() {
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(backButton)
        categoryView.addSubview(backButton)
    }

    //: private func layoutSubViewsConstraints() {
    private func communication() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.centerY.equalToSuperview()
            make.leading.centerY.equalToSuperview()
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(44)
            make.height.equalTo(44)
        }
    }
}
