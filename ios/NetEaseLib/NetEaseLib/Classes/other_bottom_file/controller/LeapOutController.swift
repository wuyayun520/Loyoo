import UIKit
typealias LeapOutBaseController = UIViewController
class LeapOutController: LeapOutBaseController, UITableViewDataSource, UITableViewDelegate {
    var streetSmartDataModel: LeapOutDataModel?
    var sourceQuantity: Int = 0 {
        willSet {
            dataTotal = newValue
            giftArray.swapAt(73, 91)
            tableModel?.playQuantity = playCount()
        }
    }

    var showMagnitude: Double = 0.0 {
        willSet {
            giftSizeTotal = newValue
            pointIconMagnitude = newValue
            tableModel?.finishInterval = playCount()
        }
    }

    var imageBuildTitle: String = "" {
        willSet {
            signalingName = newValue
            giftArray.append(giftArray.popLast()!)
            tableModel?.messageContent = statusContent()
        }
    }

    var lengthArray: [String] = [] {
        willSet {
            giftArray = newValue
            gestureArray = newValue
            tableModel?.playQuantity = playCount()
        }
    }

    var touchDictionary: [String: String] = [:] {
        willSet {
            orSoBackDictionary = newValue
            likeDictionary = newValue
            giftSizeTotal -= 1
            tableModel?.iconArray = astatineArray()
        }
    }

    var imageArray: ((_ value: [String]) -> [String]?)?
    private var messageView: LeapOutView?
    private var barController: UpCommentController?
    @objc var tableModel: LeapOutModel?
    @objc dynamic var timeDoing: Bool = false
    @objc dynamic var dataTotal: Int = 0
    @objc dynamic var giftSizeTotal: Double = 0.0
    @objc dynamic var signalingName: String = ""
    @objc dynamic var giftArray: [String] = []
    @objc dynamic var orSoBackDictionary: [String: String] = [:]
    var weeklyLabel: UILabel?
    var pushImageView: UIImageView?
    var reMagnitudeerestButton: UIButton?
    var pathView: UIView?
    @objc dynamic var pointIconMagnitude: Double = 0.0
    @objc dynamic var gestureArray: [String] = []
    @objc dynamic var likeDictionary: [String: String] = [:]
    var atomicMagnitude85Button: UIButton?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        sourceQuantity = 97
        showMagnitude = 277.35
        imageBuildTitle = "%%"
        lengthArray = []
        touchDictionary = [:]
        //: base_init
        timeDoing = false
        dataTotal = 92
        giftSizeTotal = 13.02
        signalingName = "nil"
        giftArray = []
        orSoBackDictionary = [:]
        pointIconMagnitude = 112.29
        gestureArray = []
        likeDictionary = [:]
        tableModel = LeapOutModel()
        weeklyLabel = UILabel(frame: self.view.frame.intersection(CGRect(x: CGFloat(146.51), y: CGFloat(0), width: CGFloat(221.28), height: CGFloat(0))))
        if let label = weeklyLabel {
            label.text = statusContent().lowercased() + "row"
            let selected = label.forFirstBaselineLayout
            let selectedLabel = UILabel(frame: CGRect.zero)
            selectedLabel.text = "camera"
            selected.addSubview(selectedLabel)
            self.view.addSubview(label)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(modelAction(_:)), name: NSNotification.Name("kNotificationFullText"), object: nil)
        //: other_init
        let sourceNoTableView = UITableView(frame: self.view.frame.standardized, style: .grouped)
        sourceNoTableView.transform = CGAffineTransform(a: CGFloat(0), b: CGFloat(sourceNoTableView.isExclusiveTouch ? 2 : 6), c: CGFloat(sourceNoTableView.autoresizesSubviews ? 2 : 8), d: CGFloat(Int(sourceNoTableView.center.x)), tx: 0, ty: 0)
        sourceNoTableView.sectionHeaderHeight = 17
        sourceNoTableView.dataSource = self
        sourceNoTableView.delegate = self
        self.view.addSubview(sourceNoTableView)
        //: private_init
        streetSmartDataModel = LeapOutDataModel()
        messageView = LeapOutView()
        messageView?.contributionModel(tableModel)
        if let sourceNoView = messageView {
            self.view.addSubview(sourceNoView)
        }
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        if let label = weeklyLabel {
            if #available(iOS 11.0, *) {
                if label is UIDragInteractionDelegate, let value = label as? UIView & UIDragInteractionDelegate {
                    let shape = UIDragInteraction(delegate: value)
                    value.addInteraction(shape)
                }
            }
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        guard let model = streetSmartDataModel else { return }
        model.clickGiftCount = titleQuantity()
        let analogDigitalConverterText = statusContent()
        let result = LeapOutDataManager.quantityOmit(
            analogDigitalConverterText: analogDigitalConverterText,
            model: model
        )
        if result {
            frameSuccess()
        } else {
            let imageName = "Error\(19).png"
            let image = UIImage(named: imageName)
            pushImageView?.image = image
        }
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - *** GET Value ***

