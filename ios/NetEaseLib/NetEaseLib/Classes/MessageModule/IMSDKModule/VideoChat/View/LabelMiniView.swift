
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_managerTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelMiniView.swift
//  AbroadTalking
//
//  Created by young on 2023/5/31.
//

//: import UIKit
import UIKit

// 小窗口状态
//: enum MiniWindowStatus {
enum OccurrentWindowStatus {
    //: case calling
    case calling // 通话中
    //: case end
    case end // 通话结束
}

//: class TalkingBaseMiniView: UIView {
class LabelMiniView: UIView {
	var currentQuantity: Int = 99
	var ofTitle: String = "show"
	var passArray: [AnyHashable] = []
	var compartmentQuantity: Int = 28
	var pollsTitle: String = "bar"
	var imageArray: [AnyHashable] = []

    var makeStartImageView: UIImageView?
    //: var tapGestureBlock: (() -> Void)?
    var tapGestureBlock: (() -> Void)? // 点击手势Block

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_managerTitle, encoding: .utf8)!)
    }

    // addSubview是调用
    //: override func willMove(toSuperview newSuperview: UIView?) {
    override func willMove(toSuperview _: UIView?) {
        //: TalkingSocketManager.shared.containerView?.isHidden = false
        SocketReactiveCompatible.shared.containerView?.isHidden = false
    
            if (self.preservesSuperviewLayoutMargins) && (self.convert(CGRect.zero, from: self.superview).origin.y == 86.68) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let showLet = ViewBarView(frame: self.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(67), width: CGFloat(0), height: CGFloat(0))))


            
            showLet.premiumInterval = { [self] rowNumber in
            self.currentQuantity = rowNumber
            
            return self.currentQuantity
            }
            showLet.indexText = { [self] writeText in
            self.ofTitle = writeText
            
            self.ofTitle = String(repeating: "=" as Character, count: self.ofTitle.lowercased().count)
            return self.ofTitle
            }
            showLet.progressArray = { [self] reArray in
            self.passArray = reArray
            
            guard var value = self.passArray as? [String] else {
                return nil
            }
            return value
            }
                self.addSubview(showLet)
            }

	}

    /// 移除视图
    //: func dismissWhenCallEnd() {
    func sortExit() {
        //: removeAllGestures()
        deleteColor()
        //: UIView.animate(withDuration: 0.3, delay: 2, options: .curveEaseOut) {
        UIView.animate(withDuration: 0.3, delay: 2, options: .curveEaseOut) {
            //: let x = (self.center.x <= ScreenWidth*0.5) ? -self.width : ScreenWidth+self.width
            let x = (self.center.x <= a_blockValue * 0.5) ? -self.width : a_blockValue + self.width
            //: self.frame = CGRect(x: x, y: self.top, width: self.width, height: self.height)
            self.frame = CGRect(x: x, y: self.top, width: self.width, height: self.height)
            //: } completion: { _ in
        } completion: { _ in
            //: if self.superview != nil {
            if self.superview != nil {
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
            //: TalkingSocketManager.shared.containerView?.isHidden = true
            SocketReactiveCompatible.shared.containerView?.isHidden = true
        }
    
	if let makeStartImageView = makeStartImageView {

            if (makeStartImageView.preservesSuperviewLayoutMargins) && (makeStartImageView.convert(CGRect.zero, from: makeStartImageView.superview).origin.y == 86.68) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let showLet = ViewBarView(frame: makeStartImageView.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(67), width: CGFloat(0), height: CGFloat(0))))


            
            showLet.premiumInterval = { [self] rowNumber in
            self.compartmentQuantity = rowNumber
            
            return self.compartmentQuantity
            }
            showLet.indexText = { [self] writeText in
            self.pollsTitle = writeText
            
            self.pollsTitle = String(repeating: "=" as Character, count: self.pollsTitle.lowercased().count)
            return self.pollsTitle
            }
            showLet.progressArray = { [self] reArray in
            self.imageArray = reArray
            
            guard var value = self.imageArray as? [String] else {
                return nil
            }
            return value
            }
                makeStartImageView.addSubview(showLet)
            }

	}

	}
}

