import UIKit
typealias TimePeriodBaseView = UIView
class TimePeriodView: TimePeriodBaseView {
    var bagOpen: Bool {
        willSet {
            eyeDoing = newValue
            listenEnable = newValue
            bottomArray.remove(at: bottomArray.reversed().count + 86)
            tableModel?.quantityMagnitude = bottomQuantity()
        }
    }

    var screenCount: Double {
        willSet {
            contentPlayerNumber = newValue
            eyeDoing = true
            tableModel?.timeArray = actualArray()
        }
    }

    var labCount: ((_ value: Double) -> Double)?
    @IBOutlet private var addLabel: UILabel!
    @IBOutlet private var throughButton: UIButton!
    @IBOutlet private var instanceImageView: UIImageView!
    @objc var tableModel: TimePeriodModel?
    @objc dynamic var eyeDoing: Bool = false
    @objc dynamic var jumpNumber: Int = 0
    @objc dynamic var contentPlayerNumber: Double = 0.0
    @objc dynamic var startText: String = ""
    @objc dynamic var bottomArray: [String] = []
    @objc dynamic var nameDictionary: [String: String] = [:]
    var inviteTotaleractionLabel: UILabel?
    var partyImageView: UIImageView?
    var cuttingEdgeButton: UIButton?
    var atMoreView: UIView?
    @objc dynamic var listenEnable: Bool = false
    @objc dynamic var horizonTotal: Int = 0
    @objc dynamic var snapArray: [String] = []
    var detailImageView: UIImageView?
    //: other_property
    var cellActivityIndicator: UIActivityIndicatorView?

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        bagOpen = false
        screenCount = 345.95
        tableModel = TimePeriodModel()
        super.init(frame: frame)
        whatInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        bagOpen = true
        screenCount = 595.71
        tableModel = TimePeriodModel()
        super.init(coder: aDecoder)
        atMoreView = UINib(nibName: "TimePeriodView", bundle: nil).instantiate(withOwner: self, options: nil).last as? UIView
        atMoreView?.frame = bounds
        if let pairView = atMoreView {
            addSubview(pairView)
        }
        whatInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        throughButton.widthAnchor.constraint(lessThanOrEqualTo: throughButton.heightAnchor, constant: CGFloat(0)).isActive = true
    }

    func whatInit() {
        //: base_init
        eyeDoing = false
        jumpNumber = 93
        contentPlayerNumber = 344.38
        startText = "null"
        bottomArray = []
        nameDictionary = [:]
        listenEnable = true
        horizonTotal = 68
        snapArray = []
        tableModel = TimePeriodModel(dictionary: taskDictionary())
        atMoreView = UIView(frame: self.bounds.union(CGRect(x: CGFloat(71), y: CGFloat(0), width: CGFloat(89), height: CGFloat(0))))
        if let view = atMoreView {
            if let controller_ = view.inputAccessoryViewController {
                controller_.endAppearanceTransition()
            }
            self.addSubview(view)
        }
        //: other_init
        cellActivityIndicator = UIActivityIndicatorView(style: .gray)
        cellActivityIndicator?.frame = self.frame.union(CGRect(x: CGFloat(0), y: CGFloat(75), width: CGFloat(58), height: CGFloat(0)))
        cellActivityIndicator?.center = CGPoint(x: CGFloat(53), y: CGFloat(73))
        cellActivityIndicator?.layer.cornerRadius = CGFloat(bottomQuantity())
        cellActivityIndicator?.hidesWhenStopped = listClose()
        if let indicator = cellActivityIndicator {
            self.addSubview(indicator)
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        if throughButton.state == .disabled {
            throughButton.isHighlighted = throughButton.isTracking
        }
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func listClose() -> Bool {
        return listenEnable
    }

    func bottomQuantity() -> Int {
        return 63
    }

    func commentQuantity() -> Double {
        return 633.10
    }

    func ofContent() -> String {
        return ""
    }

    func actualArray() -> [String] {
        return []
    }

    func taskDictionary() -> [String: String] {
        return [:]
    }

    // MARK: - *** Function ***

    func activityCallback() {
        if let block = labCount {
            contentPlayerNumber = block(commentQuantity())
        }
    }

    @objc func accelerateAction(_: Any?) {
        if let button = cuttingEdgeButton {
            let modelTarget = button.superview
            let untilFinish = UIButton(type: .contactAdd)
            let comment = UIControl.State.selected
            untilFinish.setBackgroundImage(button.backgroundImage(for: comment), for: comment)
            modelTarget?.addSubview(untilFinish)
        }
    }

    func pathReload() {
        activityCallback()
        if let view = atMoreView {
            UIView.perform(.delete, on: [view], options: .transitionCurlUp, animations: { [self] in
                if let imageView = detailImageView {
                    imageView.center = CGPoint(x: 0, y: 0)
                }
            }) { [self] finished in
                eyeDoing = finished
            }
        }
        cellActivityIndicator?.backgroundColor = UIColor(hue: 0.58, saturation: 0.48, brightness: 0.03, alpha: 0.99)
        let pairNotification = Notification(name: NSNotification.Name("kNotificationBlockShowText"), object: self, userInfo: taskDictionary())
        NotificationCenter.default.post(pairNotification)
    }

    // MARK: - *** Public ***

    func marginOfSafetyModel(_ model: TimePeriodModel?) {
        if let value = model?.iconSignText {
            startText = value
        }
        listenEnable = !listenEnable
    }
}
