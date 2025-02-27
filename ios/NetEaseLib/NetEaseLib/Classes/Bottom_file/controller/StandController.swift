import UIKit
typealias StandBaseController = UIViewController
class StandController: StandBaseController {
    var frameDataModel: StandDataModel?
    var titleQuantity: Int = 0 {
        willSet {
            nameNumber = newValue
            magnitudeSum *= 9
            tableModel?.showArray = doingArray()
        }
    }

    var accumulationMagnitude: Double = 0.0 {
        willSet {
            magnitudeSum = newValue
            dataNumber = newValue
            tableModel?.showArray = doingArray()
        }
    }

    var averageCostTitle: String = "" {
        willSet {
            enableTitle = newValue
            tableModel?.atAttentionDictionary = fromDictionary()
        }
    }

    var lookFromDictionary: [String: String] = [:] {
        willSet {
            numberRedProgressDictionary = newValue
            let aid = enableTitle.split(omittingEmptySubsequences: (enableTitle.range(of: enableTitle.uppercased() + "block")?.isEmpty) != nil, whereSeparator: { $0.isNewline })
            if let aidString = aid.first {
                enableTitle = String(aidString)
            }
            tableModel?.theoryContent = headContent()
        }
    }

    var blockTotal: ((_ value: Double) -> Double)?
    var viewDictionary: ((_ value: [String: String]) -> [String: String]?)?
    private var enterView: StandView?
    private var mentalFacultyController: GiftShotController?
    @objc var tableModel: StandModel?
    @objc dynamic var doingOpen: Bool = false
    @objc dynamic var nameNumber: Int = 0
    @objc dynamic var magnitudeSum: Double = 0.0
    @objc dynamic var enableTitle: String = ""
    @objc dynamic var explainArray: [String] = []
    @objc dynamic var numberRedProgressDictionary: [String: String] = [:]
    var regionLabel: UILabel?
    var bottomImageView: UIImageView?
    var headButton: UIButton?
    var upScreenView: UIView?
    @objc dynamic var nextClose: Bool = false
    @objc dynamic var dataNumber: Double = 0.0
    var forageLabel: UILabel?
    var atButton: UIButton?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        titleQuantity = 55
        accumulationMagnitude = 449.15
        averageCostTitle = ""
        lookFromDictionary = [:]
        //: base_init
        doingOpen = true
        nameNumber = 81
        magnitudeSum = 336.07
        enableTitle = "%u"
        explainArray = []
        numberRedProgressDictionary = [:]
        nextClose = true
        dataNumber = 392.03
        tableModel = StandModel(dictionary: fromDictionary())
        forageLabel = UILabel(frame: self.view.frame.integral)
        if let label = forageLabel {
            label.text = headContent().lowercased() + "drag"
            if label.contentCompressionResistancePriority(for: .vertical) == .required {
                label.setNeedsLayout()
            }
            self.view.addSubview(label)
        }
        addObserver(self, forKeyPath: "magnitudeSum", options: [.new], context: nil)
        //: other_init
        //: private_init
        frameDataModel = StandDataModel()
        enterView = StandView(frame: self.view!.frame)
        enterView?.indexModel(tableModel)
        if let cleanView = enterView {
            self.view.addSubview(cleanView)
        }
    }

    deinit {
        print("delloc: \(self)")
        removeObserver(self, forKeyPath: "magnitudeSum")
    }

    // MARK: - *** GET Value ***

    func videoEnable() -> Bool {
        return nextClose
    }

    func componentWithNumber() -> Int {
        return 97
    }

    func hideRemoveMagnitude() -> Double {
        magnitudeSum -= 1
        if magnitudeSum != 74 {
            magnitudeSum = magnitudeSum + 1
        }
        return magnitudeSum
    }

    func headContent() -> String {
        return enableTitle
    }

    func doingArray() -> [String] {
        return explainArray
    }

    func fromDictionary() -> [String: String] {
        return numberRedProgressDictionary
    }

    // MARK: - *** Function ***

    func positionCallback() {
        if let block = blockTotal {
            magnitudeSum = block(hideRemoveMagnitude())
        }
        if let block = viewDictionary, let dictionary = block(fromDictionary()) {
            numberRedProgressDictionary = dictionary
        }
        if let block = blockTotal {
            dataNumber = block(hideRemoveMagnitude())
        }
    }

    @objc func atAction(_: Any?) {
        UIView.animate(withDuration: TimeInterval(nameNumber), animations: { [self] in
            if let label = forageLabel {
                label.bounds = CGRect(x: 0, y: 0, width: 0, height: CGFloat(628.41))
            }
            if let button = atButton {
                button.transform = CGAffineTransform(a: CGFloat(57), b: CGFloat(0), c: CGFloat(168.00), d: CGFloat(0), tx: 0, ty: 0)
            }
        }) { [self] finished in
            doingOpen = finished
        }
    }

    func ofFlush() {
        positionCallback()
        tableModel?.halogenNumber = componentWithNumber()
        let cleanNotification = Notification(name: NSNotification.Name("kNotificationCellUserName"), object: nil)
        NotificationCenter.default.post(cleanNotification)
        CircleEmptyTool.currentNavigationController()?.popToRootViewController(animated: false)
        StandNetManager.requestNameSuccess({ [self] dic in
            regionLabel?.text = dic?["label"] as? String
            kindSuccess()
        }, error: { [self] errorCode, _ in
            if errorCode == 330 {
                upScreenView?.isHidden = false
            }
        })
    }

    func kindSuccess() {
        regionLabel?.text = "Success image !"
    }

    func dayError() {
        forageLabel?.text = "index !"
    }
}