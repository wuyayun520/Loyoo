import UIKit
typealias EqualFromBaseView = UIView
class EqualFromView: EqualFromBaseView, UIPickerViewDataSource, UIPickerViewDelegate {
    var tableEffectDictionary: [String: String] {
        willSet {
            retainerOfDictionary = newValue
            quantityernalRepresentationNameDictionary = newValue
            lowInterval -= 1
            if Int(lowInterval) > -69 {
                lowInterval = lowInterval + 1
            }
            tableModel?.styleTableTotal = imageSum()
        }
    }

    var effectContent: ((_ value: String) -> String)?
    var textArray: ((_ value: [String]) -> [String]?)?
    @IBOutlet private var schoolLabel: UILabel!
    @IBOutlet private var contributionButton: UIButton!
    @IBOutlet private var hideLabel: UILabel!
    @objc var tableModel: EqualFromModel?
    @objc dynamic var labClose: Bool = false
    @objc dynamic var methodOfNumber: Int = 0
    @objc dynamic var lowInterval: Double = 0.0
    @objc dynamic var tabTitle: String = ""
    @objc dynamic var addArray: [String] = []
    @objc dynamic var retainerOfDictionary: [String: String] = [:]
    var frameHeadLabel: UILabel?
    var stateImageView: UIImageView?
    var roomAwakeBagButton: UIButton?
    var aliveView: UIView?
    @objc dynamic var playerSocialSum: Int = 0
    @objc dynamic var quantityernalRepresentationNameDictionary: [String: String] = [:]
    var momentImageView: UIImageView?
    var blockOfMetalView: UIView?
    //: other_property
    var cellDataColorEnable: UISwitch?

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        tableEffectDictionary = [:]
        tableModel = EqualFromModel()
        super.init(frame: frame)
        tableInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        tableEffectDictionary = [:]
        tableModel = EqualFromModel()
        super.init(coder: aDecoder)
        aliveView = UINib(nibName: "EqualFromView", bundle: nil).instantiate(withOwner: self, options: nil).last as? UIView
        aliveView?.frame = bounds
        if let femaleView = aliveView {
            addSubview(femaleView)
        }
        tableInit()
    }

    func tableInit() {
        //: base_init
        labClose = false
        methodOfNumber = 82
        lowInterval = 197.45
        tabTitle = "nil"
        addArray = []
        retainerOfDictionary = [:]
        playerSocialSum = 65
        quantityernalRepresentationNameDictionary = [:]
        tableModel = EqualFromModel()
        blockOfMetalView = UIView(frame: self.bounds.intersection(CGRect(x: CGFloat(91), y: CGFloat(0), width: CGFloat(274.73), height: CGFloat(0))))
        if let view = blockOfMetalView {
            if #available(iOS 11.0, *) {
                view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 17, leading: 13, bottom: 11, trailing: 11)
            }
            self.addSubview(view)
        }
        //: other_init
        let femalePickerView = UIPickerView(frame: self.bounds.intersection(CGRect(x: CGFloat(580.96), y: CGFloat(0), width: CGFloat(536.04), height: CGFloat(0))))
        if femalePickerView.textInputMode != nil {
            femalePickerView.becomeFirstResponder()
        }
        femalePickerView.showsSelectionIndicator = endEnable()
        femalePickerView.dataSource = self
        femalePickerView.delegate = self
        self.addSubview(femalePickerView)
        cellDataColorEnable = UISwitch()
        cellDataColorEnable?.onTintColor = UIColor.lightGray
        cellDataColorEnable?.thumbTintColor = UIColor.systemBlue
        cellDataColorEnable?.layer.cornerRadius = CGFloat(67)
        cellDataColorEnable?.layer.masksToBounds = true
        if let toggle = cellDataColorEnable {
            self.addSubview(toggle)
        }
        cellDataColorEnable?.addTarget(self, action: #selector(loadAction(_:)), for: .valueChanged)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        UIView.animate(withDuration: TimeInterval(methodOfNumber), delay: TimeInterval(imageSum()), options: .overrideInheritedOptions, animations: { [self] in
            if let imageView = stateImageView {
                var frame = imageView.bounds
                frame.size.width = imageSum()
            }
        }) { [self] finished in
            labClose = finished
        }
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func endEnable() -> Bool {
        return labClose
    }

    func showQuantity() -> Int {
        return methodOfNumber
    }

    func imageSum() -> Double {
        return 102.81
    }

    func statusNoName() -> String {
        return tabTitle
    }

    func quantityRequireArray() -> [String] {
        return addArray
    }

    func gestureDictionary() -> [String: String] {
        return retainerOfDictionary
    }

    // MARK: - *** Function ***

    func changeSexCallback() {
        if let block = effectContent {
            tabTitle = block(statusNoName())
        }
        if let block = textArray, let array = block(quantityRequireArray()) {
            addArray = array
        }
    }

    @objc func loadAction(_: Any?) {
        let femaleInterval = imageSum()
        let femaleBegin = femaleInterval / 3.01
        let femaleEnd = femaleInterval - femaleBegin
        UIView.animateKeyframes(withDuration: TimeInterval(femaleInterval), delay: TimeInterval(methodOfNumber), options: .allowUserInteraction, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: femaleBegin, animations: { [self] in
                if let button = roomAwakeBagButton {
                    var frame = button.frame
                    frame.origin.x = imageSum()
                }
            })
            UIView.addKeyframe(withRelativeStartTime: femaleBegin, relativeDuration: femaleEnd, animations: { [self] in
                if let imageView = stateImageView {
                    var frame = imageView.bounds
                    frame.size.width = imageSum()
                }
            })
            UIView.performWithoutAnimation { [self] in
                if let view = aliveView {
                    view.center = CGPoint.zero
                }
            }
        }) { [self] finished in
            labClose = finished
        }
    }

    func phoneFlush() {
        changeSexCallback()
        let femaleInterval = imageSum()
        let femaleBegin = femaleInterval / 4.41
        let femaleEnd = femaleInterval - femaleBegin
        UIView.animateKeyframes(withDuration: TimeInterval(femaleInterval), delay: TimeInterval(methodOfNumber), options: .overrideInheritedOptions, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: femaleBegin, animations: { [self] in
                if let button = roomAwakeBagButton {
                    var frame = button.frame
                    frame.origin.x = imageSum()
                }
            })
            UIView.addKeyframe(withRelativeStartTime: femaleBegin, relativeDuration: femaleEnd, animations: { [self] in
                if let imageView = stateImageView {
                    var frame = imageView.bounds
                    frame.size.width = imageSum()
                }
            })
            UIView.performWithoutAnimation { [self] in
                if let view = aliveView {
                    view.center = CGPoint(x: 0, y: 0)
                }
            }
        }) { [self] finished in
            labClose = finished
        }
        if let toggle = cellDataColorEnable {
            if let controller_ = toggle.inputViewController {
                controller_.inputAssistantItem.allowsHidingShortcuts = false
            }
        }
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationSystemButtonPictureText"), object: nil, userInfo: gestureDictionary())
    }

    // MARK: - *** Public ***

    func titleModel(_: EqualFromModel?) {
        var view = tabTitle.startIndex
        tabTitle.formIndex(after: &view)
        tabTitle.append(tabTitle[view])
    }

    // MARK: - *** UIPickerViewDataSource ***

    func numberOfComponents(in _: UIPickerView) -> Int {
        return quantityRequireArray().count
    }

    func pickerView(_: UIPickerView, numberOfRowsInComponent _: Int) -> Int {
        let dataArray = quantityRequireArray() as? [[String]]
        return dataArray?.count ?? 0
    }

    // MARK: - *** UIPickerViewDelegate ***
}
