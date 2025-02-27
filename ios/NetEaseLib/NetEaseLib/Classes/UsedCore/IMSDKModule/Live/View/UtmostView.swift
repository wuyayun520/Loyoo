
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_tableVoiceValue:[UInt8] = [0x5e,0x59,0x5e,0x43,0x1f,0x54,0x58,0x53,0x52,0x45,0xd,0x1e,0x17,0x5f,0x56,0x44,0x17,0x59,0x58,0x43,0x17,0x55,0x52,0x52,0x59,0x17,0x5e,0x5a,0x47,0x5b,0x52,0x5a,0x52,0x59,0x43,0x52,0x53]

/*: "icon_live_vipsubscribe_back" :*/
fileprivate let str_minimumData:[Character] = ["i","c","o","n","_","l","i","v","e","_","v","i","p","s","u","b","s","c","r","i","b","e","_","b"]
fileprivate let str_homeLabData:String = "acellk"

/*: "icon_live_vipsubscribe_topback" :*/
fileprivate let str_modelData:String = "from whileicon_"
fileprivate let str_infoName:String = "vitoub"
fileprivate let str_whiteName:String = "S"
fileprivate let str_displayData:String = "CRIB"
fileprivate let str_makeValue:String = "bgesturek"

/*: "Open VIP\nto give Exclusive gifts" :*/
fileprivate let str_succeedData:[UInt8] = [0x4f,0x70,0x65,0x6e,0x20,0x56,0x49,0x50,0xa,0x74,0x6f,0x20,0x67,0x69,0x76,0x65,0x20,0x45,0x78,0x63,0x6c,0x75,0x73,0x69,0x76,0x65,0x20,0x67,0x69,0x66,0x74,0x73]

/*: "Giving an Exclusive gift will appeal to her" :*/
fileprivate let str_showName:[UInt8] = [0x47,0x69,0x76,0x69,0x6e,0x67,0x20,0x61,0x6e,0x20,0x45,0x78,0x63,0x6c,0x75,0x73,0x69,0x76,0x65,0x20,0x67,0x69,0x66,0x74,0x20,0x77,0x69,0x6c,0x6c,0x20,0x61,0x70,0x70,0x65,0x61,0x6c,0x20,0x74,0x6f,0x20,0x68,0x65,0x72]

/*: "Subscribe" :*/
fileprivate let str_touchName:String = "player model managerSubscri"
fileprivate let str_backData:[Character] = ["b","e"]

/*: "Cancel" :*/
fileprivate let str_userName:String = "live state class to hiddenCancel"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UtmostView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/31.
//

//: import UIKit
import UIKit

//: class TalkingLiveVipSubscribePopView: UIView {
class UtmostView: UIView {
    var qualityImageView: UIImageView?

    //: var endBlock: (() -> Void)?
    var endBlock: (() -> Void)?

    //: var popView: MeasurementThen?
    var popView: MeasurementThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.theLikesOf()
        //: self.setupSubViewsConstraint()
        self.lengthConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_tableVoiceValue.map{$0^55}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentImg: UIImageView = {
    lazy var contentImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "icon_live_vipsubscribe_back")
        img.image = UIImage.outsideText(name: (String(str_minimumData) + str_homeLabData.replacingOccurrences(of: "cell", with: "c")))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImg: UIImageView = {
    lazy var topImg: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.outsideText(name: "icon_live_vipsubscribe_topback")
        iamg.image = UIImage.outsideText(name: (String(str_modelData.suffix(5)) + "live_" + str_infoName.replacingOccurrences(of: "to", with: "ps") + str_whiteName.lowercased() + str_displayData.lowercased() + "e_top" + str_makeValue.replacingOccurrences(of: "gesture", with: "ac")))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.blockOf()
        //: lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Open VIP\nto give Exclusive gifts".localized
        lab.text = String(bytes: str_succeedData, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 16)
        //: lb.text = "Giving an Exclusive gift will appeal to her".localized
        lb.text = String(bytes: str_showName, encoding: .utf8)!.localized
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.blockOf()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Subscribe".localized, for: .normal)
        btn.setTitle((String(str_touchName.suffix(7)) + String(str_backData)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(checkRow), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_userName.suffix(6))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.appValueDetailColor(), for: .normal)
        btn.setTitleColor(.observerShared(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.appValueDetailColor().cgColor
        btn.layer.borderColor = UIColor.observerShared().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(belowPlay), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLiveVipSubscribePopView {
extension UtmostView {
    //: @objc func finishBtnClick() {
    @objc func checkRow() {
        //: dismiss()
        callDismiss()
        //: LimitPushManager.share.func__pushToSubscribePageWebVC()
        LimitPushManager.share.birth()
    }

    //: @objc func closeBtnClick() {
    @objc func belowPlay() {
        //: dismiss()
        callDismiss()
    }

    //: func show() {
    func studShow() {
        //: popView = MeasurementThen.init(frame: UIScreen.main.bounds)
        popView = MeasurementThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.anInit(view: self)
        //: popView?.showInView(view: ImageMacroDefine.getWindow())
        popView?.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func callDismiss() {
        //: self.endBlock?()
        self.endBlock?()
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveVipSubscribePopView {
extension UtmostView {
    // 添加视图
    //: private func setupSubviews() {
    private func theLikesOf() {
        //: self.addSubview(contentImg)
        self.addSubview(contentImg)
        //: contentImg.addSubview(topImg)
        contentImg.addSubview(topImg)
        //: contentImg.addSubview(closeBtn)
        contentImg.addSubview(closeBtn)
        //: contentImg.addSubview(titleLabel)
        contentImg.addSubview(titleLabel)
        //: contentImg.addSubview(messageView)
        contentImg.addSubview(messageView)
        //: contentImg.addSubview(finishBtn)
        contentImg.addSubview(finishBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func lengthConstraint() {
        //: let width = 295
        let width = 295
        //: let btnWidth = (width-12*2-11)/2
        let btnWidth = (width - 12 * 2 - 11) / 2
        //: contentImg.snp.makeConstraints { make in
        contentImg.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: width, height: 230))
            make.size.equalTo(CGSize(width: width, height: 230))
        }

        //: topImg.snp.makeConstraints { make in
        topImg.snp.makeConstraints { make in
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.top.equalTo(-47)
            make.top.equalTo(-47)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 139), height: actualWidth(w: 109)))
            make.size.equalTo(CGSize(width: actualWidth(w: 139), height: actualWidth(w: 109)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: btnWidth, height: 50))
            make.size.equalTo(CGSize(width: btnWidth, height: 50))
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.size.equalTo(closeBtn)
            make.bottom.size.equalTo(closeBtn)
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-28)
            make.trailing.equalTo(-28)
            //: make.height.equalTo(53)
            make.height.equalTo(53)
        }

        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-18)
            make.bottom.equalTo(finishBtn.snp.top).offset(-18)
        }
    }
}
