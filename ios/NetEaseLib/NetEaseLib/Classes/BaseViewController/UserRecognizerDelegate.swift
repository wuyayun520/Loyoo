
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_tingName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/7.
//

//: import UIKit
import UIKit

//: class TalkingBasePresentViewController: TalkingBaseViewController {
class UserRecognizerDelegate: PropertyViewController {
    var tabButtonImageView: UIImageView?
    //: var tranConfig: BasePresentTransition!
    var tranConfig: AtNameThen!
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.tranConfig = BasePresentTransition.init(target: self)
        self.tranConfig = AtNameThen(target: self)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_tingName.reversed(), encoding: .utf8)!)
    }
}

//: class BasePresentTransition: NSObject {
class AtNameThen: NSObject {
    //: var showFromBottom = true
    var showFromBottom = true
    //: var duration = 0.3
    var duration = 0.3
    //: var tapShouldDismiss = true
    var tapShouldDismiss = true
    //: var visualBackAlpha = 0.3
    var visualBackAlpha = 0.3
    //: var frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight*0.6)
    var frameOfPresentedView = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue * 0.6)
    //: var targetVC: UIViewController!
    var targetVC: UIViewController!
    //: var exitPrentView: (() -> Void)?
    var exitPrentView: (() -> Void)? // 页面退下完成

    //: init(target: UIViewController) {
    init(target: UIViewController) {
        //: super.init()
        super.init()
        //: self.targetVC = target
        self.targetVC = target
        //: target.modalPresentationStyle = .custom
        target.modalPresentationStyle = .custom
        //: target.transitioningDelegate = self
        target.transitioningDelegate = self
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_tingName.reversed(), encoding: .utf8)!)
    }

    //: func configCorner(corners: UIRectCorner, radius: CGFloat) {
    func blockPop(corners: UIRectCorner, radius: CGFloat) {
        //: let viewRect = CGRect(origin: CGPoint(x: 0, y: 0), size: self.frameOfPresentedView.size)
        let viewRect = CGRect(origin: CGPoint(x: 0, y: 0), size: self.frameOfPresentedView.size)
        //: let path = UIBezierPath(roundedRect: viewRect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let path = UIBezierPath(roundedRect: viewRect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        //: let maskLayer = CAShapeLayer.init()
        let maskLayer = CAShapeLayer()
        //: maskLayer.frame = viewRect
        maskLayer.frame = viewRect
        //: maskLayer.path = path.cgPath
        maskLayer.path = path.cgPath
        //: let presentedView: UIView = self.targetVC.view!
        let presentedView: UIView = self.targetVC.view!
        //: presentedView.layer.mask = maskLayer
        presentedView.layer.mask = maskLayer
        //: presentedView.layer.masksToBounds = true
        presentedView.layer.masksToBounds = true
    }
}

//: extension BasePresentTransition: UIViewControllerTransitioningDelegate {
extension AtNameThen: UIViewControllerTransitioningDelegate {
    //: func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    func animationController(forPresented _: UIViewController, presenting _: UIViewController, source _: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        //: return self
        return self
    }

    //: func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    func animationController(forDismissed _: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        //: return self
        return self
    }

    //: func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source _: UIViewController) -> UIPresentationController? {
        //: let res = BasePresentationController.init(transition: self, presentedViewController: presented, presentingViewController: presenting)
        let res = SocialRecognizerDelegate(transition: self, presentedViewController: presented, presentingViewController: presenting)
        //: return res
        return res
    }
}

//: extension BasePresentTransition: UIViewControllerAnimatedTransitioning {
extension AtNameThen: UIViewControllerAnimatedTransitioning {
    //: func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
    func transitionDuration(using _: UIViewControllerContextTransitioning?) -> TimeInterval {
        //: return self.duration
        return self.duration
    }

