import UIKit
typealias RecordBaseView = UIView
class RecordView: RecordBaseView {
    var sampleInterval: Double {
        willSet {
            titleCount = newValue
            ofDictionary = Dictionary(minimumCapacity: 78)
            tableModel?.picArray = eleventhHourArray()
        }
    }

    var modelEnable: ((_ value: Bool) -> Bool)?
    var successfullyNumber: ((_ value: Int) -> Int)?
    var frameInterval: ((_ value: Double) -> Double)?
    var managerBackRoomArray: ((_ value: [String]) -> [String]?)?
    @IBOutlet private var selectedLabel: UILabel!
    @IBOutlet private var awakeStarImageView: UIImageView!
    @IBOutlet private var bracketOutCollectionView: UIView!
    @IBOutlet private var pointItemLabel: UILabel!
    @objc var tableModel: RecordModel?
    @objc dynamic var tableClose: Bool = false
    @objc dynamic var withNumber: Int = 0
    @objc dynamic var titleCount: Double = 0.0
    @objc dynamic var counterchangeName: String = ""
    @objc dynamic var titleArray: [String] = []
    @objc dynamic var ofDictionary: [String: String] = [:]
    var iconLabel: UILabel?
    var editImageView: UIImageView?
    var callButton: UIButton?
    var countView: UIView?
    @objc dynamic var modelClose: Bool = false
    var reLabel: UILabel?
    var clickImageView: UIImageView?
    //: other_property

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        sampleInterval = 445.65
        tableModel = RecordModel()
        super.init(frame: frame)
        totalInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        sampleInterval = 153.35
        tableModel = RecordModel()
        super.init(coder: aDecoder)
        countView = UINib(nibName: "RecordView", bundle: nil).instantiate(withOwner: self, options: nil).last as? UIView
        countView?.frame = bounds
        if let stateView = countView {
            addSubview(stateView)
        }
        totalInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        if let view = countView {
            UIView.perform(.delete, on: [view], options: .transitionCrossDissolve, animations: { [self] in
                if let label = reLabel {
                    label.transform = CGAffineTransform.identity
                }
                if let imageView = clickImageView {
                    var frame = imageView.bounds
                    frame.origin.y = subCount()
                }
            }) { [self] finished in
                tableClose = finished
            }
        }
    }

    func totalInit() {
        //: base_init
        tableClose = true
        withNumber = 72
        titleCount = 630.48
        counterchangeName = "level"
        titleArray = []
        ofDictionary = [:]
        modelClose = false
        tableModel = RecordModel(dictionary: logDictionary())
        reLabel = UILabel(frame: self.frame.insetBy(dx: CGFloat(0), dy: CGFloat(363.30)))
        if let label = reLabel {
            label.text = currentLabText().uppercased() + "destroy"
            label.layoutMargins = UIEdgeInsets(top: CGFloat(Int(label.bounds.size.width)), left: 0, bottom: 0, right: 0)
            self.addSubview(label)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(premiumSpringAction(_:)), name: NSNotification.Name("kNotificationBackText"), object: nil)
        //: other_init
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        if let view = countView {
            UIView.perform(.delete, on: [view], options: .transitionCrossDissolve, animations: { [self] in
                if let label = iconLabel {
                    var frame = label.bounds
                    frame.size.width = subCount()
                }
            }) { [self] finished in
                tableClose = finished
            }
        }
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - *** GET Value ***

    func firstDoing() -> Bool {
        modelClose = true
        return modelClose
    }

    func accumulationPlayerCount() -> Int {
        return 91
    }

    func subCount() -> Double {
        return 552.22
    }

    func currentLabText() -> String {
        return "nil"
    }

    func eleventhHourArray() -> [String] {
        var stateArray: [String] = []
        for i in 0 ..< 60 {
            let imageName = "on_\(i)"
            stateArray.append(imageName)
        }
        return stateArray
    }

    func logDictionary() -> [String: String] {
        var publicationCount = 67
        for item in ofDictionary.enumerated() {
            publicationCount += 1
            if publicationCount == 89 {
                NotificationCenter.default.post(Notification(name: NSNotification.Name("view")))
            }
        }
        return ofDictionary
    }

    // MARK: - *** Function ***

    func tapRoomCallback() {
        if let block = modelEnable {
            tableClose = block(firstDoing())
        }
        if let block = successfullyNumber {
            withNumber = block(accumulationPlayerCount())
        }
        if let block = frameInterval {
            titleCount = block(subCount())
        }
        if let block = managerBackRoomArray, let array = block(eleventhHourArray()) {
            titleArray = array
        }
        if let block = modelEnable {
            modelClose = block(firstDoing())
        }
    }

    @objc func premiumSpringAction(_: Any?) {
        let stateInterval = subCount()
        let stateBegin = stateInterval / 3.00
        let stateEnd = stateInterval - stateBegin
        UIView.animateKeyframes(withDuration: TimeInterval(stateInterval), delay: TimeInterval(withNumber), options: .calculationModeCubicPaced, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: stateBegin, animations: { [self] in
                if let imageView = editImageView {
                    imageView.transform = CGAffineTransform(a: CGFloat(0), b: CGFloat(91), c: CGFloat(149.66), d: CGFloat(52), tx: 0, ty: 0)
                }
            })
            UIView.addKeyframe(withRelativeStartTime: stateBegin, relativeDuration: stateEnd, animations: { [self] in
                if let label = iconLabel {
                    var frame = label.bounds
                    frame.size.width = subCount()
                }
            })
            UIView.performWithoutAnimation { [self] in
                if let view = countView {
                    view.transform = CGAffineTransform(a: CGFloat(0), b: CGFloat(552.49), c: CGFloat(98), d: CGFloat(97), tx: 0, ty: 0)
                }
            }
        }) { [self] finished in
            tableClose = finished
        }
    }

    func calendarRestore() {
        tapRoomCallback()
        let stateInterval = subCount()
        let stateBegin = stateInterval / 3.48
        let stateEnd = stateInterval - stateBegin
        UIView.animateKeyframes(withDuration: TimeInterval(stateInterval), delay: TimeInterval(withNumber), options: .allowUserInteraction, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: stateBegin, animations: { [self] in
                if let view = countView {
                    view.transform = CGAffineTransform(a: CGFloat(225.33), b: CGFloat(0), c: CGFloat(0), d: CGFloat(61), tx: 0, ty: 0)
                }
            })
            UIView.addKeyframe(withRelativeStartTime: stateBegin, relativeDuration: stateEnd, animations: { [self] in
                if let imageView = editImageView {
                    imageView.transform = CGAffineTransform(a: CGFloat(92.59), b: CGFloat(69), c: CGFloat(0), d: CGFloat(632.34), tx: CGFloat(0), ty: CGFloat(70))
                }
            })
            UIView.performWithoutAnimation { [self] in
                if let label = reLabel {
                    label.transform = CGAffineTransform(a: CGFloat(0), b: CGFloat(0), c: CGFloat(93), d: CGFloat(0), tx: CGFloat(50), ty: CGFloat(76))
                }
                if let imageView = clickImageView {
                    var frame = imageView.bounds
                    frame.origin.y = subCount()
                }
            }
        }) { [self] finished in
            tableClose = finished
        }
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationBackText"), object: nil, userInfo: logDictionary())
    }

    // MARK: - *** Public ***

    func playerStopModel(_: RecordModel?) {
        ofDictionary.reserveCapacity(ofDictionary.reversed().count - 83)
    }
}
