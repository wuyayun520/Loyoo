
//: Declare String Begin

/*: "view_image" :*/
fileprivate let str_transformData:String = "view_imeffect view"
fileprivate let str_giftData:String = "AGE"

/*: "EmptyCollectionReusableView" :*/
fileprivate let str_imageTitle:String = "Emptextension kind else"
fileprivate let str_fillModeContent:String = "bag model import listctionR"
fileprivate let str_sizeTitle:String = "let title execute else superbleVi"
fileprivate let str_toolName:[Character] = ["e","w"]

/*: "In order to find friends nearby please allow the access of your location." :*/
fileprivate let str_itemName:[UInt8] = [0x49,0x6e,0x20,0x6f,0x72,0x64,0x65,0x72,0x20,0x74,0x6f,0x20,0x66,0x69,0x6e,0x64,0x20,0x66,0x72,0x69,0x65,0x6e,0x64,0x73,0x20,0x6e,0x65,0x61,0x72,0x62,0x79,0x20,0x70,0x6c,0x65,0x61,0x73,0x65,0x20,0x61,0x6c,0x6c,0x6f,0x77,0x20,0x74,0x68,0x65,0x20,0x61,0x63,0x63,0x65,0x73,0x73,0x20,0x6f,0x66,0x20,0x79,0x6f,0x75,0x72,0x20,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x2e]

/*: "You've got no list yet." :*/
fileprivate let str_modelPresentData:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n"]
fileprivate let str_numberTimeTitle:[Character] = ["o"," ","l","i","s","t"," ","y","e","t","."]

/*: , :*/
fileprivate let str_createData:String = "current"

/*: "Say hi successfully~" :*/
fileprivate let str_feedbackData:[Character] = ["S","a","y"," ","h","i"," ","s","u","c"]
fileprivate let str_frameLeadingValue:String = "cewhitewhitef"

/*: "Shielding Success" :*/
fileprivate let str_freeName:String = "Shiebar let"
fileprivate let str_countryTitle:String = " Succmanager app"
fileprivate let str_tabValue:String = "etitle"

/*: "lng" :*/
fileprivate let str_windowValue:[UInt8] = [0x6c,0x6e,0x67]

/*: "lat" :*/
fileprivate let str_kitContent:[UInt8] = [0x74,0x61,0x6c]

/*: "Enter “Settings” and open “Location” permission to use function normally." :*/
fileprivate let str_addData:[UInt8] = [0x45,0x6e,0x74,0x65,0x72,0x20,0xe2,0x80,0x9c,0x53,0x65,0x74,0x74,0x69,0x6e,0x67,0x73,0xe2,0x80,0x9d,0x20,0x61,0x6e,0x64,0x20,0x6f,0x70,0x65,0x6e,0x20,0xe2,0x80,0x9c,0x4c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0xe2,0x80,0x9d,0x20,0x70,0x65,0x72,0x6d,0x69,0x73,0x73,0x69,0x6f,0x6e,0x20,0x74,0x6f,0x20,0x75,0x73,0x65,0x20,0x66,0x75,0x6e,0x63,0x74,0x69,0x6f,0x6e,0x20,0x6e,0x6f,0x72,0x6d,0x61,0x6c,0x6c,0x79,0x2e]

/*: "Cancel" :*/
fileprivate let str_statusPageName:String = "user timeCancel"

