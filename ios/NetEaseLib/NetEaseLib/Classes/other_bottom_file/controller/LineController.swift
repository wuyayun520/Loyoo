import UIKit
typealias LineBaseController = UIViewController
class LineController: LineBaseController {
    var groupBarDataModel: LineDataModel?
    var monetaryValueDictionary: [String: String] = [:] {
        willSet {
            clickEditDictionary = newValue
            UserDefaults.standard.set(reportTitle.indices, forKey: reportTitle.capitalized + "third")
            tableModel?.thoughtImageDictionary = sizeDictionary()
        }
    }

    var progressNumber: ((_ value: Int) -> Int)?
    private var iconView: LineView?
    private var imageCancelController: BeyondPointHeightController?
    @objc var tableModel: LineModel?
    @objc dynamic var textClose: Bool = false
    @objc dynamic var marginLabInterval: Int = 0
    @objc dynamic var remoteInterval: Double = 0.0
    @objc dynamic var rawDataText: String = ""
    @objc dynamic var viewBeginArray: [String] = []
    @objc dynamic var clickEditDictionary: [String: String] = [:]
    var videoLabel: UILabel?
    var thrustImageView: UIImageView?
    var lastButton: UIButton?
    var startView: UIView?
    @objc dynamic var iconPriceDoing: Bool = false
    @objc dynamic var modelSum: Int = 0
    @objc dynamic var tableUserTotal: Double = 0.0
    @objc dynamic var reportTitle: String = ""
    @objc dynamic var sendArray: [String] = []
    var indexImageView: UIImageView?
    var targetButton: UIButton?
    var restrictionView: UIView?
    //: other_property
    var modelPositionKeyValueObservation: NSKeyValueObservation?

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        monetaryValueDictionary = [:]
        //: base_init
        textClose = true
        marginLabInterval = 55
        remoteInterval = 14.48
        rawDataText = "stage"
        viewBeginArray = []
        clickEditDictionary = [:]
        iconPriceDoing = false
        modelSum = 52
        tableUserTotal = 4.28
        reportTitle = "%d"
        sendArray = []
        tableModel = LineModel()
        indexImageView = UIImageView(frame: self.view.bounds.integral)
        if let imageView = indexImageView {
            imageView.image = (UIImage(contentsOfFile: "null") ?? UIImage())
            let countRow = UIView(frame: imageView.bounds)
            imageView.addSubview(countRow)
            imageView.sendSubviewToBack(countRow)
            self.view.addSubview(imageView)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(realizeAction(_:)), name: NSNotification.Name("kNotificationOccurName"), object: nil)
        //: other_init
        //: private_init
        groupBarDataModel = LineDataModel()
        iconView = LineView(frame: self.view!.bounds.offsetBy(dx: CGFloat(0), dy: CGFloat(627.85)))
        iconView?.touchOfBeanModel(tableModel)
        if let transitionView = iconView {
            self.view.addSubview(transitionView)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        guard let model = groupBarDataModel else { return }
        model.dartPlayerArray = appearArray()
        let windowClose = blockClose()
        let tableFeeSum = imageMagnitude()
        let dismissDictionary = sizeDictionary()
        let result = LineDataManager.sexCreate(
            windowClose: windowClose,
            tableFeeSum: tableFeeSum,
            dismissDictionary: dismissDictionary,
            model: model
        )
        if result {
            progressSuccess()
        } else {
            let imageName = "Error\(91).png"
            let image = UIImage(named: imageName)
            thrustImageView?.image = image
        }
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        UIView.animate(withDuration: TimeInterval(imageMagnitude()), delay: TimeInterval(marginLabInterval), usingSpringWithDamping: 0.67, initialSpringVelocity: 0.30, options: .autoreverse, animations: { [self] in
            if let imageView = thrustImageView {
                imageView.transform = CGAffineTransform(a: 0, b: 0, c: 0, d: 0, tx: 0, ty: 0)
            }
        }) { [self] finished in
            textClose = finished
        }
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("kNotificationOccurName"), object: nil)
        if let observation = modelPositionKeyValueObservation {
            removeObserver(observation, forKeyPath: #keyPath(tableModel.contentNumber))
        }
        modelPositionKeyValueObservation = nil
    }

    // MARK: - *** GET Value ***

    func blockClose() -> Bool {
        return true
    }

    func effectMagnitude() -> Int {
        return marginLabInterval
    }

    func imageMagnitude() -> Double {
        return remoteInterval
    }

    func atText() -> String {
        return reportTitle
    }

    func appearArray() -> [String] {
        var transitionArray: [String] = []
        for i in 0 ..< 85 {
            let imageName = "application_\(i)"
            transitionArray.append(imageName)
        }
        return transitionArray
    }

    func sizeDictionary() -> [String: String] {
        var transitionDictionary: [String: String] = [:]
        for i in 0 ..< 66 {
            let title = "room_\(i)"
            transitionDictionary[title] = String(i)
        }
        return transitionDictionary
    }

    // MARK: - *** Function ***

    func eventCallback() {
        if let block = progressNumber {
            marginLabInterval = block(effectMagnitude())
        }
        if let block = progressNumber {
            modelSum = block(effectMagnitude())
        }
    }

    @objc func realizeAction(_: Any?) {
        UIView.animate(withDuration: TimeInterval(imageMagnitude()), delay: TimeInterval(marginLabInterval), usingSpringWithDamping: 0.57, initialSpringVelocity: 0.73, options: .transitionFlipFromLeft, animations: { [self] in
            if let label = videoLabel {
                label.center = CGPoint.zero
            }
        }) { [self] finished in
            textClose = finished
        }
    }

    func likeFromWithRestore() {
        eventCallback()
        UIView.animate(withDuration: TimeInterval(imageMagnitude()), delay: TimeInterval(marginLabInterval), usingSpringWithDamping: 0.35, initialSpringVelocity: 0.35, options: .beginFromCurrentState, animations: { [self] in
            if let imageView = indexImageView {
                imageView.transform = CGAffineTransform(a: CGFloat(0), b: CGFloat(87), c: CGFloat(51), d: CGFloat(89), tx: 0, ty: 0)
            }
            if let button = targetButton {
                var frame = button.bounds
                frame.size.width = imageMagnitude()
            }
            if let view = restrictionView {
                view.backgroundColor = UIColor.yellow
            }
        }) { [self] finished in
            textClose = finished
        }
        let transitionNotification = Notification(name: NSNotification.Name("kNotificationOccurName"), object: nil)
        NotificationCenter.default.post(transitionNotification)
        imageCancelController = BeyondPointHeightController()
        let transitionModel = BeyondPointHeightModel(dictionary: sizeDictionary())
        imageCancelController?.tableModel = transitionModel
        if let controller = imageCancelController {
            CircleEmptyTool.currentNavigationController()?.pushViewController(controller, animated: true)
        }
    }

    func progressSuccess() {
        print(groupBarDataModel!)
    }

    func cooperativeError() {
        restrictionView?.backgroundColor = UIColor.purple
    }
}
