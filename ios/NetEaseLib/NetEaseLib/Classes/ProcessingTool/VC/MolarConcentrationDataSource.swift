
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_serverPersonResignText:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "Greeting Message Settings" :*/
fileprivate let str_managerData:String = "Greetself leading"
fileprivate let str_modeValue:String = "ESSAGE"
fileprivate let str_textValue:String = "ngcorner"

/*: "leading_add_image" :*/
fileprivate let str_shareValue:[Character] = ["l","e","a","d","i","n"]
fileprivate let str_rangeData:[Character] = ["g","_","a","d","d","_","i","m","a","g","e"]

/*: "EventHungViewCell" :*/
fileprivate let str_pathValue:String = "pic in atTalkin"
fileprivate let str_hiddenValue:String = "tmodeg"
fileprivate let str_selectedTitle:String = "vertical sectionSetT"
fileprivate let str_needPopData:String = "ableCellreturn top progress"

/*: "Voice greeting" :*/
fileprivate let str_playerTitle:[Character] = ["V","o","i","c","e"," ","g","r","e","e","t","i","n","g"]

/*: "icon_me_greet_vioce" :*/
fileprivate let str_defineName:[Character] = ["i","c","o","n","_","m","e","_","g","r","e","e"]
fileprivate let str_makeMediaName:[Character] = ["t","_","v","i","o","c","e"]

/*: "Text greeting" :*/
fileprivate let str_liveValue:[Character] = ["T","e","x","t"," ","g","r"]
fileprivate let str_viewName:[Character] = ["e","e","t","i","n","g"]

/*: "icon_me_greet_text" :*/
fileprivate let str_norName:String = "count ificon_m"
fileprivate let str_makeValue:String = "raw model key opeet_t"
fileprivate let str_dataContent:String = "eimage"

/*: "Photo greeting" :*/
fileprivate let str_levelSizeTitle:String = "Photo height self share"
fileprivate let str_sizeName:String = "tequalg"

/*: "icon_me_greet_photo" :*/
fileprivate let str_giftName:[Character] = ["i","c","o","n","_","m"]
fileprivate let str_equalText:String = "e_greepair copy"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MolarConcentrationDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/9.
//

//: import UIKit
import UIKit

//: class TalkingAutoGreetSettingVC: TalkingBaseViewController {
class MolarConcentrationDataSource: PropertyViewController {
	var plunkQuantity: Double = -25.2
	var selectDictionary: [AnyHashable: String] = [:]
	var headSourceTotal: Double = 9.3
	var areaDictionary: [AnyHashable: String] = [:]

    var talkImageView: UIImageView?

    //: var settingModel = TalkingSettingModel()
    var settingModel = MMeasurable()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_serverPersonResignText, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: getSettingData()
        colorData()
    