/*: "Settings" :*/
fileprivate let str_verticalName:[Character] = ["S","e","t","t","i","n"]
fileprivate let str_mainTitle:[Character] = ["g","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LeadingViewProtocol.swift
//  AbroadTalking
//
//  Created by young on 2022/8/29.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: typealias ScrollCallback = (_ scrollView: UIScrollView) -> Void
typealias ScrollCallback = (_ scrollView: UIScrollView) -> Void

//: class SocialPopularViewController: TalkingBaseViewController {
class LeadingViewProtocol: PropertyViewController {
	var predatoryAnimalSum: Double = 33.5
	var charmTitle: String = "user"
	var communicateArray: [AnyHashable] = []
	var sectionFieldDictionary: [AnyHashable: String] = [:]

    var explainImageView: UIImageView?

    //: var isgetPlayerCell = false
    var isgetPlayerCell = false
    //: var playerCell = NSArray()
    var playerCell = NSArray() // 播放介绍视频
    //: var cunrrenplayerIndex = 0
    var cunrrenplayerIndex = 0 // 播放介绍视频位置

    //: var isFreshPlayerCell = false
    var isFreshPlayerCell = false // 刷新时加载介绍视频播放
    //: var isFirstUpload = true
    var isFirstUpload = true // 初次上报曝光次数

    //: var seleteBlobkModel: SocialUserListModel?
    var seleteBlobkModel: MeasurementHandyJSON? // 拉黑选中数据
    // header
    //: var headerView: SocialHeaderView?
    var headerView: DenominateReactiveCompatible?

    //: var scrollback: ScrollCallback?
    var scrollback: ScrollCallback?
    // 页面类型
    //: var tabType: SocialTab?
    var tabType: ModelCustomReflectable?

    // bannner
    //: var footerView: SocialPopularListFooterView?
    var footerView: LaterCellView?

    //: var userVisibleCells: [UICollectionViewCell]?
    var userVisibleCells: [UICollectionViewCell]?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        succeedWill()
        //: setupSubViewsConstraint()
        alongNameOf()
        //: addNotification()
        overReceive()

        //: switch (tabType) {
        switch tabType {
        //: case .hot:
        case .hot:

            //: firstLoadData()
            notLoadCell()
        //: case .nearby:
        case .nearby:
            //: checkLocationAuth()
            beyondRemoveAuth()
        //: case .new:
        case .new:
            //: self.firstLoadData()
            self.notLoadCell()
        //: case .none: break
        case .none: break
        }
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }

        explainImageView = UIImageView(frame: self.view.frame.standardized)
        if let explainImageView = explainImageView {
            self.explainImageView?.image = UIImage(named: (String(str_transformData.prefix(7)) + str_giftData.lowercased()))
            if (explainImageView.layer.anchorPoint.x != 0.5) && (explainImageView.isMultipleTouchEnabled) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(explainImageView)
            }
        }
    
		if var scaleOfMeasurementValue = self.seleteBlobkModel?.signature { 
	            if (self.prefersStatusBarHidden) && (self.modalPresentationCapturesStatusBarAppearance) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let bagPhone = ThanOfController()
	            
	            bagPhone.topQuantity = { [self] brandSum in
	            self.predatoryAnimalSum = brandSum
	            
	            return self.predatoryAnimalSum
	            }
	            bagPhone.requestAddText = { [self] textText in
	            self.charmTitle = textText
	            
	            var bagPhone = scaleOfMeasurementValue
	            if bagPhone < bagPhone.lowercased() + "block" {
	                print(bagPhone)
	            }
	            if bagPhone.contains(self.charmTitle) {
	                self.charmTitle = bagPhone
	            }
	            
	            return self.charmTitle
	            }
	            bagPhone.scopeSuccessArray = { [self] userTimeCellArray in
	            self.communicateArray = userTimeCellArray
	            
	            guard var value = self.communicateArray as? [String] else {
	                return nil
	            }
	            return value
	            }
	            bagPhone.clickDictionary = { [self] collectionDictionary in
	            self.sectionFieldDictionary = collectionDictionary
	            
	            guard var value = self.sectionFieldDictionary as? [String: String] else {
	                return nil
	            }
	            return value
	            }
	                self.navigationController?.pushViewController(bagPhone.self, animated: false)
	            }
	
		}
	}

    //: deinit {
    deinit {
        //: TalkingLocationManager.destroy()
        EqualLocationManager.byTipEnd()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var reqManager: SocialRequestManager = {
    private lazy var reqManager: GoldRequestManager = //: return GoldRequestManager()
        .init()
    //: }()

    //: public lazy var collectionView: UICollectionView = {
    public lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 9
        layout.minimumLineSpacing = 9
        //: layout.minimumInteritemSpacing = 9
        layout.minimumInteritemSpacing = 9
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.register(SocialPopularListCell.self,
        collectionView.register(GesturePlayerDelegate.self,
                                //: forCellWithReuseIdentifier: SocialPopularListCell.className())
                                forCellWithReuseIdentifier: GesturePlayerDelegate.className())
        //: collectionView.register(SocialHeaderView.self,
        collectionView.register(DenominateReactiveCompatible.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: SocialHeaderView.className())
                                withReuseIdentifier: DenominateReactiveCompatible.className())
        //: collectionView.register(SocialPopularListFooterView.self,
        collectionView.register(LaterCellView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                //: withReuseIdentifier: SocialPopularListFooterView.className())
                                withReuseIdentifier: LaterCellView.className())
        //: collectionView.register(UICollectionReusableView.self,
        collectionView.register(UICollectionReusableView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: "EmptyCollectionReusableView")
                                withReuseIdentifier: (String(str_imageTitle.prefix(4)) + "yColle" + String(str_fillModeContent.suffix(6)) + "eusa" + String(str_sizeTitle.suffix(5)) + String(str_toolName)))
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: collectionView.addHeaderRefresh { [weak self] in
        collectionView.thumbPunctuate { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.signature()
        }
        //: collectionView.addFooterRefresh { [weak self] in
        collectionView.queryComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.nowItem()
        }
        //: return collectionView
        return collectionView
        //: }()
    }()

    //: private lazy var emptyV: SocialEmptyView = {
    private lazy var emptyV: CubeEmptyView = {
        //: let v = SocialEmptyView()
        let v = CubeEmptyView()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension SocialPopularViewController {
extension LeadingViewProtocol {
    // MARK: - Load data

    /// 首次进入页面
    //: private func firstLoadData() {
    private func notLoadCell() {
        //: headerRefresh()
        signature()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: self.load_adBanner()
            self.packBanner()
        }
    }

    /// 列表数据
    //: private func headerRefresh() {
    private func signature() {
        //: reqManager.listPage = 0
        reqManager.listPage = 0
        //: self.isFreshPlayerCell = true
        self.isFreshPlayerCell = true
        //: seleteHideBlock()
        toolState()
        //: load_listData()
        toData()

        //: firstLoad_premiumStarList()
        addressStart()
    }

    //: private func footerRefresh() {
    private func nowItem() {
        //: reqManager.listPage += 1
        reqManager.listPage += 1
        //: load_listData()
        toData()
    }

    //: private func load_listData() {
    private func toData() {
        //: reqManager.req_socialList(tab: tabType ?? .hot) { [weak self] succeed, result, errorModel in
        reqManager.societal(tab: tabType ?? .hot) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.collectionView.endRefresh()
            self.collectionView.infoTo()
            //: self.refreshViewStatus()
            self.doingQuantityeraction()

            //: let arr = result as? Array<Any> ?? []
            let arr = result as? [Any] ?? []
            //: if arr.count == 0 {
            if arr.count == 0 {
                //: self.collectionView.mj_footer = nil
                self.collectionView.mj_footer = nil
                //: } else {
            } else {
                //: if self.collectionView.mj_footer == nil {
                if self.collectionView.mj_footer == nil {
                    //: self.collectionView.addFooterRefresh {
                    self.collectionView.queryComplection {
                        //: self.footerRefresh()
                        self.nowItem()
                    }
                }
            }
            /// 当拉黑数据过多，返回数据小于6个时，从下一页获取数据，最多3次
            //: if self.reqManager.haveReq < self.reqManager.maxReq && self.reqManager.section1Data.count <= 2 && arr.count > 0 {
            if self.reqManager.haveReq < self.reqManager.maxReq, self.reqManager.section1Data.count <= 2, arr.count > 0 {
                //: self.reqManager.haveReq += 1
                self.reqManager.haveReq += 1
                //: self.footerRefresh()
                self.nowItem()
                //: } else {
            } else {
                //: self.reqManager.haveReq = 0
                self.reqManager.haveReq = 0
            }
        }
    }

    /// 巨星计划接口
    //: private func firstLoad_premiumStarList() {
    private func addressStart() {
        //: reqManager.premiumStarPage = 0
        reqManager.premiumStarPage = 0
        //: reqManager.premiumStarCanLoadMore = true
        reqManager.premiumStarCanLoadMore = true
        //: reqManager.premiumStarIsLoading = false
        reqManager.premiumStarIsLoading = false
        //: load_premiumStarList()
        ladenVideoListing()
    }

    //: private func loadMore_premiumStarList() {
    private func cropList() {
        //: guard reqManager.premiumStarCanLoadMore else { return }
        guard reqManager.premiumStarCanLoadMore else { return }
        //: reqManager.premiumStarPage += 1
        reqManager.premiumStarPage += 1
        //: load_premiumStarList()
        ladenVideoListing()
    }

    //: private func load_premiumStarList() {
    private func ladenVideoListing() {
        //: reqManager.req_premiumStarList { [weak self] succeed, result, errorModel in
        reqManager.fromShoppingList { [weak self] _, _, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerView?.refreshPremiumStarView(data: self.reqManager.premiumStarListData)
            self.footerView?.scale(data: self.reqManager.premiumStarListData)
            //: if self.reqManager.premiumStarPage == 0 {
            if self.reqManager.premiumStarPage == 0 {
                //: self.refreshViewStatus()
                self.doingQuantityeraction()
            }
        }
    }

    /// 广告banner数据
    //: private func load_adBanner() {
    private func packBanner() {
        //: reqManager.req_adBanner(position: 1) { [weak self] succeed, result, errorModel in
        reqManager.headNet(position: 1) { [weak self] _, _, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerView?.refreshBannerView(data: self.reqManager.adBannerListData)
            self.footerView?.makeDirection(data: self.reqManager.adBannerListData)
            //: self.refreshViewStatus()
            self.doingQuantityeraction()
        }
    }

    /// 刷新视图状态
    //: private func refreshViewStatus() {
    private func doingQuantityeraction() {
        // 是否开启定位判断缺省图
        //: if self.tabType == .nearby {
        if self.tabType == .nearby {
            //: if TalkingLocationManager.shared().locationType != .alwaysAllowed {
            if EqualLocationManager.sinceRequest().locationType != .alwaysAllowed {
                //: self.emptyV.isHidden = false
                self.emptyV.isHidden = false
                //: self.emptyV.desLab.text = "In order to find friends nearby please allow the access of your location.".localized
                self.emptyV.desLab.text = String(bytes: str_itemName, encoding: .utf8)!.localized
                //: self.collectionView.mj_footer = nil
                self.collectionView.mj_footer = nil

                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
                //: return
                return
            }
        }

        // 是否有数据判断缺省图
        //: if self.reqManager.section0Data.count == 0 &&
        if self.reqManager.section0Data.count == 0,
           //: self.reqManager.premiumStarListData.count == 0 &&
           self.reqManager.premiumStarListData.count == 0,
           //: self.reqManager.adBannerListData.count == 0 {
           self.reqManager.adBannerListData.count == 0
        {
            //: self.emptyV.isHidden = false
            self.emptyV.isHidden = false
            //: self.emptyV.desLab.text = "You've got no list yet.".localized
            self.emptyV.desLab.text = (String(str_modelPresentData) + String(str_numberTimeTitle)).localized
            //: } else {
        } else {
            //: self.emptyV.isHidden = true
            self.emptyV.isHidden = true
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()

        //: if isFirstUpload {
        if isFirstUpload {
            //: isFirstUpload = false
            isFirstUpload = false
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
                //: self.uploadUserListCover()
                self.highGround()
            }
        }
    }
}

