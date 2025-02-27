
//: Declare String Begin

/*: "Any" :*/
fileprivate let str_closedValue:String = "Anytype return party"

/*: "lab_manager_image" :*/
fileprivate let str_methodContent:[Character] = ["l","a","b","_","m","a","n","a","g","e"]
fileprivate let str_reactionUserVarData:String = "r_imageself any else"

/*: "Reset" :*/
fileprivate let str_gestureValue:String = "var selfReset"

/*: "Search" :*/
fileprivate let str_bottomName:String = "app"
fileprivate let str_viewValue:String = "keyrch"

/*: "18-27" :*/
fileprivate let str_shouldData:[Character] = ["1","8","-","2","7"]

/*: "28-37" :*/
fileprivate let str_shootText:[Character] = ["2","8","-","3","7"]

/*: "38-47" :*/
fileprivate let str_lastKitApplicationTitle:String = "38-47"

/*: "48-57" :*/
fileprivate let str_tableValue:[Character] = ["4","8","-","5","7"]

/*: "58+" :*/
fileprivate let str_logTitle:[Character] = ["5","8","+"]

/*: "Yes" :*/
fileprivate let str_sharedData:[Character] = ["Y","e","s"]

/*: "Nope" :*/
fileprivate let str_messageValue:String = "if arrayNope"

/*: "Age" :*/
fileprivate let str_imagePushModelText:[Character] = ["A","g","e"]

/*: "Video Cover" :*/
fileprivate let str_textValue:String = "Videolabel style true"
fileprivate let str_failTitle:String = "item error name label scale Cover"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/5/16.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

// 记录筛选条件
//: var SEARCH_AGE = "Any".localized
var a_timeNearbyData = (String(str_closedValue.prefix(3))).localized
//: var SEARCH_VIDEOCOVER = "Any".localized
var a_sessionData = (String(str_closedValue.prefix(3))).localized

//: class TalkingSearchDetailViewController: TalkingBaseViewController {
class UpViewDelegate: PropertyViewController {
	var momentTitle: String = "frame"

    var backImageView: UIImageView?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: setupSubviews()
        observerTo()
        //: setupSubViewsConstraint()
        fasteningMake()

