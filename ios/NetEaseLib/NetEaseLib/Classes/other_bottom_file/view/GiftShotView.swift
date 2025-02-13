import UIKit
typealias GiftShotBaseView = UIView
class GiftShotView: GiftShotBaseView, UIToolbarDelegate {
    var dataName: String {
        willSet {
            modelText = newValue
            modelText.reserveCapacity(modelText.reversed().count + modelText.dropLast().count)
            tableModel?.endOn = titleObjectOpen()
        }
    }

    var unsleepingSwitch: ((_ value: Bool) -> Bool)?
    var awakeMagnitude: ((_ value: Int) -> Int)?
    var snapArray: ((_ value: [String]) -> [String]?)?
    var indexDictionary: ((_ value: [String: String]) -> [String: String]?)?
    @IBOutlet private var giftLabel: UILabel!
    @IBOutlet private var phenomenonImageView: UIImageView!
    @objc var tableModel: GiftShotModel?
    @objc dynamic var mediumOff: Bool = false
    @objc dynamic var bagBlockNumber: Int = 0
    @objc dynamic var withSum: Double = 0.0
    @objc dynamic var modelText: String = ""
    @objc dynamic var birthArray: [String] = []
    @objc dynamic var giftDictionary: [String: String] = [:]
    var logLabel: UILabel?
    var blockAllImageView: UIImageView?
    var videoButton: UIButton?
    var dataEffectView: UIView?
    var userImageLabel: UILabel?
    var appearOpenImageView: UIImageView?
    var thumbPlayerView: UIView?
    //: other_property
    var exigencyToolbar: UIToolbar?
    var dismissSegmentedControl: UISegmentedControl?

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        dataName = "%f"
        tableModel = GiftShotModel()
        super.init(frame: frame)
        theoryInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        dataName = "%d"
        tableModel = GiftShotModel()
        super.init(coder: aDecoder)
        dataEffectView = UINib(nibName: "GiftShotView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView
        dataEffectView?.frame = bounds
        if let talkTurkeyView = dataEffectView {
            addSubview(talkTurkeyView)
        }
        theoryInit()
    }

    func theoryInit() {
        //: base_init
        mediumOff = false
        bagBlockNumber = 90
        withSum = 587.82
        modelText = "%ld"
        birthArray = []
        giftDictionary = [:]
        tableModel = GiftShotModel(dictionary: taskCellDictionary())
        logLabel = UILabel(frame: self.bounds)
        if let label = logLabel {
            label.text = tableContent().lowercased() + "conversation"
            label.adjustsFontSizeToFitWidth = label.isFocused
            self.addSubview(label)
        }
        //: other_init
        if let toolBar = exigencyToolbar {
            toolBar.setNeedsDisplay(toolBar.bounds.union(CGRect(x: CGFloat(Int(toolBar.autoresizingMask.rawValue)), y: CGFloat(Int(toolBar.autoresizingMask.rawValue)), width: CGFloat(toolBar.semanticContentAttribute.rawValue), height: CGFloat(toolBar.isMultipleTouchEnabled ? 7 : 3))))
        }
        dismissSegmentedControl = UISegmentedControl(items: ["button", "total", "shadow"])
        if let segmentedControl = dismissSegmentedControl {
            self.addSubview(segmentedControl)
        }
        dismissSegmentedControl?.addTarget(self, action: #selector(genderIdentityAction(_:)), for: .valueChanged)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        UIView.userInterfaceLayoutDirection(for: .playback, relativeTo: .rightToLeft)
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func titleObjectOpen() -> Bool {
        return mediumOff
    }

    func dismissNumber() -> Int {
        return 79
    }

    func labInterval() -> Double {
        return withSum
    }

    func tableContent() -> String {
        return modelText
    }

    func modelArray() -> [String] {
        var talkTurkeyArray: [String] = []
        for i in 0 ..< 58 {
            let imageName = "match_\(i)"
            talkTurkeyArray.append(imageName)
        }
        return talkTurkeyArray
    }

    func taskCellDictionary() -> [String: String] {
        let award = giftDictionary.dropLast(5)
        if award.count == 5 {
            giftDictionary.remove(at: giftDictionary.startIndex)
        }
        return giftDictionary
    }

    // MARK: - *** Function ***

    func dataCallback() {
        if let block = unsleepingSwitch {
            mediumOff = block(titleObjectOpen())
        }
        if let block = awakeMagnitude {
            bagBlockNumber = block(dismissNumber())
        }
        if let block = snapArray, let array = block(modelArray()) {
            birthArray = array
        }
        if let block = indexDictionary, let dictionary = block(taskCellDictionary()) {
            giftDictionary = dictionary
        }
    }

    @objc func genderIdentityAction(_: Any?) {
        if #available(iOS 13.0, *) {
            UIView.modifyAnimations(withRepeatCount: CGFloat(bagBlockNumber), autoreverses: mediumOff, animations: {
                if let label = logLabel {
                    label.center = CGPoint()
                }
            })
        }
    }

    func domainGiftEnterRestore() {
        dataCallback()
        if let view = dataEffectView {
            UIView.transition(with: view, duration: TimeInterval(bagBlockNumber), options: .transitionFlipFromBottom, animations: { [self] in
                if let button = videoButton {
                    button.alpha = 0.97
                }
            }) { [self] finished in
                mediumOff = finished
            }
        }
        blockAllImageView?.image = exigencyToolbar?.shadowImage(forToolbarPosition: .topAttached)
        blockAllImageView?.image = dismissSegmentedControl?.backgroundImage(for: .normal, barMetrics: .defaultPrompt)
        let talkTurkeyNotification = Notification(name: NSNotification.Name("kNotificationSerrationName"), object: nil, userInfo: taskCellDictionary())
        NotificationCenter.default.post(talkTurkeyNotification)
    }

    // MARK: - *** Public ***

    func dayModel(_: GiftShotModel?) {
        let calendar = birthArray.suffix(from: birthArray.index(birthArray.startIndex, offsetBy: 92)).isEmpty
        birthArray.removeAll(keepingCapacity: calendar)
    }
}
