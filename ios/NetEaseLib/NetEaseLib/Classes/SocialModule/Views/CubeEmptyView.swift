
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_styleData:[UInt8] = [0x71,0x76,0x71,0x6c,0x30,0x7b,0x77,0x7c,0x7d,0x6a,0x22,0x31,0x38,0x70,0x79,0x6b,0x38,0x76,0x77,0x6c,0x38,0x7a,0x7d,0x7d,0x76,0x38,0x71,0x75,0x68,0x74,0x7d,0x75,0x7d,0x76,0x6c,0x7d,0x7c]

/*: "icon_kong_kong_default" :*/
fileprivate let str_touchRestoreData:String = "hidden texticon_"
fileprivate let str_imageValue:String = "data let style_kong_"

/*: "You've got no list yet." :*/
fileprivate let str_genderValue:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","l","i","s"]
fileprivate let str_matchValue:String = "count import table sizet yet."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CubeEmptyView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/12.
//

//: import UIKit
import UIKit

//: class SocialEmptyView: UIView {
class CubeEmptyView: UIView {
    var indicatorImageView: UIImageView?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_styleData.map{$0^24}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.fullPage()
        //: self.setupSubViewsConstraint()
        self.withTitleImage()
    }

    // MARK: - Lazy load

    //: lazy var imgV: UIImageView = {
    lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.outsideText(name: "icon_kong_kong_default"))
        let v = UIImageView(image: UIImage.outsideText(name: (String(str_touchRestoreData.suffix(5)) + "kong" + String(str_imageValue.suffix(6)) + "default")))
        //: return v
        return v
        //: }()
    }()

    //: lazy var desLab: UILabel = {
    lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.observerShared()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 16)
        lab.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "You've got no list yet.".localized
        lab.text = (String(str_genderValue) + String(str_matchValue.suffix(6))).localized
        //: return lab
        return lab
        //: }()
    }()
}

//: extension SocialEmptyView {
extension CubeEmptyView {
    // 添加视图
    //: private func setupSubviews() {
    private func fullPage() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func withTitleImage() {
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(NavigationBarHeight)
            make.top.equalToSuperview().offset(a_toText)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }
}
