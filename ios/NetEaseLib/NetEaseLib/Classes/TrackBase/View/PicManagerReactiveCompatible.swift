
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_dismissData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "#F0F0F0" :*/
fileprivate let str_imageData:String = "record in model#F0F0F0"

/*: "icon_fbmoments_notice" :*/
fileprivate let str_episodeChangeData:String = "icon_image self succeed make all"
fileprivate let str_serverValue:[Character] = ["f","b","m","o","m","e","n","t","s","_","n","o","t","i","c","e"]

/*: "Don’t post content that induces others to send gifts or other money-related cintent." :*/
fileprivate let str_countText:[UInt8] = [0x44,0x6f,0x6e,0xe2,0x80,0x99,0x74,0x20,0x70,0x6f,0x73,0x74,0x20,0x63,0x6f,0x6e,0x74,0x65,0x6e,0x74,0x20,0x74,0x68,0x61,0x74,0x20,0x69,0x6e,0x64,0x75,0x63,0x65,0x73,0x20,0x6f,0x74,0x68,0x65,0x72,0x73,0x20,0x74,0x6f,0x20,0x73,0x65,0x6e,0x64,0x20,0x67,0x69,0x66,0x74,0x73,0x20,0x6f,0x72,0x20,0x6f,0x74,0x68,0x65,0x72,0x20,0x6d,0x6f,0x6e,0x65,0x79,0x2d,0x72,0x65,0x6c,0x61,0x74,0x65,0x64,0x20,0x63,0x69,0x6e,0x74,0x65,0x6e,0x74,0x2e]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PicManagerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class FreeCollectionFooterView: UICollectionReusableView {
class PicManagerReactiveCompatible: UICollectionReusableView {
    var holderToImageView: UIImageView?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_dismissData, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        imageRoomSubviews()
        //: setupSubViewsConstraint()
        substituteMake()
    }

    // MARK: - Lazy load

    //: private lazy var noticeView: UIView = {
    private lazy var noticeView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#F0F0F0")
        v.backgroundColor = UIColor(hex: (String(str_imageData.suffix(7))))
        //: v.layer.cornerRadius = 6
        v.layer.cornerRadius = 6
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImgView: UIImageView = {
    private lazy var iconImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.outsideText(name: "icon_fbmoments_notice"))
        let imgV = UIImageView(image: UIImage.outsideText(name: (String(str_episodeChangeData.prefix(5)) + String(str_serverValue))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var tipLabel: UILabel = {
    private lazy var tipLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Don’t post content that induces others to send gifts or other money-related cintent.".localized
        lab.text = String(bytes: str_countText, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
        lab.font = UIFont.thoughtImage(type: .Regular, fontSize: 13)
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.complexion()
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension FreeCollectionFooterView {
extension PicManagerReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func imageRoomSubviews() {
        //: self.addSubview(noticeView)
        self.addSubview(noticeView)
        //: noticeView.addSubview(iconImgView)
        noticeView.addSubview(iconImgView)
        //: noticeView.addSubview(tipLabel)
        noticeView.addSubview(tipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func substituteMake() {
        //: noticeView.snp.makeConstraints { make in
        noticeView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
            if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.es.rawValue ||
                //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.pt.rawValue
            {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 56))
                make.size.equalTo(CGSize(width: a_blockValue - 30, height: 56))
                //: } else {
            } else {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 46))
                make.size.equalTo(CGSize(width: a_blockValue - 30, height: 46))
            }
        }
        //: iconImgView.snp.makeConstraints { make in
        iconImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(CGSize(width: 15, height: 15))
            make.size.equalTo(CGSize(width: 15, height: 15))
        }
        //: tipLabel.snp.makeConstraints { make in
        tipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
