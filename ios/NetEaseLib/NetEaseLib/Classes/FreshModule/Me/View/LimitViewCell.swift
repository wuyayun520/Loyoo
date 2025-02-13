
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_topData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_wallet" :*/
fileprivate let str_keyBlockText:String = "icon_mfor add false"
fileprivate let str_bottomValue:String = "e_washadow path"

/*: "icon_me_dgc" :*/
fileprivate let str_meText:String = "itarget"
fileprivate let str_upRawName:String = "n_me_dgchidden height hidden awake bar"

/*: "icon_me_friends" :*/
fileprivate let str_blockValue:String = "icon_mlet title else"
fileprivate let str_textName:String = "iencurrent"
fileprivate let str_sizeFrameName:String = "design"

/*: "xicon_me_posts" :*/
fileprivate let str_viewData:[Character] = ["x","i","c","o","n","_","m","e","_"]
fileprivate let str_availableName:String = "flexiblests"

/*: "icon_me_Service" :*/
fileprivate let str_sizeViewValue:String = "background name make view addicon_m"
fileprivate let str_frameRecordData:String = "rdataice"

/*: "icon_me_game" :*/
fileprivate let str_rawTitle:String = "self height gifticon_"
fileprivate let str_upValue:String = "top"

/*: "mic_image" :*/
fileprivate let str_errorPlayerElseName:String = "mic_imagewindow bottom view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimitViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class LimitViewCell: UITableViewCell {
    var matchGenerateImageView: UIImageView?

    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(TotalOutputStreamable, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        counteraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_topData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(ValueObjectReusableView.self, forCellWithReuseIdentifier: ValueObjectReusableView.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension LimitViewCell {
    //: func setViewData() {
    func quantityersperseStart() {
        //: if MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue { // 默认模式
            //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue {
            if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (String(str_keyBlockText.prefix(6)) + String(str_bottomValue.prefix(4)) + "llet")),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (str_meText.replacingOccurrences(of: "target", with: "co") + String(str_upRawName.prefix(8)))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(str_blockValue.prefix(6)) + "e_fr" + str_textName.replacingOccurrences(of: "current", with: "d") + str_sizeFrameName.replacingOccurrences(of: "design", with: "s"))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(str_viewData) + str_availableName.replacingOccurrences(of: "flexible", with: "po"))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(str_sizeViewValue.suffix(6)) + "e_Se" + str_frameRecordData.replacingOccurrences(of: "data", with: "v")))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (str_meText.replacingOccurrences(of: "target", with: "co") + String(str_upRawName.prefix(8)))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(str_blockValue.prefix(6)) + "e_fr" + str_textName.replacingOccurrences(of: "current", with: "d") + str_sizeFrameName.replacingOccurrences(of: "design", with: "s"))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(str_viewData) + str_availableName.replacingOccurrences(of: "flexible", with: "po"))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(str_sizeViewValue.suffix(6)) + "e_Se" + str_frameRecordData.replacingOccurrences(of: "data", with: "v")))]
            }
            // 游戏入口
            //: if MeasurementAppManager.share.appUserConfigMode.gameShowBit == 1 ||
            if MeasurementAppManager.share.appUserConfigMode.gameShowBit == 1 ||
                //: MeasurementAppManager.share.appUserConfigMode.gameShowBit == 3 {
                MeasurementAppManager.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Game, "icon_me_game"))
                tupleData.append((.My_Game, (String(str_rawTitle.suffix(5)) + "me_gam" + str_upValue.replacingOccurrences(of: "top", with: "e"))))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (str_meText.replacingOccurrences(of: "target", with: "co") + String(str_upRawName.prefix(8)))),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (String(str_viewData) + str_availableName.replacingOccurrences(of: "flexible", with: "po"))),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (String(str_sizeViewValue.suffix(6)) + "e_Se" + str_frameRecordData.replacingOccurrences(of: "data", with: "v")))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        textApp()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension LimitViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ValueObjectReusableView.className(), for: indexPath) as! ValueObjectReusableView
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.toEffectDeadline(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: LimitPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            LimitPushManager.share.recordIn(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: LimitPushManager.share.func__pushToSubscribePageWebVC()
            LimitPushManager.share.birth()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: LimitPushManager.share.func__pushToWebVC(webViewType: .InviteFriends)
            LimitPushManager.share.recordIn(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: MeasurementAppManager.share.loginUserMode.userID)
            let vc = WithMomentVc(uid: MeasurementAppManager.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.colorController()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: LimitPushManager.share.func__pushToWebVC(webViewType: .FAQ)
            LimitPushManager.share.recordIn(webViewType: .FAQ)

        //: case .My_Game:
        case .My_Game:
            //: let vc = TalkingGameListViewController()
            let vc = SizeFlowLayout()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.colorController()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (a_blockValue - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension LimitViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func counteraction() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func textApp() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - ValueObjectReusableView

//: class TalkingMeItemCell: UICollectionViewCell {
class ValueObjectReusableView: UICollectionViewCell {
	var greetHeadOn: Bool = false
	var searchQuantity: Int = 73
	var startArray: [AnyHashable] = []

    var observerImageView: UIImageView?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_topData.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)

        var detailResource: UIView = icon
        if let imageView = self.observerImageView, (self.contentView.layer.contents != nil) && (self.contentView.layer.anchorPointZ != 0) {
            //: SWIFT_CUSTOM_DANGER
            detailResource = imageView
        }
        self.contentView.addSubview(detailResource)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func toEffectDeadline(_ data: (TotalOutputStreamable, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.outsideText(name: data.1)
        icon.image = UIImage.outsideText(name: data.1)
        observerImageView = UIImageView(frame: self.bounds.insetBy(dx: CGFloat(Int(self.bounds.size.height)), dy: CGFloat(0)))
        if let observerImageView = observerImageView {
            self.observerImageView?.image = UIImage(named: (String(str_errorPlayerElseName.prefix(9))))
            if (observerImageView.subviews.count == 12) && (observerImageView.undoManager != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(observerImageView)
            }
        }
    
            if (self.tintColor != nil && self.tintColor.cgColor == UIColor.black.cgColor) && (self.gestureRecognizers != nil && self.gestureRecognizers!.count == 11) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let dataHome = SectionView()



            
            dataHome.bottomFreeClose = { [self] toolPriceDoing in
            self.greetHeadOn = toolPriceDoing
            
            return self.greetHeadOn
            }
            dataHome.groupMagnitude = { [self] awardSum in
            self.searchQuantity = awardSum
            
            return self.searchQuantity
            }
            dataHome.moveArray = { [self] targetMoonArray in
            self.startArray = targetMoonArray
            
            guard var value = self.startArray as? [String] else {
                return nil
            }
            return value
            }
                self.addSubview(dataHome)
            }

	}

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.blockOf()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 14)
        lab.font = .thoughtImage(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}