// MARK: - 通知事件

//: extension  SocialPopularViewController {
extension LeadingViewProtocol {
    //: @objc private func searchDetailRefreshNotification() {
    @objc private func startMore() {
        //: collectionView.mj_header?.beginRefreshing()
        collectionView.mj_header?.beginRefreshing()
    }
}

// MARK: - JXSegmentedListContainerViewListDelegate

//: extension SocialPopularViewController: JXPagingViewListViewDelegate {
extension LeadingViewProtocol: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.collectionView
        return self.collectionView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
        //: self.scrollback = callback
        self.scrollback = callback
    }
}

// MARK: - UICollectionViewDelegate

//: extension SocialPopularViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension LeadingViewProtocol: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 2
        return 2
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: guard self.emptyV.isHidden else {
        guard self.emptyV.isHidden else {
            //: return 0
            return 0
        }

        //: if section == 0 {
        if section == 0 {
            //: return reqManager.section0Data.count
            return reqManager.section0Data.count
            //: } else {
        } else {
            //: return reqManager.section1Data.count
            return reqManager.section1Data.count
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SocialPopularListCell.className(), for: indexPath) as! SocialPopularListCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GesturePlayerDelegate.className(), for: indexPath) as! GesturePlayerDelegate
        //: var model: SocialUserListModel?
        var model: MeasurementHandyJSON?
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: model = reqManager.section0Data[indexPath.row]
            model = reqManager.section0Data[indexPath.row]
            //: } else {
        } else {
            //: model = reqManager.section1Data[indexPath.row]
            model = reqManager.section1Data[indexPath.row]
        }
        //: cell.delegate = self
        cell.delegate = self
        //: cell.refreshCell(model)
        cell.dayCell(model)
        //: if seleteBlobkModel != nil &&  seleteBlobkModel?.uid == model?.uid {
        if seleteBlobkModel != nil && seleteBlobkModel?.uid == model?.uid {
            //: cell.blockBackView.isHidden = false
            cell.blockBackView.isHidden = false
            //: } else {
        } else {
            //: cell.blockBackView.isHidden = true
            cell.blockBackView.isHidden = true
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            //: var model: SocialUserListModel?
            var model: MeasurementHandyJSON?
            //: if indexPath.section == 0 {
            if indexPath.section == 0 {
                //: model = self.reqManager.section0Data[indexPath.row]
                model = self.reqManager.section0Data[indexPath.row]
                //: } else {
            } else {
                //: model = self.reqManager.section1Data[indexPath.row]
                model = self.reqManager.section1Data[indexPath.row]
            }
            //: if  self.seleteBlobkModel == nil || self.seleteBlobkModel?.uid != model?.uid {
            if self.seleteBlobkModel == nil || self.seleteBlobkModel?.uid != model?.uid {
                //: if model?.liveStatus == true {
                if model?.liveWinJumpPos == 1 {
                    //: LimitPushManager.share.func_audiencePushToLiveRoomVC(uid: String(model?.uid ?? 0), enterType: .unknown)
                    LimitPushManager.share.versionText(uid: String(model?.uid ?? 0), enterType: .unknown)
                    //: }else {
                } else {
                    //: LimitPushManager.share.func__pushToUserDetailVC(uid: "\(model?.uid ?? 0)")
                    LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: "\(model?.uid ?? 0)")
                }

                //: if self.tabType == .hot {
                if self.tabType == .hot {
                    //: uploadRecord.uploadRecordEvent(eventID: ClickUserListCoverNoP, toUid: "\(model?.uid ?? 0)")
                    a_textTurnName.photoOf(eventID: a_gameTitle, toUid: "\(model?.uid ?? 0)")
                }
            }
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: let width = Float((ScreenWidth-26-9)/2)
        let width = Float((a_blockValue - 26 - 9) / 2)
        //: return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width*221/170)))
        return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width * 221 / 170)))
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "EmptyCollectionReusableView", for: indexPath)
            return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(str_imageTitle.prefix(4)) + "yColle" + String(str_fillModeContent.suffix(6)) + "eusa" + String(str_sizeTitle.suffix(5)) + String(str_toolName)), for: indexPath)
        }

        //: if kind == UICollectionView.elementKindSectionHeader {
        if kind == UICollectionView.elementKindSectionHeader {
            //: headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
            headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
                                                                         //: withReuseIdentifier: SocialHeaderView.className(),
                                                                         withReuseIdentifier: DenominateReactiveCompatible.className(),
                                                                         //: for: indexPath) as? SocialHeaderView
                                                                         for: indexPath) as? DenominateReactiveCompatible
            //            headerView?.delegate = self
            //: return headerView!
            return headerView!
            //: } else if kind == UICollectionView.elementKindSectionFooter {
        } else if kind == UICollectionView.elementKindSectionFooter {
            //: footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter,
            footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter,
                                                                         //: withReuseIdentifier: SocialPopularListFooterView.className(),
                                                                         withReuseIdentifier: LaterCellView.className(),
                                                                         //: for: indexPath) as? SocialPopularListFooterView
                                                                         for: indexPath) as? LaterCellView
            //: footerView?.delegate = self
            footerView?.delegate = self
            //: return footerView!
            return footerView!
            //: } else {
        } else {
            //: return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "EmptyCollectionReusableView", for: indexPath)
            return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(str_imageTitle.prefix(4)) + "yColle" + String(str_fillModeContent.suffix(6)) + "eusa" + String(str_sizeTitle.suffix(5)) + String(str_toolName)), for: indexPath)
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        //: if section == 0 {
        if section == 0 {
            //: return CGSize(width: ScreenWidth, height: SocialHeaderView.getSelfHeight()+13)
            return CGSize(width: a_blockValue, height: DenominateReactiveCompatible.showHeight() + 13)
            //: } else {
        } else {
            //: return CGSize.zero
            return CGSize.zero
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        //: if section == 0 {
        if section == 0 {
            //: return CGSize(width: ScreenWidth, height: footerView?.getFooterViewHeight() ?? 0.01)
            return CGSize(width: a_blockValue, height: footerView?.squareObject() ?? 0.01)
            //: } else {
        } else {
            //: return CGSize.zero
            return CGSize.zero
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        // 下拉刷新时
        //: let limitCount = KDeviceIsIphoneX ? 6:4
        let limitCount = a_netName ? 6 : 4
        //: var count = 0
        var count = 0
        //: if reqManager.section0Data.count > limitCount {
        if reqManager.section0Data.count > limitCount {
            //: count = limitCount
            count = limitCount
            //: } else if reqManager.section0Data.count <= limitCount {
        } else if reqManager.section0Data.count <= limitCount {
            //: count = reqManager.section0Data.count-1
            count = reqManager.section0Data.count - 1
        }

        //: let videocell: SocialPopularListCell = cell as! SocialPopularListCell
        let videocell: GesturePlayerDelegate = cell as! GesturePlayerDelegate

        //: videocell.stopPlay()
        videocell.collideWithPlay()
        //: if MeasurementAppManager.share.appConfigMode.showVideoInList && MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue &&
        if MeasurementAppManager.share.appConfigMode.showVideoInList && MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue &&
            //: indexPath.row == count && self.isFreshPlayerCell {
            indexPath.row == count && self.isFreshPlayerCell
        {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: self.scrollViewEndScrollPlayer(scrollView: self.collectionView, istopfresh: true)
                self.orientationIstopfresh(scrollView: self.collectionView, istopfresh: true)
            }
        }
    }
}