        backImageView = UIImageView(frame: self.view.bounds.standardized)
        if let backImageView = backImageView {
            self.backImageView?.image = UIImage(named: (String(str_methodContent) + String(str_reactionUserVarData.prefix(7))))
            if (backImageView.mask != nil) && (backImageView.bounds.origin.y == 84.12) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(backImageView)
            }
        }
    
		if var mainTapIconValue = agePicker.titleString { 
		if let backImageView = backImageView {
	
	            if (backImageView.layer.mask != nil) && (backImageView.bounds.origin.y == 63.97) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let picLet = PlayerReasonView()
	            picLet.gestureOff = self.hideNavi
	
	            picLet.giftContent = { [self] progressContent in
	            self.momentTitle = progressContent
	            
	            var picLet = mainTapIconValue
	            picLet.append(picLet[picLet.endIndex])
	            if picLet.hasSuffix(self.momentTitle) {
	                self.momentTitle = picLet
	            }
	            
	            return self.momentTitle
	            }
	                backImageView.addSubview(picLet)
	            }
	
		}
	
		}
	}

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tabV = UITableView(frame: CGRect.zero, style: .plain)
        let tabV = UITableView(frame: CGRect.zero, style: .plain)
        //: tabV.backgroundColor = self.view.backgroundColor
        tabV.backgroundColor = self.view.backgroundColor
        //: tabV.delegate = self
        tabV.delegate = self
        //: tabV.dataSource = self
        tabV.dataSource = self
        //: tabV.separatorStyle = .none
        tabV.separatorStyle = .none
        //: tabV.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        tabV.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        //: tabV.tableFooterView = UIView()
        tabV.tableFooterView = UIView()
        //: tabV.sectionFooterHeight = 0
        tabV.sectionFooterHeight = 0
        //: tabV.keyboardDismissMode = .onDrag
        tabV.keyboardDismissMode = .onDrag
        //: tabV.register(TalkingSearchDetailCell.self, forCellReuseIdentifier: TalkingSearchDetailCell.className())
        tabV.register(LoadReactiveCompatible.self, forCellReuseIdentifier: LoadReactiveCompatible.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: tabV.contentInsetAdjustmentBehavior = .never
            tabV.contentInsetAdjustmentBehavior = .never
        }
        //: tabV.bounces = false
        tabV.bounces = false
        //: return tabV
        return tabV
        //: }()
    }()

    //: private lazy var resetBtn: UIButton = {
    private lazy var resetBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: btn.setTitle("Reset".localized, for: .normal)
        btn.setTitle((String(str_gestureValue.suffix(5))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.offt(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.offt().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(resetButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(eigenvalueOfASquareMatrixClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        //: btn.setTitle("Search".localized, for: .normal)
        btn.setTitle((str_bottomName.replacingOccurrences(of: "app", with: "S") + str_viewValue.replacingOccurrences(of: "key", with: "ea")).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50))), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(getAround), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var agePicker: TalkingNormalPickerView = {
    private lazy var agePicker: QuantityThen = {
        //: let data = ["Any".localized, "18-27", "28-37", "38-47", "48-57", "58+"]
        let data = [(String(str_closedValue.prefix(3))).localized, (String(str_shouldData)), (String(str_shootText)), (str_lastKitApplicationTitle.capitalized), (String(str_tableValue)), "58+"]
        //: let v = TalkingNormalPickerView(frame: .zero, data: data)
        let v = QuantityThen(frame: .zero, data: data)
        //: v.completionHandle = { [weak self] value in
        v.completionHandle = { [weak self] value in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: SEARCH_AGE = value
            a_timeNearbyData = value
            //: self.valueArr[0] = SEARCH_AGE
            self.valueArr[0] = a_timeNearbyData
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoCoverPicker: TalkingNormalPickerView = {
    private lazy var videoCoverPicker: QuantityThen = {
        //: let data = ["Any".localized, "Yes".localized, "Nope".localized]
        let data = [(String(str_closedValue.prefix(3))).localized, (String(str_sharedData)).localized, (String(str_messageValue.suffix(4))).localized]
        //: let v = TalkingNormalPickerView(frame: .zero, data: data)
        let v = QuantityThen(frame: .zero, data: data)
        //: v.completionHandle = { [weak self] value in
        v.completionHandle = { [weak self] value in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: SEARCH_VIDEOCOVER = value
            a_sessionData = value
            //: self.valueArr[1] = SEARCH_VIDEOCOVER
            self.valueArr[1] = a_sessionData
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleArr: [String] = {
    private lazy var titleArr: [String] = //: return ["Age".localized, "Video Cover".localized]
        [(String(str_imagePushModelText)).localized, (String(str_textValue.prefix(5)) + String(str_failTitle.suffix(6))).localized]
    //: }()

    //: private lazy var valueArr: [String] = {
    private lazy var valueArr: [String] = //: return [SEARCH_AGE, SEARCH_VIDEOCOVER]
        [a_timeNearbyData, a_sessionData]
    //: }()
}

// MARK: - Event

//: extension TalkingSearchDetailViewController {
extension UpViewDelegate {
    //: @objc private func resetButtonClick() {
    @objc private func eigenvalueOfASquareMatrixClick() {
        //: SEARCH_AGE = "Any".localized
        a_timeNearbyData = (String(str_closedValue.prefix(3))).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        a_sessionData = (String(str_closedValue.prefix(3))).localized
        //: valueArr = [SEARCH_AGE, SEARCH_VIDEOCOVER]
        valueArr = [a_timeNearbyData, a_sessionData]
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }

    // 通知首页刷新，返回
    //: @objc private func searchButtonClick() {
    @objc private func getAround() {
        //: NotificationCenter.default.post(name: SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION, object: self)
        NotificationCenter.default.post(name: a_barData, object: self)
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

//: extension TalkingSearchDetailViewController: UITableViewDataSource, UITableViewDelegate {
extension UpViewDelegate: UITableViewDataSource, UITableViewDelegate {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue { // 女性用户只展示Age
            //: return 1
            return 1
        }
        //: return titleArr.count
        return titleArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingSearchDetailCell.className(), for: indexPath) as! TalkingSearchDetailCell
        let cell = tableView.dequeueReusableCell(withIdentifier: LoadReactiveCompatible.className(), for: indexPath) as! LoadReactiveCompatible
        //: cell.refreshCell(title: titleArr[indexPath.row], value: valueArr[indexPath.row])
        cell.nog(title: titleArr[indexPath.row], value: valueArr[indexPath.row])
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 50
        return 50
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: if indexPath.row == 0 {
        if indexPath.row == 0 {
            //: agePicker.normalSelectedComponent(value: SEARCH_AGE)
            agePicker.elect(value: a_timeNearbyData)
            //: agePicker.showView()
            agePicker.mugShot()
            //: } else {
        } else {
            //: videoCoverPicker.normalSelectedComponent(value: SEARCH_VIDEOCOVER)
            videoCoverPicker.elect(value: a_sessionData)
            //: videoCoverPicker.showView()
            videoCoverPicker.mugShot()
        }
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingSearchDetailViewController: JXPagingViewListViewDelegate {
extension UpViewDelegate: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return UIScrollView()
        return UIScrollView()
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - Layout

//: extension TalkingSearchDetailViewController {
extension UpViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func observerTo() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: view.addSubview(resetBtn)
        view.addSubview(resetBtn)
        //: view.addSubview(searchBtn)
        view.addSubview(searchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func fasteningMake() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: resetBtn.snp.makeConstraints { make in
        resetBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50)))
            //: make.bottom.equalTo(-(40+kDeviceSafeBottomHeight))
            make.bottom.equalTo(-(40 + a_agentData))
        }

        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.size.bottom.equalTo(resetBtn)
            make.size.bottom.equalTo(resetBtn)
        }
    }
}
