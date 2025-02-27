import UIKit
typealias SectionBaseView = UIView
class SectionView: SectionBaseView {
    var voiceOff: Bool {
        willSet {
            atDoing = newValue
            coverOff = newValue
            atDoing = false
            atDoing = false
            tableModel?.giftEnableEnable = bringHomeClose()
        }
    }

    var viewAtQuantity: Int {
        willSet {
            calledNumber = newValue
            starCount = newValue
            coverOff = !coverOff
            tableModel?.giftEnableEnable = bringHomeClose()
        }
    }

    var ofQuantity: Double {
        willSet {
            pathModelInterval = newValue
            indexFieldTotal = newValue
            pathModelInterval *= 6
            tableModel?.giftEnableEnable = bringHomeClose()
        }
    }

    var atArray: [String] {
        willSet {
            popArray = newValue
            callArray = newValue
            pathModelInterval += 1
            if pathModelInterval >= 0 {
                pathModelInterval = pathModelInterval - 1
            }
            tableModel?.collectionInfoCount = ofMagnitude()
        }
    }

    var bottomFreeClose: ((_ value: Bool) -> Bool)?
    var groupMagnitude: ((_ value: Int) -> Int)?
    var moveArray: ((_ value: [String]) -> [String]?)?
    @IBOutlet private var signatureLabel: UILabel!
    @IBOutlet private var windowToolImageView: UIImageView!
    @IBOutlet private var blockImageView: UIImageView!
    @objc var tableModel: SectionModel?
    @objc dynamic var atDoing: Bool = false
    @objc dynamic var calledNumber: Int = 0
    @objc dynamic var pathModelInterval: Double = 0.0
    @objc dynamic var placeImageTitle: String = ""
    @objc dynamic var popArray: [String] = []
    @objc dynamic var acquireDictionary: [String: String] = [:]
    var awakeLabel: UILabel?
    var socialImageView: UIImageView?
    var loadButton: UIButton?
    var ambientView: UIView?
    @objc dynamic var coverOff: Bool = false
    @objc dynamic var starCount: Int = 0
    @objc dynamic var indexFieldTotal: Double = 0.0
    @objc dynamic var endVideoContent: String = ""
    @objc dynamic var callArray: [String] = []
    var dataLabel: UILabel?
    var stopView: UIView?
    //: other_property

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        voiceOff = true
        viewAtQuantity = 85
        ofQuantity = 297.79
        atArray = []
        tableModel = SectionModel()
        super.init(frame: frame)
        screenInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        voiceOff = false
        viewAtQuantity = 93
        ofQuantity = 7.86
        atArray = []
        tableModel = SectionModel()
        super.init(coder: aDecoder)
        ambientView = Bundle.main.loadNibNamed("SectionView", owner: self, options: nil)?.first as? UIView
        ambientView?.frame = bounds
        if let declarationView = ambientView {
            addSubview(declarationView)
        }
        screenInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        signatureLabel.isHighlighted = signatureLabel.isFocused
    }

    func screenInit() {
        //: base_init
        atDoing = false
        calledNumber = 99
        pathModelInterval = 175.28
        placeImageTitle = "nil"
        popArray = []
        acquireDictionary = [:]
        coverOff = false
        starCount = 62
        indexFieldTotal = 70.27
        endVideoContent = "l"
        callArray = []
        tableModel = SectionModel()
        socialImageView = UIImageView(frame: self.bounds.standardized)
        if let imageView = socialImageView {
            imageView.image = (UIImage.animatedResizableImageNamed("total.png", capInsets: UIEdgeInsets(top: 0, left: CGFloat(288.20), bottom: 0, right: 0), duration: TimeInterval(546.65)) ?? UIImage())
            let visualImageView = UIView(frame: imageView.bounds)
            imageView.addSubview(visualImageView)
            let load = UIView(frame: imageView.bounds)
            imageView.addSubview(load)
            imageView.insertSubview(load, aboveSubview: visualImageView)
            self.addSubview(imageView)
        }
        //: other_init
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let paradigmLet = windowToolImageView.convert(CGPoint(x: 0, y: 0), from: windowToolImageView.superview)
        windowToolImageView.center = paradigmLet
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func bringHomeClose() -> Bool {
        return coverOff
    }

    func ofMagnitude() -> Int {
        starCount >>= 1
        return starCount
    }

    func actionWithMagnitude() -> Double {
        return pathModelInterval
    }

    func sourceContent() -> String {
        if let color = placeImageTitle.firstIndex(of: ",") {
            placeImageTitle.remove(at: color)
        }
        return placeImageTitle
    }

    func arrayArray() -> [String] {
        return callArray
    }

    func jobDictionary() -> [String: String] {
        return [:]
    }

    // MARK: - *** Function ***

    func sexCallback() {
        if let block = bottomFreeClose {
            atDoing = block(bringHomeClose())
        }
        if let block = groupMagnitude {
            calledNumber = block(ofMagnitude())
        }
        if let block = moveArray, let array = block(arrayArray()) {
            popArray = array
        }
        if let block = bottomFreeClose {
            coverOff = block(bringHomeClose())
        }
        if let block = groupMagnitude {
            starCount = block(ofMagnitude())
        }
        if let block = moveArray, let array = block(arrayArray()) {
            callArray = array
        }
    }

    @objc func bringHomeAction(_: Any?) {
        if let label = dataLabel {
            label.updateConstraintsIfNeeded()
        }
    }

    func targetStatusReload() {
        sexCallback()
        let declarationInterval = actionWithMagnitude()
        let declarationBegin = declarationInterval / 4.07
        let declarationEnd = declarationInterval - declarationBegin
        UIView.animateKeyframes(withDuration: TimeInterval(declarationInterval), delay: TimeInterval(calledNumber), options: .layoutSubviews, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: declarationBegin, animations: { [self] in
                if let button = loadButton {
                    button.center = CGPoint.zero
                }
            })
            UIView.addKeyframe(withRelativeStartTime: declarationBegin, relativeDuration: declarationEnd, animations: { [self] in
                if let label = dataLabel {
                    label.center = CGPoint(x: CGFloat(83), y: 0)
                }
                if let view = stopView {
                    view.backgroundColor = UIColor.yellow
                }
            })
            UIView.performWithoutAnimation { [self] in
                if let button = loadButton {
                    button.center = CGPoint(x: CGFloat(28.52), y: 0)
                }
            }
        }) { [self] finished in
            atDoing = finished
        }
        let declarationNotification = Notification(name: NSNotification.Name("kNotificationUserAccommodateListContent"), object: nil)
        NotificationCenter.default.post(declarationNotification)
    }

    // MARK: - *** Public ***

    func tapImageModel(_: SectionModel?) {}

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {}
}
