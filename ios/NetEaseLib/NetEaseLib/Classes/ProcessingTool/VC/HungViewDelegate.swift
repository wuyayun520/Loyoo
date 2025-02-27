
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let str_centerName:[Character] = ["B","e","a","u","t","i","f"]
fileprivate let str_untilData:[Character] = ["y"," ","S","e","t","t","i","n","g","s"]

/*: "icon_me_videoSet_beauty" :*/
fileprivate let str_colorName:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o","S","e","t","_","b","e","a","u"]
fileprivate let str_levelErrorData:[Character] = ["t","y"]

/*: "Video Settings" :*/
fileprivate let str_bottomTableValue:String = "view make selfVideo "
fileprivate let str_composeData:String = "details"

/*: "mic_image" :*/
fileprivate let str_modeViewName:[Character] = ["m","i","c","_","i"]
fileprivate let str_norData:String = "magcell"

/*: "TalkingSettingReceiveVideoCellId" :*/
fileprivate let str_toTitle:[UInt8] = [0x54,0x61,0x6c,0x6b,0x69,0x6e,0x67,0x53,0x65,0x74,0x74,0x69,0x6e,0x67,0x52,0x65,0x63,0x65,0x69,0x76,0x65,0x56,0x69,0x64,0x65,0x6f,0x43,0x65,0x6c,0x6c,0x49,0x64]

/*: "Enter \"Settings\" and open \"Camera\" permission to use this function normally" :*/
fileprivate let str_equalValue:[UInt8] = [0x7,0x2c,0x36,0x27,0x30,0x62,0x60,0x11,0x27,0x36,0x36,0x2b,0x2c,0x25,0x31,0x60,0x62,0x23,0x2c,0x26,0x62,0x2d,0x32,0x27,0x2c,0x62,0x60,0x1,0x23,0x2f,0x27,0x30,0x23,0x60,0x62,0x32,0x27,0x30,0x2f,0x2b,0x31,0x31,0x2b,0x2d,0x2c,0x62,0x36,0x2d,0x62,0x37,0x31,0x27,0x62,0x36,0x2a,0x2b,0x31,0x62,0x24,0x37,0x2c,0x21,0x36,0x2b,0x2d,0x2c,0x62,0x2c,0x2d,0x30,0x2f,0x23,0x2e,0x2e,0x3b]

/*: "Cancel" :*/
fileprivate let str_imageValue:String = "make"
fileprivate let str_shareData:String = "ancrawl"

/*: "Settings" :*/
fileprivate let str_observeQuitContent:String = "commit file atSettings"

