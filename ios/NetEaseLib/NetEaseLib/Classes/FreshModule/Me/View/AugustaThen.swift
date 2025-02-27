
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewOutsideText:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_me_income" :*/
fileprivate let str_hiddenValue:[Character] = ["i","c","o","n","_"]
fileprivate let str_pointData:[Character] = ["m","e","_","i","n","c","o","m","e"]

/*: "Income" :*/
fileprivate let str_frameText:String = "location contentIncom"
fileprivate let str_pathValue:[Character] = ["e"]

/*: "icon_me_male_wallet" :*/
fileprivate let str_userData:[Character] = ["i","c","o","n","_","m","e"]
fileprivate let str_layerData:String = "text data double if to_mal"
fileprivate let str_theStackData:String = "llsocial"

/*: "Wallet" :*/
fileprivate let str_thoughtName:[Character] = ["W","a","l","l","e","t"]

/*: "#7189F7" :*/
fileprivate let str_countValue:String = "user left#7189F7"

/*: "Level" :*/
fileprivate let str_hideValue:[Character] = ["L","e","v","e","l"]

/*: "icon_me_level" :*/
fileprivate let str_attributeContentName:String = "manager ificon_"

/*: "$ :*/
fileprivate let str_sectionExtraHeightData:String = "$"

/*: "Verification needed before balance check" :*/
fileprivate let str_bottomName:[UInt8] = [0x6b,0x63,0x65,0x68,0x63,0x20,0x65,0x63,0x6e,0x61,0x6c,0x61,0x62,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x64,0x65,0x64,0x65,0x65,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x56]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AugustaThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class AugustaThen: UITableViewCell {
    var regularImageView: UIImageView?
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        deadlineSubviews()
        //: setupSubViewsConstraint()
        nowModel()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewOutsideText, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sendView), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.blockOf()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue && MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue && MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue {
            //: icon.image = UIImage.outsideText(name: "icon_me_income")
            icon.image = UIImage.outsideText(name: (String(str_hiddenValue) + String(str_pointData)))
            //: lab.text = "Income".localized
            lab.text = (String(str_frameText.suffix(5)) + String(str_pathValue)).localized
            //: } else {
        } else {
            //: icon.image = UIImage.outsideText(name: "icon_me_male_wallet")
            icon.image = UIImage.outsideText(name: (String(str_userData) + String(str_layerData.suffix(4)) + "e_wa" + str_theStackData.replacingOccurrences(of: "social", with: "et")))
            //: lab.text = "Wallet".localized
            lab.text = (String(str_thoughtName)).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(str_countValue.suffix(7))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fall), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.blockOf()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = (String(str_hideValue)).localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.outsideText(name: "icon_me_level")
        icon.image = UIImage.outsideText(name: (String(str_attributeContentName.suffix(5)) + "me_level"))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(str_countValue.suffix(7))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension AugustaThen {
    //: func setViewData() {
    func userData() {
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue && MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue, MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue {
            //: goldCoinsNum.text = "$\(MeasurementAppManager.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(MeasurementAppManager.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(MeasurementAppManager.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(MeasurementAppManager.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = MeasurementAppManager.share.loginUserMode.level
        myLevelNum.text = MeasurementAppManager.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func sendView() {
        //: incomeClick()
        clearInsideMoveColor()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func fall() {
        //: LimitPushManager.share.func__pushToWebVC(webViewType: .Level)
        LimitPushManager.share.recordIn(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func clearInsideMoveColor() {
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue && MeasurementAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue, MeasurementAppManager.share.appStatus != LabCustomReflectable.special.rawValue {
            //: if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue || MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isRefused.rawValue {
            if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.unknown.rawValue || MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.isRefused.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.afterTitle(showMsg: String(bytes: str_bottomName.reversed(), encoding: .utf8)!)
                //: let vc = TalkingFaceVerificationVC()
                let vc = FacialLeadingVerificationVc()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.colorController()?.navigationController?.pushViewController(vc, animated: true)
                //: } else if MeasurementAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
            } else if MeasurementAppManager.share.loginUserMode.isTPAuth == LaterUserValueConvertible.isOnGoing.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.afterTitle(showMsg: String(bytes: str_bottomName.reversed(), encoding: .utf8)!)
                //: let vc = TalkingFinalVerificationVC()
                let vc = ManagerVerificationVc()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.colorController()?.navigationController?.pushViewController(vc, animated: true)

                //: } else {
            } else {
                //: LimitPushManager.share.func__pushToWebVC(webViewType: .Balance)
                LimitPushManager.share.recordIn(webViewType: .Balance)
            }

            //: } else {
        } else {
            //: LimitPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            LimitPushManager.share.recordIn(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension AugustaThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func deadlineSubviews() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func nowModel() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (a_blockValue - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