            if (MainTable.forFirstBaselineLayout.center.x == 96.01) && (MainTable.gestureRecognizers != nil && MainTable.gestureRecognizers!.count == 12) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let finishModel = UpCommentView(frame: MainTable.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
            finishModel.beautyOpen = self.hideNavi

            
            finishModel.requestTotal = { [self] cornerCount in
            self.plunkQuantity = cornerCount
            
            return self.plunkQuantity
            }
            finishModel.viewDictionary = { [self] playerDictionary in
            self.selectDictionary = playerDictionary
            
            guard var value = self.selectDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                MainTable.addSubview(finishModel)
            }

	}

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
	if let talkImageView = talkImageView {

            if (talkImageView.forFirstBaselineLayout.center.x == 96.01) && (talkImageView.gestureRecognizers != nil && talkImageView.gestureRecognizers!.count == 12) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let finishModel = UpCommentView(frame: talkImageView.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
            finishModel.beautyOpen = animated

            
            finishModel.requestTotal = { [self] cornerCount in
            self.headSourceTotal = cornerCount
            
            return self.headSourceTotal
            }
            finishModel.viewDictionary = { [self] playerDictionary in
            self.areaDictionary = playerDictionary
            
            guard var value = self.areaDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                talkImageView.addSubview(finishModel)
            }

	}

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Greeting Message Settings".localized
        self.title = (String(str_managerData.prefix(5)) + "ing M" + str_modeValue.lowercased() + " Setti" + str_textValue.replacingOccurrences(of: "corner", with: "s")).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.playerEqual()
        //: setupSubviews()
        nearUserSubviews()
        //: setupSubViewsConstraint()
        save()

        talkImageView = UIImageView(frame: self.view.frame.union(CGRect(x: CGFloat(Int(self.view.contentScaleFactor)), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
        if let talkImageView = talkImageView {
            self.talkImageView?.image = UIImage(named: (String(str_shareValue) + String(str_rangeData)))
            if (talkImageView.clearsContextBeforeDrawing) && (talkImageView.layer.zPosition == 56.93) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(talkImageView)
            }
        }
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue - a_userTitle), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingGreetingSetTableCell.self, forCellReuseIdentifier: "TalkingGreetingSetTableCell")
        table.register(EventHungViewCell.self, forCellReuseIdentifier: (String(str_pathValue.suffix(6)) + "gGree" + str_hiddenValue.replacingOccurrences(of: "mode", with: "in") + String(str_selectedTitle.suffix(4)) + String(str_needPopData.prefix(8))))
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingAutoGreetSettingVC {
extension MolarConcentrationDataSource {
    //: func getSettingData() {
    func colorData() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetGreetSetting(params: dict) { succeed, result, errorModel in
        ConstraintRequestTool.customerUser(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<MMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAutoGreetSettingVC: UITableViewDelegate, UITableViewDataSource {
extension MolarConcentrationDataSource: UITableViewDelegate, UITableViewDataSource {
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
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingGreetingSetTableCell"
        let identifier = (String(str_pathValue.suffix(6)) + "gGree" + str_hiddenValue.replacingOccurrences(of: "mode", with: "in") + String(str_selectedTitle.suffix(4)) + String(str_needPopData.prefix(8)))
        //: let cell: TalkingGreetingSetTableCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingGreetingSetTableCell
        let cell: EventHungViewCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! EventHungViewCell

        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: cell.setCellMessage(titile: "Voice greeting".localized, iconStr: "icon_me_greet_vioce", isShowDet: self.settingModel.audioIsSet != 0)
            cell.setClickShowButton(titile: (String(str_playerTitle)).localized, iconStr: (String(str_defineName) + String(str_makeMediaName)), isShowDet: self.settingModel.audioIsSet != 0)

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: cell.setCellMessage(titile: "Text greeting".localized, iconStr: "icon_me_greet_text", isShowDet: self.settingModel.textIsSet != 0)
            cell.setClickShowButton(titile: (String(str_liveValue) + String(str_viewName)).localized, iconStr: (String(str_norName.suffix(6)) + "e_gr" + String(str_makeValue.suffix(5)) + str_dataContent.replacingOccurrences(of: "image", with: "xt")), isShowDet: self.settingModel.textIsSet != 0)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: cell.setCellMessage(titile: "Photo greeting".localized, iconStr: "icon_me_greet_photo", isShowDet: self.settingModel.intimatePhotoIsSet != 0)
            cell.setClickShowButton(titile: (String(str_levelSizeTitle.prefix(6)) + "gree" + str_sizeName.replacingOccurrences(of: "equal", with: "in")).localized, iconStr: (String(str_giftName) + String(str_equalText.prefix(6)) + "t_photo"), isShowDet: self.settingModel.intimatePhotoIsSet != 0)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let vc = TalkingGreetAudioVC.init()
            let vc = LayerAudioVc()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let vc = TalkingGreetTextVC.init()
            let vc = CurtsyRecognizerDelegate()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let vc = TalkingGreetPhotoVC.init()
            let vc = BeginViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 15))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: 15))
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }
}

// MARK: - Layout

//: extension TalkingAutoGreetSettingVC {
extension MolarConcentrationDataSource {
    //: private func setupSubviews() {
    private func nearUserSubviews() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    //: private func setupSubViewsConstraint() {
    private func save() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
