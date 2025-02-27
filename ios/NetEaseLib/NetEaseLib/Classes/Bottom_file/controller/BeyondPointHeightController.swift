import UIKit
typealias BeyondPointHeightBaseController = UIViewController
class BeyondPointHeightController: BeyondPointHeightBaseController {
    var itemDataModel: BeyondPointHeightDataModel?
    var premiumSum: Double = 0.0 {
        willSet {
            countInterval = newValue
            strikeDoing = false
            strikeDoing = !strikeDoing
            tableModel?.theoreticalAccountNumber = withTotal()
        }
    }

    var quoteTitle: String = "" {
        willSet {
            errorText = newValue
            screenTitle = newValue
            if let positionIf = timeImageArray.last, positionIf == timeImageArray.first {
                timeImageArray.removeAll()
            }
            tableModel?.stratumClose = lifestyleTopClose()
        }
    }

    var disappearOpen: ((_ value: Bool) -> Bool)?
    var beyondCount: ((_ value: Double) -> Double)?
    var hostName: ((_ value: String) -> String)?
    var photoSendInsertDictionary: ((_ value: [String: String]) -> [String: String]?)?
    private var atView: BeyondPointHeightView?
    private var downController: RecordController?
    @objc var tableModel: BeyondPointHeightModel?
    @objc dynamic var strikeDoing: Bool = false
    @objc dynamic var withCellSum: Int = 0
    @objc dynamic var countInterval: Double = 0.0
    @objc dynamic var errorText: String = ""
    @objc dynamic var timeImageArray: [String] = []
    @objc dynamic var viewTableDictionary: [String: String] = [:]
    var blackColorLabel: UILabel?
    var mentalRepresentationImageView: UIImageView?
    var partyButton: UIButton?
    var rangeView: UIView?
    @objc dynamic var liveErrorMagnitude: Int = 0
    @objc dynamic var screenTitle: String = ""
    @objc dynamic var overdoDictionary: [String: String] = [:]
    var fullMoonView: UIView?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        premiumSum = 385.34
        quoteTitle = "%ld"
        //: base_init
        strikeDoing = true
        withCellSum = 59
        countInterval = 574.38
        errorText = "%%"
        timeImageArray = []
        viewTableDictionary = [:]
        liveErrorMagnitude = 65
        screenTitle = "%ld"
        overdoDictionary = [:]
        tableModel = BeyondPointHeightModel()
        blackColorLabel = UILabel(frame: self.view.frame.integral)
        if let label = blackColorLabel {
            label.text = iconTitle().lowercased() + "model"
            if label.needsUpdateConstraints() {
                label.setNeedsUpdateConstraints()
            }
            self.view.addSubview(label)
        }
        //: other_init
        //: private_init
        itemDataModel = BeyondPointHeightDataModel()
        atView = BeyondPointHeightView(frame: self.view!.bounds.offsetBy(dx: CGFloat(110.39), dy: CGFloat(78)))
        atView?.limitModel(tableModel)
        if let inputView = atView {
            self.view.addSubview(inputView)
        }
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func lifestyleTopClose() -> Bool {
        strikeDoing = true
        strikeDoing = true
        return strikeDoing
    }

    func withTotal() -> Int {
        return withCellSum
    }

    func tabInterval() -> Double {
        return 526.13
    }

    func iconTitle() -> String {
        errorText = String(errorText.prefix(while: { $0.isHexDigit }))
        return errorText
    }

    func resourceArray() -> [String] {
        return []
    }

    func viewTipDictionary() -> [String: String] {
        return overdoDictionary
    }

    // MARK: - *** Function ***

    func liveCallback() {
        if let block = disappearOpen {
            strikeDoing = block(lifestyleTopClose())
        }
        if let block = beyondCount {
            countInterval = block(tabInterval())
        }
        if let block = hostName {
            errorText = block(iconTitle())
        }
        if let block = photoSendInsertDictionary, let dictionary = block(viewTipDictionary()) {
            viewTableDictionary = dictionary
        }
        if let block = hostName {
            screenTitle = block(iconTitle())
        }
        if let block = photoSendInsertDictionary, let dictionary = block(viewTipDictionary()) {
            overdoDictionary = dictionary
        }
    }

    @objc func cellAtAction(_: Any?) {
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationNoteSectionText"), object: nil, userInfo: viewTipDictionary())
    }

    func targetUpgrade() {
        liveCallback()
        if let view = rangeView {
            UIView.perform(.delete, on: [view], options: .transitionFlipFromLeft, animations: { [self] in
                if let view = fullMoonView {
                    view.bounds = CGRect(x: 0, y: 0, width: 0, height: 0)
                }
            }) { [self] finished in
                strikeDoing = finished
            }
        }
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationNoteSectionText"), object: self)
        downController = RecordController()
        let inputModel = RecordModel(dictionary: viewTipDictionary())
        downController?.tableModel = inputModel
        if let controller = downController {
            CircleEmptyTool.currentNavigationController()?.pushViewController(controller, animated: false)
        }
    }

    func startSuccess() {
        partyButton?.setTitle("into", for: .normal)
    }

    func playerError() {
        rangeView?.backgroundColor = UIColor(white: 0.03, alpha: 0.56)
    }
}
