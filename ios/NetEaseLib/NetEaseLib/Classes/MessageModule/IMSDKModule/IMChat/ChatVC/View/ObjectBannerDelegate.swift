
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_logName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_chats_banner_subtract" :*/
fileprivate let str_textName:String = "icon_ctrue super self lab image"
fileprivate let str_statusData:String = "baimage"
fileprivate let str_mTitle:String = "table red gift viewer_s"

/*: "icon_chats_banner_subtract_pre" :*/
fileprivate let str_linkTitle:String = "view video self view anyicon_"
fileprivate let str_equalTitle:String = "match name self_banne"
fileprivate let str_appPlayValue:[Character] = ["r","_","s","u","b","t","r","a","c","t","_","p","r","e"]

/*: "bannerList" :*/
fileprivate let str_upTitle:String = "voicenn"
fileprivate let str_indexTitle:[Character] = ["e","r","L","i","s","t"]

/*: "JXBannerCellID" :*/
fileprivate let str_linkValue:[Character] = ["J","X","B","a","n","n","e","r","C"]
fileprivate let str_fieldData:String = "ellIDkey type with"

/*: "#FFFFFF" :*/
fileprivate let str_titleFemaleToValue:[Character] = ["#","F","F","F","F","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingPrivateBanner View.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/17.
//

//: import JXBanner
import JXBanner
//: import JXPageControl
import JXPageControl
//: import UIKit
import UIKit

//: protocol PrivateBannerDelegate: NSObject {
protocol AddBannerDelegate: NSObject {
    //: func changeBannerViewFream(isMiniView: Bool)
    func field(isMiniView: Bool)
}

//: class TalkingPrivateBannerView: UIView {
class ObjectBannerDelegate: UIView {
    var meImageView: UIImageView?

    //: var isMiniView = false
    var isMiniView = false
    //: open weak var delegate: PrivateBannerDelegate?
    open weak var delegate: AddBannerDelegate?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.isHidden = true
        self.isHidden = true
        //: setupSubviews()
        pingAcross()
        //: setupSubViewsConstraint()
        sumry()
        //: reqBanner()
        brand()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_logName, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bannerListData: [SocialAdBannerModel] = {
    private lazy var bannerListData: [NumerosityMeasurable] = //: return Array<NumerosityMeasurable>()
        .init()
    //: }()

    //: private lazy var bannerView: JXBanner = {
    private lazy var bannerView: JXBanner = {
        //: let banner = JXBanner()
        let banner = JXBanner()
        //: banner.backgroundColor = .clear
        banner.backgroundColor = .clear
        //: banner.placeholderImgView.image = UIImage.placeImgBanner()
        banner.placeholderImgView.image = UIImage.withRoom()
        //: banner.delegate = self
        banner.delegate = self
        //: banner.dataSource = self
        banner.dataSource = self
        //: return banner
        return banner
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "icon_chats_banner_subtract"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_textName.prefix(6)) + "hats_" + str_statusData.replacingOccurrences(of: "image", with: "nn") + String(str_mTitle.suffix(4)) + "ubtract")), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "icon_chats_banner_subtract_pre"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_linkTitle.suffix(5)) + "chats" + String(str_equalTitle.suffix(6)) + String(str_appPlayValue))), for: .selected)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(localShow), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Data