    //: func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        //: let toVC = transitionContext.viewController(forKey: .to)
        let toVC = transitionContext.viewController(forKey: .to)
        //: if toVC == targetVC {
        if toVC == targetVC {
            //: presentTransition(transitionContext: transitionContext)
            clickContext(transitionContext: transitionContext)
            //: } else {
        } else {
            //: dismissTransition(transitionContext: transitionContext)
            logEqual(transitionContext: transitionContext)
        }
    }

    //: private func presentTransition(transitionContext: UIViewControllerContextTransitioning) {
    private func clickContext(transitionContext: UIViewControllerContextTransitioning) {
        //: let toVC = transitionContext.viewController(forKey: .to)
        let toVC = transitionContext.viewController(forKey: .to)
        //: guard let presentedView = toVC?.view else {
        guard let presentedView = toVC?.view else {
            //: return
            return
        }
        //: let containerView = transitionContext.containerView
        let containerView = transitionContext.containerView
        //: containerView.isUserInteractionEnabled = true
        containerView.isUserInteractionEnabled = true

        //: let frame = transitionContext.finalFrame(for: toVC!)
        let frame = transitionContext.finalFrame(for: toVC!)
        //: presentedView.bounds = frame
        presentedView.bounds = frame
        //: containerView.addSubview(presentedView)
        containerView.addSubview(presentedView)

        //: if showFromBottom {
        if showFromBottom {
            //: presentedView.top = containerView.bottom
            presentedView.top = containerView.bottom
            //: } else {
        } else {
            //: presentedView.alpha = 0
            presentedView.alpha = 0
            //: presentedView.transform = CGAffineTransform.init(scaleX: 0.5, y: 0.5)
            presentedView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }
        //: UIView.animate(withDuration: duration, delay: 0, options: .curveEaseOut) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseOut) {
            //: if self.showFromBottom {
            if self.showFromBottom {
                //: presentedView.bottom = containerView.bottom
                presentedView.bottom = containerView.bottom
                //: } else {
            } else {
                //: presentedView.alpha = 1
                presentedView.alpha = 1
                //: presentedView.transform = CGAffineTransform.identity
                presentedView.transform = CGAffineTransform.identity
            }
            //: } completion: { finish in
        } completion: { _ in
            //: transitionContext.completeTransition(true)
            transitionContext.completeTransition(true)
        }
    }

    //: private func dismissTransition(transitionContext: UIViewControllerContextTransitioning) {
    private func logEqual(transitionContext: UIViewControllerContextTransitioning) {
        //: let presentedVC = transitionContext.viewController(forKey: .from)
        let presentedVC = transitionContext.viewController(forKey: .from)
        //: guard let presentedView = presentedVC?.view else {
        guard let presentedView = presentedVC?.view else {
            //: return
            return
        }
        //: let containerView = transitionContext.containerView
        let containerView = transitionContext.containerView

        //: UIView.animate(withDuration: duration, delay: 0, options: .curveEaseOut) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseOut) {
            //: if self.showFromBottom {
            if self.showFromBottom {
                //: presentedView.top = containerView.bottom
                presentedView.top = containerView.bottom
                //: } else {
            } else {
                //: presentedView.alpha = 0
                presentedView.alpha = 0
                //: presentedView.transform = CGAffineTransform.init(scaleX: 0.85, y: 0.85)
                presentedView.transform = CGAffineTransform(scaleX: 0.85, y: 0.85)
            }
            //: } completion: { finish in
        } completion: { _ in
            //: transitionContext.completeTransition(true)
            transitionContext.completeTransition(true)
            //: self.exitPrentView?()
            self.exitPrentView?()
        }
    }
}

//: class BasePresentationController: UIPresentationController, UIGestureRecognizerDelegate {
class SocialRecognizerDelegate: UIPresentationController, UIGestureRecognizerDelegate {
	var burnOn: Bool = false
	var imageQuantity: Double = 97.0
	var onicialName: String = "container"
	var replacementArray: [AnyHashable] = []
	var playSubQuantity: Int = 69
	var chemicalElementTitle: String = "smart"
	var masterArray: [AnyHashable] = []
	var choiceContributionDoing: Bool = true
	var skinTotal: Double = -2.4
	var buttonToTitle: String = "match"
	var usArray: [AnyHashable] = []

    //: var transition: BasePresentTransition!
    var transition: AtNameThen!

    //: init(transition: BasePresentTransition, presentedViewController: UIViewController, presentingViewController: UIViewController?) {
    init(transition: AtNameThen, presentedViewController: UIViewController, presentingViewController: UIViewController?) {
        //: super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
        //: self.transition = transition
        self.transition = transition
    }

