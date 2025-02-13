
//: Declare String Begin

/*: "Game Center" :*/
fileprivate let str_labelTitle:[Character] = ["G","a","m","e"," ","C"]
fileprivate let str_maleText:String = "ENTER"

/*: "point_image" :*/
fileprivate let str_matchName:String = "view fill truepoint_"
fileprivate let str_playerData:[Character] = ["i","m","a","g","e"]

/*: "You've got no list yet." :*/
fileprivate let str_maxTitle:String = "You\'v"
fileprivate let str_modeData:String = "type return no lis"
fileprivate let str_detailContent:[Character] = ["t"]
fileprivate let str_sharedArrayValue:String = " yet.target self"

/*: "list" :*/
fileprivate let str_iconValue:String = "ltot"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeFlowLayout.swift
//  AbroadTalking
//
//  Created by young on 2023/11/16.
//

//: import UIKit
import UIKit

//: class TalkingGameListViewController: TalkingBaseViewController {
class SizeFlowLayout: PropertyViewController {
	var colorDoing: Bool = false
	var postCount: Int = 39
	var pointCount: Double = -48.2
	var acrossTitle: String = "stop"
	var viewArray: [AnyHashable] = []
	var nameDictionary: [AnyHashable: String] = [:]

    var addImageView: UIImageView?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Game Center".localized
        self.title = (String(str_labelTitle) + str_maleText.lowercased()).localized
        //: setupSubviews()
        tap()
        //: setupSubViewsConstraint()
        sub()
        //: bindInteraction()
        stickImageGiveAndTake()
        //: req_getGameList()
        callSize()

        addImageView = UIImageView(frame: self.view.bounds.union(CGRect(x: CGFloat(Double(self.view.bounds.size.height)), y: CGFloat(Double(self.view.bounds.size.width)), width: CGFloat(self.view.isExclusiveTouch ? 9 : 3), height: CGFloat(0))))
        if let addImageView = addImageView {
            self.addImageView?.image = UIImage(named: (String(str_matchName.suffix(6)) + String(str_playerData)))
            if (addImageView.tintColor != nil && addImageView.tintColor.cgColor == UIColor.systemBlue.cgColor) && (addImageView.forLastBaselineLayout.center.x == 83.25) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(addImageView)
            }
        }
    
            if (collectionView.clipsToBounds) && (collectionView.superview != nil && collectionView.superview!.isHidden) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let iconSection = CleanView()


            
            iconSection.errorViewDoing = { [self] viewSwitch in
            self.colorDoing = viewSwitch
            
            var iconSection = self.hideNavi
            iconSection = false
            if iconSection != self.colorDoing {
                self.colorDoing = iconSection
            }
            
            return self.colorDoing
            }
            iconSection.routeTotal = { [self] titleSum in
            self.postCount = titleSum
            
            return self.postCount
            }
            iconSection.topPriceInterval = { [self] arrayMagnitude in
            self.pointCount = arrayMagnitude
            
            return self.pointCount
            }
            iconSection.harvestMoonTitle = { [self] replyName in
            self.acrossTitle = replyName
            
            self.acrossTitle = String("t")
            return self.acrossTitle
            }
            iconSection.bestowmentArray = { [self] partyArray in
            self.viewArray = partyArray
            
            guard var value = self.viewArray as? [String] else {
                return nil
            }
            return value
            }
            iconSection.canDictionary = { [self] tableDictionary in
            self.nameDictionary = tableDictionary
            
            guard var value = self.nameDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                collectionView.addSubview(iconSection)
            }

	}

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.sectionInset = UIEdgeInsets(top: 24, left: 15, bottom: 0, right: 15)
        layout.sectionInset = UIEdgeInsets(top: 24, left: 15, bottom: 0, right: 15)

        //: let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collect.backgroundColor = .clear
        collect.backgroundColor = .clear
        //: collect.delegate = self
        collect.delegate = self
        //: collect.dataSource = self
        collect.dataSource = self
        //: collect.showsVerticalScrollIndicator = true
        collect.showsVerticalScrollIndicator = true
        //: collect.showsHorizontalScrollIndicator = false
        collect.showsHorizontalScrollIndicator = false
        //: collect.register(TalkingliveRoomGameItemCell.self, forCellWithReuseIdentifier: TalkingliveRoomGameItemCell.className())
        collect.register(SocialItemCell.self, forCellWithReuseIdentifier: SocialItemCell.className())
        //: return collect
        return collect
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "You've got no list yet.".localized
        style.TipsTitle = (str_maxTitle + "e got" + String(str_modeData.suffix(7)) + String(str_detailContent) + String(str_sharedArrayValue.prefix(5))).localized
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var dataArr: [TalkingGameListModel] = {
    private lazy var dataArr: [EnableObjectMeasurable] = //: return [EnableObjectMeasurable]()
        .init()
    //: }()
}

// MARK: - Load Data

//: extension TalkingGameListViewController {
extension SizeFlowLayout {
    /// 获取游戏列表
    //: private func req_getGameList() {
    private func callSize() {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingMeRequestTool.req_getGameList(category: 1) { [weak self] succeed, result, errorModel in
        ConstraintRequestTool.directory(category: 1) { [weak self] _, result, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.dataArr.removeAll()
            self.dataArr.removeAll()
            //: let json = JSON(result ?? [:])
            let json = JSON(result ?? [:])
            //: json["list"].arrayObject?.forEach({ dict in
            json[(str_iconValue.replacingOccurrences(of: "to", with: "is"))].arrayObject?.forEach { dict in
                //: if let model = TalkingGameListModel.deserialize(from: dict as? Dictionary) {
                if let model = EnableObjectMeasurable.deserialize(from: dict as? Dictionary) {
                    //: self.dataArr.append(model)
                    self.dataArr.append(model)
                }
                //: })
            }
            //: self.collectionView.reloadData()
            self.collectionView.reloadData()
            //: self.emptyView.isHidden = (self.dataArr.count > 0)
            self.emptyView.isHidden = (self.dataArr.count > 0)
        }
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout

//: extension TalkingGameListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension SizeFlowLayout: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingliveRoomGameItemCell.className(), for: indexPath) as! TalkingliveRoomGameItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SocialItemCell.className(), for: indexPath) as! SocialItemCell
        //: cell.refreshView(model: dataArr[indexPath.row], nameColor: .appTitleColor())
        cell.titleColor(model: dataArr[indexPath.row], nameColor: .blockOf())
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let model = dataArr[indexPath.row]
        let model = dataArr[indexPath.row]
        //: var config = TalkingWebConfig()
        var config = LabConfig()
        //: config.widthHeight = model.widthHeight
        config.widthHeight = model.widthHeight
        //: config.clearBgColor = true
        config.clearBgColor = true
        //: LimitPushManager.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
        LimitPushManager.share.comb(urlStr: model.url, webConfig: config)
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/4, height: GameItem_H)
        return CGSize(width: (a_blockValue - 30) / 4, height: a_imageValue)
    }
}

// MARK: - Layout

//: extension TalkingGameListViewController {
extension SizeFlowLayout {
    /// 添加视图
    //: private func setupSubviews() {
    private func tap() {
        //: view.addSubview(collectionView)
        view.addSubview(collectionView)
        //: view.addSubview(emptyView)
        view.addSubview(emptyView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func sub() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func stickImageGiveAndTake() {
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.req_getGameList()
            self.callSize()
        }
    }
}