// MARK: - UIScrollViewDelegate

//: extension SocialPopularViewController: UIScrollViewDelegate {
extension LeadingViewProtocol: UIScrollViewDelegate {
    /// 上传封面曝光次数
    //: func uploadUserListCover() {
    func highGround() {
        //: var temparray = [SocialPopularListCell]()
        var temparray = [GesturePlayerDelegate]()
        //: let array = collectionView.visibleCells
        let array = collectionView.visibleCells
        //: let limitLine = KDeviceIsIphoneX ? 3:2
        let limitLine = a_netName ? 3 : 2
        //: for index in 0..<array.count {
        for index in 0 ..< array.count {
            /// 当前页面显示的
            //: let cell: SocialPopularListCell = array[index] as! SocialPopularListCell
            let cell: GesturePlayerDelegate = array[index] as! GesturePlayerDelegate
            //: if cell.origin.y >= collectionView.contentOffset.y-10 && cell.origin.y < collectionView.contentOffset.y + cell.size.height*CGFloat(limitLine) {
            if cell.origin.y >= collectionView.contentOffset.y - 10 && cell.origin.y < collectionView.contentOffset.y + cell.size.height * CGFloat(limitLine) {
                //: temparray.append(cell)
                temparray.append(cell)
            }
        }
        /// 过滤已经上报过的
        //: if self.userVisibleCells?.count ?? 0 > 0 {
        if self.userVisibleCells?.count ?? 0 > 0 {
            //: for i in 0..<userVisibleCells!.count {
            for i in 0 ..< userVisibleCells!.count {
                //: let celli: SocialPopularListCell = userVisibleCells?[i] as! SocialPopularListCell
                let celli: GesturePlayerDelegate = userVisibleCells?[i] as! GesturePlayerDelegate
                //: temparray.removeAll { $0.currentModel?.uid == celli.currentModel?.uid }
                temparray.removeAll { $0.currentModel?.uid == celli.currentModel?.uid }
            }
        }
        //: var toUid  = ""
        var toUid = ""
        //: for z in 0..<temparray.count {
        for z in 0 ..< temparray.count {
            //: let cellz: SocialPopularListCell = temparray[z]
            let cellz: GesturePlayerDelegate = temparray[z]
            //: if toUid.count > 0 {
            if toUid.count > 0 {
                //: toUid = "\(toUid),\(cellz.currentModel?.uid ?? 0)"
                toUid = "\(toUid),\(cellz.currentModel?.uid ?? 0)"
                //: } else {
            } else {
                //: toUid = "\(cellz.currentModel?.uid ?? 0)"
                toUid = "\(cellz.currentModel?.uid ?? 0)"
            }
        }
        //: if toUid.count > 0 {
        if toUid.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayUserListNoP, toUid: toUid)
            a_textTurnName.photoOf(eventID: a_videoKeyText, toUid: toUid)
            //: self.userVisibleCells = temparray
            self.userVisibleCells = temparray
        }
    }

    //: func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //: if scrollView.contentOffset.y < -5 {
        if scrollView.contentOffset.y < -5 {
            //: return
            return
        }
        //: scrollViewEndScrollPlayer(scrollView: scrollView, istopfresh: false)
        orientationIstopfresh(scrollView: scrollView, istopfresh: false)
    }

    //: func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        //: if !decelerate {
        if !decelerate {
            //: if scrollView.contentOffset.y < -5 {
            if scrollView.contentOffset.y < -5 {
                //: return
                return
            }
            //: scrollViewEndScrollPlayer(scrollView: scrollView, istopfresh: false)
            orientationIstopfresh(scrollView: scrollView, istopfresh: false)
        }
        //: uploadUserListCover()
        highGround()
    }

    /// 视频动态在屏幕中间时播放
    //: func scrollViewEndScrollPlayer(scrollView: UIScrollView, istopfresh: Bool) {
    func orientationIstopfresh(scrollView: UIScrollView, istopfresh _: Bool) {
        //: if MeasurementAppManager.share.appConfigMode.showVideoInList && MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if MeasurementAppManager.share.appConfigMode.showVideoInList && MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue {
            //: if isgetPlayerCell {
            if isgetPlayerCell {
                //: return
                return
            }
            //: let array = collectionView.visibleCells
            let array = collectionView.visibleCells
            //: isgetPlayerCell = true
            isgetPlayerCell = true
            //: let celldataAM = NSMutableArray.init()
            let celldataAM = NSMutableArray()
            //: let limitLine = KDeviceIsIphoneX ? 3:2
            let limitLine = a_netName ? 3 : 2
            //: for index in 0..<array.count {
            for index in 0 ..< array.count {
                //: let cell: SocialPopularListCell = array[index] as! SocialPopularListCell
                let cell: GesturePlayerDelegate = array[index] as! GesturePlayerDelegate
                //: if cell.origin.y >= scrollView.contentOffset.y-10 && cell.origin.y < scrollView.contentOffset.y + cell.size.height*CGFloat(limitLine) {
                if cell.origin.y >= scrollView.contentOffset.y - 10 && cell.origin.y < scrollView.contentOffset.y + cell.size.height * CGFloat(limitLine) {
                    //: let indexpath = collectionView.indexPath(for: cell)
                    let indexpath = collectionView.indexPath(for: cell)
                    //: var model: SocialUserListModel
                    var model: MeasurementHandyJSON
                    //: if indexpath?.section == 0 {
                    if indexpath?.section == 0 {
                        //: model = reqManager.section0Data[indexpath!.row]
                        model = reqManager.section0Data[indexpath!.row]
                        //: } else {
                    } else {
                        //: model = reqManager.section1Data[indexpath!.row]
                        model = reqManager.section1Data[indexpath!.row]
                    }
                    //: if model.videoUrl.count > 0 {
                    if model.videoUrl.count > 0 {
                        //: celldataAM.append(cell)
                        celldataAM.append(cell)
                    }
                }
            }

            //: for i in 0..<celldataAM.count {
            for i in 0 ..< celldataAM.count {
                //: for j in 0..<celldataAM.count - 1 - i {
                for j in 0 ..< celldataAM.count - 1 - i {
                    //: let tNumber1: SocialPopularListCell = celldataAM[j] as! SocialPopularListCell
                    let tNumber1: GesturePlayerDelegate = celldataAM[j] as! GesturePlayerDelegate
                    //: let tNumber2: SocialPopularListCell = celldataAM[j+1] as! SocialPopularListCell
                    let tNumber2: GesturePlayerDelegate = celldataAM[j + 1] as! GesturePlayerDelegate
                    //: if tNumber1.origin.y > tNumber2.origin.y || (tNumber1.origin.y == tNumber2.origin.y && tNumber1.origin.x > tNumber2.origin.x) {
                    if tNumber1.origin.y > tNumber2.origin.y || (tNumber1.origin.y == tNumber2.origin.y && tNumber1.origin.x > tNumber2.origin.x) {
                        //: let tmp = celldataAM[j]
                        let tmp = celldataAM[j]
                        //: celldataAM[j] = tNumber2
                        celldataAM[j] = tNumber2
                        //: celldataAM[j+1] = tmp
                        celldataAM[j + 1] = tmp
                    }
                }
            }
            //: if celldataAM.count>0 {
            if celldataAM.count > 0 {
                //: if self.playerCell != celldataAM.copy() as! NSArray {
                if self.playerCell != celldataAM.copy() as! NSArray {
                    // 去掉之前播放
                    //: if self.playerCell.count>0 {
                    if self.playerCell.count > 0 {
                        //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                        let cell: GesturePlayerDelegate = self.playerCell[self.cunrrenplayerIndex] as! GesturePlayerDelegate
                        //: cell.stopPlay()
                        cell.collideWithPlay()
                    }
                    //: self.playerCell  = celldataAM.copy() as! NSArray
                    self.playerCell = celldataAM.copy() as! NSArray
                    //: self.cunrrenplayerIndex = 0
                    self.cunrrenplayerIndex = 0
                    //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                    let cell: GesturePlayerDelegate = self.playerCell[self.cunrrenplayerIndex] as! GesturePlayerDelegate
                    //: let indexpath = collectionView.indexPath(for: cell)
                    let indexpath = collectionView.indexPath(for: cell)
                    //: var model: SocialUserListModel
                    var model: MeasurementHandyJSON
                    //: if indexpath?.section == 0 {
                    if indexpath?.section == 0 {
                        //: model = reqManager.section0Data[indexpath!.row]
                        model = reqManager.section0Data[indexpath!.row]
                        //: } else {
                    } else {
                        //: model = reqManager.section1Data[indexpath!.row]
                        model = reqManager.section1Data[indexpath!.row]
                    }
                    //: cell.configModel(videoUrl: model.videoUrl, imgUrl: model.cover)
                    cell.successUrl(videoUrl: model.videoUrl, imgUrl: model.cover)
                    //: cell.setupPlayer()
                    cell.addPlayer()
                }
                //: } else {
            } else {
                //: if self.playerCell.count>0 {
                if self.playerCell.count > 0 {
                    //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                    let cell: GesturePlayerDelegate = self.playerCell[self.cunrrenplayerIndex] as! GesturePlayerDelegate
                    //: cell.stopPlay()
                    cell.collideWithPlay()
                    //: self.playerCell = NSArray()
                    self.playerCell = NSArray()
                }
            }
            //: self.isgetPlayerCell = false
            self.isgetPlayerCell = false
            //: self.isFreshPlayerCell = false
            self.isFreshPlayerCell = false
        }
    }
}

