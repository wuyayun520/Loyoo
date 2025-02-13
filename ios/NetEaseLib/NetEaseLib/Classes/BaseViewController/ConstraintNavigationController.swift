
//: Declare String Begin

/*: "snap_img" :*/
fileprivate let str_keyText:String = "snap_imgmain equal"

/*: "price_image" :*/
fileprivate let str_labViewPoliticsName:[Character] = ["p","r","i","c","e","_","i","m"]
fileprivate let str_matterData:String = "AGE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConstraintNavigationController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingNavigationController: UINavigationController {
class ConstraintNavigationController: UINavigationController {
	var nameModelCount: Double = -57.3
	var fadeName: String = "hidden"
	var viewArray: [AnyHashable] = []
	var duringDictionary: [AnyHashable: String] = [:]

    var afterwardsImageView: UIImageView?

    //: var tabBarType: TabBarItemType?
    var tabBarType: AtScalar?
    //: var pushing = false
    var pushing = false // 防止快速点击push多次界面
    //: weak var protectedPushVc: UIViewController?
    weak var protectedPushVc: UIViewController? // 防止来电push多个通话页面

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.delegate = self
        self.delegate = self
        //: setupNavibarAppearance()
        feedback()

        /// 开启侧滑返回手势
        //: weak var weakSelf = self
        weak var weakSelf = self
        //: self.interactivePopGestureRecognizer?.delegate = weakSelf
        self.interactivePopGestureRecognizer?.delegate = weakSelf