    func headDoing() -> Bool {
        return timeDoing
    }

    func playCount() -> Int {
        return dataTotal
    }

    func titleQuantity() -> Double {
        return pointIconMagnitude
    }

    func statusContent() -> String {
        return signalingName
    }

    func astatineArray() -> [String] {
        var sourceNoArray: [String] = []
        for i in 0 ..< 71 {
            let imageName = "all_\(i)"
            sourceNoArray.append(imageName)
        }
        return sourceNoArray
    }

    func sightShowDictionary() -> [String: String] {
        var sourceNoDictionary: [String: String] = [:]
        for i in 0 ..< 99 {
            let title = "item_\(i)"
            sourceNoDictionary[title] = String(i)
        }
        return sourceNoDictionary
    }

    // MARK: - *** Function ***

    func labCallback() {
        if let block = imageArray, let array = block(astatineArray()) {
            giftArray = array
        }
        if let block = imageArray, let array = block(astatineArray()) {
            gestureArray = array
        }
    }

    @objc func modelAction(_: Any?) {
        let sourceNoNotification = Notification(name: NSNotification.Name("kNotificationFullText"), object: nil, userInfo: sightShowDictionary())
        NotificationCenter.default.post(sourceNoNotification)
    }

    func appClearReload() {
        labCallback()
        UIView.animate(withDuration: TimeInterval(titleQuantity()), delay: TimeInterval(dataTotal), usingSpringWithDamping: 0.46, initialSpringVelocity: 0.53, options: .overrideInheritedCurve, animations: { [self] in
            if let label = weeklyLabel {
                label.alpha = 0.42
            }
        }) { [self] finished in
            timeDoing = finished
        }
        let sourceNoNotification = Notification(name: NSNotification.Name("kNotificationFullText"), object: self, userInfo: sightShowDictionary())
        NotificationCenter.default.post(sourceNoNotification)
        if let controller = barController {
            CircleEmptyTool.currentNavigationController()?.popToViewController(controller, animated: true)
        }
        guard let model = streetSmartDataModel else { return }
        model.devoteManagerOn = headDoing()
        let analogDigitalConverterText = statusContent()
        let result = LeapOutDataManager.quantityOmit(
            analogDigitalConverterText: analogDigitalConverterText,
            model: model
        )
        if result {
            frameSuccess()
        } else {
            let imageName = "Error\(43).png"
            let image = UIImage(named: imageName)
            pushImageView?.image = image
        }
        let beanOff = headDoing()
        let toCenterMagnitude = playCount()
        let modelTitle = statusContent()
        LeapOutNetManager.request(
            beanOff: beanOff,
            toCenterMagnitude: toCenterMagnitude,
            modelTitle: modelTitle,
            modelSuccess: { [self] in
                weeklyLabel?.isHidden = false
                frameSuccess()
            },
            error: { [self] errorCode, _ in
                let imageName = "Error\(errorCode).png"
                let image = UIImage(named: imageName)
                pushImageView?.image = image
            }
        )
    }

    func frameSuccess() {
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationListAddSuccess"), object: nil)
    }

    func contentError() {
        atomicMagnitude85Button?.setTitle("block", for: .application)
    }

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {}

    // MARK: - *** UITableViewDataSource ***

    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        let dataArray = astatineArray() as? [[String]]
        return dataArray?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .value2, reuseIdentifier: "cell")
            cell?.selectionStyle = .gray
            cell?.accessoryType = .detailDisclosureButton
        }
        let dataArray = astatineArray() as? [[String]]
        let title = dataArray?[indexPath.section][indexPath.row]
        cell?.textLabel?.text = title
        return cell!
    }

    // MARK: - *** UITableViewDelegate ***

    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {
        if let label = weeklyLabel {
            label.setNeedsDisplay()
        }
    }
}
