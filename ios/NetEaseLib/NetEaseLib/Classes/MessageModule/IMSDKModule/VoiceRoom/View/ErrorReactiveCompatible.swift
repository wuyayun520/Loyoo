
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_itemName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ErrorReactiveCompatible.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMikePositionView: UIView {
class ErrorReactiveCompatible: UIView {
    var imageImageView: UIImageView?
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        share()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_itemName, encoding: .utf8)!)
    }
}

// MARK: - Event

//: extension TalkingVoiceRoomMikePositionView {
extension ErrorReactiveCompatible {
    /// 刷新全部麦位视图
    //: func refreshAllMikeView() {
    func clickMode() {
        //: let dict = TalkingVoiceRoomManager.shared().getAllMikePositions()
        let dict = ImageToThen.labelShared().remark()
        //: dict.forEach { (key: Int, model: TalkingMikeListItemModel) in
        dict.forEach { (key: Int, model: WithDoingHandyJSON) in
            //: let itemView = self.viewWithTag(100 + key) as? TalkingMikePositionItemView
            let itemView = self.viewWithTag(100 + key) as? TotalItemView
            //: itemView?.refreshMikeItemView(key, model: model)
            itemView?.sharedDismiss(key, model: model)
        }
    }

    /// 刷新单个麦位视图
    /// - Parameter position: 麦位
    //: func refreshSingleMikeView(position: Int) {
    func openPosition(position: Int) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = ImageToThen.labelShared().mikeKey(key: position) else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? TotalItemView
        //: itemView?.refreshMikeItemView(position, model: model)
        itemView?.sharedDismiss(position, model: model)
    }

    /// 刷新声浪等级动效
    /// - Parameters:
    ///   - position: 麦位
    ///   - level: 声浪值
    //: func refreshSoundLevelAnimation(position: Int, level: NSNumber) {
    func nearData(position: Int, level: NSNumber) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = ImageToThen.labelShared().mikeKey(key: position) else { return }
        //: guard model.mikeStatus == 2 else { return }
        guard model.mikeStatus == 2 else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? TotalItemView
        //: itemView?.animateCircle(withAmplitude: CGFloat(truncating: level))
        itemView?.pointAmplitude(withAmplitude: CGFloat(truncating: level))
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMikePositionView {
extension ErrorReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func share() {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< a_nextName {
            //: let row = index / 4
            let row = index / 4
            //: let column = index % 4
            let column = index % 4
            //: var startX = 17.5 + CGFloat(column) * MikePositionItemView_Size.width
            var startX = 17.5 + CGFloat(column) * a_viewName.width
            //: if LanguageManager.shared.direction == .rightToLeft {
            if ConstraintLanguageManager.shared.direction == .rightToLeft {
                //: startX = ScreenWidth - startX - MikePositionItemView_Size.width
                startX = a_blockValue - startX - a_viewName.width
            }
            //: let item = TalkingMikePositionItemView()
            let item = TotalItemView()
            //: item.origin = CGPoint(
            item.origin = CGPoint(
                //: x: startX,
                x: startX,
                //: y: CGFloat(row) * MikePositionItemView_Size.height
                y: CGFloat(row) * a_viewName.height
            )
            //: item.size = MikePositionItemView_Size
            item.size = a_viewName
            //: item.tag = index + 100
            item.tag = index + 100
            //: item.showUserCardBlock = { [weak self] uid in
            item.showUserCardBlock = { [weak self] uid in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.showUserCardBlock?(uid)
                self.showUserCardBlock?(uid)
            }
            //: self.addSubview(item)
            self.addSubview(item)
        }
    }
}