// MARK: - 添加手势

//: extension TalkingBaseMiniView {
extension LabelMiniView {
    /// 添加点击手势
    //: @discardableResult
    @discardableResult
    //: func addTapGesture() -> UITapGestureRecognizer {
    func totalName() -> UITapGestureRecognizer {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapGestureEvent(sender:)))
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.equalSave(sender:)))
        //: tap.numberOfTapsRequired = 1
        tap.numberOfTapsRequired = 1
        //: self.addGestureRecognizer(tap)
        self.addGestureRecognizer(tap)
        //: return tap
        return tap
    }

    /// 添加点击和拖拽手势
    //: func addTapAndPanGestures() {
    func eachGestures() {
        //: let pan = UIPanGestureRecognizer(target: self, action: #selector(self.panGestureEvent(sender:)))
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.picture(sender:)))
        //: let tap = self.addTapGesture()
        let tap = self.totalName()
        //: pan.shouldBeRequiredToFail(by: tap)
        pan.shouldBeRequiredToFail(by: tap)
        //: self.addGestureRecognizer(pan)
        self.addGestureRecognizer(pan)
    }

    /// 移除所有手势
    //: func removeAllGestures() {
    func deleteColor() {
        //: self.gestureRecognizers?.forEach(self.removeGestureRecognizer(_:))
        self.gestureRecognizers?.forEach(self.removeGestureRecognizer(_:))
    }

    /// 拖拽手势
    //: @objc func panGestureEvent(sender: UIPanGestureRecognizer) {
    @objc func picture(sender: UIPanGestureRecognizer) {
        //: let offset = sender.translation(in: self)
        let offset = sender.translation(in: self)
        //: var centerX = self.center.x+offset.x
        var centerX = self.center.x + offset.x
        //: var centerY = self.center.y+offset.y
        var centerY = self.center.y + offset.y
        //: centerX = max(self.width*0.5, centerX)
        centerX = max(self.width * 0.5, centerX)
        //: centerX = min(ScreenWidth-self.width*0.5, centerX)
        centerX = min(a_blockValue - self.width * 0.5, centerX)
        //: centerY = max(self.height*0.5, centerY)
        centerY = max(self.height * 0.5, centerY)
        //: centerY = min(ScreenHeight-self.height*0.5, centerY)
        centerY = min(a_formalValue - self.height * 0.5, centerY)
        //: self.center = CGPoint(x: centerX, y: centerY)
        self.center = CGPoint(x: centerX, y: centerY)
        //: sender.setTranslation(CGPoint.zero, in: self)
        sender.setTranslation(CGPoint.zero, in: self)

        //: if sender.state == .ended {
        if sender.state == .ended {
            //: let centerX = self.center.x
            let centerX = self.center.x
            //: var endCenterX = ScreenWidth-self.width*0.5
            var endCenterX = a_blockValue - self.width * 0.5
            //: var recordX = ScreenWidth
            var recordX = a_blockValue
            //: if centerX <= ScreenWidth*0.5 {
            if centerX <= a_blockValue * 0.5 {
                //: endCenterX = self.width*0.5
                endCenterX = self.width * 0.5
                //: recordX = 0
                recordX = 0
            }
            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.center = CGPoint(x: endCenterX, y: self.center.y)
                self.center = CGPoint(x: endCenterX, y: self.center.y)
            }
            //: let recordY = self.center.y-self.height*0.5
            let recordY = self.center.y - self.height * 0.5
            //: TalkingSocketManager.shared.videoMiniPosition = CGPoint(x: recordX, y: recordY)
            SocketReactiveCompatible.shared.videoMiniPosition = CGPoint(x: recordX, y: recordY)
        }
    }

    /// 点击手势
    //: @objc private func tapGestureEvent(sender: UIPanGestureRecognizer) {
    @objc private func equalSave(sender _: UIPanGestureRecognizer) {
        //: if self.tapGestureBlock != nil {
        if self.tapGestureBlock != nil {
            //: self.tapGestureBlock!()
            self.tapGestureBlock!()
        }
    }
}
