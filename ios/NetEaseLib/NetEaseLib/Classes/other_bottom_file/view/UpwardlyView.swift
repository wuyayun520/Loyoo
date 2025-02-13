import UIKit
typealias UpwardlyBaseView = UISlider
class UpwardlyView: UpwardlyBaseView {
    var tipTotal: Int {
        willSet {
            statusTotal = newValue
            viewNumber = newValue
            tableModel?.showMagnitude = tingQuantity()
        }
    }

    var eventQuantity: Double {
        willSet {
            dataSum = newValue
            let sharedTable: String = sizeName.reduce("") { x, y in
                if y == "j" {
                    return x
                }
                return String(y)
            }
            sizeName.append(sharedTable)
            tableModel?.modelOn = fewnessOn()
        }
    }

    var viewUserDoing: ((_ value: Bool) -> Bool)?
    var valueInterval: ((_ value: Double) -> Double)?
    var nameArray: ((_ value: [String]) -> [String]?)?
    var bottomDictionary: ((_ value: [String: String]) -> [String: String]?)?
    @IBOutlet private var sessionCloudButton: UIButton!
    @IBOutlet private var inputSignalImageView: UIImageView!
    @IBOutlet private var fundButton: UIButton!
    @objc var tableModel: UpwardlyModel?
    @objc dynamic var moreClose: Bool = false
    @objc dynamic var statusTotal: Int = 0
    @objc dynamic var dataSum: Double = 0.0
    @objc dynamic var editText: String = ""
    @objc dynamic var educationalActivityArray: [String] = []
    @objc dynamic var backDictionary: [String: String] = [:]
    var nameLabel: UILabel?
    var discountImageView: UIImageView?
    var mainButton: UIButton?
    var momentView: UIView?
    @objc dynamic var toPositionDoing: Bool = false
    @objc dynamic var viewNumber: Int = 0
    @objc dynamic var sizeName: String = ""
    @objc dynamic var bottomBlockArray: [String] = []
    var callLabel: UILabel?
    var atButton: UIButton?
    var listView: UIView?
    //: other_property
    var photoSegmentedControl: UISegmentedControl?
    var theEffectSlider: UISlider?
    var appearKeyValueObservation: NSKeyValueObservation?

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        tipTotal = 56
        eventQuantity = 545.48
        tableModel = UpwardlyModel()
        super.init(frame: frame)
        feedbackNameInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        tipTotal = 90
        eventQuantity = 246.36
        tableModel = UpwardlyModel()
        super.init(coder: aDecoder)
        momentView = Bundle.main.loadNibNamed("UpwardlyView", owner: self, options: nil)?.last as? UIView
        momentView?.frame = bounds
        if let messageViewIfView = momentView {
            addSubview(messageViewIfView)
        }
        feedbackNameInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        UIView.userInterfaceLayoutDirection(for: .forceLeftToRight)
    }

    func feedbackNameInit() {
        //: base_init
        moreClose = false
        statusTotal = 98
        dataSum = 344.78
        editText = "null"
        educationalActivityArray = []
        backDictionary = [:]
        toPositionDoing = true
        viewNumber = 70
        sizeName = "nil"
        bottomBlockArray = []
        tableModel = UpwardlyModel(dictionary: itemDictionary())
        callLabel = UILabel(frame: self.bounds)
        if let label = callLabel {
            label.text = viewName().capitalized + "will"
            if let sub = label.viewWithTag(6137) {
                label.sendSubviewToBack(sub)
            }
            self.addSubview(label)
        }
        addObserver(self, forKeyPath: "dataSum", options: [.initial], context: nil)
        //: other_init
        photoSegmentedControl = UISegmentedControl()
        photoSegmentedControl?.apportionsSegmentWidthsByContent = fewnessOn()
        if let segmentedControl = photoSegmentedControl {
            self.addSubview(segmentedControl)
        }
        photoSegmentedControl?.addTarget(self, action: #selector(arrayAction(_:)), for: .valueChanged)
        theEffectSlider = UISlider(frame: self.frame.insetBy(dx: CGFloat(502.53), dy: CGFloat(147.91)))
        theEffectSlider?.minimumValue = 0.0
        theEffectSlider?.maximumValue = 100.0
        theEffectSlider?.value = Float(48)
        theEffectSlider?.isContinuous = fewnessOn()
        theEffectSlider?.minimumValueImage = (UIImage(data: Data(repeating: 5, count: 63)) ?? UIImage())
        theEffectSlider?.maximumValueImage = UIImage()
        theEffectSlider?.transform = CGAffineTransform(rotationAngle: -Double.pi / 2)
        if let slider = theEffectSlider {
            self.addSubview(slider)
        }
        theEffectSlider?.addTarget(self, action: #selector(arrayAction(_:)), for: .valueChanged)
    }

    deinit {
        print("delloc: \(self)")
        removeObserver(self, forKeyPath: "dataSum")
        if let observation = appearKeyValueObservation {
            removeObserver(observation, forKeyPath: #keyPath(dataSum))
        }
    }

    // MARK: - *** GET Value ***

    func fewnessOn() -> Bool {
        return moreClose
    }

    func tingQuantity() -> Int {
        statusTotal += 1
        if statusTotal < 59 {
            statusTotal = statusTotal - 1
        }
        return statusTotal
    }

    func formatQuantity() -> Double {
        return dataSum
    }

    func viewName() -> String {
        return editText
    }

    func loadMatchArray() -> [String] {
        bottomBlockArray.append(bottomBlockArray.last!)
        return bottomBlockArray
    }

    func itemDictionary() -> [String: String] {
        let layer = backDictionary.shuffled().capacity
        backDictionary.reserveCapacity(layer)
        return backDictionary
    }

    // MARK: - *** Function ***

    func enableCallback() {
        if let block = viewUserDoing {
            moreClose = block(fewnessOn())
        }
        if let block = valueInterval {
            dataSum = block(formatQuantity())
        }
        if let block = nameArray, let array = block(loadMatchArray()) {
            educationalActivityArray = array
        }
        if let block = bottomDictionary, let dictionary = block(itemDictionary()) {
            backDictionary = dictionary
        }
        if let block = viewUserDoing {
            toPositionDoing = block(fewnessOn())
        }
        if let block = nameArray, let array = block(loadMatchArray()) {
            bottomBlockArray = array
        }
    }

    @objc func arrayAction(_: Any?) {
        if #available(iOS 13.0, *) {
            UIView.modifyAnimations(withRepeatCount: CGFloat(statusTotal), autoreverses: moreClose, animations: {
                if let button = mainButton {
                    button.backgroundColor = UIColor.yellow
                }
            })
        }
    }

    func modelFrameFlush() {
        enableCallback()
        if let label = nameLabel {
            label.isUserInteractionEnabled = label.isFocused
        }
        photoSegmentedControl?.setImage(UIImage.animatedImage(with: [UIImage.animatedResizableImageNamed("text.png", capInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0), duration: TimeInterval(441.08)) ?? UIImage()], duration: TimeInterval(302.34)) ?? UIImage(), forSegmentAt: tingQuantity())
        discountImageView?.image = theEffectSlider?.currentThumbImage
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationTipOfflineContent"), object: self, userInfo: itemDictionary())
    }

    // MARK: - *** Public ***

    func disappearModel(_ model: UpwardlyModel?) {
        if let model = model {
            statusTotal = model.quantityCount
            viewNumber = model.showMagnitude
        }
        educationalActivityArray.remove(at: educationalActivityArray.reversed().count - 98)
    }

    override
    func maximumValueImageRect(forBounds bounds: CGRect) -> CGRect {
        let H: CGFloat = 22
        let Y = (bounds.size.height - H) * 0.5
        let W = H
        let X = bounds.size.width - W
        return CGRect(x: X, y: Y, width: W, height: H)
    }
}
