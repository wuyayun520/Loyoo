
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_partyTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "nav_back_black_nor" :*/
fileprivate let str_collectionValue:String = "else create from push modelnav_"
fileprivate let str_sizeData:String = "black_norextension info sign in"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataConverterReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankTitleView: UIView {
class DataConverterReactiveCompatible: UIView {
    var talkImageView: UIImageView?

    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.conk()
        //: self.setupSubViewsConstraint()
        self.dismissOpen()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_partyTitle, encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage.outsideText(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.outsideText(name: (String(str_collectionValue.suffix(4)) + "back_" + String(str_sizeData.prefix(9)))).withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(listEqual), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension SocialRankTitleView {
extension DataConverterReactiveCompatible {
    //: @objc func registerBackAction() {
    @objc func listEqual() {
        //: currentViewController()?.navigationController?.popViewController(animated: true)
        colorController()?.navigationController?.popViewController(animated: true)
    }
}

// MARK: Layout

//: extension SocialRankTitleView {
extension DataConverterReactiveCompatible {
    //: private func setupSubviews() {
    private func conk() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func dismissOpen() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(a_limitRecordScreenName)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 44))
            make.size.equalTo(CGSize(width: 40, height: 44))
        }
    }
}
