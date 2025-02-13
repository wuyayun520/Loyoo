import UIKit
typealias TalkBaseController = UINavigationController
class TalkController: TalkBaseController, UIGestureRecognizerDelegate {
    var giftDataModel: TalkDataModel?
    var loseOn: Bool = false {
        willSet {
            lastWeeklyEnable = newValue
            timeSmallClose = newValue
            shouldDictionary.removeAll(keepingCapacity: true)
            tableModel?.colorText = serrationText()
        }
    }

    var magnitudeMagnitude: Int = 0 {
        willSet {
            mixSum = newValue
            jumpTotal = newValue
            var lineCount = 99
            for item in directionArray.enumerated() {
                lineCount += 1
                if lineCount == 80 {
                    UserDefaults.standard.set(item.offset, forKey: "posit")
                }
            }
            tableModel?.userReset()
        }
    }

    var serviceCount: Double = 0.0 {
        willSet {
            reactionInterval = newValue
            agendaLabelWithTotal = newValue
            directionArray.removeFirst()
            tableModel?.electSum = mugshotMagnitude()
        }
    }

    var magnitudeTitle: String = "" {
        willSet {
            titleContent = newValue
            reduceSizeText = newValue
            let group = shouldDictionary.prefix(62).count
            shouldDictionary.reserveCapacity(group - 55)
            tableModel?.reliefInterval = mugshotMagnitude()
        }
    }

