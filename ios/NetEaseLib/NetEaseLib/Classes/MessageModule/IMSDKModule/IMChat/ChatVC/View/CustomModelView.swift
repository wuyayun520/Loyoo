
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labelName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "group_someoneatme" :*/
fileprivate let str_skirtName:String = "grcall"
fileprivate let str_groupContent:String = "fillone"
fileprivate let str_likeValue:[Character] = ["a","t","m","e"]

/*: "Someone@ me" :*/
fileprivate let str_textName:String = "make sharedSomeon"
fileprivate let str_toName:String = "e@ meparty true color"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomModelView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/11.
//

//: import UIKit
import UIKit

//: class TalkingSomeoneAtMeView: UIView {
class CustomModelView: UIView {
    var imageImageView: UIImageView?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        applicationSubviews()
        //: setupSubViewsConstraint()
        partner()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labelName, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var mentionBtn: UIButton = {
    lazy var mentionBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.outsideText(name: "group_someoneatme"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (str_skirtName.replacingOccurrences(of: "call", with: "ou") + "p_so" + str_groupContent.replacingOccurrences(of: "fill", with: "me") + String(str_likeValue))), for: .normal)
        //: btn.setBackgroundImage(UIImage.outsideText(name: "group_someoneatme"), for: .highlighted)
        btn.setBackgroundImage(UIImage.outsideText(name: (str_skirtName.replacingOccurrences(of: "call", with: "ou") + "p_so" + str_groupContent.replacingOccurrences(of: "fill", with: "me") + String(str_likeValue))), for: .highlighted)
        //: btn.setTitle("Someone@ me".localized, for: .normal)
        btn.setTitle((String(str_textName.suffix(6)) + String(str_toName.prefix(5))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.msgTipsColor(), for: .normal)
        btn.setTitleColor(UIColor.atAfterPosition(), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingSomeoneAtMeView {
extension CustomModelView {
    /// 添加视图
    //: private func setupSubviews() {
    private func applicationSubviews() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(mentionBtn)
        self.addSubview(mentionBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func partner() {
        //: mentionBtn.snp.makeConstraints { make in
        mentionBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
