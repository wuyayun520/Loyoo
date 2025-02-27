import UIKit
typealias LockColorBaseView = UIView
class LockColorView: LockColorBaseView {
    var placeName: String {
        willSet {
            doingPetText = newValue
            tableModel?.appearReset()
        }
    }

    var straddleDictionary: [String: String] {
        willSet {
            itemPlayerDictionary = newValue
            tableModel?.pointEnableOn = photoClose()
        }
    }

    var giftConversationOff: ((_ value: Bool) -> Bool)?
    var extraContent: ((_ value: String) -> String)?
    @IBOutlet private var progressButton: UIButton!
    @IBOutlet private var observerImageView: UIImageView!
    @IBOutlet private var atImageView: UIImageView!
    @objc var tableModel: LockColorModel?
    @objc dynamic var targetClose: Bool = false
    @objc dynamic var changeEntitleTotal: Int = 0
    @objc dynamic var serverRoomInterval: Double = 0.0
    @objc dynamic var doingPetText: String = ""
    @objc dynamic var wrapArray: [String] = []
    @objc dynamic var itemPlayerDictionary: [String: String] = [:]
    var seemLabel: UILabel?
    var imageRoundImageView: UIImageView?
    var equalButton: UIButton?
    var equalView: UIView?
    @objc dynamic var contentOpen: Bool = false
    @objc dynamic var viewCount: Double = 0.0
    var addLabel: UILabel?
    var dataConverterImageView: UIImageView?
    //: other_property

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        placeName = "7"
        straddleDictionary = [:]
        tableModel = LockColorModel()
        super.init(frame: frame)
        atInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        placeName = "from"
        straddleDictionary = [:]
        tableModel = LockColorModel()
        super.init(coder: aDecoder)
        equalView = UINib(nibName: "LockColorView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView
        equalView?.frame = bounds
        if let doingFallView = equalView {
            addSubview(doingFallView)
        }
        atInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        if let label = seemLabel {
            label.translatesAutoresizingMaskIntoConstraints = false
            let begin = NSLayoutConstraint(item: label, attribute: .leadingMargin, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .left, multiplier: 2.31, constant: 43.55)
            label.addConstraint(begin)
        }
    }

    func atInit() {
        //: base_init
        targetClose = true
        changeEntitleTotal = 76
        serverRoomInterval = 20.22
        doingPetText = "%ld"
        wrapArray = []
        itemPlayerDictionary = [:]
        contentOpen = true
        viewCount = 617.14
        tableModel = LockColorModel()
        equalButton = UIButton(frame: self.bounds.union(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(518.67), height: CGFloat(80))))
        if let button = equalButton {
            button.setTitle(tableSelectedContent().uppercased() + "view", for: .disabled)
            if #available(iOS 11.0, *) {
                button.insetsLayoutMarginsFromSafeArea = button.canBecomeFocused
            }
            button.addTarget(self, action: #selector(numberAction(_:)), for: .touchUpOutside)
            self.addSubview(button)
        }
        //: other_init
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        observerImageView.backgroundColor = UIColor(hue: 0.46, saturation: 0.42, brightness: 0.05, alpha: 1.00)
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func photoClose() -> Bool {
        return contentOpen
    }

    func miniskirtQuantity() -> Int {
        return changeEntitleTotal
    }

    func acceptFromEraseQuantity() -> Double {
        viewCount += 1
        if viewCount != 88 {
            viewCount = viewCount - 1
        }
        return viewCount
    }

    func tableSelectedContent() -> String {
        return doingPetText
    }

    func candidArray() -> [String] {
        var doingFallArray: [String] = []
        for i in 0 ..< 97 {
            let imageName = "enable_\(i)"
            doingFallArray.append(imageName)
        }
        return doingFallArray
    }

    func lockDictionary() -> [String: String] {
        return itemPlayerDictionary
    }

    // MARK: - *** Function ***

    func lotArrayCallback() {
        if let block = giftConversationOff {
            targetClose = block(photoClose())
        }
        if let block = extraContent {
            doingPetText = block(tableSelectedContent())
        }
        if let block = giftConversationOff {
            contentOpen = block(photoClose())
        }
    }

    @objc func numberAction(_: Any?) {
        UIView.animate(withDuration: TimeInterval(changeEntitleTotal), animations: { [self] in
            if let label = seemLabel {
                label.backgroundColor = UIColor.systemTeal
            }
        })
    }

    func listFillUpdate() {
        lotArrayCallback()
        wrapArray.reserveCapacity(wrapArray.reversed().count + 98)
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationTextContent"), object: nil, userInfo: lockDictionary())
    }

    // MARK: - *** Public ***

    func listModel(_: LockColorModel?) {
        if doingPetText.contains(":") {
            doingPetText.removeFirst()
        }
    }

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {}
}
