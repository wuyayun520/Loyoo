
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_videoText:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "bg_tx" :*/
fileprivate let str_applicationEdgeEqualText:[Character] = ["b","g","_","t","x"]

/*: "bg_tx_lb" :*/
fileprivate let str_thoughtValue:String = "of alwaysbg_tx_"
fileprivate let str_equalTitleValue:String = "LB"

/*: "Edit Title" :*/
fileprivate let str_playMeData:String = "item make positionEdit Tit"
fileprivate let str_resultTitle:String = "pice"

/*: "GO Now" :*/
fileprivate let str_sharedSucceedName:[Character] = ["G"]
fileprivate let str_scaleData:String = "app add range data publishO Now"

/*: "Maybe next time" :*/
fileprivate let str_managerName:String = "m"
fileprivate let str_fillData:[Character] = ["a","y","b","e"," ","n","e","x","t"," ","t","i","m","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AlterThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: class TalkingVideoCoverPopUpView: UIView {
class AlterThen: UIView {
    var toImageView: UIImageView?

    //: var popView: MeasurementThen?
    var popView: MeasurementThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.fillTalk()
        //: self.setupSubViewsConstraint()
        self.viewSetup()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_videoText, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIImageView = {
    lazy var contentView: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.outsideText(name: "bg_tx")
        iamg.image = UIImage.outsideText(name: (String(str_applicationEdgeEqualText)))
        //: iamg.isUserInteractionEnabled = true
        iamg.isUserInteractionEnabled = true
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.outsideText(name: "bg_tx_lb")
        iamg.image = UIImage.outsideText(name: (String(str_thoughtValue.suffix(6)) + str_equalTitleValue.lowercased()))
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
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        lab.font = UIFont.thoughtImage(type: .Semibold, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Edit Title".localized
        lab.text = (String(str_playMeData.suffix(8)) + str_resultTitle.replacingOccurrences(of: "pic", with: "l")).localized
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.text = MeasurementAppManager.share.appUserConfigMode.videoCover
        textView.text = MeasurementAppManager.share.appUserConfigMode.videoCover
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        textView.font = UIFont.thoughtImage(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.blockOf()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: return textView
        return textView
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("GO Now".localized, for: .normal)
        btn.setTitle((String(str_sharedSucceedName) + String(str_scaleData.suffix(5))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cutUpClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Maybe next time".localized, for: .normal)
        btn.setTitle((str_managerName.uppercased() + String(str_fillData)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.complexion(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 13)
        btn.titleLabel?.font = UIFont.drogueSize(fontSize: 13)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nookAndCrannyClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingVideoCoverPopUpView {
extension AlterThen {
    //: @objc func finishBtnClick() {
    @objc func cutUpClick() {
        //: dismiss()
        withDismiss()
        //: guard TalkingSocketManager.shared.isCalling == false else {
        guard SocketReactiveCompatible.shared.isCalling == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.episode(showMsg: a_viewNetValue)
            //: return
            return
        }
        //: let editvc = TalkingEditProfilesVC()
        let editvc = TableModelViewController()
        //: currentViewController()?.navigationController?.pushViewController(editvc, animated: true)
        colorController()?.navigationController?.pushViewController(editvc, animated: true)
    }

    //: @objc func closeBtnClick() {
    @objc func nookAndCrannyClick() {
        //: dismiss()
        withDismiss()
    }

    //: func show() {
    func timeIn() {
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
    @objc func withDismiss() {
        //: popView?.dismissView()
        popView?.makeBy()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingVideoCoverPopUpView {
extension AlterThen {
    // 添加视图
    //: private func setupSubviews() {
    private func fillTalk() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewSetup() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 320)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 320)))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-78)
            make.top.equalTo(-78)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 133), height: actualWidth(w: 131)))
            make.size.equalTo(CGSize(width: actualWidth(w: 133), height: actualWidth(w: 131)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(-10)
            make.bottom.equalTo(closeBtn.snp.top).offset(-10)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(5)
            make.top.equalTo(topIcon.snp.bottom).offset(5)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-20)
            make.bottom.equalTo(finishBtn.snp.top).offset(-20)
        }
    }
}
