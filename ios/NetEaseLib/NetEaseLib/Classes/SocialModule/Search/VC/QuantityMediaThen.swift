
//: Declare String Begin

/*: "view_image" :*/
fileprivate let str_removeData:[Character] = ["v","i","e","w","_"]
fileprivate let str_viewValue:String = "imagdetail"

/*: "Search" :*/
fileprivate let str_blockText:[Character] = ["S","e","a","r","c","h"]

/*: "#F5F5F5" :*/
fileprivate let str_nameValue:String = "#F5F5F5let kit text at"

/*: "Search by UID" :*/
fileprivate let str_endText:String = "Searlabel to"
fileprivate let str_addLabTitle:String = " UIDview line make call"

/*: "icon_search_sea" :*/
fileprivate let str_contentListNumberValue:[Character] = ["i","c","o","n","_","s","e","a","r","c","h","_"]
fileprivate let str_buttonValue:[Character] = ["s","e","a"]

/*: "Can’t find~" :*/
fileprivate let str_reasonTitle:String = "Can’t original in top right"
fileprivate let str_infoName:[Character] = ["f","i","n","d","~"]

/*: "icon_kong_kong_default" :*/
fileprivate let str_inviteEqualValue:String = "icon_return collection player text"
fileprivate let str_playerValue:String = "value request current_kong"
fileprivate let str_giftBeginValue:[Character] = ["_","d","e","f","a","u","l","t"]

