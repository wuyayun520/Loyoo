
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_thoughtName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualCommentView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewCommentView: UIView {
class EqualCommentView: UIView {
    var toPathImageView: UIImageView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.strokeEnterInfo()
        //: self.setupSubViewsConstraint()
        self.methodConstraint()
        //: self.bindInteraction()
        self.quantityerchangeFree()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_thoughtName, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var contentLabel = UILabel().then {
    lazy var contentLabel = UILabel().then {
        //: $0.textColor = .white
        $0.textColor = .white
        //: $0.font = .pingfangFont(type: .Regular, fontSize: 16)
        $0.font = .thoughtImage(type: .Regular, fontSize: 16)
    }
}

// MARK: - Bind && Event

//: extension TPreviewCommentView {
extension EqualCommentView {
    //: private func bindInteraction() {
    private func quantityerchangeFree() {}
}

// MARK: - update

//: extension TPreviewCommentView {
extension EqualCommentView {
    //: func updateCommentContent(content: String) {
    func donationEqual(content: String) {
        //: if content.isEmptyString {
        if content.isEmptyString {
            //: self.isHidden = true
            self.isHidden = true
            //: } else {
        } else {
            //: self.isHidden = false
            self.isHidden = false

            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.thoughtImage(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: let attributeStr = NSMutableAttributedString(string: content)
            let attributeStr = NSMutableAttributedString(string: content)
            //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))

            //: let paragraph = NSMutableParagraphStyle()
            let paragraph = NSMutableParagraphStyle()
            //: paragraph.lineSpacing = 3
            paragraph.lineSpacing = 3
            //: attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))

            //: contentLabel.attributedText = attributeStr
            contentLabel.attributedText = attributeStr
        }
    }
}

// MARK: Layout

//: extension TPreviewCommentView {
extension EqualCommentView {
    //: private func setupSubviews() {
    private func strokeEnterInfo() {
        //: self.addSubview(contentLabel)
        self.addSubview(contentLabel)
    }

    //: private func setupSubViewsConstraint() {
    private func methodConstraint() {
        //: contentLabel.snp.makeConstraints { make in
        contentLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(actualHeight(h: 12))
            make.top.equalTo(actualHeight(h: 12))
            //: make.bottom.equalTo(actualHeight(h: -12))
            make.bottom.equalTo(actualHeight(h: -12))
        }
    }
}
