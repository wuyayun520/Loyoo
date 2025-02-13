
//: Declare String Begin

/*: "present_picture" :*/
fileprivate let str_viewValue:String = "pequalse"
fileprivate let str_succeedTitle:String = "TURE"

/*: "TalkingUserDetailTagMeCell" :*/
fileprivate let str_toValue:String = "type lab view error fieldTalkin"
fileprivate let str_statusMakeData:String = "domain color startgUse"
fileprivate let str_shouldName:String = "view pointailT"

/*: "TalkingUserDetailTagInterestCell" :*/
fileprivate let str_squareData:[UInt8] = [0x54,0x61,0x6c,0x6b,0x69,0x6e,0x67,0x55,0x73,0x65,0x72,0x44,0x65,0x74,0x61,0x69,0x6c,0x54,0x61,0x67,0x49,0x6e,0x74,0x65,0x72,0x65,0x73,0x74,0x43,0x65,0x6c,0x6c]

/*: "TalkingAIHobbyCell" :*/
fileprivate let str_imageData:[Character] = ["T","a","l","k","i","n","g","A","I","H","o","b","b","y","C","e","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChartObjectProtocol.swift
//  AbroadTalking
//
//  Created by young on 2023/5/22.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingUserDetailProfileViewController: TalkingBaseViewController {
class ChartObjectProtocol: PropertyViewController {
	var itemEnable: Bool = true
	var atTotal: Int = 33
	var viewArray: [AnyHashable] = []
	var loadDictionary: [AnyHashable: String] = [:]

    var labelImageView: UIImageView?

    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = ToInfoModel() // 用户资料
    //: private var sectionArr = [TUserDetailCellType.profileType]
    private var sectionArr = [EqualTrivialityCellType.profileType] // 分区
    //: private var giftsArr = [TalkingUserReceivedGiftModel]()
    private var giftsArr = [ValueTransformable]() // 收到的礼物
    //: private var tableHeightModel = TUserDetailTableHeightModel()
    private var tableHeightModel = MediaReactiveCompatible() // 记录分区高度
    //: private var aboutme_cellH = 0.0, interest_cellH = 0.0
    private var aboutme_cellH = 0.0, interest_cellH = 0.0 // 高度记录

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true

        //: setupSubviews()
        item()
        //: setupSubViewsConstraint()
        barBy()

        labelImageView = UIImageView(frame: self.view.bounds.union(CGRect(x: CGFloat(Double(self.view.bounds.size.width)), y: CGFloat(Double(self.view.frame.origin.y)), width: CGFloat(Double(self.view.frame.origin.x)), height: CGFloat(0))))
        if let labelImageView = labelImageView {
            self.labelImageView?.image = UIImage(named: (str_viewValue.replacingOccurrences(of: "equal", with: "re") + "nt_pic" + str_succeedTitle.lowercased()))
            if (labelImageView.center.x == 66.11) && (labelImageView.animationImages?.count == (labelImageView.isMultipleTouchEnabled ? 5 : 8)) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(labelImageView)
            }
        }
    
	if let labelImageView = labelImageView {

            if (labelImageView.layer.position.y == 15.19) && (labelImageView.layer.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let menuLet = GiftShotView(frame: labelImageView.frame.insetBy(dx: CGFloat(62), dy: CGFloat(623.02)))
            menuLet.dataName = userInfoModel.constellation
            menuLet.unsleepingSwitch = { [self] showClose in
            self.itemEnable = showClose
            
            var menuLet = userInfoModel.isPartyMute
                menuLet = true
                menuLet = false
            if menuLet != self.itemEnable {
                self.itemEnable = menuLet
            }
            
                self.itemEnable = true
                self.itemEnable = !self.itemEnable
            return self.itemEnable
            }
            menuLet.awakeMagnitude = { [self] momentMoveVoiceSum in
            self.atTotal = momentMoveVoiceSum
            
            var menuLet = userInfoModel.age
            menuLet &*= 3
            if menuLet < self.atTotal {
                self.atTotal = menuLet
            }
            
            return self.atTotal
            }
            menuLet.snapArray = { [self] lastArray in
            self.viewArray = lastArray
            
            guard var value = self.viewArray as? [String] else {
                return nil
            }
            return value
            }
            menuLet.indexDictionary = { [self] managerBagDictionary in
            self.loadDictionary = managerBagDictionary
            
            guard var value = self.loadDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                labelImageView.addSubview(menuLet)
            }

	}

	}

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: UserDetailBottomView_H, right: 0)
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: a_itemBarValue, right: 0)
        //: tableView.showsHorizontalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        //: tableView.showsVerticalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        //: tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: tableView.register(TalkingUserDetailProfileCell.self, forCellReuseIdentifier: TalkingUserDetailProfileCell.className())
        tableView.register(RegularProfileCell.self, forCellReuseIdentifier: RegularProfileCell.className())
        //: tableView.register(TalkingUserDetailTagCell.self, forCellReuseIdentifier: "TalkingUserDetailTagMeCell")
        tableView.register(EventObjectProtocol.self, forCellReuseIdentifier: (String(str_toValue.suffix(6)) + String(str_statusMakeData.suffix(4)) + "rDet" + String(str_shouldName.suffix(4)) + "agMeCell"))
        //: tableView.register(TalkingUserDetailTagCell.self, forCellReuseIdentifier: "TalkingUserDetailTagInterestCell")
        tableView.register(EventObjectProtocol.self, forCellReuseIdentifier: String(bytes: str_squareData, encoding: .utf8)!)
        //: tableView.register(TalkingUserDetailGiftCell.self, forCellReuseIdentifier: TalkingUserDetailGiftCell.className())
        tableView.register(PrimaThen.self, forCellReuseIdentifier: PrimaThen.className())
        //: tableView.register(TalkingUserDetailTagCell.self, forCellReuseIdentifier: "TalkingAIHobbyCell")
        tableView.register(EventObjectProtocol.self, forCellReuseIdentifier: (String(str_imageData)))
        //: return tableView
        return tableView
        //: }()
    }()
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingUserDetailProfileViewController: UITableViewDelegate, UITableViewDataSource {
extension ChartObjectProtocol: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return sectionArr.count
        return sectionArr.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cellType: TUserDetailCellType = self.sectionArr[indexPath.section]
        let cellType: EqualTrivialityCellType = self.sectionArr[indexPath.section]
        //: switch cellType {
        switch cellType {
        //: case .profileType:
        case .profileType:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserDetailProfileCell.className(), for: indexPath) as! TalkingUserDetailProfileCell
            let cell = tableView.dequeueReusableCell(withIdentifier: RegularProfileCell.className(), for: indexPath) as! RegularProfileCell
            //: cell.configWithDataModel(userModel: userInfoModel)
            cell.pastBag(userModel: userInfoModel)
            //: self.setProfileCellHeight(signAttribute: cell.signLab.attributedText ?? NSAttributedString.init(string: ""))
            self.recent(signAttribute: cell.signLab.attributedText ?? NSAttributedString(string: ""))
            //: return cell
            return cell

        //: case .aboutMeType:
        case .aboutMeType:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: "TalkingUserDetailTagMeCell", for: indexPath) as! TalkingUserDetailTagCell
            let cell = tableView.dequeueReusableCell(withIdentifier: (String(str_toValue.suffix(6)) + String(str_statusMakeData.suffix(4)) + "rDet" + String(str_shouldName.suffix(4)) + "agMeCell"), for: indexPath) as! EventObjectProtocol
            //: cell.configTagCellWithDataModel(type: TUserDetailCellType.aboutMeType, userModel: userInfoModel)
            cell.baldy(type: EqualTrivialityCellType.aboutMeType, userModel: userInfoModel)
            //: cell.collectionLayoutSubviewBlock = {[weak self] collectH in
            cell.collectionLayoutSubviewBlock = { [weak self] collectH in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.aboutme_cellH = collectH
                self.aboutme_cellH = collectH
                //: tableView.reloadData()
                tableView.reloadData()
            }
            //: return cell
            return cell

        //: case .intersetsType:
        case .intersetsType:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: "TalkingUserDetailTagInterestCell", for: indexPath) as! TalkingUserDetailTagCell
            let cell = tableView.dequeueReusableCell(withIdentifier: String(bytes: str_squareData, encoding: .utf8)!, for: indexPath) as! EventObjectProtocol
            //: cell.configTagCellWithDataModel(type: TUserDetailCellType.intersetsType, userModel: userInfoModel)
            cell.baldy(type: EqualTrivialityCellType.intersetsType, userModel: userInfoModel)
            //: cell.collectionLayoutSubviewBlock = {[weak self] collectH in
            cell.collectionLayoutSubviewBlock = { [weak self] collectH in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.interest_cellH = collectH
                self.interest_cellH = collectH
                //: tableView.reloadData()
                tableView.reloadData()
            }
            //: return cell
            return cell

        //: case .giftType:
        case .giftType:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserDetailGiftCell.className(), for: indexPath) as! TalkingUserDetailGiftCell
            let cell = tableView.dequeueReusableCell(withIdentifier: PrimaThen.className(), for: indexPath) as! PrimaThen
            //: cell.giftsDataArray = self.giftsArr
            cell.giftsDataArray = self.giftsArr
            //: self.tableHeightModel.gift_height = cell.tempH
            self.tableHeightModel.gift_height = cell.tempH
            //: return cell
            return cell

        //: default:
        default:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
            let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
            //: cell.selectionStyle = .none
            cell.selectionStyle = .none
            //: return cell
            return cell
        }
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let cellType: TUserDetailCellType = self.sectionArr[indexPath.section]
        let cellType: EqualTrivialityCellType = self.sectionArr[indexPath.section]
        //: switch cellType {
        switch cellType {
        //: case .profileType:
        case .profileType:
            //: return tableHeightModel.profile_height
            return tableHeightModel.profile_height
        //: case .aboutMeType:
        case .aboutMeType:
            //: return self.getAboutMeCellHeight()
            return self.session()
        //: case .intersetsType:
        case .intersetsType:
            //: return self.getMyInterestsCellHeight()
            return self.start()
        //: case .giftType:
        case .giftType:
            //: return self.tableHeightModel.gift_height
            return self.tableHeightModel.gift_height

        //: default:
        default:
            //: return 0
            return 0
        }
    }
}

