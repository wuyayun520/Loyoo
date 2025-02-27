
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_maleName:[UInt8] = [0xe4,0xe3,0xe4,0xf9,0xa5,0xee,0xe2,0xe9,0xe8,0xff,0xb7,0xa4,0xad,0xe5,0xec,0xfe,0xad,0xe3,0xe2,0xf9,0xad,0xef,0xe8,0xe8,0xe3,0xad,0xe4,0xe0,0xfd,0xe1,0xe8,0xe0,0xe8,0xe3,0xf9,0xe8,0xe9]

/*: "JXBannerCellID" :*/
fileprivate let str_thoughtContent:String = "JXBanself type view message remove"
fileprivate let str_labelSizeShareName:String = "m letellID"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpBannerCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import JXBanner
import JXBanner
//: import JXPageControl
import JXPageControl
//: import UIKit
import UIKit

//: class TalkingMeBannerCell: UITableViewCell {
class UpBannerCell: UITableViewCell {
	var fromWindowEnable: Bool = false
	var languageKeepCount: Int = 41
	var clickQuantity: Double = 1.5
	var exigencyArray: [AnyHashable] = []

    var cellImageView: UIImageView?

    //: private var adBannderListData = [SocialAdBannerModel]()
    private var adBannderListData = [NumerosityMeasurable]()

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        tillDataEqual()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: setupSubviews()
        tillDataEqual()
    
            if (bannerView.layoutMargins.left == 1.86) && (bannerView.layer.position.y == 9.19) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let quantityryRank = RecordView()

            quantityryRank.modelEnable = { [self] intervalClose in
            self.fromWindowEnable = intervalClose
            
            return self.fromWindowEnable
            }
            quantityryRank.successfullyNumber = { [self] tableNumber in
            self.languageKeepCount = tableNumber
            
            return self.languageKeepCount
            }
            quantityryRank.frameInterval = { [self] textQuantity in
            self.clickQuantity = textQuantity
            
            return self.clickQuantity
            }
            quantityryRank.managerBackRoomArray = { [self] nidusDeckArray in
            self.exigencyArray = nidusDeckArray
            
            guard var value = self.exigencyArray as? [String] else {
                return nil
            }
            return value
            }
                bannerView.addSubview(quantityryRank)
            }

	}

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_maleName.map{$0^141}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

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

// MARK: - JXBannerDataSource, JXBannerDelegate

//: extension TalkingMeBannerCell: JXBannerDataSource, JXBannerDelegate {
extension UpBannerCell: JXBannerDataSource, JXBannerDelegate {
    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: "JXBannerCellID")
        return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: (String(str_thoughtContent.prefix(5)) + "nerC" + String(str_labelSizeShareName.suffix(5))))
    }

    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return self.adBannderListData.count
        return self.adBannderListData.count
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let tempCell: JXBannerCell = cell as! JXBannerCell
        let tempCell: JXBannerCell = cell as! JXBannerCell
        //: if index < self.adBannderListData.count {
        if index < self.adBannderListData.count {
            //: let model = self.adBannderListData[index]
            let model = self.adBannderListData[index]
            //: tempCell.msgBgView.backgroundColor = .clear
            tempCell.msgBgView.backgroundColor = .clear
            //: tempCell.imageView.setUrlImage(urlStr: model.pic, placeImg: UIImage.placeImgBanner())
            tempCell.imageView.posit(urlStr: model.pic, placeImg: UIImage.withRoom())
            //: tempCell.imageView.contentMode = .scaleAspectFill
            tempCell.imageView.contentMode = .scaleAspectFill
        }
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
        //: pageControl.activeSize = CGSize(width: 4, height: 2)
        pageControl.activeSize = CGSize(width: 4, height: 2)
        //: pageControl.activeColor = .white
        pageControl.activeColor = .white
        //: pageControl.inactiveSize = CGSize(width: 4, height: 2)
        pageControl.inactiveSize = CGSize(width: 4, height: 2)
        //: pageControl.inactiveColor = .white.withAlphaComponent(0.4)
        pageControl.inactiveColor = .white.withAlphaComponent(0.4)
        //: pageControl.columnSpacing = 2
        pageControl.columnSpacing = 2
        //: pageControl.isAnimation = true
        pageControl.isAnimation = true
        //: builder.pageControl = pageControl
        builder.pageControl = pageControl
        //: builder.layout = {
        builder.layout = {
            //: pageControl.snp.makeConstraints { make in
            pageControl.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview().offset(-20)
                make.trailing.equalToSuperview().offset(-20)
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

    //: public func jxBanner(_ banner: JXBannerType, didSelectItemAt index: Int) {
    public func jxBanner(_: JXBannerType, didSelectItemAt index: Int) {
        //: if index < self.adBannderListData.count {
        if index < self.adBannderListData.count {
            //: let model = self.adBannderListData[index]
            let model = self.adBannderListData[index]
            //: SocialAdBannerModel.jumpEvent(model: model)
            NumerosityMeasurable.jumpReport(model: model)
        }
    }
}

// MARK: - Event

//: extension TalkingMeBannerCell {
extension UpBannerCell {
    /// 更新数据
    //: func setViewData(bannerData: [SocialAdBannerModel]) {
    func busyWith(bannerData: [NumerosityMeasurable]) {
        //: adBannderListData = bannerData
        adBannderListData = bannerData
        //: bannerView.reloadView()
        bannerView.reloadView()
    }
}

// MARK: - Layout

//: extension TalkingMeBannerCell {
extension UpBannerCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func tillDataEqual() {
        //: self.contentView.addSubview(bannerView)
        self.contentView.addSubview(bannerView)
        //: bannerView.snp.remakeConstraints { make in
        bannerView.snp.remakeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: make.height.equalTo(84)
            make.height.equalTo(84)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}