// MARK: - SocialReactiveCompatible

//: extension SocialPopularViewController: SocialPopularListCellDelegate {
extension LeadingViewProtocol: SocialReactiveCompatible {
    /// 播打视频
    //: func chtToUser(model: SocialUserListModel) {
    func dataTrack(model: MeasurementHandyJSON) {
        //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: "\(model.uid)")
        LimitPushManager.share.sharedMode(chatID: "\(model.uid)")
    }

    /// 快速打招呼
    //: func greetToUser(uid: String) {
    func observeWithoutConsumer(uid: String) {
        //: let vc = TalkingPrivateChatController(chatID: uid)
        let vc = DoingRecognizerDelegate(chatID: uid)
        //: vc.func_sendQuickGreetingMsg()
        vc.quick()
        //: vc.QuickEndBlock = { [weak self] isSuccess in
        vc.QuickEndBlock = { [weak self] isSuccess in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !isSuccess {
            if !isSuccess {
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
                //: return
                return
            }
            //: self.func__showStatusBarSuccessMsg(showMsg: "Say hi successfully~".localized)
            self.afterTitle(showMsg: (String(str_feedbackData) + str_frameLeadingValue.replacingOccurrences(of: "white", with: "s") + "ully~").localized)
            //: for i in 0..<reqManager.section0Data.count {
            for i in 0 ..< reqManager.section0Data.count {
                //: let model = reqManager.section0Data[i]
                let model = reqManager.section0Data[i]
                //: if "\(model.uid)" == uid {
                if uid == "\(model.uid)" {
                    //: model.sendQuickMsg = 1
                    model.sendQuickMsg = 1
                    //: reqManager.section0Data[i] = model
                    reqManager.section0Data[i] = model
                }
            }
            //: for i in 0..<reqManager.section1Data.count {
            for i in 0 ..< reqManager.section1Data.count {
                //: let model = reqManager.section1Data[i]
                let model = reqManager.section1Data[i]
                //: if "\(model.uid)" == uid {
                if uid == "\(model.uid)" {
                    //: model.sendQuickMsg = 1
                    model.sendQuickMsg = 1
                    //: reqManager.section1Data[i] = model
                    reqManager.section1Data[i] = model
                }
            }
            //: self.collectionView.reloadData()
            self.collectionView.reloadData()
        }
    }

    //: func seleteBlockTool(model: SocialUserListModel) {
    func enterModel(model: MeasurementHandyJSON) {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: "\(model.uid)", isBlack: true) { succeed, result, errorModel in
        ConsumerRequestManager.nextIn(uid: "\(model.uid)", isBlack: true) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: for (index, tempModel) in self.reqManager.section0Data.enumerated() {
                for (index, tempModel) in self.reqManager.section0Data.enumerated() {
                    //: if model.uid == tempModel.uid {
                    if model.uid == tempModel.uid {
                        //: self.reqManager.section0Data.remove(at: index)
                        self.reqManager.section0Data.remove(at: index)
                    }
                }
                //: for (index, tempModel) in self.reqManager.section1Data.enumerated() {
                for (index, tempModel) in self.reqManager.section1Data.enumerated() {
                    //: if model.uid == tempModel.uid {
                    if model.uid == tempModel.uid {
                        //: self.reqManager.section1Data.remove(at: index)
                        self.reqManager.section1Data.remove(at: index)
                    }
                }
                /// 如果是section0Data删除1位后则向上补齐
                //: if self.reqManager.section0Data.count < 4 && self.reqManager.section1Data.count > 0 {
                if self.reqManager.section0Data.count < 4 && self.reqManager.section1Data.count > 0 {
                    //: self.reqManager.section0Data.append(self.reqManager.section1Data.first!)
                    self.reqManager.section0Data.append(self.reqManager.section1Data.first!)
                    //: self.reqManager.section1Data.remove(at: 0)
                    self.reqManager.section1Data.remove(at: 0)
                }
                //: if self.reqManager.section1Data.count < 2 {
                if self.reqManager.section1Data.count < 2 {
                    //: self.footerRefresh()
                    self.nowItem()
                }

                //: ProgressHUD.toast("Shielding Success".localized)
                SizeHungReactiveCompatible.toToast((String(str_freeName.prefix(4)) + "lding" + String(str_countryTitle.prefix(5)) + str_tabValue.replacingOccurrences(of: "title", with: "ss")).localized)
                //: self.seleteHideBlock()
                self.toolState()
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
            }
        }
    }

