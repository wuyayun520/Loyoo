import UIKit
typealias GiftShotBaseController = UINavigationController
class GiftShotController: GiftShotBaseController, UIGestureRecognizerDelegate {
    var headOnDataModel: GiftShotDataModel?
    var blockTotal: Int = 0 {
        willSet {
            contentMessageSum = newValue
            tableModel?.fileText = willName()
        }
    }

    private var ofCellView: GiftShotView?
    private var undersurfaceController: LockColorController?
    private var fullLoadGestureRecognizer: UIGestureRecognizer?
    @objc var tableModel: GiftShotModel?
    @objc dynamic var logOn: Bool = false
    @objc dynamic var contentMessageSum: Int = 0
    @objc dynamic var giftLengthCount: Double = 0.0
    @objc dynamic var titleTitle: String = ""
    @objc dynamic var originArray: [String] = []
    @objc dynamic var worldToolDictionary: [String: String] = [:]
    var callLabel: UILabel?
    var getStartedImageView: UIImageView?
    var contentButton: UIButton?
    var freeView: UIView?
    var editLabel: UILabel?
    var cellImageView: UIImageView?
    var cellView: UIView?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        blockTotal = 73
        //: base_init
        logOn = true
        contentMessageSum = 94
        giftLengthCount = 617.68
        titleTitle = ""
        originArray = []
        worldToolDictionary = [:]
        tableModel = GiftShotModel()
        callLabel = UILabel(frame: self.view.bounds.union(CGRect(x: CGFloat(254.25), y: CGFloat(114.52), width: CGFloat(95), height: CGFloat(51))))
        if let label = callLabel {
            label.text = willName().capitalized + "punch"
            if label.hasAmbiguousLayout {
                label.exerciseAmbiguityInLayout()
            }
            self.view.addSubview(label)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(countAction(_:)), name: NSNotification.Name("kNotificationListenTitle"), object: nil)
        //: other_init
        self.interactivePopGestureRecognizer?.isEnabled = false
        let nicknameView = self.interactivePopGestureRecognizer?.view
        let nicknameTarget = self.interactivePopGestureRecognizer?.delegate
        let nicknameAction = NSSelectorFromString("handleNavigationTransition:")
        fullLoadGestureRecognizer = UIPanGestureRecognizer(target: nicknameTarget, action: nicknameAction)
        fullLoadGestureRecognizer?.delaysTouchesBegan = true
        fullLoadGestureRecognizer?.delegate = self
        if let gestureRecognizer = fullLoadGestureRecognizer {
            nicknameView?.addGestureRecognizer(gestureRecognizer)
        }
        //: private_init
        headOnDataModel = GiftShotDataModel()
        ofCellView = GiftShotView(frame: self.view!.frame.integral)
        ofCellView?.dayModel(tableModel)
        if let nicknameView = ofCellView {
            self.view.addSubview(nicknameView)
        }
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        UIView.animate(withDuration: TimeInterval(contentMessageSum), animations: { [self] in
            if let button = contentButton {
                button.alpha = 0.53
            }
        })
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - *** GET Value ***

    func alongOff() -> Bool {
        return true
    }

    func frameQuantity() -> Int {
        return contentMessageSum
    }

    func bringHomeTotal() -> Double {
        return 485.08
    }

    func willName() -> String {
        return "%u"
    }

    func sendArray() -> [String] {
        return originArray
    }

    func leavePlayDictionary() -> [String: String] {
        var nicknameDictionary: [String: String] = [:]
        for i in 0 ..< 58 {
            let title = "occur_\(i)"
            nicknameDictionary[title] = String(i)
        }
        return nicknameDictionary
    }

    // MARK: - *** Function ***

    func priceColorCallback() {}

    @objc func countAction(_: Any?) {
        if #available(iOS 13.0, *) {
            UIView.modifyAnimations(withRepeatCount: CGFloat(contentMessageSum), autoreverses: logOn, animations: {
                if let label = callLabel {
                    label.center = CGPoint(x: 0, y: 0)
                }
            })
        }
    }

    func nameFlush() {
        priceColorCallback()
        UIView.animate(withDuration: TimeInterval(bringHomeTotal()), delay: TimeInterval(contentMessageSum), usingSpringWithDamping: 0.43, initialSpringVelocity: 0.50, options: .preferredFramesPerSecond60, animations: { [self] in
            if let button = contentButton {
                button.alpha = 0.57
            }
        }) { [self] finished in
            logOn = finished
        }
        let nicknameNotification = Notification(name: NSNotification.Name("kNotificationListenTitle"), object: nil, userInfo: leavePlayDictionary())
        NotificationCenter.default.post(nicknameNotification)
        CircleEmptyTool.currentNavigationController()?.popViewController(animated: true)
    }

    func dataSuccess() {
        UIView.animate(withDuration: TimeInterval(bringHomeTotal()), delay: TimeInterval(contentMessageSum), usingSpringWithDamping: 0.61, initialSpringVelocity: 0.50, options: .allowUserInteraction, animations: { [self] in
            if let label = callLabel {
                label.center = CGPoint()
            }
        }) { [self] finished in
            logOn = finished
        }
    }

    func labelError() {
        editLabel?.text = "view !"
    }

    // MARK: - *** FullInteractive ***

    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        let translation = (gestureRecognizer as? UIPanGestureRecognizer)?.translation(in: gestureRecognizer.view)
        if (translation?.x ?? 0.0) <= 0 {
            return false
        }
        return (self.viewControllers.count == 1) ? false : true
    }
}