//: extension TalkingPrivateBannerView {
extension ObjectBannerDelegate {
    /// banner
    //: func reqBanner() {
    func brand() {
        //: SocialRequestManager.init().req_adBanner(position: 3) { [weak self] succeed, result, errorModel in
        GoldRequestManager().headNet(position: 3) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(str_upTitle.replacingOccurrences(of: "voice", with: "ba") + String(str_indexTitle))] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = NumerosityMeasurable.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: if self.bannerListData.count > 0 {
            if self.bannerListData.count > 0 {
                //: self.isHidden = false
                self.isHidden = false
                //: bannerView.reloadView()
                bannerView.reloadView()
                //: } else {
            } else {
                //: self.isHidden = true
                self.isHidden = true
            }
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateBannerView {
extension ObjectBannerDelegate {
    //: @objc private func closeBtnClick() {
    @objc private func localShow() {
        //: closeBtn.isSelected = !closeBtn.isSelected
        closeBtn.isSelected = !closeBtn.isSelected
        //: isMiniView = closeBtn.isSelected
        isMiniView = closeBtn.isSelected
        //: bannerView.reloadView()
        bannerView.reloadView()
        //: self.delegate?.changeBannerViewFream(isMiniView: isMiniView)
        self.delegate?.field(isMiniView: isMiniView)
    }

    //: func resetView(isMiniView: Bool) {
    func equalChannel(isMiniView: Bool) {
        //: if isMiniView {
        if isMiniView {
            //: bannerView.snp.remakeConstraints { make in
            bannerView.snp.remakeConstraints { make in
                //: make.leading.bottom.equalToSuperview()
                make.leading.bottom.equalToSuperview()
                //: make.top.equalTo(6)
                make.top.equalTo(6)
                //: make.trailing.equalTo(-6)
                make.trailing.equalTo(-6)
            }
            //: closeBtn.snp.remakeConstraints { make in
            closeBtn.snp.remakeConstraints { make in
                //: make.top.trailing.equalToSuperview()
                make.top.trailing.equalToSuperview()
                //: make.size.equalTo(16)
                make.size.equalTo(16)
            }
            //: } else {
        } else {
            //: bannerView.snp.remakeConstraints { make in
            bannerView.snp.remakeConstraints { make in
                //: make.leading.equalToSuperview()
                make.leading.equalToSuperview()
                //: make.top.equalTo(6)
                make.top.equalTo(6)
                //: make.size.equalTo(83)
                make.size.equalTo(83)
            }
            //: closeBtn.snp.remakeConstraints { make in
            closeBtn.snp.remakeConstraints { make in
                //: make.trailing.equalTo(-4)
                make.trailing.equalTo(-4)
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: make.size.equalTo(16)
                make.size.equalTo(16)
            }
        }
    }
}

// MARK: - Delegete

//: extension TalkingPrivateBannerView: JXBannerDelegate, JXBannerDataSource {
extension ObjectBannerDelegate: JXBannerDelegate, JXBannerDataSource {
    //: func jxBanner(_ banner: JXBannerType, params: JXBannerParams) -> JXBannerParams {
    func jxBanner(_: JXBannerType, params: JXBannerParams) -> JXBannerParams {
        //: params.timeInterval = 2
        params.timeInterval = 2
        //: return params
        return params
    }

    //: func jxBanner(_ banner: JXBannerType, layoutParams: JXBannerLayoutParams) -> JXBannerLayoutParams {
    func jxBanner(_: JXBannerType, layoutParams: JXBannerLayoutParams) -> JXBannerLayoutParams {
        //: layoutParams.scrollDirection = isMiniView ? .vertical : .horizontal
        layoutParams.scrollDirection = isMiniView ? .vertical : .horizontal
        //: return layoutParams
        return layoutParams
    }

    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: "JXBannerCellID")
        return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: (String(str_linkValue) + String(str_fieldData.prefix(5))))
    }

    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return self.bannerListData.count
        return self.bannerListData.count
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let tempCell: JXBannerCell = cell as! JXBannerCell
        let tempCell: JXBannerCell = cell as! JXBannerCell
        //: let model = self.bannerListData[index]
        let model = self.bannerListData[index]
        //: tempCell.backgroundColor = .clear
        tempCell.backgroundColor = .clear
        //: tempCell.msgBgView.backgroundColor = .clear
        tempCell.msgBgView.backgroundColor = .clear
        //: let url = self.isMiniView ? model.thumbnail:model.pic
        let url = self.isMiniView ? model.thumbnail : model.pic
        //: tempCell.imageView.setUrlImage(urlStr: url, placeImg: UIImage.placeImgSquare())
        tempCell.imageView.posit(urlStr: url, placeImg: UIImage.pineTreeStateSquare())
        //: tempCell.imageView.contentMode = .scaleAspectFill
        tempCell.imageView.contentMode = .scaleAspectFill
        //: tempCell.imageView.layer.cornerRadius = 6
        tempCell.imageView.layer.cornerRadius = 6
        //: tempCell.imageView.layer.masksToBounds = true
        tempCell.imageView.layer.masksToBounds = true
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
        //: pageControl.activeSize = CGSize(width: 4, height: 4)
        pageControl.activeSize = CGSize(width: 4, height: 4)
        //: pageControl.activeColor = UIColor(hex: "#FFFFFF")!
        pageControl.activeColor = UIColor(hex: (String(str_titleFemaleToValue)))!
        //: pageControl.inactiveSize = CGSize(width: 4, height: 4)
        pageControl.inactiveSize = CGSize(width: 4, height: 4)
        //: pageControl.inactiveColor = UIColor.init(white: 1, alpha: 0.4)
        pageControl.inactiveColor = UIColor(white: 1, alpha: 0.4)
        //: pageControl.columnSpacing = 6
        pageControl.columnSpacing = 6
        //: pageControl.isAnimation = true
        pageControl.isAnimation = true
        //: pageControl.isHidden = self.isMiniView
        pageControl.isHidden = self.isMiniView
        //: builder.pageControl = pageControl
        builder.pageControl = pageControl
        //: builder.layout = {
        builder.layout = {
            //: pageControl.snp.makeConstraints { make in
            pageControl.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.bottom.equalToSuperview().offset(10)
                make.bottom.equalToSuperview().offset(10)
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
        //: let model = self.bannerListData[index]
        let model = self.bannerListData[index]
        //: SocialAdBannerModel.jumpEvent(model: model)
        NumerosityMeasurable.jumpReport(model: model)
    }
}

// MARK: - LAyout

//: extension TalkingPrivateBannerView {
extension ObjectBannerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func pingAcross() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: self.addSubview(bannerView)
        self.addSubview(bannerView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func sumry() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: bannerView.snp.makeConstraints { make in
        bannerView.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.size.equalTo(83)
            make.size.equalTo(83)
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-4)
            make.trailing.equalTo(-4)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.size.equalTo(16)
            make.size.equalTo(16)
        }
    }
}
