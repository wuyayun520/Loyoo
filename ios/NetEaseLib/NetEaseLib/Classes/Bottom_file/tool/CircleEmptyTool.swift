import UIKit
class CircleEmptyTool: NSObject {
    class func currentViewController() -> UIViewController? {
        let keyWindow = UIApplication.shared.keyWindow
        var vc = keyWindow?.rootViewController
        while (vc?.presentedViewController) != nil {
            vc = vc?.presentedViewController
            if vc is UINavigationController {
                vc = (vc as? UINavigationController)?.visibleViewController
            } else if vc is UITabBarController {
                vc = (vc as? UITabBarController)?.selectedViewController
            }
        }
        return vc
    }

    class func currentNavigationController() -> UINavigationController? {
        return currentViewController()?.navigationController
    }

    class func currentTabBarController() -> UITabBarController? {
        return currentViewController()?.tabBarController
    }

    public class func EndTapclass(from name: String) -> AnyClass? {
        guard let bundleName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String else {
            return nil
        }
        if let cls = NSClassFromString(bundleName + "." + name) {
            return cls
        } else {
            return NSClassFromString(name)
        }
    }
}

extension UIView {
    func viewController() -> UIViewController? {
        var next = self.next
        repeat {
            if next is UIViewController {
                return next as? UIViewController
            }
            next = next?.next
        } while next != nil
        return nil
    }
}
