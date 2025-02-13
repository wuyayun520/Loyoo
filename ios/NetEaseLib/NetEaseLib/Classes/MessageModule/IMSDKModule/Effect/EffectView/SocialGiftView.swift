
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_frameValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SocialGiftView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: protocol GiftAnimatItemViewDelegate: NSObject {
protocol ErrorMediaViewDelegate: NSObject {
    // 资源下载成功，开始播放动效
    //: func giftEffectItemView(effectItemView: TalkingGiftAnimatItemView, success: Bool)
    func playerCell(effectItemView: SocialGiftView, success: Bool)

    // 资源下载失败 或 播放完成
    //: func didFinishAnimationOfGift(effectItemView: TalkingGiftAnimatItemView)
    func upgradeView(effectItemView: SocialGiftView)
}

/// 礼物动画效果的加载类，基类，定义了基础的开始，停止，清除的方法；具体动效根据effectMsgModel信息加载对应子类
//: class TalkingGiftAnimatItemView: UIView {
class SocialGiftView: UIView {
	var acceptSum: Double = -80.0
	var vacuousQuantity: Double = -45.7
	var showTotal: Double = 52.6

    var facetImageView: UIImageView?

    //: var effectMsgModel: TalkingAnimatMsgModel?
    var effectMsgModel: ConstraintMsgModel?
    //: var giftEffectModel: TalkingGiftAnimatModel?
    var giftEffectModel: ConstraintTransformable?
    //: open weak var delegate: GiftAnimatItemViewDelegate?
    open weak var delegate: ErrorMediaViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_frameValue, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: func startAnimating() {
    func textColorGift() {}

    //: func stopAnimating() {
    func scopeData() {}

    //: func cleanAnimating() {
    func cleanUponPresent() {}

    //: func pauseAnimation() {
    func scene() {}

    //: func resumeAnimation() ->Bool {
    func sound() -> Bool {
        //: return false
        return false
    }

    //: func func__filePathOfName(fileName: String) ->String {
    func standingName(fileName: String) -> String {
        //: return TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: fileName, model: self.effectMsgModel!)
        return LabelAnimatTool.shared.elite(fileName: fileName, model: self.effectMsgModel!)
    }
}
