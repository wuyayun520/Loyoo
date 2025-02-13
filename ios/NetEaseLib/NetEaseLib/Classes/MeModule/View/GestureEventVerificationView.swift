
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_faceverification_guide_ok" :*/
fileprivate let str_toTitle:String = "image action timeicon_fac"
fileprivate let str_viewData:[Character] = ["e","v","e","r","i","f","i","c","a","t","i","o","n","_","g","u","i","d","e","_","o","k"]

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let str_backgroundData:[UInt8] = [0x53,0x75,0x62,0x6d,0x69,0x74,0x74,0x65,0x64,0x20,0x73,0x75,0x63,0x63,0x65,0x73,0x73,0x66,0x75,0x6c,0x6c,0x79,0x2c,0x20,0x70,0x6c,0x65,0x61,0x73,0x65,0x20,0x77,0x61,0x69,0x74,0x20,0xa,0x20,0x70,0x61,0x74,0x69,0x65,0x6e,0x74,0x6c,0x79,0x20,0x66,0x6f,0x72,0x20,0x72,0x65,0x76,0x69,0x65,0x77,0x2e]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GestureEventVerificationView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class GestureEventVerificationView: UIView {
    var buttonEventImageView: UIImageView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        pic()
        //: layoutSubViewsConstraints()
        row()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewTitle.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.outsideText(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.outsideText(name: (String(str_toTitle.suffix(8)) + String(str_viewData)))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: str_backgroundData, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .blockOf()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .thoughtImage(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension GestureEventVerificationView {
    //: func createSubViews() {
    func pic() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func row() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}
