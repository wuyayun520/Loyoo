
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_iconWithBlockValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "btn_daily_todayBg_nor" :*/
fileprivate let str_attributeTitle:String = "make center value selfbtn_"
fileprivate let str_viewData:String = "tspaceday"
fileprivate let str_startText:[Character] = ["B","g","_","n","o","r"]

/*: "btn_daily_style1_nor" :*/
fileprivate let str_userValue:String = "bof"
fileprivate let str_viewValue:String = "n_daieach let info view text"
fileprivate let str_toSucceedShowName:String = "le1_norblock method"

/*: "btn_daily_todayLight_nor" :*/
fileprivate let str_stopData:[Character] = ["b","t","n","_","d","a","i","l","y","_","t","o","d","a","y","L","i","g","h","t","_","n","o","r"]

/*: "btn_daily_notSignIn_nor" :*/
fileprivate let str_informationValue:String = "btn_dview make"
fileprivate let str_sendVideoValue:String = "player push label_notS"
fileprivate let str_leadingData:String = "ignImake finish text content stop"

/*: "btn_daily_signIn_nor" :*/
fileprivate let str_ofValue:String = "he height view makebtn_da"
fileprivate let str_channelTitle:[Character] = ["g","n","I","n","_","n","o","r"]

/*: "btn_daily_today_nor" :*/
fileprivate let str_tapContent:String = "btn_dvar touch self share type"
fileprivate let str_imageData:String = "odpic"
fileprivate let str_centerValue:String = "icon color self_nor"

/*: "#FF8F1A" :*/
fileprivate let str_broadData:[Character] = ["#","F","F","8","F","1","A"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MediaItemCell.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyItemCell: UICollectionViewCell {
class MediaItemCell: UICollectionViewCell {
    var statusLabelImageView: UIImageView?
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_iconWithBlockValue, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: self.setupSubviews()
        self.addEnter()
        //: self.setupSubViewsConstraint()
        self.quit()
    }

    // MARK: - Lazy Load

    //: private lazy var iconImgBgV: UIImageView = {
    private lazy var iconImgBgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "btn_daily_todayBg_nor")
        img.image = UIImage.outsideText(name: (String(str_attributeTitle.suffix(4)) + "daily_" + str_viewData.replacingOccurrences(of: "space", with: "o") + String(str_startText)))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "btn_daily_style1_nor")
        img.image = UIImage.outsideText(name: (str_userValue.replacingOccurrences(of: "of", with: "t") + String(str_viewValue.prefix(5)) + "ly_sty" + String(str_toSucceedShowName.prefix(7))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconLightV: UIImageView = {
    private lazy var iconLightV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "btn_daily_todayLight_nor")
        img.image = UIImage.outsideText(name: (String(str_stopData)))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dayLab: UILabel = {
    private lazy var dayLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var addIconLab: UILabel = {
    private lazy var addIconLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 14)
        lab.font = UIFont.methodPlay(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyItemCell {
extension MediaItemCell {
    /// 刷新cell
    /// - Parameter model: 数据模型
    //: func refreshDailyItemCell(model: TalkingDailyItemModel) {
    func videoModel(model: ParadigmItemModel) {
        //: iconImgBgV.isHidden = true
        iconImgBgV.isHidden = true
        //: addIconLab.isHidden = true
        addIconLab.isHidden = true
        //: iconLightV.isHidden = true
        iconLightV.isHidden = true

        //: addIconLab.text = model.addIcon
        addIconLab.text = model.addIcon
        //: dayLab.font = UIFont.pingfangRugularFont(fontSize: 17)
        dayLab.font = UIFont.drogueSize(fontSize: 17)
        //: dayLab.text = model.day
        dayLab.text = model.day

        //: switch(model.type) {
        switch model.type {
        //: case .Overdue_NotSignIn:
        case .Overdue_NotSignIn:
            //: iconImgV.image = UIImage.outsideText(name: "btn_daily_notSignIn_nor")
            iconImgV.image = UIImage.outsideText(name: (String(str_informationValue.prefix(5)) + "aily" + String(str_sendVideoValue.suffix(5)) + String(str_leadingData.prefix(4)) + "n_nor"))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.observerShared()

        //: case .Overdue_SignIn:
        case .Overdue_SignIn:
            //: iconImgV.image = UIImage.outsideText(name: "btn_daily_signIn_nor")
            iconImgV.image = UIImage.outsideText(name: (String(str_ofValue.suffix(6)) + "ily_si" + String(str_channelTitle)))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.observerShared()

        //: case .Today:
        case .Today:
            //: iconImgBgV.isHidden = false
            iconImgBgV.isHidden = false
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconLightV.isHidden = false
            iconLightV.isHidden = false

            //: iconImgV.image = UIImage.outsideText(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.outsideText(name: (String(str_tapContent.prefix(5)) + "aily_t" + str_imageData.replacingOccurrences(of: "pic", with: "ay") + String(str_centerValue.suffix(4))))
            //: dayLab.font = UIFont.pingfangMediumFont(fontSize: 17)
            dayLab.font = UIFont.methodPlay(fontSize: 17)
            //: dayLab.textColor = UIColor(hex: "#FF8F1A")
            dayLab.textColor = UIColor(hex: (String(str_broadData)))

        //: case .Future:
        case .Future:
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconImgV.image = UIImage.outsideText(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.outsideText(name: (String(str_tapContent.prefix(5)) + "aily_t" + str_imageData.replacingOccurrences(of: "pic", with: "ay") + String(str_centerValue.suffix(4))))
            //: dayLab.textColor = UIColor.appValueColor()
            dayLab.textColor = UIColor.complexion()
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyItemCell {
extension MediaItemCell {
    // 添加视图
    //: private func setupSubviews() {
    private func addEnter() {
        //: contentView.addSubview(iconImgBgV)
        contentView.addSubview(iconImgBgV)
        //: contentView.addSubview(iconImgV)
        contentView.addSubview(iconImgV)
        //: contentView.addSubview(addIconLab)
        contentView.addSubview(addIconLab)
        //: contentView.addSubview(iconLightV)
        contentView.addSubview(iconLightV)
        //: contentView.addSubview(dayLab)
        contentView.addSubview(dayLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func quit() {
        //: iconImgBgV.snp.makeConstraints { make in
        iconImgBgV.snp.makeConstraints { make in
            //: make.top.centerX.equalToSuperview()
            make.top.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 65, height: 65))
            make.size.equalTo(CGSize(width: 65, height: 65))
        }
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.center.equalTo(iconImgBgV)
            make.center.equalTo(iconImgBgV)
            //: make.size.equalTo(CGSize(width: 42, height: 42))
            make.size.equalTo(CGSize(width: 42, height: 42))
        }
        //: addIconLab.snp.makeConstraints { make in
        addIconLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(iconImgV)
            make.centerX.equalTo(iconImgV)
            //: make.centerY.equalTo(iconImgV).offset(-2)
            make.centerY.equalTo(iconImgV).offset(-2)
        }
        //: iconLightV.snp.makeConstraints { make in
        iconLightV.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.trailing.equalToSuperview().offset(-4)
            make.trailing.equalToSuperview().offset(-4)
        }
        //: dayLab.snp.makeConstraints { make in
        dayLab.snp.makeConstraints { make in
            //: make.top.equalTo(53)
            make.top.equalTo(53)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
