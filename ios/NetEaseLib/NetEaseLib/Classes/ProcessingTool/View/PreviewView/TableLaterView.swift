
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_itemCellData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableLaterView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TPreviewBottomToolView: UIView {
class TableLaterView: UIView {
    var iconImageView: UIImageView?

    //: var uid:String = ""
    var uid: String = ""
    //: var mid: String = ""
    var mid: String = ""
    //: var mType: String = ""
    var mType: String = ""
    //: var isLike = false
    var isLike = false
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var previewLikeBlock: (() -> Void)?
    var previewLikeBlock: (() -> Void)?
    //: var previewCommentBlock: (() -> Void)?
    var previewCommentBlock: (() -> Void)?
    //: var previewChatBlock: (() -> Void)?
    var previewChatBlock: (() -> Void)?
    //: var previewCrushBlock: (() -> Void)?
    var previewCrushBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.corner()
        //: self.setupSubViewsConstraint()
        self.barConstraint()
        //: self.bindInteraction()
        self.course()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_itemCellData, encoding: .utf8)!)
    }
}

// MARK: - Bind && Event

//: extension TPreviewBottomToolView {
extension TableLaterView {
    //: private func bindInteraction() {
    private func course() {}

    //: @objc func registerLikeAction() {
    @objc func cellRecruitImage() {
        //: self.likeRequest()
        self.lastRequest()
    }

    //: @objc func registerChatAction() {
    @objc func asEngagement() {
        //: self.chatPush()
        self.quote()
    }

    //: @objc func registerCrushAction() {
    @objc func minorityPlay() {
        //: self.crushRequest()
        self.pathDown()
    }

    //: @objc func registerCommentAction() {
    @objc func stupefactionAction() {
        //: self.commentPush()
        self.insert()
    }
}

// MARK: - update

//: extension TPreviewBottomToolView {
extension TableLaterView {
    //: func updateBottomView(model: TPreviewInfoModel) {
    func allow(model: EnableMeasurable) {
        //: uid = model.uid
        uid = model.uid
        //: mid = model.mid
        mid = model.mid
        //: mType = model.mType
        mType = model.mType
    }

    //: private func chatPush() {
    private func quote() {}

    //: private func commentPush() {
    private func insert() {}

    //: private func crushRequest() {
    private func pathDown() {
        //: TalkingUserRequestManager.func__sendCrushWithUserId(targetUid: uid) { succeed, result, errorModel in
        ConsumerRequestManager.tailgate(targetUid: uid) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                // 播放动画
            }
        }
    }

    //: private func likeRequest() {
    private func lastRequest() {
        //: TalkingUserRequestManager.func__likeMoment(mid: mid, type: mType) { succeed, result, errorModel in
        ConsumerRequestManager.inventoryItem(mid: mid, type: mType) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isLike = !self.isLike
                self.isLike = !self.isLike
            }
        }
    }
}

// MARK: Layout

//: extension TPreviewBottomToolView {
extension TableLaterView {
    //: private func setupSubviews() {
    private func corner() {}

    //: private func setupSubViewsConstraint() {
    private func barConstraint() {}
}
