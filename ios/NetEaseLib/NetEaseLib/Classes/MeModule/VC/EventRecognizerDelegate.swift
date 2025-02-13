
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_tapData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "Price Settings" :*/
fileprivate let str_blackName:[Character] = ["P","r","i","c","e"," ","S","e"]
fileprivate let str_playerValue:[Character] = ["t","t","i","n","g","s"]

/*: "view_image" :*/
fileprivate let str_commentName:String = "view_imaactual invite"
fileprivate let str_equalData:[Character] = ["g","e"]

/*: "5.00" :*/
fileprivate let str_appContent:String = "5.00"

/*: "30" :*/
fileprivate let str_outsideData:String = "make0"

/*: "20" :*/
fileprivate let str_cookieData:[Character] = ["2","0"]

/*: "Chat price settings" :*/
fileprivate let str_viewData:[Character] = ["C","h","a","t"," ","p","r"]
fileprivate let str_tapValue:[Character] = ["i","c"]
fileprivate let str_tableContent:String = "e setobserver accept button view else"

/*: "Video call price settings" :*/
fileprivate let str_textData:String = "let viewVide"
fileprivate let str_styleText:String = "table height filel pri"
fileprivate let str_cellContent:String = "ttwithgs"

/*: "Voice call price settings" :*/
fileprivate let str_windowText:String = "lab return display keyVoic"
fileprivate let str_aspectTitle:String = "path gift title colorll p"
fileprivate let str_labTitle:String = " setticenter label temp self"
fileprivate let str_countCenterTextContent:String = "nviews"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EventRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemalePriceSetVC: TalkingBaseViewController {
class EventRecognizerDelegate: PropertyViewController {
	var leadClose: Bool = true
	var someoneVideoArray: [AnyHashable] = []
	var phoneClose: Bool = false
	var timeArray: [AnyHashable] = []

    var viewImageView: UIImageView?

    // MARK: - 属性声明 & 生命周期方法

    //: lazy var messageArray: [ChatPriceModel] = []
    lazy var messageArray: [ImagePriceModel] = []
    //: lazy var videoArray: [ChatPriceModel] = []
    lazy var videoArray: [ImagePriceModel] = []
    //: lazy var voiceArray: [ChatPriceModel] = []
    lazy var voiceArray: [ImagePriceModel] = []

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_tapData, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    
	if let viewImageView = viewImageView {

            if (viewImageView.alpha != 1.0) && (viewImageView.semanticContentAttribute == .spatial) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let menuVoice = BeyondPointHeightView(frame: viewImageView.bounds.union(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
            menuVoice.transferClose = animated



            menuVoice.addressOff = { [self] lastOff in
            self.phoneClose = lastOff
            
            var menuVoice = self.hideNavi
            menuVoice = true
            if menuVoice != self.phoneClose {
                self.phoneClose = menuVoice
            }
            
                self.phoneClose = false
                self.phoneClose = !self.phoneClose
            return self.phoneClose
            }
            menuVoice.valueArray = { [self] rowArray in
            self.timeArray = rowArray
            
            guard var value = self.timeArray as? [String] else {
                return nil
            }
            return value
            }
                viewImageView.addSubview(menuVoice)
            }

	}

	}

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
	if let viewImageView = viewImageView {

            if (viewImageView.semanticContentAttribute == .spatial) && (viewImageView.motionEffects.count == 17) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let dataLet = BeyondPointHeightView()
            dataLet.transferClose = self.hideNavi



            dataLet.addressOff = { [self] lastOff in
            self.leadClose = lastOff
            
            var dataLet = self.hideNavi
                dataLet = true
                dataLet = !dataLet
            if dataLet != self.leadClose {
                self.leadClose = dataLet
            }
            
                self.leadClose = true
                self.leadClose = !self.leadClose
            return self.leadClose
            }
            dataLet.valueArray = { [self] rowArray in
            self.someoneVideoArray = rowArray
            
            guard var value = self.someoneVideoArray as? [String] else {
                return nil
            }
            return value
            }
                viewImageView.addSubview(dataLet)
            }

	}

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.hideNavi = false
        self.hideNavi = false
        //: self.title = "Price Settings".localized
        self.title = (String(str_blackName) + String(str_playerValue)).localized

        //: self.setupSubviews()
        self.sumeraction()
        //: self.setupSubViewsConstraint()
        self.current()
        //: self.bindInteraction()
        self.intervalerchange()
        //: self.setupData()
        self.talk()

        viewImageView = UIImageView(frame: self.view.bounds.integral)
        if let viewImageView = viewImageView {
            self.viewImageView?.image = UIImage(named: (String(str_commentName.prefix(8)) + String(str_equalData)))
            if (viewImageView.constraintsAffectingLayout(for: .vertical).count == 53) && (viewImageView.undoManager != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(viewImageView)
            }
        }
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.playerEqual()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemalePriceSetCell.self, forCellReuseIdentifier: TalkingFemalePriceSetCell.className())
        $0.register(ManagerThen.self, forCellReuseIdentifier: ManagerThen.className())
        //: view.addSubview($0)
        view.addSubview($0)
        //: $0.snp.makeConstraints { make in
        $0.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}

// MARK: data