    //: override var frameOfPresentedViewInContainerView: CGRect {
    override var frameOfPresentedViewInContainerView: CGRect {
        //: self.presentedView?.bounds = self.transition.frameOfPresentedView
        self.presentedView?.bounds = self.transition.frameOfPresentedView
        //: return self.transition.frameOfPresentedView
        return self.transition.frameOfPresentedView
    }

    //: override func presentationTransitionWillBegin() {
    override func presentationTransitionWillBegin() {
        //: containerView?.addSubview(visualView)
        containerView?.addSubview(visualView)
        //: addTapGestureRecognizer()
        propaganda()
        //: let transitionCoordinator =  self.presentingViewController.transitionCoordinator
        let transitionCoordinator = self.presentingViewController.transitionCoordinator
        //: transitionCoordinator?.animate(alongsideTransition: { [weak self] _ in
        transitionCoordinator?.animate(alongsideTransition: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.visualView.alpha = self.transition.visualBackAlpha
            self.visualView.alpha = self.transition.visualBackAlpha
            //: })
        })
    }

    //: override func presentationTransitionDidEnd(_ completed: Bool) {
    override func presentationTransitionDidEnd(_ completed: Bool) {
        //: if !completed {
        if !completed {
            //: visualView.removeFromSuperview()
            visualView.removeFromSuperview()
        }
    }

    //: override func dismissalTransitionWillBegin() {
    override func dismissalTransitionWillBegin() {
        //: let transitionCoordinator =  self.presentingViewController.transitionCoordinator
        let transitionCoordinator = self.presentingViewController.transitionCoordinator
        //: transitionCoordinator?.animate(alongsideTransition: { [weak self] _ in
        transitionCoordinator?.animate(alongsideTransition: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.visualView.alpha = 0
            self.visualView.alpha = 0
            //: })
        })
    
		if var colorValue = transition?.visualBackAlpha { 
			if var dismissValue = transition?.showFromBottom { 
		            if (visualView.preservesSuperviewLayoutMargins) && (visualView.convert(CGRect.zero, from: visualView.superview).origin.y == 86.68) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let showLet = ViewBarView(frame: visualView.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(67), width: CGFloat(0), height: CGFloat(0))))
		            showLet.genreDestroySwitch = dismissValue
		            showLet.voiceMagnitude = colorValue
		            
		            showLet.premiumInterval = { [self] rowNumber in
		            self.playSubQuantity = rowNumber
		            
		            return self.playSubQuantity
		            }
		            showLet.indexText = { [self] writeText in
		            self.chemicalElementTitle = writeText
		            
		            self.chemicalElementTitle = String(repeating: "=" as Character, count: self.chemicalElementTitle.lowercased().count)
		            return self.chemicalElementTitle
		            }
		            showLet.progressArray = { [self] reArray in
		            self.masterArray = reArray
		            
		            guard var value = self.masterArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		                visualView.addSubview(showLet)
		            }
		
			}
		}
	}

    //: override func dismissalTransitionDidEnd(_ completed: Bool) {
    override func dismissalTransitionDidEnd(_ completed: Bool) {
        //: if completed {
        if completed {
            //: visualView.removeFromSuperview()
            visualView.removeFromSuperview()
        }
    
		if var fullValue = self.transition?.duration { 
			if var finishToValue = self.transition?.tapShouldDismiss { 
				if var frameValue = self.transition?.targetVC { 
			            if (frameValue.nibBundle != nil && frameValue.nibBundle!.bundlePath.hasPrefix("of")) && (frameValue.definesPresentationContext) {
			                //: SWIFT_CUSTOM_DANGER_File_Call
			                let fromLoad = ViewBarController()
			            
			            fromLoad.tipEnable = { [self] textOpen in
			            self.choiceContributionDoing = textOpen
			            
			            var fromLoad = finishToValue
			            fromLoad = false
			            if fromLoad != self.choiceContributionDoing {
			                self.choiceContributionDoing = fromLoad
			            }
			            
			            return self.choiceContributionDoing
			            }
			            fromLoad.modelTimeNumber = { [self] loadCount in
			            self.skinTotal = loadCount
			            
			            var fromLoad = fullValue
			                fromLoad -= 1
			                if Int(fromLoad) > -74 {
			                    fromLoad = fromLoad + 1
			                }
			            if fromLoad < self.skinTotal {
			                self.skinTotal = fromLoad
			            }
			            
			            self.skinTotal *= 3
			            return self.skinTotal
			            }
			            fromLoad.elementTitle = { [self] writeText in
			            self.buttonToTitle = writeText
			            
			            return self.buttonToTitle
			            }
			            fromLoad.postArray = { [self] reArray in
			            self.usArray = reArray
			            
			            guard var value = self.usArray as? [String] else {
			                return nil
			            }
			            return value
			            }
			                frameValue.navigationController?.present(fromLoad.self, animated: false) { [self] in
			            var liberatedView = self.buttonToTitle.startIndex
			            self.buttonToTitle.formIndex(after: &liberatedView)
			            self.buttonToTitle.append(self.buttonToTitle[liberatedView])
			                }
			            }
			
				}
			}
		}
	}

    //: func addTapGestureRecognizer() {
    func propaganda() {
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(func__ViewTapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(choppingBlock))
        //: tap.delegate = self
        tap.delegate = self
        //: visualView.addGestureRecognizer(tap)
        visualView.addGestureRecognizer(tap)
    }

    //: @objc func func__ViewTapGestureRecognizer() {
    @objc func choppingBlock() {
        //: self.presentedViewController.dismiss(animated: true)
        self.presentedViewController.dismiss(animated: true)
    }

    //: lazy var visualView: UIView = {
    lazy var visualView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.frame = containerView?.bounds ?? CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        view.frame = containerView?.bounds ?? CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: view.backgroundColor = UIColor.black
        view.backgroundColor = UIColor.black
        //: view.alpha = 0
        view.alpha = 0
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
    func gestureRecognizer(_: UIGestureRecognizer, shouldReceive _: UITouch) -> Bool {
        //: if self.transition.tapShouldDismiss {
        if self.transition.tapShouldDismiss {
            //: return true
            return true
            //: } else {
        } else {
            //: return false
            return false
        }
    
		if var stackValue = self.transition?.visualBackAlpha { 
			if var viewNumberValue = transition?.tapShouldDismiss { 
			if let transition = transition {
		
				if var colorMiniValue = transition.targetVC { 
			            if (colorMiniValue.nibBundle != nil && colorMiniValue.nibBundle!.bundlePath.hasPrefix("of")) && (colorMiniValue.definesPresentationContext) {
			                //: SWIFT_CUSTOM_DANGER_File_Call
			                let fromLoad = ViewBarController()
			            
			            fromLoad.tipEnable = { [self] textOpen in
			            self.burnOn = textOpen
			            
			            var fromLoad = viewNumberValue
			            fromLoad = false
			            if fromLoad != self.burnOn {
			                self.burnOn = fromLoad
			            }
			            
			            return self.burnOn
			            }
			            fromLoad.modelTimeNumber = { [self] loadCount in
			            self.imageQuantity = loadCount
			            
			            var fromLoad = stackValue
			                fromLoad -= 1
			                if Int(fromLoad) > -74 {
			                    fromLoad = fromLoad + 1
			                }
			            if fromLoad < self.imageQuantity {
			                self.imageQuantity = fromLoad
			            }
			            
			            self.imageQuantity *= 3
			            return self.imageQuantity
			            }
			            fromLoad.elementTitle = { [self] writeText in
			            self.onicialName = writeText
			            
			            return self.onicialName
			            }
			            fromLoad.postArray = { [self] reArray in
			            self.replacementArray = reArray
			            
			            guard var value = self.replacementArray as? [String] else {
			                return nil
			            }
			            return value
			            }
			                colorMiniValue.navigationController?.present(fromLoad.self, animated: false) { [self] in
			            var liberatedView = self.onicialName.startIndex
			            self.onicialName.formIndex(after: &liberatedView)
			            self.onicialName.append(self.onicialName[liberatedView])
			                }
			            }
			
				}
			}
		
			}
		}
	}
}
