
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_textAcceptContent:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "JXBannerCellID" :*/
fileprivate let str_modelData:String = "path section noteJXBan"
fileprivate let str_shadowValue:String = "nerCview thought for"
fileprivate let str_nowValue:String = "ellIDsize lab as"

/*: "#FFFFFF" :*/
fileprivate let str_bringValue:String = "#FFFFFFall shared intimate"

/*: "#BDB8B5" :*/
fileprivate let str_mainSizeValue:String = "send path height#BDB8"
fileprivate let str_tableValue:String = "Bshared"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LaterCellView.swift
//  AbroadTalking
//
//  Created by young on 2022/8/29.
//

//: import JXBanner
import JXBanner
//: import JXPageControl
import JXPageControl
//: import UIKit
import UIKit

//: protocol SocialPopularListFooterViewProtocol: NSObjectProtocol {
protocol MemoryImageViewProtocol: NSObjectProtocol {
    // 加载更多数据
    //: func premiumStarLoadMoreData()
    func premiumStatus()
    // 巨星计划cell点击事件
    //: func premiumStarListCellClick(model: PremiumStarListModel?)
    func popClick(model: SuperiorModelType?)
    // 广告cell点击
    //: func adBannerCellClick(model: SocialAdBannerModel)
    func outsideTableView(model: NumerosityMeasurable)
}

//: class SocialPopularListFooterView: UICollectionReusableView {
class LaterCellView: UICollectionReusableView {
    var componentAddImageView: UIImageView?

    //: weak var delegate: SocialPopularListFooterViewProtocol?
    weak var delegate: MemoryImageViewProtocol?
    //: var listData: [PremiumStarListModel]?
    var listData: [SuperiorModelType]? // 巨星计划数据
    //: var adBannderListData: [SocialAdBannerModel]?
    var adBannderListData: [NumerosityMeasurable]? // 广告banner数据

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_textAcceptContent.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.digitiserButton()
        //: self.setupSubViewsConstraint()
        self.finishSetupMake()
    }

    // MARK: - Lazy load

    //: private lazy var bannerView: JXBanner = {
    private lazy var bannerView: JXBanner = {
        //: let banner = JXBanner()
        let banner = JXBanner()
        //: banner.backgroundColor = .white
        banner.backgroundColor = .white
        //: banner.placeholderImgView.image = UIImage.placeImgBanner()
        banner.placeholderImgView.image = UIImage.withRoom()
        //: banner.layer.cornerRadius = 5
        banner.layer.cornerRadius = 5
        //: banner.layer.masksToBounds = true
        banner.layer.masksToBounds = true
        //: banner.delegate = self
        banner.delegate = self
        //: banner.dataSource = self
        banner.dataSource = self
        //: return banner
        return banner
        //: }()
    }()
}

// MARK: - Public Event

//: extension SocialPopularListFooterView {
extension LaterCellView {
    /// 获取当前视图高度
    /// - Returns: 高度
    //: func getFooterViewHeight() -> CGFloat {
    func squareObject() -> CGFloat {
        //: guard self.adBannderListData?.count ?? 0 > 0 else {
        guard self.adBannderListData?.count ?? 0 > 0 else {
            //: self.bannerView.isHidden = true
            self.bannerView.isHidden = true
            //: return 0.01
            return 0.01
        }
        //: return 104
        return 104
    }

    // MARK: - Refresh

    /// 刷新巨星计划
    /// - Parameter data: 数据
    //: func refreshPremiumStarView(data: [PremiumStarListModel]) {
    func scale(data: [SuperiorModelType]) {
        //: self.listData = data
        self.listData = data
    }

    /// 刷新banner
    /// - Parameter data: 数据
    //: func refreshBannerView(data: [SocialAdBannerModel]) {
    func makeDirection(data: [NumerosityMeasurable]) {
        //: self.adBannderListData = data
        self.adBannderListData = data
        //: self.bannerView.isHidden = !(self.adBannderListData?.count ?? 0 > 0)
        self.bannerView.isHidden = !(self.adBannderListData?.count ?? 0 > 0)
        //: bannerView.reloadView()
        bannerView.reloadView()
    }
}

