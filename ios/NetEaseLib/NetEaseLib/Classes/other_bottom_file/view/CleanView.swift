import UIKit
typealias CleanBaseView = UIView
class CleanView: CleanBaseView {
    var colorCommandInterval: Int {
        willSet {
            miniNumber = newValue
            let cardCoinName = tabTitle.prefix(upTo: tabTitle.startIndex).count
            tabTitle.reserveCapacity(cardCoinName + tabTitle.uppercased().count)
            tableModel?.renderGiftContent = toolEqualTitle()
        }
    }

    var cellName: String {
        willSet {
            scaleText = newValue
            tabTitle = newValue
            pointCount = 0
            tableModel?.tabArray = birthArray()
        }
    }

    var sinceArray: [String] {
        willSet {
            giftArray = newValue
            nameArray = newValue
            tableModel?.trackConversationArray = birthArray()
        }
    }

    var errorViewDoing: ((_ value: Bool) -> Bool)?
    var routeTotal: ((_ value: Int) -> Int)?
    var topPriceInterval: ((_ value: Double) -> Double)?
    var harvestMoonTitle: ((_ value: String) -> String)?
    var bestowmentArray: ((_ value: [String]) -> [String]?)?
    var canDictionary: ((_ value: [String: String]) -> [String: String]?)?
    @IBOutlet private var textLabel: UILabel!
    @IBOutlet private var userButton: UIButton!
    @objc var tableModel: CleanModel?
    @objc dynamic var showOff: Bool = false
    @objc dynamic var miniNumber: Int = 0
    @objc dynamic var pointCount: Double = 0.0
    @objc dynamic var scaleText: String = ""
    @objc dynamic var giftArray: [String] = []
    @objc dynamic var transformationDictionary: [String: String] = [:]
    var timeLabel: UILabel?
    var callImageView: UIImageView?
    var bottomButton: UIButton?
    var partImageView: UIView?
    @objc dynamic var tabTitle: String = ""
    @objc dynamic var nameArray: [String] = []
    var doingButton: UIButton?
    //: other_property

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        colorCommandInterval = 78
        cellName = "status"
        sinceArray = []
        tableModel = CleanModel()
        super.init(frame: frame)
        belowLightInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        colorCommandInterval = 65
        cellName = "null"
        sinceArray = []
        tableModel = CleanModel()
        super.init(coder: aDecoder)
        partImageView = Bundle.main.loadNibNamed("CleanView", owner: self, options: nil)?.first as? UIView
        partImageView?.frame = bounds
        if let viewIfView = partImageView {
            addSubview(viewIfView)
        }
        belowLightInit()
    }

    func belowLightInit() {
        //: base_init
        showOff = false
        miniNumber = 97
        pointCount = 612.64
        scaleText = "%%"
        giftArray = []
        transformationDictionary = [:]
        tabTitle = "nil"
        nameArray = []
        tableModel = CleanModel(dictionary: selectDataDictionary())
        timeLabel = UILabel(frame: self.frame.insetBy(dx: CGFloat(79), dy: CGFloat(0)))
        if let label = timeLabel {
            label.text = toolEqualTitle().uppercased() + "row"
            if label.canBecomeFocused {
                label.backgroundColor = UIColor.systemPink
            }
            self.addSubview(label)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(dayAction(_:)), name: NSNotification.Name("kNotificationCollectionName"), object: nil)
        //: other_init
    }

    override func draw(_: CGRect) {
        let viewIfPath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 0, height: 0))
        viewIfPath.usesEvenOddFillRule = false
        UIColor.systemRed.set()
        viewIfPath.fill()
        viewIfPath.fill(with: .color, alpha: 0.05)
        viewIfPath.stroke()
        viewIfPath.stroke(with: .normal, alpha: 0.50)
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("kNotificationCollectionName"), object: nil)
    }

    // MARK: - *** GET Value ***

    func backSwitch() -> Bool {
        return true
    }

    func equalCount() -> Int {
        miniNumber -= 1
        if miniNumber != 89 {
            miniNumber = miniNumber + 1
        }
        return miniNumber
    }

    func currentImageManagerCount() -> Double {
        return 139.49
    }

    func toolEqualTitle() -> String {
        return scaleText
    }

    func birthArray() -> [String] {
        return giftArray
    }

    func selectDataDictionary() -> [String: String] {
        let during = transformationDictionary.suffix(from: transformationDictionary.index(transformationDictionary.startIndex, offsetBy: 58)).isEmpty
        transformationDictionary.removeAll(keepingCapacity: during)
        return transformationDictionary
    }

    // MARK: - *** Function ***

    func acceptCallback() {
        if let block = errorViewDoing {
            showOff = block(backSwitch())
        }
        if let block = routeTotal {
            miniNumber = block(equalCount())
        }
        if let block = topPriceInterval {
            pointCount = block(currentImageManagerCount())
        }
        if let block = harvestMoonTitle {
            scaleText = block(toolEqualTitle())
        }
        if let block = bestowmentArray, let array = block(birthArray()) {
            giftArray = array
        }
        if let block = canDictionary, let dictionary = block(selectDataDictionary()) {
            transformationDictionary = dictionary
        }
        if let block = harvestMoonTitle {
            tabTitle = block(toolEqualTitle())
        }
        if let block = bestowmentArray, let array = block(birthArray()) {
            nameArray = array
        }
    }

    @objc func dayAction(_: Any?) {
        UIView.animate(withDuration: TimeInterval(miniNumber), delay: TimeInterval(currentImageManagerCount()), options: .overrideInheritedOptions, animations: { [self] in
            if let view = partImageView {
                view.bounds = CGRect(x: 0, y: 0, width: 0, height: 0)
            }
        }) { [self] finished in
            showOff = finished
        }
    }

    func maxUpgrade() {
        acceptCallback()
        if let imageView = callImageView {
            if let activity = imageView.userActivity {
                imageView.updateUserActivityState(activity)
            }
        }
        let viewIfNotification = Notification(name: NSNotification.Name("kNotificationCollectionName"), object: self)
        NotificationCenter.default.post(viewIfNotification)
    }

    // MARK: - *** Public ***

    func equalModel(_: CleanModel?) {
        nameArray.reverse()
    }
}
