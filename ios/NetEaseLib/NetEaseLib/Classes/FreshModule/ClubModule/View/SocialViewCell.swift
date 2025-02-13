
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_femaleValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SocialViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/18.
//

//: import UIKit
import UIKit

//: enum CardCellSwipeDirection: CaseIterable {
enum PicSwipeDirection: CaseIterable {
    //: case Left
    case Left
    //: case Right
    case Right
}

//: protocol TalkingClubCardViewCellDelegete: NSObjectProtocol {
protocol UserCellDelegete: NSObjectProtocol {
    ///
    //: func cardViewCellDidRemoveFromSuperView(cell: TalkingClubCardViewCell)
    func hollerithCard(cell: SocialViewCell)
    //: func cardViewCellDidMoveFromSuperView(cell: TalkingClubCardViewCell, forMovePoint: CGPoint)
    func delayPoint(cell: SocialViewCell, forMovePoint: CGPoint)
}

//: class TalkingClubCardViewCell: UIView {
class SocialViewCell: UIView {
    var digitiserImageView: UIImageView?

    //: let SNAPSHOTVIEW_TAG = 999
    let SNAPSHOTVIEW_TAG = 999

    //: let DefaultDuration = 0.25
    let DefaultDuration = 0.25
    //: let SpringDuration = 0.5
    let SpringDuration = 0.5
    //: let SpringWithDamping = 0.5
    let SpringWithDamping = 0.5
    //: let SpringVelocity = 1.8
    let SpringVelocity = 1.8

    //: var reuseIdentifier = ""    ///  重用标识
    var reuseIdentifier = "" ///  重用标识
    //: var currentPoint = CGPoint.zero
    var currentPoint = CGPoint.zero
    //: var maxAngle = 0.0
    var maxAngle = 0.0
    //: var maxRemoveDistance = 0.0
    var maxRemoveDistance = 0.0
    //: var cell_delegate: TalkingClubCardViewCellDelegete?
    var cell_delegate: UserCellDelegete?

    //: var model: TalkingMatchResultModel?
    var model: TallyModelType?

