
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pathImageTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "#333333" :*/
fileprivate let str_renderData:[Character] = ["#","3","3","3","3"]
fileprivate let str_touchManagerTitle:String = "33"

/*: "#999999" :*/
fileprivate let str_modeData:String = "mm"
fileprivate let str_popData:String = "999999"

/*: "isCupid" :*/
fileprivate let str_exceptValue:String = "key privateisCupid"

/*: "autoGreetAuth" :*/
fileprivate let str_postWithText:String = "up age imageautoG"
fileprivate let str_backgroundText:String = "error"
fileprivate let str_micTitle:String = "eetAuthcolor title"

/*: "isLeaderboardAnonymous" :*/
fileprivate let str_videoValue:String = "isLearray manager"
fileprivate let str_iconData:String = "oardAsize for"
fileprivate let str_videoName:[Character] = ["n","o","n","y","m","o","u","s"]

/*: "isSameGendered" :*/
fileprivate let str_imageName:String = "view"
fileprivate let str_textValue:[Character] = ["s","S","a","m","e","G","e","n","d","e","r","e","d"]

/*: "type" :*/
fileprivate let str_toolQuantityerestValue:String = "typcontainer"

/*: "value" :*/
fileprivate let str_makeScaleText:[Character] = ["v","a","l","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelNotifCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/15.
//

//: import UIKit
import UIKit

//: class TalkingSettingNotifCell: UITableViewCell {
class ModelNotifCell: UITableViewCell {
	var positionEnable: Bool = false
	var joint: Int = 68
	var layerOn: Bool = false
	var beSum: Int = 66

    var fillMinimumImageView: UIImageView?

    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if (self.isExclusiveTouch) && (self.backgroundColor != nil && self.backgroundColor!.cgColor == UIColor.cyan.cgColor) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let mentalImage = PackageView()
            mentalImage.policyJoinClose = islast


            
            mentalImage.tableOpen = { [self] headOpen in
            self.layerOn = headOpen
            
            var mentalImage = islast
                mentalImage = true
                mentalImage = !mentalImage
            if mentalImage != self.layerOn {
                self.layerOn = mentalImage
            }
            
            return self.layerOn
            }
            mentalImage.needQuantity = { [self] enableLineQuantity in
            self.beSum = enableLineQuantity
            
            var mentalImage = index
            mentalImage &>>= 1
            if mentalImage > self.beSum {
                self.beSum = mentalImage
            }
            
            return self.beSum
            }
                self.addSubview(mentalImage)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleBLB)

        var requestTable: UIView = titleBLB
        if let imageView = self.fillMinimumImageView, (!backView.isUserInteractionEnabled) && (backView.preservesSuperviewLayoutMargins) {
            //: SWIFT_CUSTOM_DANGER
            requestTable = imageView
        }
        backView.addSubview(requestTable)
        //: backView.addSubview(switchView)

        var playAdd: UIView = switchView
        if let imageView = self.fillMinimumImageView, (playAdd.convert(playAdd.bounds.insetBy(dx: CGFloat(0), dy: CGFloat(Double(playAdd.frame.size.height))), from: playAdd.superview).size.width == 4.00) && (playAdd.layer.contentsRect.origin.x != 0) {
            //: SWIFT_CUSTOM_DANGER
            playAdd = imageView
        }
        backView.addSubview(playAdd)
        //: backView.addSubview(detailLB)
        backView.addSubview(detailLB)

        //: NotificationCenter.default.addObserver(self, selector: #selector(applicationDidBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleMain), name: UIApplication.didBecomeActiveNotification, object: nil)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pathImageTitle, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(actualWidth(w: 15))
            make.leading.equalTo(self).offset(actualWidth(w: 15))
            //: make.trailing.equalTo(self.snp.trailing).offset(actualWidth(w: -15))
            make.trailing.equalTo(self.snp.trailing).offset(actualWidth(w: -15))
            //: make.top.bottom.equalTo(self)
            make.top.bottom.equalTo(self)
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(actualWidth(w: 15))
            make.leading.equalTo(backView).offset(actualWidth(w: 15))
            //: make.top.equalTo(backView).offset(actualHeight(h: 15))
            make.top.equalTo(backView).offset(actualHeight(h: 15))
            //: make.height.equalTo(actualHeight(h: 20))
            make.height.equalTo(actualHeight(h: 20))
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.top.equalTo(backView).offset(actualHeight(h: 11))
            make.top.equalTo(backView).offset(actualHeight(h: 11))
            //: make.trailing.equalTo(backView.snp.trailing).offset(actualWidth(w: -15))
            make.trailing.equalTo(backView.snp.trailing).offset(actualWidth(w: -15))
            //: make.width.equalTo(actualWidth(w: 51))
            make.width.equalTo(actualWidth(w: 51))
            //: make.height.equalTo(actualHeight(h: 28))
            make.height.equalTo(actualHeight(h: 28))
        }

        //: detailLB.snp.makeConstraints { make in
        detailLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleBLB.snp.bottom).offset(actualHeight(h: 9))
            make.top.equalTo(titleBLB.snp.bottom).offset(actualHeight(h: 9))
            //: make.trailing.equalTo(backView.snp.trailing).offset(actualWidth(w: -15))
            make.trailing.equalTo(backView.snp.trailing).offset(actualWidth(w: -15))
            //: make.leading.equalTo(backView.snp.leading).offset(actualWidth(w: 15))
            make.leading.equalTo(backView.snp.leading).offset(actualWidth(w: 15))
            //: make.bottom.equalTo(backView.snp.bottom)
            make.bottom.equalTo(backView.snp.bottom)
        }

        //: self.layoutIfNeeded()
        self.layoutIfNeeded()

        //: if index == 0 && islast {
        if index == 0 && islast {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 8, height: 8))
            backView.barRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 8, height: 8))
            //: } else if index == 0 {
        } else if index == 0 {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
            backView.barRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
            //: } else if islast {
        } else if islast {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 8, height: 8))
            backView.barRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 8, height: 8))
            //: } else {
        } else {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 0, height: 0))
            backView.barRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 0, height: 0))
        }
    
            if (self.backView.convert(CGRect.zero, from: self.backView.superview).size.height == 20.74) && (!self.backView.autoresizesSubviews) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let subLet = PackageView(frame: self.backView.frame.offsetBy(dx: CGFloat(0), dy: CGFloat(81)))
            subLet.policyJoinClose = islast


            
            subLet.tableOpen = { [self] headOpen in
            self.positionEnable = headOpen
            
            var subLet = islast
                subLet = false
                subLet = !subLet
            if subLet != self.positionEnable {
                self.positionEnable = subLet
            }
            
            return self.positionEnable
            }
            subLet.needQuantity = { [self] enableLineQuantity in
            self.joint = enableLineQuantity
            
            var subLet = index
            subLet += 1
            if subLet > self.joint {
                self.joint = subLet
            }
            
            return self.joint
            }
                self.backView.addSubview(subLet)
            }

	}

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.init(hex: "#333333")
        lb.textColor = UIColor(hex: (String(str_renderData) + str_touchManagerTitle.capitalized))
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var switchView: UISwitch = {
    lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = true
        swit.isOn = true
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.offt()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(showOff), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()

    //: lazy var detailLB: TextAlignLb = {
    lazy var detailLB: ImageLabel = {
        //: let lb = TextAlignLb.init()
        let lb = ImageLabel()
        //: lb.setIsTop(isTop: true)
        lb.radiogram(isTop: true)
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
        //: lb.textColor = UIColor.init(hex: "#999999")
        lb.textColor = UIColor(hex: (str_modeData.replacingOccurrences(of: "mm", with: "#") + str_popData.capitalized))
        //: lb.isHidden = true
        lb.isHidden = true
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingNotifCell {
extension ModelNotifCell {
    //: func setCellMessage(titile: String, row: Int, isLast: Bool) {
    func circumference(titile: String, row: Int, isLast: Bool) {
        //: titleBLB.text = titile.localized
        titleBLB.text = titile.localized
        //: index = row
        index = row
        //: islast = isLast
        islast = isLast
        //: detailLB.isHidden = true
        detailLB.isHidden = true

//        if titile == ConstraintNameConvertible.General.rawValue {
//            PrefaceReactiveCompatible.checkPushNotification { isShow in
//                DispatchQueue.main.sync {
//                    self.switchView.isOn = isShow
//                }
//            }
//        }
    }

    //: func setCellDetails(detail: String ) {
    func aggregationTop(detail: String) {
        //: detailLB.isHidden = false
        detailLB.isHidden = false
        //: detailLB.text = detail.localized
        detailLB.text = detail.localized
    }

    //: func setCellNotif(isShow: Int ) {
    func addReplace(isShow: Int) {
        //: if isShow == 1 {
        if isShow == 1 {
            //: self.switchView.isOn = true
            self.switchView.isOn = true
            //: } else if isShow == -1 {
        } else if isShow == -1 {
            //: self.switchView.isOn = false
            self.switchView.isOn = false
        }
    }

    //: @objc func switchDidChange() {
    @objc func showOff() {
        //: if titleBLB.text == SettingsUniversalType.Turnon_Notif.rawValue.localized {
        if titleBLB.text == MTextConvertible.Turnon_Notif.rawValue.localized {
            //: if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
                //: if #available(iOS 10.0, *) {
                if #available(iOS 10.0, *) {
                    //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    //: } else {
                } else {
                    //: if UIApplication.shared.canOpenURL(url) {
                    if UIApplication.shared.canOpenURL(url) {
                        //: UIApplication.shared.openURL(url)
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            //: } else if titleBLB.text == SettingsUniversalType.Cupid.rawValue.localized {
        } else if titleBLB.text == MTextConvertible.Cupid.rawValue.localized {
            //: setConfig(type: "isCupid", value: self.switchView.isOn)
            textClick(type: (String(str_exceptValue.suffix(7))), value: self.switchView.isOn)
            //: } else if titleBLB.text == SettingsUniversalType.Automatic.rawValue.localized {
        } else if titleBLB.text == MTextConvertible.Automatic.rawValue.localized {
            //: setConfig(type: "autoGreetAuth", value: self.switchView.isOn)
            textClick(type: (String(str_postWithText.suffix(5)) + str_backgroundText.replacingOccurrences(of: "error", with: "r") + String(str_micTitle.prefix(7))), value: self.switchView.isOn)
            //: } else if titleBLB.text == SettingsUniversalType.Ranking.rawValue.localized {
        } else if titleBLB.text == MTextConvertible.Ranking.rawValue.localized {
            //: setConfig(type: "isLeaderboardAnonymous", value: self.switchView.isOn)
            textClick(type: (String(str_videoValue.prefix(4)) + "aderb" + String(str_iconData.prefix(5)) + String(str_videoName)), value: self.switchView.isOn)
            //: } else if titleBLB.text == SettingsUniversalType.Same_gendered.rawValue.localized {
        } else if titleBLB.text == MTextConvertible.Same_gendered.rawValue.localized {
            //: setConfig(type: "isSameGendered", value: self.switchView.isOn)
            textClick(type: (str_imageName.replacingOccurrences(of: "view", with: "i") + String(str_textValue)), value: self.switchView.isOn)
        }
    }

    //: func setConfig(type: String, value: Bool) {
    func textClick(type: String, value: Bool) {
        //: let va = value ? 1 : -1
        let va = value ? 1 : -1
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = type
        dict[(str_toolQuantityerestValue.replacingOccurrences(of: "container", with: "e"))] = type
        //: dict["value"] = va
        dict[(String(str_makeScaleText))] = va

        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingMeRequestTool.req_SettingChange(params: dict) { succeed, result, errorModel in
        ConstraintRequestTool.maxData(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: } else {
            } else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
            }
        }
    }

    //: @objc func applicationDidBecomeActive(notification: NSNotification) {
    @objc func handleMain(notification _: NSNotification) {
//        if titleBLB.text == ConstraintNameConvertible.General.rawValue {
//            PrefaceReactiveCompatible.checkPushNotification { isShow in
//                DispatchQueue.main.sync {
//                    self.switchView.isOn = isShow
//                }
//            }
//        }
    }
}
