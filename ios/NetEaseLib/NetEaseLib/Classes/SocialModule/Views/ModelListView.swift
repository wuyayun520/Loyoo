
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cancelContent:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "live_picture" :*/
fileprivate let str_memberValue:String = "equal off sex imagelive_"

/*: "Not yet~" :*/
fileprivate let str_translateLayerSubmitName:[Character] = ["N"]
fileprivate let str_socialData:String = "ot yet~content application app self"

/*: "#8C7AFF" :*/
fileprivate let str_aValue:[Character] = ["#","8","C","7","A","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelListView.swift
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

//: class SocialRankListView: UIView {
class ModelListView: UIView {
	var atBlockText: String = "title"

    var playImageView: UIImageView?

    //: var type = 0
    var type = 0

    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.equalUser()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cancelContent, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: ranktableView.frame = self.bounds
        ranktableView.frame = self.bounds
        playImageView = UIImageView(frame: self.bounds.integral)
        if let playImageView = playImageView {
            self.playImageView?.image = UIImage(named: (String(str_memberValue.suffix(5)) + "picture"))
		
		//: if_extract_code "ofTransition" begin
		
		var ofTransition = false
		if !ofTransition {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = playImageView.editingInteractionConfiguration == .none
		    }
		    ofTransition = isValue
		}
		
		//: if_extract_code "ofTransition" end
		
            if ofTransition && (playImageView.layer.contents != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(playImageView)
            }
        }
    
            if (tableHeaderView.layer.mask != nil) && (tableHeaderView.bounds.origin.y == 63.97) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let picLet = PlayerReasonView()

            picLet.tableInterval = tableHeaderView.index
            picLet.giftContent = { [self] progressContent in
            self.atBlockText = progressContent
            
            return self.atBlockText
            }
                tableHeaderView.addSubview(picLet)
            }

	}

    // MARK: param

    //: lazy var dataArray: [SocialRankItemModel] = [] {
    lazy var dataArray: [DoingItemModel] = [] {
        //: didSet {
        didSet {
            //: if dataArray.isEmpty == false {
            if dataArray.isEmpty == false {
                //: tableHeaderView.index = self.type
                tableHeaderView.index = self.type
                //: ranktableView.tableHeaderView = tableHeaderView
                ranktableView.tableHeaderView = tableHeaderView

                //: tableHeaderView.dataArray = dataArray
                tableHeaderView.dataArray = dataArray

                //: ranktableView.backgroundView = UIView.init()
                ranktableView.backgroundView = UIView()
                //: } else {
            } else {
                //: ranktableView.backgroundView = tableBackgrourdView
                ranktableView.backgroundView = tableBackgrourdView
                //: ranktableView.tableHeaderView = UIView()
                ranktableView.tableHeaderView = UIView()
            }
            //: ranktableView.reloadData()
            ranktableView.reloadData()
        }
    }

    // MARK: UI

    //: lazy var ranktableView = UITableView.init(frame: self.bounds, style: .plain).then {
    lazy var ranktableView = UITableView(frame: self.bounds, style: .plain).then {
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.showsVerticalScrollIndicator = false
        $0.showsVerticalScrollIndicator = false
        //: $0.bounces = false
        $0.bounces = false
        //: $0.backgroundView = tableBackgrourdView
        $0.backgroundView = tableBackgrourdView
        //: $0.tableFooterView = UIView()
        $0.tableFooterView = UIView()
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingRoundedCell.self, forCellReuseIdentifier: TalkingRoundedCell.className())
        $0.register(OverhangThen.self, forCellReuseIdentifier: OverhangThen.className())
        //: $0.register(SocialRankListViewCell.self, forCellReuseIdentifier: SocialRankListViewCell.className())
        $0.register(ConstraintViewCell.self, forCellReuseIdentifier: ConstraintViewCell.className())
    }

    //: lazy var tableHeaderView = SocialRankHeaderView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualHeight(h: 220+14))).then {
    lazy var tableHeaderView = UserReactiveCompatible(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: actualHeight(h: 220 + 14))).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.index = self.type
        $0.index = self.type
    }

    //: lazy var tableBackgrourdView = SocialEmptyView().then {
    lazy var tableBackgrourdView = CubeEmptyView().then {
        //: $0.backgroundColor = .white
        $0.backgroundColor = .white
        //: $0.desLab.text = "Not yet~".localized
        $0.desLab.text = (String(str_translateLayerSubmitName) + String(str_socialData.prefix(7))).localized
        //: $0.desLab.textColor = UIColor(hex: "#8C7AFF")
        $0.desLab.textColor = UIColor(hex: (String(str_aValue)))
        //: $0.imgV.snp.remakeConstraints { make in
        $0.imgV.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

//: extension SocialRankListView: UITableViewDataSource, UITableViewDelegate {
extension ModelListView: UITableViewDataSource, UITableViewDelegate {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return dataArray.count > 3 ? 1 : 0
            return dataArray.count > 3 ? 1 : 0
        }
        //: return dataArray.count - 3
        return dataArray.count - 3
    }

    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingRoundedCell.className(), for: indexPath) as! TalkingRoundedCell
            let cell = tableView.dequeueReusableCell(withIdentifier: OverhangThen.className(), for: indexPath) as! OverhangThen
            //: return cell
            return cell
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: SocialRankListViewCell.className(), for: indexPath) as! SocialRankListViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ConstraintViewCell.className(), for: indexPath) as! ConstraintViewCell
        //: let model = dataArray[indexPath.row+3]
        let model = dataArray[indexPath.row + 3]
        //: cell.updateRankCell(model: model, index: indexPath.row+3)
        cell.searchPlaceIndex(model: model, index: indexPath.row + 3)
        //: cell.updateIcon(type: self.type)
        cell.iconTitle(type: self.type)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingRoundedCell.className()) as! TalkingRoundedCell
            let cell = tableView.dequeueReusableCell(withIdentifier: OverhangThen.className()) as! OverhangThen
            //: return cell.cellHeight
            return cell.cellHeight
        }
        //: return actualHeight(h: 70)
        return actualHeight(h: 70)
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = dataArray[indexPath.row+3]
        let model = dataArray[indexPath.row + 3]
        //: guard model.uid != 0 else {
        guard model.uid != 0 else {
            //: return
            return
        }
        //: LimitPushManager.share.func__pushToUserDetailVC(uid: "\(model.uid)")
        LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: "\(model.uid)")
    }
}

//: extension SocialRankListView: JXSegmentedListContainerViewListDelegate {
extension ModelListView: JXSegmentedListContainerViewListDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self
        return self
    }
}

// MARK: Layout

//: extension SocialRankListView {
extension ModelListView {
    //: private func setupSubviews() {
    private func equalUser() {
        //: self.addSubview(ranktableView)
        self.addSubview(ranktableView)
    }
}
