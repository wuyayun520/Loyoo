
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_topTextValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "Allow push notifications" :*/
fileprivate let str_clickData:String = "if in target letAllo"
fileprivate let str_imageAppLetValue:String = "center equal image ifsh noti"
fileprivate let str_labText:String = "ficcornert"

/*: "You don't miss out on chat messages when someone wants to chat with you." :*/
fileprivate let str_managerData:[UInt8] = [0x2e,0x75,0x6f,0x79,0x20,0x68,0x74,0x69,0x77,0x20,0x74,0x61,0x68,0x63,0x20,0x6f,0x74,0x20,0x73,0x74,0x6e,0x61,0x77,0x20,0x65,0x6e,0x6f,0x65,0x6d,0x6f,0x73,0x20,0x6e,0x65,0x68,0x77,0x20,0x73,0x65,0x67,0x61,0x73,0x73,0x65,0x6d,0x20,0x74,0x61,0x68,0x63,0x20,0x6e,0x6f,0x20,0x74,0x75,0x6f,0x20,0x73,0x73,0x69,0x6d,0x20,0x74,0x27,0x6e,0x6f,0x64,0x20,0x75,0x6f,0x59]

/*: "Open" :*/
fileprivate let str_userName:String = "Openshow tap"

/*: "icon_chats_subtract" :*/
fileprivate let str_titleNoData:String = "icon_ctag selected make image"
fileprivate let str_succeedData:String = "hats_sapp guard moment user gift"

/*: "open_picture" :*/
fileprivate let str_leadingName:[Character] = ["o","p","e","n","_","p","i","c"]
fileprivate let str_modeReportText:String = "tumain"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MTipView.swift
//  NetEaseLib
//
//  Created by Hemming on 2024/9/26.
//

//: import UIKit
import UIKit

//: class TalkingNoticeTipView: UIView {
class MTipView: UIView {
	var colorOff: Bool = true
	var applicationMagnitude: Int = 22
	var dataArray: [AnyHashable] = []
	var trackOpen: Bool = true
	var viewUpTotal: Int = 97
	var playerArray: [AnyHashable] = []

    var upRoomImageView: UIImageView?

    //: public var viewHeight: CGFloat = 0
    public var viewHeight: CGFloat = 0

    //: public var closeBtnBlock: (() -> Void)?
    public var closeBtnBlock: (() -> Void)?

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_topTextValue, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        equalAtView()
        //: setupSubViewsConstraint()
        pullItemSwaddlingClothes()
    }

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.white
        v.backgroundColor = UIColor.white
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        //: v.layer.shadowOffset = CGSize(width: 0, height: 1)
        v.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 6
        v.layer.shadowRadius = 6
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Allow push notifications".localized
        lab.text = (String(str_clickData.suffix(4)) + "w pu" + String(str_imageAppLetValue.suffix(7)) + str_labText.replacingOccurrences(of: "corner", with: "a") + "ions").localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.methodPlay(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var titleValueLab: UILabel = {
    private lazy var titleValueLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You don't miss out on chat messages when someone wants to chat with you.".localized
        lab.text = String(bytes: str_managerData.reversed(), encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .complexion()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 13)
        lab.font = UIFont.drogueSize(fontSize: 13)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(str_userName.prefix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .normal)
        btn.achromaticColour(color: UIColor.offt(), forState: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(jam), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.outsideText(name: "icon_chats_subtract"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_titleNoData.prefix(6)) + String(str_succeedData.prefix(6)) + "ubtract")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapIcon), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: @objc func openBtnClick() {
    @objc func jam() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        upRoomImageView = UIImageView(frame: self.bounds.standardized)
        if let upRoomImageView = upRoomImageView {
            self.upRoomImageView?.image = UIImage(named: (String(str_leadingName) + str_modeReportText.replacingOccurrences(of: "main", with: "re")))
            if (upRoomImageView.layer.contentsRect.origin.y != 0) && (upRoomImageView.layer.isHidden != false) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(upRoomImageView)
            }
        }

        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
    
            if (titleLab.inputViewController != nil) && (titleLab.layer.isDoubleSided != true) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let addTransition = SectionView(frame: titleLab.bounds)



            
            addTransition.bottomFreeClose = { [self] toolPriceDoing in
            self.colorOff = toolPriceDoing
            
            return self.colorOff
            }
            addTransition.groupMagnitude = { [self] awardSum in
            self.applicationMagnitude = awardSum
            
            return self.applicationMagnitude
            }
            addTransition.moveArray = { [self] targetMoonArray in
            self.dataArray = targetMoonArray
            
            guard var value = self.dataArray as? [String] else {
                return nil
            }
            return value
            }
                titleLab.addSubview(addTransition)
            }

	}

    //: @objc func closeBtnClick() {
    @objc func snapIcon() {
        //: self.closeBtnBlock?()
        self.closeBtnBlock?()
    
            if (closeBtn.tintColor != nil && closeBtn.tintColor.cgColor == UIColor.black.cgColor) && (closeBtn.gestureRecognizers != nil && closeBtn.gestureRecognizers!.count == 11) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let dataHome = SectionView()



            
            dataHome.bottomFreeClose = { [self] toolPriceDoing in
            self.trackOpen = toolPriceDoing
            
            return self.trackOpen
            }
            dataHome.groupMagnitude = { [self] awardSum in
            self.viewUpTotal = awardSum
            
            return self.viewUpTotal
            }
            dataHome.moveArray = { [self] targetMoonArray in
            self.playerArray = targetMoonArray
            
            guard var value = self.playerArray as? [String] else {
                return nil
            }
            return value
            }
                closeBtn.addSubview(dataHome)
            }

	}
}

//: extension TalkingNoticeTipView {
extension MTipView {
    /// 创建视图
    //: private func setupSubviews() {
    private func equalAtView() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(bgView)
        addSubview(bgView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(titleValueLab)
        addSubview(titleValueLab)
        //: addSubview(openBtn)
        addSubview(openBtn)
        //: addSubview(closeBtn)
        addSubview(closeBtn)

        //: viewHeight = titleValueLab.sizeThatFits(CGSize(width: ScreenWidth-110, height: CGFLOAT_MAX)).height + 66
        viewHeight = titleValueLab.sizeThatFits(CGSize(width: a_blockValue - 110, height: CGFLOAT_MAX)).height + 66
        //: self.frame = CGRect(x: 0, y: StatusBarHeight, width: ScreenWidth, height: viewHeight)
        self.frame = CGRect(x: 0, y: a_limitRecordScreenName, width: a_blockValue, height: viewHeight)
    }

    //: private func setupSubViewsConstraint() {
    private func pullItemSwaddlingClothes() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.top.trailing.bottom.equalToSuperview().inset(10)
            make.leading.top.trailing.bottom.equalToSuperview().inset(10)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(22)
            make.top.equalTo(22)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
        }
        //: titleValueLab.snp.makeConstraints { make in
        titleValueLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalToSuperview()
            make.top.trailing.equalToSuperview()
            //: make.width.equalTo(26)
            make.width.equalTo(26)
            //: make.height.equalTo(26)
            make.height.equalTo(26)
        }
    }
}