/*: "Purple means turn on the call invitation, grey means turn off the call invitation." :*/
fileprivate let str_withContent:[UInt8] = [0x50,0x75,0x72,0x70,0x6c,0x65,0x20,0x6d,0x65,0x61,0x6e,0x73,0x20,0x74,0x75,0x72,0x6e,0x20,0x6f,0x6e,0x20,0x74,0x68,0x65,0x20,0x63,0x61,0x6c,0x6c,0x20,0x69,0x6e,0x76,0x69,0x74,0x61,0x74,0x69,0x6f,0x6e,0x2c,0x20,0x67,0x72,0x65,0x79,0x20,0x6d,0x65,0x61,0x6e,0x73,0x20,0x74,0x75,0x72,0x6e,0x20,0x6f,0x66,0x66,0x20,0x74,0x68,0x65,0x20,0x63,0x61,0x6c,0x6c,0x20,0x69,0x6e,0x76,0x69,0x74,0x61,0x74,0x69,0x6f,0x6e,0x2e]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HungViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class HungViewDelegate: PropertyViewController {
	var faceText: String = "gift"
	var userDictionary: [AnyHashable: String] = [:]

    var releaseSizeImageView: UIImageView?

    // MARK: - life cycle

    //: private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
    private var headerData = [((String(str_centerName) + String(str_untilData)), (String(str_colorName) + String(str_levelErrorData))),
                              //: ("", ""),
                              ("", ""),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.playerEqual()
        //: self.title = "Video Settings".localized
        self.title = (String(str_bottomTableValue.suffix(6)) + "Setti" + str_composeData.replacingOccurrences(of: "detail", with: "ng")).localized
        //: self.setupSubviews()
        self.setupWithStar()
        //: self.setupSubViewsConstraint()
        self.basilarArteryConstraint()

        releaseSizeImageView = UIImageView(frame: self.view.frame)
        if let releaseSizeImageView = releaseSizeImageView {
            self.releaseSizeImageView?.image = UIImage(named: (String(str_modeViewName) + str_norData.replacingOccurrences(of: "cell", with: "e")))
            if (releaseSizeImageView.inputAccessoryViewController != nil) && (releaseSizeImageView.userActivity != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(releaseSizeImageView)
            }
        }
    
            if (MainTable.alignmentRectInsets.bottom == 11) && (MainTable.convert(CGRect(x: 0, y: 0, width: CGFloat(144.74), height: 0), to: MainTable.superview).origin.x == 25.95) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let userCourse = EndTapView(frame: MainTable.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(607.97), width: CGFloat(155.26), height: CGFloat(3.71))))

            userCourse.indexClickName = { [self] popName in
            self.faceText = popName
            
            return self.faceText
            }
            userCourse.sexAtDictionary = { [self] moveDictionary in
            self.userDictionary = moveDictionary
            
            guard var value = self.userDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                MainTable.addSubview(userCourse)
            }

	}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.appBgColor()
        table.backgroundColor = UIColor.playerEqual()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: "TalkingSettingReceiveVideoCellId")
        table.register(AtSheView.self, forCellReuseIdentifier: String(bytes: str_toTitle, encoding: .utf8)!)
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

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension HungViewDelegate {
    //: func judgeCameraAuthorization() {
    func important() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        PrefaceReactiveCompatible.appBlock(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard SocketReactiveCompatible.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.episode(showMsg: a_viewNetValue)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = AttractivenessBeautyVc()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                TitleAlertShow.admittance(title: nil, message: String(bytes: str_equalValue.map{$0^66}, encoding: .utf8)!.localized, leftBtnTitle: (str_imageValue.replacingOccurrences(of: "make", with: "C") + str_shareData.replacingOccurrences(of: "raw", with: "e")).localized, rightBtnTitle: (String(str_observeQuitContent.suffix(8))).localized) {
                    //: TalkingAlertShow.hideAlert()
                    TitleAlertShow.lastAlert()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    TitleAlertShow.lastAlert()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                        UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension HungViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
            //: } else if section == 2 {
        } else if section == 2 {
            //: return 1
            return 1
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && a_keyPostText {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if section == 1 {
        if section == 1 {
            //: return actualWidth(w: 50.0)
            return actualWidth(w: 50.0)
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: "TalkingSettingReceiveVideoCellId", for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: AtSheView = tableView.dequeueReusableCell(withIdentifier: String(bytes: str_toTitle, encoding: .utf8)!, for: indexPath) as! AtSheView
            //: if indexPath.section == 1 {
            if indexPath.section == 1 {
                //: if indexPath.row == 0 {
                if indexPath.row == 0 {
                    //: cell.refreshCell(type: .video)
                    cell.femaleMammal(type: .video)
                    //: } else if indexPath.row == 1 {
                } else if indexPath.row == 1 {
                    //: cell.refreshCell(type: .voice)
                    cell.femaleMammal(type: .voice)
                }
                //: } else if indexPath.section == 2 {
            } else if indexPath.section == 2 {
                //: cell.refreshCell(type: .randomVideo)
                cell.femaleMammal(type: .randomVideo)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && a_keyPostText else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = TelecastingReactiveCompatible(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.colored(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.errorPath(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && a_keyPostText {
                //: self.judgeCameraAuthorization()
                self.important()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: guard section == 1 else { return UIView() }
        guard section == 1 else { return UIView() }
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualWidth(w: 50.0)))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: actualWidth(w: 50.0)))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.playerEqual()
        //: let title = UILabel()
        let title = UILabel()
        //: title.backgroundColor = UIColor.clear
        title.backgroundColor = UIColor.clear
        //: title.font = UIFont.pingfangRugularFont(fontSize: 14)
        title.font = UIFont.drogueSize(fontSize: 14)
        //: title.textColor = UIColor.appValueDetailColor()
        title.textColor = UIColor.observerShared()
        //: title.text = "Purple means turn on the call invitation, grey means turn off the call invitation.".localized
        title.text = String(bytes: str_withContent, encoding: .utf8)!.localized
        //: title.numberOfLines = 0
        title.numberOfLines = 0
        //: title.textAlignment = .center
        title.textAlignment = .center
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension HungViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupWithStar() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func basilarArteryConstraint() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
