import UIKit
typealias PackageBaseView = UIView
class PackageView: PackageBaseView, UITextFieldDelegate {
    var policyJoinClose: Bool {
        willSet {
            startEnable = newValue
            UserDefaults.standard.set(acrossArray.indices, forKey: "null")
            tableModel?.chokeReset()
        }
    }

    var fileCount: Double {
        willSet {
            cellNameTotal = newValue
            cellNameTotal -= 1
            if cellNameTotal <= 0 {
                cellNameTotal = cellNameTotal + 1
            }
            tableModel?.tableSkipModelCount = indexQuantity()
        }
    }

    var formatText: String {
        willSet {
            sumTitle = newValue
            tableModel?.gildTheLilySwitch = liveOff()
        }
    }

    var greetDictionary: [String: String] {
        willSet {
            managerDictionary = newValue
            startEnable = true
            startEnable = !startEnable
            tableModel?.tableSkipModelCount = indexQuantity()
        }
    }

    var tableOpen: ((_ value: Bool) -> Bool)?
    var needQuantity: ((_ value: Int) -> Int)?
    @IBOutlet private var textLabel: UILabel!
    @IBOutlet private var rowImageView: UIImageView!
    @objc var tableModel: PackageModel?
    @objc dynamic var startEnable: Bool = false
    @objc dynamic var videoSum: Int = 0
    @objc dynamic var cellNameTotal: Double = 0.0
    @objc dynamic var sumTitle: String = ""
    @objc dynamic var acrossArray: [String] = []
    @objc dynamic var managerDictionary: [String: String] = [:]
    var tableLabel: UILabel?
    var specialImageView: UIImageView?
    var userShadowItemButton: UIButton?
    var onView: UIView?
    @objc dynamic var twinkleQuantity: Int = 0
    var miniUserLabel: UILabel?
    //: other_property

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        policyJoinClose = true
        fileCount = 380.98
        formatText = "%d"
        greetDictionary = [:]
        tableModel = PackageModel()
        super.init(frame: frame)
        stickSumInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        policyJoinClose = false
        fileCount = 114.39
        formatText = "null"
        greetDictionary = [:]
        tableModel = PackageModel()
        super.init(coder: aDecoder)
        onView = UINib(nibName: "PackageView", bundle: nil).instantiate(withOwner: self, options: nil).last as? UIView
        onView?.frame = bounds
        if let courtIfView = onView {
            addSubview(courtIfView)
        }
        stickSumInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        if let view = onView {
            UIView.transition(with: view, duration: TimeInterval(videoSum), options: .preferredFramesPerSecond60, animations: { [self] in
                if let label = tableLabel {
                    label.transform = CGAffineTransform.identity
                }
            }) { [self] finished in
                startEnable = finished
            }
        }
    }

    func stickSumInit() {
        //: base_init
        startEnable = false
        videoSum = 73
        cellNameTotal = 149.27
        sumTitle = "%f"
        acrossArray = []
        managerDictionary = [:]
        twinkleQuantity = 72
        tableModel = PackageModel(dictionary: ofDictionary())
        miniUserLabel = UILabel(frame: self.bounds.union(CGRect(x: CGFloat(236.20), y: CGFloat(56), width: CGFloat(336.01), height: CGFloat(0))))
        if let label = miniUserLabel {
            label.text = tickContent().lowercased() + "number"
            label.drawHierarchy(in: label.bounds, afterScreenUpdates: label.isFocused)
            self.addSubview(label)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(coattailsEffectAction(_:)), name: NSNotification.Name("kNotificationRequestName"), object: nil)
        //: other_init
        let courtIfTextField = UITextField(frame: self.frame.standardized)
        if courtIfTextField.state == .highlighted {
            courtIfTextField.isHighlighted = courtIfTextField.isTracking
        }
        courtIfTextField.placeholder = "imageOf"
        courtIfTextField.delegate = self
        self.addSubview(courtIfTextField)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        rowImageView.layoutMarginsGuide.widthAnchor.constraint(lessThanOrEqualTo: rowImageView.heightAnchor).isActive = true
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("kNotificationRequestName"), object: nil)
    }

    // MARK: - *** GET Value ***

    func liveOff() -> Bool {
        startEnable = !startEnable
        return startEnable
    }

    func indexQuantity() -> Int {
        twinkleQuantity &>>= 1
        return twinkleQuantity
    }

    func managerStorageCount() -> Double {
        return cellNameTotal
    }

    func tickContent() -> String {
        return sumTitle
    }

    func cellArray() -> [String] {
        acrossArray.reverse()
        return acrossArray
    }

    func ofDictionary() -> [String: String] {
        return managerDictionary
    }

    // MARK: - *** Function ***

    func gestureCallback() {
        if let block = tableOpen {
            startEnable = block(liveOff())
        }
        if let block = needQuantity {
            videoSum = block(indexQuantity())
        }
        if let block = needQuantity {
            twinkleQuantity = block(indexQuantity())
        }
    }

    @objc func coattailsEffectAction(_: Any?) {
        UIView.animate(withDuration: TimeInterval(videoSum), delay: TimeInterval(managerStorageCount()), options: .preferredFramesPerSecond30, animations: { [self] in
            if let label = tableLabel {
                label.transform = CGAffineTransform(a: 0, b: 0, c: 0, d: 0, tx: 0, ty: 0)
            }
        }) { [self] finished in
            startEnable = finished
        }
    }

    func receiveRefresh() {
        gestureCallback()
        let courtIfImgView1 = UIImageView(image: UIImage.animatedImageNamed("name.png", duration: 6.66) ?? UIImage())
        courtIfImgView1.endEditing(courtIfImgView1.isUserInteractionEnabled)
        let courtIfImgView2 = UIImageView(image: UIImage(contentsOfFile: "%u") ?? UIImage())
        let viewActivity = NSUserActivity(activityType: "bar")
        viewActivity.title = "age"
        viewActivity.userInfo = ["player": "restriction"]
        courtIfImgView2.userActivity = viewActivity
        UIView.transition(from: courtIfImgView1, to: courtIfImgView2, duration: TimeInterval(videoSum), options: .allowUserInteraction) { [self] finished in
            startEnable = finished
        }
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationRequestName"), object: self)
    }

    // MARK: - *** Public ***

    func eachModelModel(_: PackageModel?) {}

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {}

    // MARK: - *** UITextFieldDelegate ***

    func textFieldShouldEndEditing(_: UITextField) -> Bool {
        return liveOff()
    }

    func textFieldDidEndEditing(_: UITextField) {
        tableModel?.remoteContent = tickContent()
    }

    func textFieldDidEndEditing(_: UITextField, reason _: UITextField.DidEndEditingReason) {
        if let button = userShadowItemButton {
            button.isUserInteractionEnabled = button.isUserInteractionEnabled
        }
    }

    func textFieldDidChangeSelection(_: UITextField) {
        UIView.animate(withDuration: TimeInterval(videoSum), animations: { [self] in
            if let label = tableLabel {
                label.transform = CGAffineTransform(a: CGFloat(474.63), b: CGFloat(98), c: CGFloat(96), d: CGFloat(90), tx: CGFloat(386.82), ty: CGFloat(74.23))
            }
        })
    }
}
