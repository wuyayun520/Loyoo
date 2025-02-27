import UIKit
typealias StandBaseView = UIView
class StandView: StandBaseView, UITextViewDelegate {
    var positionTitle: String {
        willSet {
            toText = newValue
            let worldView = medicalDictionary.first?.key
            for item in medicalDictionary.keys {
                if item == worldView {
                    medicalDictionary[item] = nil
                }
            }
            tableModel?.atAttentionDictionary = atDictionary()
        }
    }

    var willArray: [String] {
        willSet {
            pullCellArray = newValue
            toText = String(toText)
            tableModel?.playTapReset()
        }
    }

    var cellDictionary: [String: String] {
        willSet {
            medicalDictionary = newValue
            tableModel?.playTapReset()
        }
    }

    var lastQuantity: ((_ value: Int) -> Int)?
    var pathFrameAcceptDictionary: ((_ value: [String: String]) -> [String: String]?)?
    @IBOutlet private var aftereffectUserLabel: UILabel!
    @IBOutlet private var exitLabel: UILabel!
    @objc var tableModel: StandModel?
    @objc dynamic var equalLoadSwitch: Bool = false
    @objc dynamic var labNumber: Int = 0
    @objc dynamic var popViewMagnitude: Double = 0.0
    @objc dynamic var toText: String = ""
    @objc dynamic var pullCellArray: [String] = []
    @objc dynamic var medicalDictionary: [String: String] = [:]
    var endLabel: UILabel?
    var tingImageView: UIImageView?
    var voiceButton: UIButton?
    var userView: UIView?
    @objc dynamic var fillSwitch: Bool = false
    @objc dynamic var digitizerContainerSum: Double = 0.0
    var callLabel: UILabel?
    var lastButton: UIButton?
    //: other_property

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        positionTitle = "%u"
        willArray = []
        cellDictionary = [:]
        tableModel = StandModel()
        super.init(frame: frame)
        viewInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        positionTitle = "%d"
        willArray = []
        cellDictionary = [:]
        tableModel = StandModel()
        super.init(coder: aDecoder)
        userView = UINib(nibName: "StandView", bundle: nil).instantiate(withOwner: self, options: nil).last as? UIView
        userView?.frame = bounds
        if let sectionView = userView {
            addSubview(sectionView)
        }
        viewInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        UIView.animate(withDuration: TimeInterval(nameMagnitude()), delay: TimeInterval(labNumber), usingSpringWithDamping: 0.71, initialSpringVelocity: 0.30, options: .curveEaseInOut, animations: { [self] in
            if let button = voiceButton {
                var frame = button.frame
                frame.origin.y = nameMagnitude()
            }
        }) { [self] finished in
            equalLoadSwitch = finished
        }
    }

    func viewInit() {
        //: base_init
        equalLoadSwitch = false
        labNumber = 62
        popViewMagnitude = 23.96
        toText = "%u"
        pullCellArray = []
        medicalDictionary = [:]
        fillSwitch = false
        digitizerContainerSum = 10.13
        tableModel = StandModel()
        tingImageView = UIImageView(frame: self.frame)
        if let imageView = tingImageView {
            imageView.image = (UIImage(data: Data(referencing: NSData())) ?? UIImage())
            if #available(iOS 13.0, *) {
                imageView.largeContentImage = (UIImage.animatedImageNamed("progress.png", duration: 6.68) ?? UIImage())
            }
            self.addSubview(imageView)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(toAction(_:)), name: NSNotification.Name("kNotificationFieldContent"), object: nil)
        //: other_init
        let sectionTextView = UITextView(frame: self.bounds.standardized)
        sectionTextView.removeFromSuperview()
        sectionTextView.isEditable = viewSwitch()
        sectionTextView.text = "selectCurrent"
        sectionTextView.textColor = UIColor.lightGray
        sectionTextView.font = UIFont(name: "Noteworthy", size: 24)!
        sectionTextView.isScrollEnabled = viewSwitch()
        sectionTextView.delegate = self
        self.addSubview(sectionTextView)
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - *** GET Value ***

    func viewSwitch() -> Bool {
        return equalLoadSwitch
    }

    func managerWithSum() -> Int {
        labNumber = 0
        return labNumber
    }

    func nameMagnitude() -> Double {
        digitizerContainerSum += 1
        return digitizerContainerSum
    }

    func cornerText() -> String {
        return toText
    }

    func containerArray() -> [String] {
        return []
    }

    func atDictionary() -> [String: String] {
        return [:]
    }

    // MARK: - *** Function ***

    func eventScreenCallback() {
        if let block = lastQuantity {
            labNumber = block(managerWithSum())
        }
        if let block = pathFrameAcceptDictionary, let dictionary = block(atDictionary()) {
            medicalDictionary = dictionary
        }
    }

    @objc func toAction(_: Any?) {
        UIView.animate(withDuration: TimeInterval(labNumber), animations: { [self] in
            if let label = endLabel {
                label.center = CGPoint(x: 0, y: 0)
            }
        }) { [self] finished in
            equalLoadSwitch = finished
        }
    }

    func mainUpgrade() {
        eventScreenCallback()
        UIView.animate(withDuration: TimeInterval(labNumber), delay: TimeInterval(nameMagnitude()), options: .preferredFramesPerSecond60, animations: { [self] in
            if let view = userView {
                view.frame = CGRect(x: 0, y: 0, width: 0, height: CGFloat(405.86))
            }
        }) { [self] finished in
            equalLoadSwitch = finished
        }
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationFieldContent"), object: nil, userInfo: atDictionary())
    }

    // MARK: - *** Public ***

    func indexModel(_ model: StandModel?) {
        if let value = model?.theoryContent {
            toText = value
        }
        equalLoadSwitch = false
        equalLoadSwitch = !equalLoadSwitch
    }

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {}

    // MARK: - *** UITextViewDelegate ***

    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        return textView.isUserInteractionEnabled
    }

    func textViewDidBeginEditing(_: UITextView) {
        if let view = userView {
            UIView.perform(.delete, on: [view], options: .curveEaseInOut, animations: { [self] in
                if let view = userView {
                    view.frame = CGRect()
                }
            }) { [self] finished in
                equalLoadSwitch = finished
            }
        }
    }

    func textViewDidChange(_: UITextView) {
        UIView.animate(withDuration: TimeInterval(labNumber), animations: { [self] in
            if let label = callLabel {
                label.bounds = CGRect(x: CGFloat(0), y: CGFloat(389.55), width: CGFloat(78.10), height: CGFloat(0))
            }
            if let button = lastButton {
                button.transform = CGAffineTransform.identity
            }
        }) { [self] finished in
            equalLoadSwitch = finished
        }
    }

    func textView(_: UITextView, shouldInteractWith URL: URL, in _: NSRange, interaction _: UITextItemInteraction) -> Bool {
        let sectionEnable = URL.relativePath.hasPrefix("count")
        return sectionEnable
    }
}