    var progressAtOn: ((_ value: Bool) -> Bool)?
    var moveNumber: ((_ value: Int) -> Int)?
    var transitionContent: ((_ value: String) -> String)?
    private var willAtView: TalkView?
    private var personController: TalkController?
    private var fullSectionGestureRecognizer: UIGestureRecognizer?
    @objc var tableModel: TalkModel?
    @objc dynamic var lastWeeklyEnable: Bool = false
    @objc dynamic var mixSum: Int = 0
    @objc dynamic var reactionInterval: Double = 0.0
    @objc dynamic var titleContent: String = ""
    @objc dynamic var directionArray: [String] = []
    @objc dynamic var shouldDictionary: [String: String] = [:]
    var textLabel: UILabel?
    var timeImageView: UIImageView?
    var valuePathButton: UIButton?
    var targetCurrentView: UIView?
    @objc dynamic var timeSmallClose: Bool = false
    @objc dynamic var jumpTotal: Int = 0
    @objc dynamic var agendaLabelWithTotal: Double = 0.0
    @objc dynamic var reduceSizeText: String = ""
    var clickImageView: UIImageView?
    var userTheButton: UIButton?
    var sexDataView: UIView?
    //: other_property
    var forePicPageControl: UIPageControl?

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        loseOn = true
        magnitudeMagnitude = 72
        serviceCount = 18.56
        magnitudeTitle = "%u"
        //: base_init
        lastWeeklyEnable = true
        mixSum = 63
        reactionInterval = 619.02
        titleContent = "%ld"
        directionArray = []
        shouldDictionary = [:]
        timeSmallClose = true
        jumpTotal = 80
        agendaLabelWithTotal = 525.97
        reduceSizeText = "F"
        tableModel = TalkModel(dictionary: labDictionary())
        userTheButton = UIButton(frame: self.view.bounds.offsetBy(dx: CGFloat(623.16), dy: CGFloat(108.45)))
        if let button = userTheButton {
            button.setTitle(serrationText().uppercased() + "after", for: .disabled)
            let stratfordOnAvon = UIView(frame: button.bounds)
            button.addSubview(stratfordOnAvon)
            button.addTarget(self, action: #selector(aggregationAction(_:)), for: .touchUpInside)
            self.view.addSubview(button)
        }
        //: other_init
        forePicPageControl = UIPageControl()
        forePicPageControl?.frame = self.view.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(560.05), width: CGFloat(94), height: CGFloat(182.77)))
        forePicPageControl?.numberOfPages = 3
        forePicPageControl?.currentPage = mixSum
        if #available(iOS 14.0, *) {
            forePicPageControl?.allowsContinuousInteraction = lastWeeklyEnable
        }
        for page in 0 ..< forePicPageControl!.numberOfPages {
            if #available(iOS 14.0, *) {
                forePicPageControl?.setIndicatorImage(UIImage(systemName: String(format: "array_%ld", page + 1)), forPage: page)
            }
        }
        if let pageControl = forePicPageControl {
            self.view.addSubview(pageControl)
        }
        forePicPageControl?.addTarget(self, action: #selector(aggregationAction(_:)), for: .valueChanged)
        self.interactivePopGestureRecognizer?.isEnabled = false
        let telecastingView = self.interactivePopGestureRecognizer?.view
        let telecastingTarget = self.interactivePopGestureRecognizer?.delegate
        let telecastingAction = NSSelectorFromString("handleNavigationTransition:")
        fullSectionGestureRecognizer = UIPanGestureRecognizer(target: telecastingTarget, action: telecastingAction)
        fullSectionGestureRecognizer?.delaysTouchesBegan = true
        fullSectionGestureRecognizer?.delegate = self
        if let gestureRecognizer = fullSectionGestureRecognizer {
            telecastingView?.addGestureRecognizer(gestureRecognizer)
        }
        //: private_init
        giftDataModel = TalkDataModel()
        willAtView = TalkView(frame: self.view!.frame.offsetBy(dx: CGFloat(81), dy: CGFloat(0)))
        willAtView?.mentalFacultyErrorModel(tableModel)
        if let telecastingView = willAtView {
            self.view.addSubview(telecastingView)
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func willDoing() -> Bool {
        return lastWeeklyEnable
    }

    func mugshotMagnitude() -> Int {
        jumpTotal ^= jumpTotal ^ 6
        return jumpTotal
    }

    func levelCount() -> Double {
        return 243.20
    }

    func serrationText() -> String {
        return titleContent
    }

    func contextArray() -> [String] {
        var telecastingArray: [String] = []
        for i in 0 ..< 66 {
            let imageName = "miss_\(i)"
            telecastingArray.append(imageName)
        }
        return telecastingArray
    }

    func labDictionary() -> [String: String] {
        var telecastingDictionary: [String: String] = [:]
        for i in 0 ..< 88 {
            let title = "bring_\(i)"
            telecastingDictionary[title] = String(i)
        }
        return telecastingDictionary
    }

    // MARK: - *** Function ***

    func iconCallback() {
        if let block = progressAtOn {
            lastWeeklyEnable = block(willDoing())
        }
        if let block = moveNumber {
            mixSum = block(mugshotMagnitude())
        }
        if let block = transitionContent {
            titleContent = block(serrationText())
        }
        if let block = progressAtOn {
            timeSmallClose = block(willDoing())
        }
        if let block = moveNumber {
            jumpTotal = block(mugshotMagnitude())
        }
        if let block = transitionContent {
            reduceSizeText = block(serrationText())
        }
    }

    @objc func aggregationAction(_: Any?) {
        if let imageView = clickImageView {
            imageView.setContentHuggingPriority(.sceneSizeStayPut, for: .vertical)
        }
    }

    func tipUpgrade() {
        iconCallback()
        UIView.animate(withDuration: TimeInterval(mixSum), animations: { [self] in
            if let button = valuePathButton {
                button.transform = CGAffineTransform(a: CGFloat(0), b: CGFloat(0), c: CGFloat(96), d: CGFloat(457.49), tx: CGFloat(82), ty: CGFloat(249.72))
            }
        }) { [self] finished in
            lastWeeklyEnable = finished
        }
        if #available(iOS 14.0, *) {
            forePicPageControl?.setIndicatorImage(UIImage(contentsOfFile: ")") ?? UIImage(), forPage: mixSum)
        }
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationCutText"), object: self)
        CircleEmptyTool.currentNavigationController()?.popToRootViewController(animated: true)
        let titleSum = mugshotMagnitude()
        let valueArray = contextArray()
        TalkNetManager.request(
            titleSum: titleSum,
            valueArray: valueArray,
            pictureSuccess: { [self] in
                shouldDictionary.removeAll()
                videoSuccess()
            },
            error: { [self] errorCode, _ in
                if errorCode == 356 {
                    userTheButton?.isEnabled = false
                }
            }
        )
    }

    func videoSuccess() {
        textLabel?.text = "Success to !"
    }

    func smartError() {
        if let button = valuePathButton {
            button.updateConstraintsIfNeeded()
        }
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