// MARK: - Delegate

//: extension SocialPopularListFooterView: JXBannerDataSource, JXBannerDelegate {
extension LaterCellView: JXBannerDataSource, JXBannerDelegate {
    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: "JXBannerCellID")
        return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: (String(str_modelData.suffix(5)) + String(str_shadowValue.prefix(4)) + String(str_nowValue.prefix(5))))
    }

    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return self.adBannderListData?.count ?? 0
        return self.adBannderListData?.count ?? 0
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let tempCell: JXBannerCell = cell as! JXBannerCell
        let tempCell: JXBannerCell = cell as! JXBannerCell
        //: let model = self.adBannderListData?[index]
        let model = self.adBannderListData?[index]
        //: tempCell.msgBgView.backgroundColor = .clear
        tempCell.msgBgView.backgroundColor = .clear
        //: tempCell.imageView.setUrlImage(urlStr: model?.pic ?? "", placeImg: UIImage.placeImgBanner())
        tempCell.imageView.posit(urlStr: model?.pic ?? "", placeImg: UIImage.withRoom())
        //: tempCell.imageView.contentMode = .scaleAspectFill
        tempCell.imageView.contentMode = .scaleAspectFill
        //: return cell
        return cell
    }

    //: func jxBanner(pageControl banner: JXBannerType,
    func jxBanner(pageControl _: JXBannerType,
                  //: numberOfPages: Int,
                  numberOfPages _: Int,
                  //: coverView: UIView,
                  coverView _: UIView,
                  //: builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
                  builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder
    {
        //: let pageControl = JXPageControlScale()
        let pageControl = JXPageControlScale()
        //: pageControl.contentMode = .bottom
        pageControl.contentMode = .bottom
        //: pageControl.activeSize = CGSize(width: 6, height: 6)
        pageControl.activeSize = CGSize(width: 6, height: 6)
        //: pageControl.activeColor = UIColor(hex: "#FFFFFF")!
        pageControl.activeColor = UIColor(hex: (String(str_bringValue.prefix(7))))!
        //: pageControl.inactiveSize = CGSize(width: 6, height: 6)
        pageControl.inactiveSize = CGSize(width: 6, height: 6)
        //: pageControl.inactiveColor = UIColor(hex: "#BDB8B5")!
        pageControl.inactiveColor = UIColor(hex: (String(str_mainSizeValue.suffix(5)) + str_tableValue.replacingOccurrences(of: "shared", with: "5")))!
        //: pageControl.columnSpacing = 8
        pageControl.columnSpacing = 8
        //: pageControl.isAnimation = true
        pageControl.isAnimation = true
        //: builder.pageControl = pageControl
        builder.pageControl = pageControl
        //: builder.layout = {
        builder.layout = {
            //: pageControl.snp.makeConstraints { make in
            pageControl.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.bottom.equalToSuperview().offset(-4)
                make.bottom.equalToSuperview().offset(-4)
            }
        }
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
            pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return builder
        return builder
    }

    // MARK: - JXBannerDelegate

    //: public func jxBanner(_ banner: JXBannerType,
    public func jxBanner(_: JXBannerType,
                         //: didSelectItemAt index: Int) {
                         didSelectItemAt index: Int)
    {
        //: guard let model = self.adBannderListData?[index] else { return }
        guard let model = self.adBannderListData?[index] else { return }
        //: delegate?.adBannerCellClick(model: model)
        delegate?.outsideTableView(model: model)
    }
}

// MARK: - Layout

//: extension SocialPopularListFooterView {
extension LaterCellView {
    // 添加视图
    //: private func setupSubviews() {
    private func digitiserButton() {
        //: self.addSubview(bannerView)
        self.addSubview(bannerView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func finishSetupMake() {
        //: bannerView.snp.makeConstraints { make in
        bannerView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.bottom.equalToSuperview().offset(-15)
            make.bottom.equalToSuperview().offset(-15)
            //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 84))
            make.size.equalTo(CGSize(width: a_blockValue - 30, height: 84))
        }
    }
}
