
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_imageAllData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "img_faceverification_photo" :*/
fileprivate let str_moveTitle:[Character] = ["i","m","g","_","f","a","c","e","v","e","r","i","f","i","c","a","t","i","o","n","_","p","h","o","t"]
fileprivate let str_errorName:[Character] = ["o"]

/*: "Face verification" :*/
fileprivate let str_playerValue:[Character] = ["F","a","c","e"," ","v","e","r","i","f"]
fileprivate let str_normalFromName:String = "IC"
fileprivate let str_titleData:[Character] = ["a","t","i","o","n"]

/*: "A real-person verification of your profile will get you more and better matches." :*/
fileprivate let str_pointData:[UInt8] = [0x41,0x20,0x72,0x65,0x61,0x6c,0x2d,0x70,0x65,0x72,0x73,0x6f,0x6e,0x20,0x76,0x65,0x72,0x69,0x66,0x69,0x63,0x61,0x74,0x69,0x6f,0x6e,0x20,0x6f,0x66,0x20,0x79,0x6f,0x75,0x72,0x20,0x70,0x72,0x6f,0x66,0x69,0x6c,0x65,0x20,0x77,0x69,0x6c,0x6c,0x20,0x67,0x65,0x74,0x20,0x79,0x6f,0x75,0x20,0x6d,0x6f,0x72,0x65,0x20,0x61,0x6e,0x64,0x20,0x62,0x65,0x74,0x74,0x65,0x72,0x20,0x6d,0x61,0x74,0x63,0x68,0x65,0x73,0x2e]

/*: "· Take the photo by following the posing guide." :*/
fileprivate let str_pathFinishText:[UInt8] = [0xc2,0xb7,0x20,0x54,0x61,0x6b,0x65,0x20,0x74,0x68,0x65,0x20,0x70,0x68,0x6f,0x74,0x6f,0x20,0x62,0x79,0x20,0x66,0x6f,0x6c,0x6c,0x6f,0x77,0x69,0x6e,0x67,0x20,0x74,0x68,0x65,0x20,0x70,0x6f,0x73,0x69,0x6e,0x67,0x20,0x67,0x75,0x69,0x64,0x65,0x2e]

/*: "· The person in the photo must be the account owner." :*/
fileprivate let str_senseName:[UInt8] = [0x2e,0x72,0x65,0x6e,0x77,0x6f,0x20,0x74,0x6e,0x75,0x6f,0x63,0x63,0x61,0x20,0x65,0x68,0x74,0x20,0x65,0x62,0x20,0x74,0x73,0x75,0x6d,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x6e,0x6f,0x73,0x72,0x65,0x70,0x20,0x65,0x68,0x54,0x20,0xb7,0xc2]

/*: "Continue" :*/
fileprivate let str_imageData:[Character] = ["C","o","n","t","i","n","u","e"]

/*: "btn_me_back_continue" :*/
fileprivate let str_tipName:[Character] = ["b","t","n","_","m","e","_","b","a","c"]
fileprivate let str_videoTitle:String = "pic"
fileprivate let str_timeTitle:String = "send false shared path_con"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PropertyReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationView: UIView {
class PropertyReactiveCompatible: UIView {
    var blockImageView: UIImageView?

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias ContinueBtnClickBlock = () -> Void
    typealias ContinueBtnClickBlock = () -> Void
    //: var btnClickBlock: ContinueBtnClickBlock?
    var btnClickBlock: ContinueBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        workIn()
        //: layoutSubViewsConstraints()
        resistance()
        //: bindInteraction()
        bind()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_imageAllData, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.outsideText(name: "img_faceverification_photo")
        imgView.image = UIImage.outsideText(name: (String(str_moveTitle) + String(str_errorName)))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Face verification".localized
        lb.text = (String(str_playerValue) + str_normalFromName.lowercased() + String(str_titleData)).localized
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
        //: lb.text = "A real-person verification of your profile will get you more and better matches.".localized
        lb.text = String(bytes: str_pointData, encoding: .utf8)!.localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .observerShared()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 18)
        lb.font = .thoughtImage(type: .Medium, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subFirstDesLab: UILabel = {
    lazy var subFirstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· Take the photo by following the posing guide.".localized
        lb.text = String(bytes: str_pathFinishText, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .blockOf()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subSecondDesLab: UILabel = {
    lazy var subSecondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· The person in the photo must be the account owner.".localized
        lb.text = String(bytes: str_senseName.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .blockOf()
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
        //: btn.setTitle("Continue".localized, for: .normal)
        btn.setTitle((String(str_imageData)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.outsideText(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (String(str_tipName) + str_videoTitle.replacingOccurrences(of: "pic", with: "k") + String(str_timeTitle.suffix(4)) + "tinue")), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .thoughtImage(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationView {
extension PropertyReactiveCompatible {
    //: @objc func registerBtnAction() {
    @objc func registerRequest() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func bind() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.registerRequest()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationView {
extension PropertyReactiveCompatible {
    //: func createSubViews() {
    func workIn() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(subFirstDesLab)
        addSubview(subFirstDesLab)
        //: addSubview(subSecondDesLab)
        addSubview(subSecondDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func resistance() {
        //: let imgSize = faceBackImageView.image?.size
        let imgSize = faceBackImageView.image?.size
        //: let fitH = imgSize!.height * ScreenWidth / imgSize!.width
        let fitH = imgSize!.height * a_blockValue / imgSize!.width
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo(actualHeight(h: 11)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 11) + a_limitRecordScreenName)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -5))
            make.trailing.equalTo(actualWidth(w: -5))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: subFirstDesLab.snp.makeConstraints { make in
        subFirstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
            make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
        }
        //: subSecondDesLab.snp.makeConstraints { make in
        subSecondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
            make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