    //: init(reuseIdentifier: String) {
    init(reuseIdentifier: String) {
        //: super.init(frame: .zero)
        super.init(frame: .zero)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.reuseIdentifier = reuseIdentifier
        self.reuseIdentifier = reuseIdentifier
        //: setupView()
        towardLoadView()
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_femaleValue, encoding: .utf8)!)
    }

    /// 内容视图
    //: private lazy var tapGesture: UIPanGestureRecognizer = {
    private lazy var tapGesture: UIPanGestureRecognizer = {
        //: let v = UIPanGestureRecognizer.init(target: self, action: #selector(panGesture(pan:)))
        let v = UIPanGestureRecognizer(target: self, action: #selector(makeReal(pan:)))
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingClubCardViewCell: UIGestureRecognizerDelegate {
extension SocialViewCell: UIGestureRecognizerDelegate {
    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
    func gestureRecognizer(_: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith _: UIGestureRecognizer) -> Bool {
        //: return true
        return true
    }

    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
    func gestureRecognizer(_: UIGestureRecognizer, shouldReceive _: UITouch) -> Bool {
        //: let sc = self.model?.isScroll
        let sc = self.model?.isScroll
        //: return sc!
        return sc!
    }

    //: func addCellSnapshotView() {
    func snapshotCompartmentStraddleAddAction() {
        //: removeCellSnapshotView()
        resourceView()
        //: self.setNeedsLayout()
        self.setNeedsLayout()
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let snapshotView = self.snapshotView(afterScreenUpdates: true)
        let snapshotView = self.snapshotView(afterScreenUpdates: true)
        //: if snapshotView != nil {
        if snapshotView != nil {
            //: snapshotView!.tag = SNAPSHOTVIEW_TAG
            snapshotView!.tag = SNAPSHOTVIEW_TAG
            //: snapshotView!.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            snapshotView!.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            //: self.addSubview(snapshotView!)
            self.addSubview(snapshotView!)
            //: self.bringSubviewToFront(snapshotView!)
            self.bringSubviewToFront(snapshotView!)
        }
    }

    //: func removeCellSnapshotView() {
    func resourceView() {
        //: let snapshotView = self.viewWithTag(SNAPSHOTVIEW_TAG)
        let snapshotView = self.viewWithTag(SNAPSHOTVIEW_TAG)
        //: if (snapshotView != nil) {
        if snapshotView != nil {
            //: snapshotView?.removeFromSuperview()
            snapshotView?.removeFromSuperview()
        }
    }

    //: @objc func panGesture(pan: UIPanGestureRecognizer) {
    @objc func makeReal(pan: UIPanGestureRecognizer) {
        //: switch pan.state {
        switch pan.state {
        //: case .began:
        case .began:
            //: currentPoint = .zero
            currentPoint = .zero

        //: case .changed:
        case .changed:
            //: let movePoint = pan.translation(in: pan.view)
            let movePoint = pan.translation(in: pan.view)
            //: if LanguageManager.shared.direction == .rightToLeft {
            if ConstraintLanguageManager.shared.direction == .rightToLeft {
                //: if movePoint.x > ScreenWidth/4 {
                if movePoint.x > a_blockValue / 4 {
                    //: currentPoint = CGPoint.init(x: currentPoint.x + movePoint.x, y: currentPoint.y + movePoint.y)
                    currentPoint = CGPoint(x: currentPoint.x + movePoint.x, y: currentPoint.y + movePoint.y)

                    //: var moveScale = currentPoint.x / self.maxRemoveDistance
                    var moveScale = currentPoint.x / self.maxRemoveDistance
                    //: if abs(moveScale) > 1.0 {
                    if abs(moveScale) > 1.0 {
                        //: moveScale = (moveScale > 0) ? 1.0 : -1.0
                        moveScale = (moveScale > 0) ? 1.0 : -1.0
                    }
                    //: let angle = 30 / 180.0 * Double.pi * moveScale
                    let angle = 30 / 180.0 * Double.pi * moveScale
                    //: let transRotation = CGAffineTransformMakeRotation(angle)
                    let transRotation = CGAffineTransformMakeRotation(angle)
                    //: self.transform = CGAffineTransformTranslate(transRotation, self.currentPoint.x, 0)
                    self.transform = CGAffineTransformTranslate(transRotation, self.currentPoint.x, 0)

                    //: self.cell_delegate?.cardViewCellDidMoveFromSuperView(cell: self, forMovePoint: self.currentPoint)
                    self.cell_delegate?.delayPoint(cell: self, forMovePoint: self.currentPoint)
                    //: pan.setTranslation(.zero, in: pan.view)
                    pan.setTranslation(.zero, in: pan.view)
                }
                //: } else {
            } else {
                //: if movePoint.x < 10 {
                if movePoint.x < 10 {
                    //: currentPoint = CGPoint.init(x: currentPoint.x + movePoint.x, y: currentPoint.y + movePoint.y)
                    currentPoint = CGPoint(x: currentPoint.x + movePoint.x, y: currentPoint.y + movePoint.y)

                    //: var moveScale = currentPoint.x / self.maxRemoveDistance
                    var moveScale = currentPoint.x / self.maxRemoveDistance
                    //: if abs(moveScale) > 1.0 {
                    if abs(moveScale) > 1.0 {
                        //: moveScale = (moveScale > 0) ? 1.0 : -1.0
                        moveScale = (moveScale > 0) ? 1.0 : -1.0
                    }
                    //: let angle = self.maxAngle / 180.0 * Double.pi * moveScale
                    let angle = self.maxAngle / 180.0 * Double.pi * moveScale
                    //: let transRotation = CGAffineTransformMakeRotation(angle)
                    let transRotation = CGAffineTransformMakeRotation(angle)
                    //: self.transform = CGAffineTransformTranslate(transRotation, self.currentPoint.x, 0)
                    self.transform = CGAffineTransformTranslate(transRotation, self.currentPoint.x, 0)

                    //: self.cell_delegate?.cardViewCellDidMoveFromSuperView(cell: self, forMovePoint: self.currentPoint)
                    self.cell_delegate?.delayPoint(cell: self, forMovePoint: self.currentPoint)
                    //: pan.setTranslation(.zero, in: pan.view)
                    pan.setTranslation(.zero, in: pan.view)
                }
            }

        //: case .ended:
        case .ended:
            //: if LanguageManager.shared.direction == .rightToLeft {
            if ConstraintLanguageManager.shared.direction == .rightToLeft {
                //: didPanStateEndedToRight()
                self.ended()
                //: } else {
            } else {
                //: didPanStateEnded()
                getCrackingEnded()
            }
        //: case .failed:
        case .failed:
            //: restoreCellLocation()
            cellFree()

        //: case .possible:
        case .possible:
            //: break
            break
        //: case .cancelled:
        case .cancelled:
            //: break
            break
        //: @unknown default:
        @unknown default:
            //: break
            break
        }
    }

    // 手势结束操作
    //: func didPanStateEnded() {
    func getCrackingEnded() {
        // 左滑移除
        //: if (self.currentPoint.x < -self.maxRemoveDistance) {
        if self.currentPoint.x < -self.maxRemoveDistance {
            //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
            let snapshotView = self.snapshotView(afterScreenUpdates: false)
            //: snapshotView?.transform = self.transform
            snapshotView?.transform = self.transform
            //: if snapshotView != nil {
            if snapshotView != nil {
                //: self.superview?.superview?.addSubview(snapshotView!)
                self.superview?.superview?.addSubview(snapshotView!)
            }
            //: didCellRemoveFromSuperview()
            majority()

            //: let endCenterX = -(UIScreen.main.bounds.size.width/2 + self.frame.size.width)
            let endCenterX = -(UIScreen.main.bounds.size.width / 2 + self.frame.size.width)
            // 修改
            //: let distanceY = endCenterX*self.currentPoint.y/self.currentPoint.x
            let distanceY = endCenterX * self.currentPoint.y / self.currentPoint.x // 纵向移动距离
            //: let finishPoint = CGPoint.init(x: endCenterX, y: distanceY+self.center.y)
            let finishPoint = CGPoint(x: endCenterX, y: distanceY + self.center.y) // 目标center点

            //: UIView.animate(withDuration: DefaultDuration) {
            UIView.animate(withDuration: DefaultDuration) {
                //: snapshotView?.center = finishPoint
                snapshotView?.center = finishPoint
                //: }completion: { finished in
            } completion: { _ in
                //: snapshotView?.removeFromSuperview()
                snapshotView?.removeFromSuperview()
            }
        }
        // 滑动距离不够归位
        //: else {
        else {
            //: restoreCellLocation()
            cellFree()
        }
    }

    //: func didPanStateEndedToRight() {
    func ended() {
        // 左滑移除
        //: if (self.currentPoint.x > self.maxRemoveDistance) {
        if self.currentPoint.x > self.maxRemoveDistance {
            //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
            let snapshotView = self.snapshotView(afterScreenUpdates: false)
            //: snapshotView?.transform = self.transform
            snapshotView?.transform = self.transform
            //: if snapshotView != nil {
            if snapshotView != nil {
                //: self.superview?.superview?.addSubview(snapshotView!)
                self.superview?.superview?.addSubview(snapshotView!)
            }
            //: didCellRemoveFromSuperview()
            majority()

            //: let endCenterX = (UIScreen.main.bounds.size.width/2 + self.frame.size.width)
            let endCenterX = (UIScreen.main.bounds.size.width / 2 + self.frame.size.width)
            // 修改
            //: let distanceY = endCenterX*self.currentPoint.y/self.currentPoint.x
            let distanceY = endCenterX * self.currentPoint.y / self.currentPoint.x // 纵向移动距离
            //: let finishPoint = CGPoint.init(x: endCenterX, y: distanceY+self.center.y)
            let finishPoint = CGPoint(x: endCenterX, y: distanceY + self.center.y) // 目标center点

            //: UIView.animate(withDuration: DefaultDuration) {
            UIView.animate(withDuration: DefaultDuration) {
                //: snapshotView?.center = finishPoint
                snapshotView?.center = finishPoint
                //: }completion: { finished in
            } completion: { _ in
                //: snapshotView?.removeFromSuperview()
                snapshotView?.removeFromSuperview()
            }
        }
        // 滑动距离不够归位
        //: else {
        else {
            //: restoreCellLocation()
            cellFree()
        }
    }

    /// 卡片移除处理
    //: func didCellRemoveFromSuperview() {
    func majority() {
        //: self.transform = CGAffineTransformIdentity
        self.transform = CGAffineTransformIdentity
        //: self.removeFromSuperview()
        self.removeFromSuperview()
        //: self.cell_delegate?.cardViewCellDidRemoveFromSuperView(cell: self)
        self.cell_delegate?.hollerithCard(cell: self)
    }

    /// 还原卡片位置
    //: func restoreCellLocation() {
    func cellFree() {
        //: UIView.animate(withDuration: SpringDuration, delay: 0, usingSpringWithDamping: SpringWithDamping, initialSpringVelocity: SpringVelocity, options: [.curveEaseOut, .allowUserInteraction]) {
        UIView.animate(withDuration: SpringDuration, delay: 0, usingSpringWithDamping: SpringWithDamping, initialSpringVelocity: SpringVelocity, options: [.curveEaseOut, .allowUserInteraction]) {
            //: self.transform = CGAffineTransformIdentity
            self.transform = CGAffineTransformIdentity
        }
    }

    //: func removeFromSuperviewSwipe(direction: CardCellSwipeDirection) {
    func menuDirection(direction: PicSwipeDirection) {
        //: switch (direction) {
        switch direction {
        //: case .Left:
        case .Left:
            //: removeFromSuperviewLeft()
            superviewPositionForthrightDelouse()
        //: case .Right:
        case .Right:
            //: removeFromSuperviewRight()
            renderPresent()
        }
    }

    // 向左边移除动画
    //: func removeFromSuperviewLeft() {
    func superviewPositionForthrightDelouse() {
        //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
        let snapshotView = self.snapshotView(afterScreenUpdates: false)
        //: if snapshotView != nil {
        if snapshotView != nil {
            //: self.superview?.superview?.addSubview(snapshotView!)
            self.superview?.superview?.addSubview(snapshotView!)
        }
        //: didCellRemoveFromSuperview()
        majority()

        //: let transRotation = CGAffineTransformMakeRotation(-self.maxAngle / 180.0 * Double.pi)
        let transRotation = CGAffineTransformMakeRotation(-self.maxAngle / 180.0 * Double.pi)
        //: let transform = CGAffineTransformTranslate(transRotation, 0, self.frame.size.height/4.0)
        let transform = CGAffineTransformTranslate(transRotation, 0, self.frame.size.height / 4.0)
        //: let endCenterX = -(UIScreen.main.bounds.size.width/2 + self.frame.size.width)
        let endCenterX = -(UIScreen.main.bounds.size.width / 2 + self.frame.size.width)
        //: UIView.animate(withDuration: DefaultDuration) {
        UIView.animate(withDuration: DefaultDuration) {
            //: var center = self.center
            var center = self.center
            //: center.x = endCenterX
            center.x = endCenterX
            //: snapshotView?.center = center
            snapshotView?.center = center
            //: snapshotView?.transform = transform
            snapshotView?.transform = transform
            //: }completion: { finished in
        } completion: { _ in
            //: snapshotView?.removeFromSuperview()
            snapshotView?.removeFromSuperview()
        }
    }

    // 向右边移除动画
    //: func removeFromSuperviewRight() {
    func renderPresent() {
        //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
        let snapshotView = self.snapshotView(afterScreenUpdates: false)
        //: snapshotView?.frame = self.frame
        snapshotView?.frame = self.frame
        //: if snapshotView != nil {
        if snapshotView != nil {
            //: self.superview?.superview?.addSubview(snapshotView!)
            self.superview?.superview?.addSubview(snapshotView!)
        }
        //: didCellRemoveFromSuperview()
        majority()

        //: let transRotation = CGAffineTransformMakeRotation(self.maxAngle / 180.0 * Double.pi)
        let transRotation = CGAffineTransformMakeRotation(self.maxAngle / 180.0 * Double.pi)
        //: let transform = CGAffineTransformTranslate(transRotation, 0, self.frame.size.height/4.0)
        let transform = CGAffineTransformTranslate(transRotation, 0, self.frame.size.height / 4.0)
        //: let endCenterX = UIScreen.main.bounds.size.width/2 + self.frame.size.width * 1.5
        let endCenterX = UIScreen.main.bounds.size.width / 2 + self.frame.size.width * 1.5

        //: UIView.animate(withDuration: DefaultDuration) {
        UIView.animate(withDuration: DefaultDuration) {
            //: var center = self.center
            var center = self.center
            //: center.x = endCenterX
            center.x = endCenterX
            //: snapshotView?.center = center
            snapshotView?.center = center
            //: snapshotView?.transform = transform
            snapshotView?.transform = transform
            //: }completion: { finished in
        } completion: { _ in
            //: snapshotView?.removeFromSuperview()
            snapshotView?.removeFromSuperview()
        }
    }
}

//: extension TalkingClubCardViewCell {
extension SocialViewCell {
    //: func setupView() {
    func towardLoadView() {
        //: self.addGestureRecognizer(tapGesture)
        self.addGestureRecognizer(tapGesture)
    }
}