        afterwardsImageView = UIImageView(frame: self.view.bounds.intersection(CGRect(x: CGFloat(Double(self.view.frame.size.width)), y: CGFloat(0), width: CGFloat(Int(self.view.bounds.origin.y)), height: CGFloat(0))))
        if let afterwardsImageView = afterwardsImageView {
            self.afterwardsImageView?.image = UIImage(named: (String(str_keyText.prefix(8))))
            if (afterwardsImageView.canBecomeFirstResponder) && (afterwardsImageView.backgroundColor != nil && afterwardsImageView.backgroundColor!.cgColor == UIColor.systemRed.cgColor) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(afterwardsImageView)
            }
        }
    
		if var consumerValue = self.protectedPushVc { 
	            if (consumerValue.prefersStatusBarHidden) && (consumerValue.modalPresentationCapturesStatusBarAppearance) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let bagPhone = ThanOfController()
	            
	            bagPhone.topQuantity = { [self] brandSum in
	            self.nameModelCount = brandSum
	            
	            return self.nameModelCount
	            }
	            bagPhone.requestAddText = { [self] textText in
	            self.fadeName = textText
	            
	            return self.fadeName
	            }
	            bagPhone.scopeSuccessArray = { [self] userTimeCellArray in
	            self.viewArray = userTimeCellArray
	            
	            guard var value = self.viewArray as? [String] else {
	                return nil
	            }
	            return value
	            }
	            bagPhone.clickDictionary = { [self] collectionDictionary in
	            self.duringDictionary = collectionDictionary
	            
	            guard var value = self.duringDictionary as? [String: String] else {
	                return nil
	            }
	            return value
	            }
	                consumerValue.navigationController?.pushViewController(bagPhone.self, animated: false)
	            }
	
		}
	}

    //: override func pushViewController(_ viewController: UIViewController, animated: Bool) {
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        //: guard pushing == false else { return }
        guard pushing == false else { return }
        //: pushing = true
        pushing = true
        self.afterwardsImageView?.image = UIImage(named: (String(str_labViewPoliticsName) + str_matterData.lowercased()))

        //: if (tabBarController?.presentationController) != nil {
        if (tabBarController?.presentationController) != nil {
            //: tabBarController?.presentedViewController?.dismiss(animated: false, completion: nil)
            tabBarController?.presentedViewController?.dismiss(animated: false, completion: nil)
        }

        //: if self.protectedPushVc != nil && self.protectedPushVc != viewController {
        if self.protectedPushVc != nil && self.protectedPushVc != viewController {
            //: return
            return
        }

        //: if viewControllers.count >= 1 {
        if viewControllers.count >= 1 {
            //: if viewController.navigationItem.leftBarButtonItem == nil {
            if viewController.navigationItem.leftBarButtonItem == nil {
                //: viewController.navigationItem.leftBarButtonItem = viewController.naviPopbackItem()
                viewController.navigationItem.leftBarButtonItem = viewController.petTitle()
            }
        }
        //: if(viewControllers.count != 0) {
        if viewControllers.count != 0 {
            //: viewController.hidesBottomBarWhenPushed = true
            viewController.hidesBottomBarWhenPushed = true
        }
        //: super.pushViewController(viewController, animated: animated)
        super.pushViewController(viewController, animated: animated)
    }

    //: func setupNavibarAppearance() {
    func feedback() {
        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: let barApp = UINavigationBarAppearance.init()
            let barApp = UINavigationBarAppearance()
            //: barApp.backgroundColor = UIColor.white
            barApp.backgroundColor = UIColor.white
            //: barApp.backgroundImage = UIImage.imageFillColor(color: UIColor.white)
            barApp.backgroundImage = UIImage.remote(color: UIColor.white)
            //: barApp.shadowImage = UIImage.init()
            barApp.shadowImage = UIImage()
            //: barApp.shadowColor = UIColor.appBgColor()
            barApp.shadowColor = UIColor.playerEqual()
            //: barApp.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.appTitleColor(), NSAttributedString.Key.font: UIFont.pingfangFont(type: .Medium, fontSize: 17)]
            barApp.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blockOf(), NSAttributedString.Key.font: UIFont.thoughtImage(type: .Medium, fontSize: 17)]
            //: UINavigationBar.appearance().scrollEdgeAppearance = barApp
            UINavigationBar.appearance().scrollEdgeAppearance = barApp
            //: UINavigationBar.appearance().standardAppearance = barApp
            UINavigationBar.appearance().standardAppearance = barApp
            //: } else {
        } else {
            //: navigationBar.backgroundColor = UIColor.white
            navigationBar.backgroundColor = UIColor.white
            //: navigationBar.setBackgroundImage(UIImage.imageFillColor(color: UIColor.white), for: .any, barMetrics: .default)
            navigationBar.setBackgroundImage(UIImage.remote(color: UIColor.white), for: .any, barMetrics: .default)
            //: navigationBar.shadowImage = UIImage.init()
            navigationBar.shadowImage = UIImage()
            //: navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.appTitleColor(), NSAttributedString.Key.font: UIFont.pingfangFont(type: .Medium, fontSize: 17)]
            navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blockOf(), NSAttributedString.Key.font: UIFont.thoughtImage(type: .Medium, fontSize: 17)]
        }
        //: UINavigationBar.appearance().tintColor = UIColor.appTitleColor()
        UINavigationBar.appearance().tintColor = UIColor.blockOf()
        //: UINavigationBar.appearance().barTintColor = UIColor.white
        UINavigationBar.appearance().barTintColor = UIColor.white
        //: UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().isTranslucent = false
    }
}

//: extension TalkingNavigationController: UINavigationControllerDelegate {
extension ConstraintNavigationController: UINavigationControllerDelegate {
    //: func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
    func navigationController(_: UINavigationController, willShow viewController: UIViewController, animated _: Bool) {
        //: if (viewController.hidesBottomBarWhenPushed) {
        if viewController.hidesBottomBarWhenPushed {
            //: tabBarController?.tabBar.isHidden = true
            tabBarController?.tabBar.isHidden = true
            //: } else {
        } else {
            //: tabBarController?.tabBar.isHidden = false
            tabBarController?.tabBar.isHidden = false
        }
    }

    //: func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
    func navigationController(_: UINavigationController, didShow _: UIViewController, animated _: Bool) {
        //: pushing = false
        pushing = false
    }
}

// MARK: - 侧滑返回手势

//: extension TalkingNavigationController: UIGestureRecognizerDelegate {
extension ConstraintNavigationController: UIGestureRecognizerDelegate {
    // 侧滑返回手势是否可用（true: 可用; false: 不可用）
    //: func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        //: if gestureRecognizer == self.interactivePopGestureRecognizer {
        if gestureRecognizer == self.interactivePopGestureRecognizer {
            //: if self.viewControllers.count < 2 || self.visibleViewController == self.viewControllers.first {
            if self.viewControllers.count < 2 || self.visibleViewController == self.viewControllers.first {
                //: return false
                return false
            }
        }
        //: return true
        return true
    }
}
