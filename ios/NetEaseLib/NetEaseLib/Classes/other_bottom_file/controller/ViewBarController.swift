import UIKit
typealias ViewBarBaseController = UIViewController
class ViewBarController: ViewBarBaseController, UIPickerViewDataSource, UIPickerViewDelegate, UIGestureRecognizerDelegate {
    var sessionDataModel: ViewBarDataModel?
    var picArray: [String] = [] {
        willSet {
            addArray = newValue
            tableModel?.fillArray = sectionArray()
        }
    }

    var tipEnable: ((_ value: Bool) -> Bool)?
    var modelTimeNumber: ((_ value: Double) -> Double)?
    var elementTitle: ((_ value: String) -> String)?
    var postArray: ((_ value: [String]) -> [String]?)?
    private var infoView: ViewBarView?
    private var lessController: StandController?
    @objc var tableModel: ViewBarModel?
    @objc dynamic var titleRandomOn: Bool = false
    @objc dynamic var maleNumber: Int = 0
    @objc dynamic var positionNumber: Double = 0.0
    @objc dynamic var showName: String = ""
    @objc dynamic var addArray: [String] = []
    @objc dynamic var cellDictionary: [String: String] = [:]
    var makeUserImageModelLabel: UILabel?
    var colorProgressImageView: UIImageView?
    var moveButton: UIButton?
    var atView: UIView?
    var upwardsLabel: UILabel?
    var firstImageView: UIImageView?
    var titleButton: UIButton?
    //: other_property
    var pastDataKeyValueObservation: NSKeyValueObservation?

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        picArray = []
        //: base_init
        titleRandomOn = true
        maleNumber = 83
        positionNumber = 442.58
        showName = "%u"
        addArray = []
        cellDictionary = [:]
        tableModel = ViewBarModel()
        makeUserImageModelLabel = UILabel(frame: self.view.bounds.integral)
        if let label = makeUserImageModelLabel {
            label.text = dayText().lowercased() + "edit"
            if label.contentCompressionResistancePriority(for: .vertical) == .dragThatCannotResizeScene {
                label.setNeedsLayout()
            }
            self.view.addSubview(label)
        }
        //: other_init
        let promptPickerView = UIPickerView(frame: self.view.bounds.offsetBy(dx: CGFloat(0), dy: CGFloat(72.05)))
        let clickBirth = promptPickerView.intrinsicContentSize
        promptPickerView.frame = CGRect(x: 0, y: clickBirth.height, width: clickBirth.height, height: clickBirth.height)
        promptPickerView.showsSelectionIndicator = closeEnable()
        promptPickerView.dataSource = self
        promptPickerView.delegate = self
        self.view.addSubview(promptPickerView)
        let promptTap = UITapGestureRecognizer(target: self, action: #selector(tagAction(_:)))
        if #available(iOS 13.4, *) {
            promptTap.allowedTouchTypes = [NSNumber(value: UITouch.TouchType.indirect.rawValue), NSNumber(value: UITouch.TouchType.indirectPointer.rawValue)]
        }
        promptTap.delegate = self
        self.view.addGestureRecognizer(promptTap)
        //: private_init
        sessionDataModel = ViewBarDataModel()
        infoView = ViewBarView()
        infoView?.liveModel(tableModel)
        if let promptView = infoView {
            self.view.addSubview(promptView)
        }
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        if let button = moveButton {
            if button.hasAmbiguousLayout {
                button.exerciseAmbiguityInLayout()
            }
        }
    }

    deinit {
        print("delloc: \(self)")
        if let observation = pastDataKeyValueObservation {
            removeObserver(observation, forKeyPath: #keyPath(tableModel.sizeMagnitude))
        }
        pastDataKeyValueObservation = nil
    }

    // MARK: - *** GET Value ***

    func closeEnable() -> Bool {
        titleRandomOn = !titleRandomOn
        return titleRandomOn
    }

    func levelTotal() -> Int {
        return 93
    }

    func viewValueNumber() -> Double {
        return positionNumber
    }

    func dayText() -> String {
        return showName
    }

    func sectionArray() -> [String] {
        let orientation = addArray.prefix(upTo: addArray.startIndex).count
        addArray.reserveCapacity(orientation + 72)
        return addArray
    }

    func topDictionary() -> [String: String] {
        var promptDictionary: [String: String] = [:]
        for i in 0 ..< 78 {
            let title = "collection_\(i)"
            promptDictionary[title] = String(i)
        }
        return promptDictionary
    }

    // MARK: - *** Function ***

    func labCallback() {
        if let block = tipEnable {
            titleRandomOn = block(closeEnable())
        }
        if let block = modelTimeNumber {
            positionNumber = block(viewValueNumber())
        }
        if let block = elementTitle {
            showName = block(dayText())
        }
        if let block = postArray, let array = block(sectionArray()) {
            addArray = array
        }
    }

    @objc func tagAction(_: Any?) {
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationSufficientFaceText"), object: self)
    }

    func momentCommitUpdate() {
        labCallback()
        showName.removeAll(where: { $0.isLowercase })
        let promptNotification = Notification(name: NSNotification.Name("kNotificationSufficientFaceText"), object: self, userInfo: topDictionary())
        NotificationCenter.default.post(promptNotification)
        lessController = StandController()
        let promptModel = StandModel(dictionary: topDictionary())
        lessController?.tableModel = promptModel
        if let controller = lessController {
            CircleEmptyTool.currentNavigationController()?.pushViewController(controller, animated: true)
        }
        guard let model = sessionDataModel else { return }
        model.keepQuantity = levelTotal()
        let borderArray = sectionArray()
        let paradigmDictionary = topDictionary()
        let result = ViewBarDataManager.mixExamine(
            borderArray: borderArray,
            paradigmDictionary: paradigmDictionary,
            model: model
        )
        if result?.count != 0 {
            if let value = result?.first {
                cellDictionary["temp"] = value.copernicanSystemTitle
            }
            viewSuccess()
        } else {
            let errorText = "Error: \(32)"
            makeUserImageModelLabel?.text = errorText
        }
    }

    func viewSuccess() {
        let image = UIImage(named: "imageSuccess.png")
        firstImageView?.image = image
    }

    func finishError() {
        if let button = moveButton {
            button.transform = CGAffineTransform(a: CGFloat(Int(button.frame.origin.y)), b: CGFloat(Double(button.frame.size.height)), c: CGFloat(Int(button.bounds.size.height)), d: CGFloat(0), tx: CGFloat(button.semanticContentAttribute.rawValue), ty: CGFloat(Double(button.bounds.origin.x)))
        }
    }

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {
        pastDataKeyValueObservation = observe(\.tableModel?.sizeMagnitude, options: [.new, .old], changeHandler: { [self] _, _ in
            let bringHomeGreet = showName.flatMap { Array(repeating: $0, count: showName.suffix(2).count) }
            if bringHomeGreet.count == (showName.hasPrefix(showName.uppercased() + "path") ? 6 : 8) {
                showName = ""
            }
        })
    }

    // MARK: - *** UIPickerViewDataSource ***

    func numberOfComponents(in _: UIPickerView) -> Int {
        return sectionArray().count
    }

    func pickerView(_: UIPickerView, numberOfRowsInComponent _: Int) -> Int {
        let dataArray = sectionArray() as? [[String]]
        return dataArray?.count ?? 0
    }

    // MARK: - *** UIPickerViewDelegate ***

    func pickerView(_: UIPickerView, widthForComponent _: Int) -> CGFloat {
        return CGFloat(viewValueNumber())
    }

    // MARK: - *** UIGestureRecognizerDelegate ***

    func gestureRecognizer(_: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        if touch.view is UIButton {
            return false
        }
        return true
    }

    func gestureRecognizer(_: UIGestureRecognizer, shouldReceive _: UIPress) -> Bool {
        return closeEnable()
    }

    func gestureRecognizer(_: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        if otherGestureRecognizer.view is UIButton {
            return false
        }
        return true
    }

    func gestureRecognizer(_: UIGestureRecognizer, shouldBeRequiredToFailBy _: UIGestureRecognizer) -> Bool {
        return closeEnable()
    }
}