// MARK: - Cell高度计算

//: extension TalkingUserDetailProfileViewController {
extension ChartObjectProtocol {
    //: private func setProfileCellHeight(signAttribute: NSAttributedString) {
    private func recent(signAttribute: NSAttributedString) {
        //: var tempH = 15+32+32+32+32+30.0
        var tempH = 15 + 32 + 32 + 32 + 32 + 30.0
        //: var labelH = signAttribute.boundingRect(with: CGSize(width: ScreenWidth-58, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil).size.height
        var labelH = signAttribute.boundingRect(with: CGSize(width: a_blockValue - 58, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil).size.height
        //: let signIsEmpty = userInfoModel.signature?.isEmptyString
        let signIsEmpty = userInfoModel.signature?.isEmptyString
        //: if signIsEmpty == false {
        if signIsEmpty == false {
            //: if labelH < 22 {
            if labelH < 22 {
                //: labelH = 22
                labelH = 22
            }
            //: tempH += labelH
            tempH += labelH
        }
        //: self.tableHeightModel.profile_height = tempH
        self.tableHeightModel.profile_height = tempH
    }

    //: private func getAboutMeCellHeight() -> CGFloat {
    private func session() -> CGFloat {
        //: if self.userInfoModel.aboutMe.isEmpty {
        if self.userInfoModel.aboutMe.isEmpty {
            //: return 0
            return 0
        }
        //: if aboutme_cellH <= 1 {
        if aboutme_cellH <= 1 {
            //: return 65 + 30
            return 65 + 30
        }
        //: return 65 + aboutme_cellH
        return 65 + aboutme_cellH
    }

    //: private func getMyInterestsCellHeight() -> CGFloat {
    private func start() -> CGFloat {
        //: if self.userInfoModel.interest.isEmpty {
        if self.userInfoModel.interest.isEmpty {
            //: return 0
            return 0
        }
        //: if interest_cellH <= 1 {
        if interest_cellH <= 1 {
            //: return 65 + 30
            return 65 + 30
        }
        //: return 65 + interest_cellH
        return 65 + interest_cellH
    }
}

// MARK: - JXPagerViewListViewDelegate

//: extension TalkingUserDetailProfileViewController: JXPagingViewListViewDelegate {
extension ChartObjectProtocol: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.tableView
        return self.tableView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - Layout

//: extension TalkingUserDetailProfileViewController {
extension ChartObjectProtocol {
    /// 刷新
    //: func refreshProfileSub(_ giftArr: [TalkingUserReceivedGiftModel],
    func downward(_ giftArr: [ValueTransformable],
                  //: _ sectionArr: [TUserDetailCellType],
                  _ sectionArr: [EqualTrivialityCellType],
                  //: _ userModel: TalkingUserInfoModel) {
                  _ userModel: ToInfoModel)
    {
        //: self.giftsArr = giftArr
        self.giftsArr = giftArr
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: let uid = Int(userModel.uid) ?? 0
        let uid = Int(userModel.uid) ?? 0
        //: self.sectionArr = sectionArr
        self.sectionArr = sectionArr
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func item() {
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear
        //: view.addSubview(tableView)
        view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func barBy() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
