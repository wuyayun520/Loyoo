import UIKit
typealias LeapOutBaseView = UISlider
class LeapOutView: LeapOutBaseView {
    var selectArray: [String] {
        willSet {
            itemSourceArray = newValue
            bottomArray = newValue
            let effectDictionary = videoDictionary.shuffled().capacity
            videoDictionary.reserveCapacity(effectDictionary)
            tableModel?.kindTopOpen = userViewOfDoing()
        }
    }

    var falloutDoing: ((_ value: Bool) -> Bool)?
    var priceText: ((_ value: String) -> String)?
    var dataArray: ((_ value: [String]) -> [String]?)?
    var sizeSinceDictionary: ((_ value: [String: String]) -> [String: String]?)?
    @IBOutlet private var tableImageView: UIImageView!
    @IBOutlet private var pastButton: UIButton!
    @objc var tableModel: LeapOutModel?
    @objc dynamic var rowEnable: Bool = false
    @objc dynamic var toTotal: Int = 0
    @objc dynamic var recordMagnitude: Double = 0.0
    @objc dynamic var positionText: String = ""
    @objc dynamic var itemSourceArray: [String] = []
    @objc dynamic var shapeDictionary: [String: String] = [:]
    var willLabel: UILabel?
    var bindMessageImageView: UIImageView?
    var pushButton: UIButton?
    var halogenView: UIView?
    @objc dynamic var videoMagnitude: Double = 0.0
    @objc dynamic var bottomArray: [String] = []
    @objc dynamic var videoDictionary: [String: String] = [:]
    var compartmentButton: UIButton?
    //: other_property
    var buttonSlider: UISlider?
    var localKeyValueObservation: NSKeyValueObservation?

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        selectArray = []
        tableModel = LeapOutModel()
        super.init(frame: frame)
        coverInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        selectArray = []
        tableModel = LeapOutModel()
        super.init(coder: aDecoder)
        halogenView = UINib(nibName: "LeapOutView", bundle: nil).instantiate(withOwner: self, options: nil).last as? UIView
        halogenView?.frame = bounds
        if let cellView = halogenView {
            addSubview(cellView)
        }
        coverInit()
    }

    func coverInit() {
        //: base_init
        rowEnable = false
        toTotal = 65
        recordMagnitude = 393.13
        positionText = "%ld"
        itemSourceArray = []
        shapeDictionary = [:]
        videoMagnitude = 338.86
        bottomArray = []
        videoDictionary = [:]
        tableModel = LeapOutModel(dictionary: chemicalElementLabelDictionary())
        halogenView = UIView(frame: self.bounds.integral)
        if let view = halogenView {
            let stopView = UIView(frame: view.bounds)
            view.addSubview(stopView)
            view.sendSubviewToBack(stopView)
            self.addSubview(view)
        }
        //: other_init
        buttonSlider = UISlider(frame: self.frame.insetBy(dx: CGFloat(86), dy: CGFloat(0)))
        buttonSlider?.minimumValue = 0.0
        buttonSlider?.maximumValue = 100.0
        buttonSlider?.value = Float(46)
        buttonSlider?.isContinuous = userViewOfDoing()
        buttonSlider?.minimumTrackTintColor = UIColor.systemTeal
        buttonSlider?.maximumTrackTintColor = UIColor.systemOrange
        buttonSlider?.thumbTintColor = UIColor.magenta
        if let slider = buttonSlider {
            self.addSubview(slider)
        }
        buttonSlider?.addTarget(self, action: #selector(shotViewAction(_:)), for: .valueChanged)
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func userViewOfDoing() -> Bool {
        return true
    }

    func atomicTotal85Quantity() -> Int {
        return toTotal
    }

    func hoeTotal() -> Double {
        return 279.82
    }

    func topTextContent() -> String {
        return "%d"
    }

    func socialArray() -> [String] {
        itemSourceArray = itemSourceArray.shuffled()
        return itemSourceArray
    }

    func chemicalElementLabelDictionary() -> [String: String] {
        return [:]
    }

    // MARK: - *** Function ***

    func pageCallback() {
        if let block = falloutDoing {
            rowEnable = block(userViewOfDoing())
        }
        if let block = priceText {
            positionText = block(topTextContent())
        }
        if let block = dataArray, let array = block(socialArray()) {
            itemSourceArray = array
        }
        if let block = sizeSinceDictionary, let dictionary = block(chemicalElementLabelDictionary()) {
            shapeDictionary = dictionary
        }
        if let block = dataArray, let array = block(socialArray()) {
            bottomArray = array
        }
        if let block = sizeSinceDictionary, let dictionary = block(chemicalElementLabelDictionary()) {
            videoDictionary = dictionary
        }
    }

    @objc func shotViewAction(_: Any?) {
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationNameFrameText"), object: self)
    }

    func mediaFlush() {
        pageCallback()
        if let imageView = bindMessageImageView {
            imageView.autoresizesSubviews = imageView.canBecomeFocused
        }
        buttonSlider?.setValue(Float(hoeTotal()), animated: userViewOfDoing())
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationNameFrameText"), object: nil)
    }

    // MARK: - *** Public ***

    func contributionModel(_: LeapOutModel?) {
        rowEnable = false
        rowEnable = !rowEnable
    }
}