/*: "Please enter the query UID" :*/
fileprivate let str_correlationTitle:[Character] = ["P","l","e","a","s","e"," ","e","n","t","e","r"]
fileprivate let str_frameValue:String = " the qureturn stop pic collection"
fileprivate let str_mediumValue:[Character] = ["e","r","y"," ","U","I","D"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuantityMediaThen.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingSearchIDViewController: TalkingBaseViewController {
class QuantityMediaThen: PropertyViewController {
	var pastOn: Bool = false
	var atTotalerestTitle: String = "at"

    var videoImageView: UIImageView?

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: setupSubviews()
        aircraftSubviews()
        //: setupSubViewsConstraint()
        namePage()
        //: bindInteraction()
        endViewInfo()

        videoImageView = UIImageView(frame: self.view.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(Double(self.view.center.x)), height: CGFloat(Int(self.view.center.x)))))
        if let videoImageView = videoImageView {
            self.videoImageView?.image = UIImage(named: (String(str_removeData) + str_viewValue.replacingOccurrences(of: "detail", with: "e")))
            if (videoImageView.canResignFirstResponder != true) && (videoImageView.animationImages?.count == Int(videoImageView.autoresizingMask.rawValue)) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(videoImageView)
            }
        }
    
            if (whileEditingView.layoutMargins.left == 18.98) && (whileEditingView.tintColor != nil && whileEditingView.tintColor.cgColor == UIColor.systemPurple.cgColor) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let rowChoiceLet = LockColorView(frame: whileEditingView.bounds)

            
            rowChoiceLet.giftConversationOff = { [self] layerInviteOpen in
            self.pastOn = layerInviteOpen
            
            var rowChoiceLet = self.hideNavi
                rowChoiceLet = true
                rowChoiceLet = false
            if rowChoiceLet != self.pastOn {
                self.pastOn = rowChoiceLet
            }
            
                self.pastOn = true
                self.pastOn = !self.pastOn
            return self.pastOn
            }
            rowChoiceLet.extraContent = { [self] colorContent in
            self.atTotalerestTitle = colorContent
            
            return self.atTotalerestTitle
            }
                whileEditingView.addSubview(rowChoiceLet)
            }

	}

    // MARK: - Lazy Load

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = self.view.backgroundColor
        nav.backgroundColor = self.view.backgroundColor

        //: nav.addSubview(searchBtn)
        nav.addSubview(searchBtn)
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 72, height: 32))
            make.size.equalTo(CGSize(width: 72, height: 32))
        }

        //: nav.addSubview(searchTF)
        nav.addSubview(searchTF)
        //: searchTF.snp.makeConstraints { make in
        searchTF.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(32)
            make.height.equalTo(32)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.setTitle("Search".localized, for: .normal)
        btn.setTitle((String(str_blockText)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 15)
        btn.titleLabel?.font = UIFont.drogueSize(fontSize: 15)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 72, height: 32)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: 72, height: 32)), for: .normal)
        //: btn.layer.cornerRadius = 16
        btn.layer.cornerRadius = 16
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fillToName), for: .touchUpInside)
        //: btn.alpha = 0.5
        btn.alpha = 0.5

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var searchTF: UITextField = {
    private lazy var searchTF: UITextField = {
        //: let tf = UITextField()
        let tf = UITextField()
        //: tf.leftView = self.unlessEditingView
        tf.leftView = self.unlessEditingView
        //: tf.leftViewMode = .always
        tf.leftViewMode = .always
        //: tf.backgroundColor = UIColor(hex: "#F5F5F5")
        tf.backgroundColor = UIColor(hex: (String(str_nameValue.prefix(7))))
        //: tf.textColor = UIColor.appTitleColor()
        tf.textColor = UIColor.blockOf()
        //: tf.font = UIFont.pingfangRugularFont(fontSize: 16)
        tf.font = UIFont.drogueSize(fontSize: 16)
        //: tf.layer.cornerRadius = 16
        tf.layer.cornerRadius = 16
        //: tf.layer.masksToBounds = true
        tf.layer.masksToBounds = true
        //: tf.returnKeyType = .search
        tf.returnKeyType = .search
        //: tf.keyboardType = .asciiCapableNumberPad
        tf.keyboardType = .asciiCapableNumberPad
        //: tf.clearButtonMode = .whileEditing
        tf.clearButtonMode = .whileEditing
        //: tf.delegate = self
        tf.delegate = self
        //: tf.placeholder = "Search by UID".localized
        tf.placeholder = (String(str_endText.prefix(4)) + "ch by" + String(str_addLabTitle.prefix(4))).localized

        //: return tf
        return tf
        //: }()
    }()

    //: private lazy var unlessEditingView: UIView = {
    private lazy var unlessEditingView: UIView = {
        //: let image = UIImage.outsideText(name: "icon_search_sea")
        let image = UIImage.outsideText(name: (String(str_contentListNumberValue) + String(str_buttonValue)))
        //: let leftView = UIView(frame: CGRect(x: 0, y: 0, width: image.size.width+18, height: image.size.height))
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: image.size.width + 18, height: image.size.height))
        //: let imageView = UIImageView(frame: CGRect(x: 12, y: 0, width: image.size.width, height: image.size.height))
        let imageView = UIImageView(frame: CGRect(x: 12, y: 0, width: image.size.width, height: image.size.height))
        //: imageView.contentMode = .center
        imageView.contentMode = .center
        //: imageView.image = image
        imageView.image = image
        //: leftView.addSubview(imageView)
        leftView.addSubview(imageView)

        //: return leftView
        return leftView
        //: }()
    }()

    //: private lazy var whileEditingView: UIView = {
    private lazy var whileEditingView: UIView = {
        //: let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 18))
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 18))
        //: return leftView
        return leftView
        //: }()
    }()

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
        //: tabV.register(TalkingSearchItemCell.self, forCellReuseIdentifier: TalkingSearchItemCell.className())
        tabV.register(CustomView.self, forCellReuseIdentifier: CustomView.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: tabV.contentInsetAdjustmentBehavior = .never
            tabV.contentInsetAdjustmentBehavior = .never
        }

        //: return tabV
        return tabV
        //: }()
    }()

    //: private lazy var emptyV: EmptyView = {
    private lazy var emptyV: EmptyView = {
        //: var style = EmptyStyle()
        var style = PlunderedEmptyStyle()
        //: style.TipsTitle = "Can’t find~".localized
        style.TipsTitle = (String(str_reasonTitle.prefix(6)) + String(str_infoName)).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(str_inviteEqualValue.prefix(5)) + "kong" + String(str_playerValue.suffix(5)) + String(str_giftBeginValue))
        //: style.addHeaderRefresh = false
        style.addHeaderRefresh = false
        //: let v = EmptyView(frame: CGRect(x: 0, y: 14+NavigationBarHeight, width: ScreenWidth, height: ScreenHeight-(14+NavigationBarHeight+StatusBarNavigationBarHeight)), style: style)
        let v = EmptyView(frame: CGRect(x: 0, y: 14 + a_toText, width: a_blockValue, height: a_formalValue - (14 + a_toText + a_itemTitle)), style: style)
        //: v.isUserInteractionEnabled = false
        v.isUserInteractionEnabled = false
        //: return v
        return v
        //: }()
    }()

    //: private lazy var reqManager: TalkingSearchManager = {
    private lazy var reqManager: SelectCheckManager = //: return SelectCheckManager()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingSearchIDViewController {
extension QuantityMediaThen {
    // 根据uid查询用户
    //: private func req_searchUid() {
    private func sharedUid() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: guard searchTF.text?.count ?? 0 > 0 else {
        guard searchTF.text?.count ?? 0 > 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please enter the query UID".localized)
            self.episode(showMsg: (String(str_correlationTitle) + String(str_frameValue.prefix(7)) + String(str_mediumValue)).localized)
            //: return
            return
        }

        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: reqManager.req_singleUser(uid: searchTF.text ?? "") { [weak self] succeed, result, errorModel in
        reqManager.cardTable(uid: searchTF.text ?? "") { [weak self] _, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: self.tableView.isHidden = (self.reqManager.searchListDataArr.count == 0) ? true:false
            self.tableView.isHidden = (self.reqManager.searchListDataArr.count == 0) ? true : false
            //: self.emptyV.isHidden = !self.tableView.isHidden
            self.emptyV.isHidden = !self.tableView.isHidden
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }
}

// MARK: - Event

//: extension TalkingSearchIDViewController {
extension QuantityMediaThen {
    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func fillToName() {
        //: req_searchUid()
        sharedUid()
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

//: extension TalkingSearchIDViewController: UITableViewDataSource, UITableViewDelegate {
extension QuantityMediaThen: UITableViewDataSource, UITableViewDelegate {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return reqManager.searchListDataArr.count
        return reqManager.searchListDataArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.row < reqManager.searchListDataArr.count else { return UITableViewCell() }
        guard indexPath.row < reqManager.searchListDataArr.count else { return UITableViewCell() }
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingSearchItemCell.className(), for: indexPath) as! TalkingSearchItemCell
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomView.className(), for: indexPath) as! CustomView
        //: let model = reqManager.searchListDataArr[indexPath.row]
        let model = reqManager.searchListDataArr[indexPath.row]
        //: cell.refreshCell(model: model)
        cell.fillDownMonth(model: model)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: guard indexPath.row < reqManager.searchListDataArr.count else { return }
        guard indexPath.row < reqManager.searchListDataArr.count else { return }
        //: let model = reqManager.searchListDataArr[indexPath.row]
        let model = reqManager.searchListDataArr[indexPath.row]
        //: LimitPushManager.share.func__pushToUserDetailVC(uid: model.uid)
        LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: model.uid)
    }
}

// MARK: - UITextFieldDelegate

//: extension TalkingSearchIDViewController: UITextFieldDelegate {
extension QuantityMediaThen: UITextFieldDelegate {
    //: func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        //: textField.leftView = whileEditingView
        textField.leftView = whileEditingView
        //: return true
        return true
    }

    //: func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        //: if textField.text?.count == 0 { textField.leftView = unlessEditingView }
        if textField.text?.count == 0 { textField.leftView = unlessEditingView }
        //: return true
        return true
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingSearchIDViewController: JXPagingViewListViewDelegate {
extension QuantityMediaThen: JXPagingViewListViewDelegate {
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

//: extension TalkingSearchIDViewController {
extension QuantityMediaThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func aircraftSubviews() {
        //: self.view.addSubview(navView)
        self.view.addSubview(navView)
        //: self.view.addSubview(emptyV)
        self.view.addSubview(emptyV)
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func namePage() {
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.top.equalTo(14)
            make.top.equalTo(14)
            //: make.leading.width.equalToSuperview()
            make.leading.width.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(a_toText)
        }

        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom)
            make.top.equalTo(navView.snp.bottom)
            //: make.leading.width.bottom.equalToSuperview()
            make.leading.width.bottom.equalToSuperview()
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func endViewInfo() {
        // 监听搜索框文本长度
        //: searchTF.rx.text.orEmpty.asObservable()
        searchTF.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.searchBtn.alpha = ($0.count == 0) ? 0.5:1
                self.searchBtn.alpha = ($0.count == 0) ? 0.5 : 1
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
