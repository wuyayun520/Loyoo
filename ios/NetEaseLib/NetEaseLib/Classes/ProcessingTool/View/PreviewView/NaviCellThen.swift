
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "nav_back_black_nor" :*/
fileprivate let str_whiteName:[Character] = ["n","a","v","_","b","a","c"]
fileprivate let str_nameData:String = "k_blaself position array true"
fileprivate let str_menuName:String = "ck_norless true follow"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NaviCellThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewNaviBarView: UIView {
class NaviCellThen: UIView {
    var layerImageView: UIImageView?
    //: var uid = ""
    var uid = ""
    //: var previewSaveBlock: (() -> Void)?
    var previewSaveBlock: (() -> Void)?
    //: var tapHeadPicBlock: (() -> Void)?
    var tapHeadPicBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.researchLab()
        //: self.setupSubViewsConstraint()
        self.ginMill()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorName, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage(named: "nav_back_black_nor")?.withRenderingMode(.alwaysTemplate)
        let img = UIImage(named: (String(str_whiteName) + String(str_nameData.prefix(5)) + String(str_menuName.prefix(6))))?.withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(registerSub), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension TPreviewNaviBarView {
extension NaviCellThen {
    //: @objc func registerBackAction() {
    @objc func registerSub() {
        //: LimitPushManager.share.func__getCurrentActivityVC()?.navigationController!.popViewController(animated: true)
        LimitPushManager.share.beforeRoom()?.navigationController!.popViewController(animated: true)
    }

    //: @objc func registerSaveAction() {
    @objc func recordAddAction() {
        // 相册权限
    }

    //: @objc func tapUserHeadPic() {
    @objc func headColorPic() {}
}

// MARK: Layout

//: extension TPreviewNaviBarView {
extension NaviCellThen {
    //: private func setupSubviews() {
    private func researchLab() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func ginMill() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(a_limitRecordScreenName)
            //: make.size.equalTo(CGSize(width: 40, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 40, height: a_toText))
        }
    }
}