//: extension TalkingFemalePriceSetVC {
extension EventRecognizerDelegate {
    //: private func setupData() {
    private func talk() {
        //: for tempModel in MeasurementAppManager.share.appUserConfigMode.chatPriceSettings {
        for tempModel in MeasurementAppManager.share.appUserConfigMode.chatPriceSettings {
            //: if tempModel.price == Int(Double(MeasurementAppManager.share.loginUserMode.messagePrice ?? "5.00")!) {
            if tempModel.price == Int(Double(MeasurementAppManager.share.loginUserMode.messagePrice ?? (str_appContent.capitalized))!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: messageArray.append(tempModel)
            messageArray.append(tempModel)
        }
        //: for tempModel in MeasurementAppManager.share.appUserConfigMode.videoPriceSettings {
        for tempModel in MeasurementAppManager.share.appUserConfigMode.videoPriceSettings {
            //: if tempModel.price == Int(Double(MeasurementAppManager.share.loginUserMode.videoPrice ?? "30")!) {
            if tempModel.price == Int(Double(MeasurementAppManager.share.loginUserMode.videoPrice ?? "30")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: videoArray.append(tempModel)
            videoArray.append(tempModel)
        }
        //: for tempModel in MeasurementAppManager.share.appUserConfigMode.voicePriceSettings {
        for tempModel in MeasurementAppManager.share.appUserConfigMode.voicePriceSettings {
            //: if tempModel.price == Int(Double(MeasurementAppManager.share.loginUserMode.voicePrice ?? "20")!) {
            if tempModel.price == Int(Double(MeasurementAppManager.share.loginUserMode.voicePrice ?? "20")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: voiceArray.append(tempModel)
            voiceArray.append(tempModel)
        }
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemalePriceSetVC: UITableViewDelegate, UITableViewDataSource {
extension EventRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 127
        return 127
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 45
        return 45
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemalePriceSetCell.className(), for: indexPath) as! TalkingFemalePriceSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ManagerThen.className(), for: indexPath) as! ManagerThen
        //: var price = 0
        var price = 0
        //: var level = 0
        var level = 0
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: for model in messageArray {
            for model in messageArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 1:
        case 1:
            //: for model in videoArray {
            for model in videoArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 2:
        case 2:
            //: for model in voiceArray {
            for model in voiceArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: cell.setCellData(index: indexPath.section, price: price, leve: level)
        cell.followQuery(index: indexPath.section, price: price, leve: level)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headerView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: ScreenWidth, height: 45))
        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: a_blockValue, height: 45))
        //: headerView.backgroundColor = UIColor.appBgColor()
        headerView.backgroundColor = UIColor.playerEqual()

        //: let titleLab = UILabel.init(frame: CGRect(x: 15, y: 16, width: ScreenWidth-30, height: 20))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 16, width: a_blockValue - 30, height: 20))
        //: switch section {
        switch section {
        //: case 0:
        case 0:
            //: titleLab.text = "Chat price settings".localized
            titleLab.text = (String(str_viewData) + String(str_tapValue) + String(str_tableContent.prefix(5)) + "tings").localized
        //: break
        //: case 1:
        case 1:
            //: titleLab.text = "Video call price settings".localized
            titleLab.text = (String(str_textData.suffix(4)) + "o cal" + String(str_styleText.suffix(5)) + "ce se" + str_cellContent.replacingOccurrences(of: "with", with: "in")).localized
        //: break
        //: case 2:
        case 2:
            //: titleLab.text = "Voice call price settings".localized
            titleLab.text = (String(str_windowText.suffix(4)) + "e ca" + String(str_aspectTitle.suffix(4)) + "rice" + String(str_labTitle.prefix(6)) + str_countCenterTextContent.replacingOccurrences(of: "view", with: "g")).localized
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: titleLab.textColor = .appValueDetailColor()
        titleLab.textColor = .observerShared()
        //: titleLab.font = .pingfangFont(type: .Regular, fontSize: 16)
        titleLab.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)
        //: return headerView
        return headerView
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let vc = TalkingFemaleChatSetView.init(frame: self.view.frame)
        let vc = CreatureView(frame: self.view.frame)
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: vc.dataArray = messageArray
            vc.dataArray = messageArray
        //: break
        //: case 1:
        case 1:
            //: vc.dataArray = videoArray
            vc.dataArray = videoArray
        //: break
        //: case 2:
        case 2:
            //: vc.dataArray = voiceArray
            vc.dataArray = voiceArray
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: vc.showType = indexPath.section
        vc.showType = indexPath.section
        //: vc.showView()
        vc.locating()
        //: vc.seletePriceBlock = {[weak self] (seletemodel) in
        vc.seletePriceBlock = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()
        }
    }
}

// MARK: - Request & 数据处理

//: extension TalkingFemalePriceSetVC {
extension EventRecognizerDelegate {}

// MARK: - Public Event

//: extension TalkingFemalePriceSetVC {
extension EventRecognizerDelegate {}

// MARK: - Privete Event

//: extension TalkingFemalePriceSetVC {
extension EventRecognizerDelegate {}

// MARK: - Delegate

//: extension TalkingFemalePriceSetVC {
extension EventRecognizerDelegate {}

// MARK: - Layout

//: extension TalkingFemalePriceSetVC{
extension EventRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func sumeraction() {
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func current() {}

    // 添加事件
    //: private func bindInteraction() {
    private func intervalerchange() {}
}