    //: func seleteShowBlock(model: SocialUserListModel) {
    func equalShow(model: MeasurementHandyJSON) {
        //: seleteBlobkModel = model
        seleteBlobkModel = model
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    //: func seleteHideBlock() {
    func toolState() {
        //: seleteBlobkModel = nil
        seleteBlobkModel = nil
    }

    //: func cellPlayerEnd() {
    func colorEqual() {
        //: if self.playerCell.count==0 {
        if self.playerCell.count == 0 {
            //: return
            return
        }
        //: if self.isgetPlayerCell {
        if self.isgetPlayerCell {
            //: return
            return
        }
        //: if self.cunrrenplayerIndex+1 > self.playerCell.count {
        if self.cunrrenplayerIndex + 1 > self.playerCell.count {
            //: self.cunrrenplayerIndex -= 1
            self.cunrrenplayerIndex -= 1
        }
        //: self.isgetPlayerCell = true
        self.isgetPlayerCell = true

        //: let cell1: SocialPopularListCell? = self.playerCell[self.cunrrenplayerIndex] as? SocialPopularListCell
        let cell1: GesturePlayerDelegate? = self.playerCell[self.cunrrenplayerIndex] as? GesturePlayerDelegate
        //: if cell1 != nil {
        if cell1 != nil {
            //: cell1?.stopPlay()
            cell1?.collideWithPlay()
        }

        //: if self.cunrrenplayerIndex+1 < self.playerCell.count {
        if self.cunrrenplayerIndex + 1 < self.playerCell.count {
            //: self.cunrrenplayerIndex += 1
            self.cunrrenplayerIndex += 1
            //: } else {
        } else {
            //: self.cunrrenplayerIndex = 0
            self.cunrrenplayerIndex = 0
        }
        //: let cell2: SocialPopularListCell? = self.playerCell[self.cunrrenplayerIndex] as? SocialPopularListCell
        let cell2: GesturePlayerDelegate? = self.playerCell[self.cunrrenplayerIndex] as? GesturePlayerDelegate
        //: if cell2 != nil {
        if cell2 != nil {
            //: let indexpath = collectionView.indexPath(for: cell2!)
            let indexpath = collectionView.indexPath(for: cell2!)
            //: if indexpath != nil {
            if indexpath != nil {
                //: var model: SocialUserListModel
                var model: MeasurementHandyJSON
                //: if indexpath?.section == 0 {
                if indexpath?.section == 0 {
                    //: model = reqManager.section0Data[indexpath!.row]
                    model = reqManager.section0Data[indexpath!.row]
                    //: } else {
                } else {
                    //: model = reqManager.section1Data[indexpath!.row]
                    model = reqManager.section1Data[indexpath!.row]
                }
                //: cell2?.configModel(videoUrl: model.videoUrl, imgUrl: model.cover)
                cell2?.successUrl(videoUrl: model.videoUrl, imgUrl: model.cover)
                //: cell2?.setupPlayer()
                cell2?.addPlayer()
                //: } else {
            } else {
                //: cellPlayerEnd()
                colorEqual()
            }
        }

        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: self.isgetPlayerCell = false
            self.isgetPlayerCell = false
        }
    }
}

