
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewNameData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "bg_others_shadow_up" :*/
fileprivate let str_titleData:[Character] = ["b","g","_","o","t","h","e","r","s","_","s","h"]
fileprivate let str_shareName:[Character] = ["a","d","o","w","_","u","p"]

/*: "nav_back_black_nor" :*/
fileprivate let str_imageData:[Character] = ["n","a","v","_","b","a","c","k","_","b","l"]
fileprivate let str_guideFrameTitleValue:String = "thought model for noack_nor"

/*: "btn_detail_more" :*/
fileprivate let str_blockRoomValue:[Character] = ["b","t","n","_","d","e","t","a","i","l","_","m"]
fileprivate let str_languageText:String = "oshow"

/*: "Shielding Success" :*/
fileprivate let str_sizeData:[Character] = ["S","h","i","e","l","d","i","n","g"," ","S","u","c","c","e","s","s"]

/*: "Unmasking Succeeded" :*/
fileprivate let str_actualWingValue:[Character] = ["U","n","m","a","s","k","i","n","g"," ","S","u","c","c","e","e","d","e","d"]

/*: "Report" :*/
fileprivate let str_requestText:String = "request viewReport"

/*: "Remvoe Block" :*/
fileprivate let str_packageAfterContent:String = "Remvodetail import let image"
fileprivate let str_timeMpData:String = "data content makee Block"

/*: "Block" :*/
fileprivate let str_emptyOfImageData:[Character] = ["B","l","o","c","k"]

/*: "Cancel" :*/
fileprivate let str_fitValue:[Character] = ["C","a","n","c","e"]
fileprivate let str_thatViewTitle:[Character] = ["l"]

/*: "OK" :*/
fileprivate let str_imageText:[Character] = ["O","K"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToBarReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class ToBarReactiveCompatible: UIView {
    var infoLabelImageView: UIImageView?

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = ToInfoModel() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        day()
        //: setupSubViewsConstraint()
        marginOfError()
        //: bindInteraction()
        cohereThan()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewNameData, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.outsideText(name: "bg_others_shadow_up")
        imgV.image = UIImage.outsideText(name: (String(str_titleData) + String(str_shareName)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.outsideText(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.outsideText(name: (String(str_imageData) + String(str_guideFrameTitleValue.suffix(7)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(placeAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.outsideText(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.outsideText(name: (String(str_blockRoomValue) + str_languageText.replacingOccurrences(of: "show", with: "re"))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension ToBarReactiveCompatible {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func yankViewUsage() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        ConsumerRequestManager.nextIn(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                //: let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                let toastStr = self.isBlack == true ? (String(str_sizeData)).localized : (String(str_actualWingValue)).localized
                //: ProgressHUD.toast(toastStr)
                SizeHungReactiveCompatible.toToast(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension ToBarReactiveCompatible {
    //: @objc private func clickBackButtonAction() {
    @objc private func placeAction() {
        //: LimitPushManager.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        LimitPushManager.share.beforeRoom()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func jointCancel() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = MediumDataSource(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(str_requestText.suffix(6))).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(str_packageAfterContent.prefix(5)) + String(str_timeMpData.suffix(7))).localized : (String(str_emptyOfImageData)).localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.messageWith(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.thing()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.page()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func thing() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = LimitMediaAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.icon(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func page() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            yankViewUsage()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        TitleAlertShow.admittance(title: nil, message: a_useDetailErrorValue, leftBtnTitle: (String(str_fitValue) + String(str_thatViewTitle)).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            TitleAlertShow.lastAlert()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            TitleAlertShow.lastAlert()
            //: self.req_pullBlackRequest()
            self.yankViewUsage()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension ToBarReactiveCompatible {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func infoFile(_ userModel: ToInfoModel) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == MeasurementAppManager.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == MeasurementAppManager.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func day() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func marginOfError() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(a_limitRecordScreenName)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(a_toText)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(a_toText)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(a_limitRecordScreenName)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: a_toText))
        }
    }

    //: private func bindInteraction() {
    private func cohereThan() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.jointCancel()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
