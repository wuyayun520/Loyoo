
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_matterWhiteText:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "img_faceverification_pose" :*/
fileprivate let str_finishErrorValue:String = "super view error intimateimg_face"
fileprivate let str_houseName:[Character] = ["v","e","r","i","f","i","c","a","t","i","o","n","_","p","o","s","e"]

/*: "Strike this pose and take a photo" :*/
fileprivate let str_textValue:[UInt8] = [0x53,0x74,0x72,0x69,0x6b,0x65,0x20,0x74,0x68,0x69,0x73,0x20,0x70,0x6f,0x73,0x65,0x20,0x61,0x6e,0x64,0x20,0x74,0x61,0x6b,0x65,0x20,0x61,0x20,0x70,0x68,0x6f,0x74,0x6f]

/*: "Your photo will never be uploaded to your profile or shown to anyone else." :*/
fileprivate let str_deviceValue:[UInt8] = [0x59,0x6f,0x75,0x72,0x20,0x70,0x68,0x6f,0x74,0x6f,0x20,0x77,0x69,0x6c,0x6c,0x20,0x6e,0x65,0x76,0x65,0x72,0x20,0x62,0x65,0x20,0x75,0x70,0x6c,0x6f,0x61,0x64,0x65,0x64,0x20,0x74,0x6f,0x20,0x79,0x6f,0x75,0x72,0x20,0x70,0x72,0x6f,0x66,0x69,0x6c,0x65,0x20,0x6f,0x72,0x20,0x73,0x68,0x6f,0x77,0x6e,0x20,0x74,0x6f,0x20,0x61,0x6e,0x79,0x6f,0x6e,0x65,0x20,0x65,0x6c,0x73,0x65,0x2e]

/*: "Camera" :*/
fileprivate let str_buttonName:String = "equal inputCamer"
fileprivate let str_onDataTitle:[Character] = ["a"]

/*: "btn_me_back_continue" :*/
fileprivate let str_callTitle:String = "var roombtn_"
fileprivate let str_shareHeadFromValue:[Character] = ["k","_","c","o","n","t","i","n","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarkReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleView: UIView {
class MarkReactiveCompatible: UIView {
    var averageAddImageView: UIImageView?

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias CameraBtnClickBlock = () -> Void
    typealias CameraBtnClickBlock = () -> Void
    //: var btnClickBlock: CameraBtnClickBlock?
    var btnClickBlock: CameraBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        bandy()
        //: layoutSubViewsConstraints()
        leadershipSub()
        //: bindInteraction()
        denomination()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_matterWhiteText, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.outsideText(name: "img_faceverification_pose")
        imgView.image = UIImage.outsideText(name: (String(str_finishErrorValue.suffix(8)) + String(str_houseName)))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Strike this pose and take a photo".localized
        lb.text = String(bytes: str_textValue, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .blockOf()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 22)
        lb.font = .thoughtImage(type: .Medium, fontSize: 22)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var verificationDesLab: UILabel = {
    lazy var verificationDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anyone else.".localized
        lb.text = String(bytes: str_deviceValue, encoding: .utf8)!.localized
        //: lb.textColor = .appValueColor()
        lb.textColor = .complexion()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var continueBtn: UIButton = {
    lazy var continueBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Camera".localized, for: .normal)
        btn.setTitle((String(str_buttonName.suffix(5)) + String(str_onDataTitle)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.outsideText(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (String(str_callTitle.suffix(4)) + "me_bac" + String(str_shareHeadFromValue))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .thoughtImage(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationExampleView {
extension MarkReactiveCompatible {
    //: @objc func registerBtnAction() {
    @objc func politeness() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func denomination() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.politeness()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingVerificationExampleView {
extension MarkReactiveCompatible {
    //: func createSubViews() {
    func bandy() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func leadershipSub() {
        //: let fitH = 686 * (ScreenWidth - actualWidth(w: 30)) / 690
        let fitH = 686 * (a_blockValue - actualWidth(w: 30)) / 690
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo((actualHeight(h: 18)))
            make.top.equalTo(actualHeight(h: 18))
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.width.equalTo(ScreenWidth-actualWidth(w: 30))
            make.width.equalTo(a_blockValue - actualWidth(w: 30))
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualHeight(h: 34)-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-actualHeight(h: 34) - a_agentData)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