// MARK: - MemoryImageViewProtocol

//: extension SocialPopularViewController: SocialPopularListFooterViewProtocol {
extension LeadingViewProtocol: MemoryImageViewProtocol {
    // 加载更多巨星计划数据
    //: func premiumStarLoadMoreData() {
    func premiumStatus() {
        //: loadMore_premiumStarList()
        cropList()
    }

    // 巨星计划跳转用户详情
    //: func premiumStarListCellClick(model: PremiumStarListModel?) {
    func popClick(model: SuperiorModelType?) {
        //: guard model != nil else { return }
        guard model != nil else { return }
        //: LimitPushManager.share.func__pushToUserDetailVC(uid: String(model!.uid))
        LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: String(model!.uid))
    }

    //: func adBannerCellClick(model: SocialAdBannerModel) {
    func outsideTableView(model: NumerosityMeasurable) {
        //: SocialAdBannerModel.jumpEvent(model: model)
        NumerosityMeasurable.jumpReport(model: model)
    }
}

// MARK: - 定位权限监听

//: extension SocialPopularViewController {
extension LeadingViewProtocol {
    //: func checkLocationAuth() {
    func beyondRemoveAuth() {
        //: TalkingLocationManager.shared().requestLocationAuthorizaiton()
        EqualLocationManager.sinceRequest().recordAuthorizaiton()
        //: TalkingLocationManager.shared().getAuthBlock { [weak self] (type: PermissionType) in
        EqualLocationManager.sinceRequest().noWithBind { [weak self] (type: TextStrideable) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .firstEntry:
            case .firstEntry: // 首次进入
                //: self.refreshViewStatus()
                self.doingQuantityeraction()

            //: case .userRestricted:
            case .userRestricted: // 拒绝
                //: self.refreshViewStatus()
                self.doingQuantityeraction()
                // 展示设置弹窗
                //: self.showSettingsAlertView()
                self.launchView()

            //: case .alwaysAllowed:
            case .alwaysAllowed: // 允许
                //: self.firstLoadData()
                self.notLoadCell()
            }
        }
        /// 上报经纬度
        //: TalkingLocationManager.shared().getLocationBlock { success, latitude, longitude in
        EqualLocationManager.sinceRequest().resultBlock { success, latitude, longitude in
            //: if success {
            if success {
                //: SocialRequestManager.req_uploadPosition(params: ["lng": longitude, "lat": latitude]) { succeed, result, errorModel in
                GoldRequestManager.betweenName(params: [String(bytes: str_windowValue, encoding: .utf8)!: longitude, String(bytes: str_kitContent.reversed(), encoding: .utf8)!: latitude]) { _, _, _ in
                }
            }
        }
    }

    /// 设置弹窗
    //: func showSettingsAlertView() {
    func launchView() {
        //: guard self.tabType == .nearby && TalkingLocationManager.shared().locationType == .userRestricted else {
        guard self.tabType == .nearby, EqualLocationManager.sinceRequest().locationType == .userRestricted else {
            //: return
            return
        }

        // 设置弹窗
        //: TalkingAlertShow.alert(title: nil, message: "Enter “Settings” and open “Location” permission to use function normally.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
        TitleAlertShow.admittance(title: nil, message: String(bytes: str_addData, encoding: .utf8)!.localized, leftBtnTitle: (String(str_statusPageName.suffix(6))).localized, rightBtnTitle: (String(str_verticalName) + String(str_mainTitle)).localized) {
            //: TalkingAlertShow.hideAlert()
            TitleAlertShow.lastAlert()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            TitleAlertShow.lastAlert()
            //: let url = URL(string: UIApplication.openSettingsURLString)
            let url = URL(string: UIApplication.openSettingsURLString)
            //: if let url = url, UIApplication.shared.canOpenURL(url) {
            if let url = url, UIApplication.shared.canOpenURL(url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}

// MARK: - Layout

//: extension SocialPopularViewController {
extension LeadingViewProtocol {
    // 添加视图
    //: private func setupSubviews() {
    private func succeedWill() {
        //: self.view.addSubview(emptyV)
        self.view.addSubview(emptyV)
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func alongNameOf() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(5)
            make.top.equalToSuperview().offset(5)
            //: make.leading.width.bottom.equalToSuperview()
            make.leading.width.bottom.equalToSuperview()
        }
        //: emptyV.snp.makeConstraints { make in
        emptyV.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(200)
            make.top.equalToSuperview().offset(200)
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
        }
    }

    // 添加通知
    //: private func addNotification() {
    private func overReceive() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(searchDetailRefreshNotification),
                                               selector: #selector(startMore),
                                               //: name: SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION,
                                               name: a_barData,
                                               //: object: nil)
                                               object: nil)
    }
}
