
//: Declare String Begin

/*: "Increase：" :*/
fileprivate let str_instancePhoneData:String = "live"
fileprivate let str_imageValue:[Character] = ["n","c","r","e","a","s","e","："]

/*: "Decrease：" :*/
fileprivate let str_upText:String = "normal equal criticizeDecre"
fileprivate let str_liveName:[Character] = ["a","s","e","\u{ff1a}"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "bg_talk_closed_tc" :*/
fileprivate let str_addName:String = "bg_talobject let"
fileprivate let str_equalName:[Character] = ["e","d","_","t","c"]

/*: "bg_talk_closed_tc_intimate" :*/
fileprivate let str_maleContent:String = "bg_talerror event"
fileprivate let str_connectValue:String = "name add table icon valuesed_"
fileprivate let str_normalValue:[Character] = ["t","i","m","a","t","e"]

/*: "btn_intimate_close" :*/
fileprivate let str_tempTitle:String = "B"
fileprivate let str_inputValue:String = "var for control bottomtn_int"
fileprivate let str_modelTitle:String = "_closemake equal effect image any"

/*: "Giving gifts 、making calls and sending paid messages can increase intimacy~" :*/
fileprivate let str_keyFitPushTitle:[UInt8] = [0x47,0x69,0x76,0x69,0x6e,0x67,0x20,0x67,0x69,0x66,0x74,0x73,0x20,0xe3,0x80,0x81,0x6d,0x61,0x6b,0x69,0x6e,0x67,0x20,0x63,0x61,0x6c,0x6c,0x73,0x20,0x61,0x6e,0x64,0x20,0x73,0x65,0x6e,0x64,0x69,0x6e,0x67,0x20,0x70,0x61,0x69,0x64,0x20,0x6d,0x65,0x73,0x73,0x61,0x67,0x65,0x73,0x20,0x63,0x61,0x6e,0x20,0x69,0x6e,0x63,0x72,0x65,0x61,0x73,0x65,0x20,0x69,0x6e,0x74,0x69,0x6d,0x61,0x63,0x79,0x7e]

/*: "1 coin = 1 intimacy" :*/
fileprivate let str_viewText:[Character] = ["1"," ","c","o","i"]
fileprivate let str_feedData:[Character] = ["n"," ","="," ","1"," ","i","n","t","i","m","a","c","y"]

/*: "If coins are not consumed within a certain period of time, the intimacy level will be reduced." :*/
fileprivate let str_collectionValue:[UInt8] = [0x49,0x66,0x20,0x63,0x6f,0x69,0x6e,0x73,0x20,0x61,0x72,0x65,0x20,0x6e,0x6f,0x74,0x20,0x63,0x6f,0x6e,0x73,0x75,0x6d,0x65,0x64,0x20,0x77,0x69,0x74,0x68,0x69,0x6e,0x20,0x61,0x20,0x63,0x65,0x72,0x74,0x61,0x69,0x6e,0x20,0x70,0x65,0x72,0x69,0x6f,0x64,0x20,0x6f,0x66,0x20,0x74,0x69,0x6d,0x65,0x2c,0x20,0x74,0x68,0x65,0x20,0x69,0x6e,0x74,0x69,0x6d,0x61,0x63,0x79,0x20,0x6c,0x65,0x76,0x65,0x6c,0x20,0x77,0x69,0x6c,0x6c,0x20,0x62,0x65,0x20,0x72,0x65,0x64,0x75,0x63,0x65,0x64,0x2e]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PicViewDelegate.swift
//  NetEaseLib
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

/// 亲密度说明弹窗
//: class TalkingIntimateInstructionsPopUpView: UIView {
class PicViewDelegate: UIView {
    var meImageView: UIImageView?

    //: var popView: MeasurementThen?
    var popView: MeasurementThen?
    //: var pushType = ""
    var pushType = ""
    //: var headerData = ["Increase：".localized,"Decrease：".localized]
    var headerData = [(str_instancePhoneData.replacingOccurrences(of: "live", with: "I") + String(str_imageValue)).localized, (String(str_upText.suffix(5)) + String(str_liveName)).localized]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.videoUp()
        //: self.setupSubViewsConstraint()
        self.floutShould()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelText.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.outsideText(name: "bg_talk_closed_tc")
        imag.image = UIImage.outsideText(name: (String(str_addName.prefix(6)) + "k_clos" + String(str_equalName)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topView: UIImageView = {
    private lazy var topView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.outsideText(name: "bg_talk_closed_tc_intimate")
        imag.image = UIImage.outsideText(name: (String(str_maleContent.prefix(6)) + "k_clo" + String(str_connectValue.suffix(4)) + "tc_in" + String(str_normalValue)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var msgTableView: UITableView = {
    private lazy var msgTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = UIColor.init(red: 242/255.0, green: 110/255.0, blue: 184/255.0, alpha: 0.72)
        table.backgroundColor = UIColor(red: 242 / 255.0, green: 110 / 255.0, blue: 184 / 255.0, alpha: 0.72)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.layer.cornerRadius = 6
        table.layer.cornerRadius = 6
        //: table.register(TalkingIntimateInstructionsPopUpCell.self, forCellReuseIdentifier: TalkingIntimateInstructionsPopUpCell.className())
        table.register(NameViewCell.self, forCellReuseIdentifier: NameViewCell.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.outsideText(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (str_tempTitle.lowercased() + String(str_inputValue.suffix(6)) + "imate" + String(str_modelTitle.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(precess), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingIntimateInstructionsPopUpView {
extension PicViewDelegate {
    //: @objc private func closeBtnClick() {
    @objc private func precess() {
        //: dismiss()
        sizeButton()
    }

    //: func show() {
    func sectionCell() {
        //: popView = MeasurementThen.init(frame: UIScreen.main.bounds)
        popView = MeasurementThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.anInit(view: self)
        //: popView?.showInView(view: ImageMacroDefine.getWindow())
        popView?.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
    }

    //: @objc func dismiss() {
    @objc func sizeButton() {
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingIntimateInstructionsPopUpView: UITableViewDelegate, UITableViewDataSource {
extension PicViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 2
            return 2
            //: }else {
        } else {
            //: return 1
            return 1
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingIntimateInstructionsPopUpCell.className(), for: indexPath) as! TalkingIntimateInstructionsPopUpCell
        let cell = tableView.dequeueReusableCell(withIdentifier: NameViewCell.className(), for: indexPath) as! NameViewCell
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.setCellData(msg: "Giving gifts 、making calls and sending paid messages can increase intimacy~".localized)
                cell.inmate(msg: String(bytes: str_keyFitPushTitle, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: cell.setCellData(msg: "1 coin = 1 intimacy".localized)
                cell.inmate(msg: (String(str_viewText) + String(str_feedData)).localized)
            }
            //: } else {
        } else {
            //: cell.setCellData(msg: "If coins are not consumed within a certain period of time, the intimacy level will be reduced.".localized)
            cell.inmate(msg: String(bytes: str_collectionValue, encoding: .utf8)!.localized)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 0 {
        if section == 0 {
            //: return 32
            return 32
            //: }else {
        } else {
            //: return 36
            return 36
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 32))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: 32))
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangMediumFont(fontSize: 16)
        titleLab.font = UIFont.methodPlay(fontSize: 16)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.backgroundColor = .clear
        titleLab.backgroundColor = .clear
        //: titleLab.text = headerData[section]
        titleLab.text = headerData[section]
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
            //: if section == 0 {
            if section == 0 {
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: }else {
            } else {
                //: make.top.equalTo(4)
                make.top.equalTo(4)
            }
        }

        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingIntimateInstructionsPopUpView {
extension PicViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func videoUp() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topView)
        self.addSubview(topView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: contentView.addSubview(msgTableView)
        contentView.addSubview(msgTableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func floutShould() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 301, height: 291))
            make.size.equalTo(CGSize(width: 301, height: 291))
        }

        //: msgTableView.snp.makeConstraints { make in
        msgTableView.snp.makeConstraints { make in
            //: make.top.equalTo(40)
            make.top.equalTo(40)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView.snp.top).offset(-30)
            make.top.equalTo(contentView.snp.top).offset(-30)
            //: make.size.equalTo(CGSize.init(width: 107, height: 31))
            make.size.equalTo(CGSize(width: 107, height: 31))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
