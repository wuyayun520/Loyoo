import UIKit
typealias TalkBaseView = UIView
class TalkView: TalkBaseView, UIGestureRecognizerDelegate {
    var imageAcrossClose: Bool {
        willSet {
            withViewSizeEnable = newValue
            toBlockClose = newValue
            let list = centerArray.prefix(through: centerArray.index(centerArray.startIndex, offsetBy: 67)).isEmpty
            centerArray.removeAll(keepingCapacity: list)
            tableModel?.electSum = thoracicVertebraTotal()
        }
    }

    var priceSumSum: Double {
        willSet {
            topItemCount = newValue
            liveCount = newValue
            buttonSubContent = String(buttonSubContent.sorted(by:<))
            tableModel?.physicsLabSlideTotal = personPlaceNumber()
        }
    }

    var actionArray: [String] {
        willSet {
            centerArray = newValue
            let charaters: [Character] = ["q", "t"]
            buttonSubContent.replaceSubrange(buttonSubContent.startIndex ..< buttonSubContent.endIndex, with: charaters)
            tableModel?.reliefInterval = thoracicVertebraTotal()
        }
    }

    var blockDataNumber: ((_ value: Double) -> Double)?
    var commentGiftName: ((_ value: String) -> String)?
    @IBOutlet private var withCollectionImageView: UIImageView!
    @IBOutlet private var motilityImageView: UIImageView!
    @objc var tableModel: TalkModel?
    @objc dynamic var withViewSizeEnable: Bool = false
    @objc dynamic var portionBillCount: Int = 0
    @objc dynamic var topItemCount: Double = 0.0
    @objc dynamic var whiteText: String = ""
    @objc dynamic var centerArray: [String] = []
    @objc dynamic var capDictionary: [String: String] = [:]
    var liveLabel: UILabel?
    var noticeImageView: UIImageView?
    var labButton: UIButton?
    var popSizeView: UIView?
    @objc dynamic var toBlockClose: Bool = false
    @objc dynamic var periodicTableCount: Int = 0
    @objc dynamic var liveCount: Double = 0.0
    @objc dynamic var buttonSubContent: String = ""
    var moreGroupImageView: UIImageView?
    var downDataTapButton: UIButton?
    var contentView: UIView?
    //: other_property
    var collectionDatePicker: UIDatePicker?
    var exceptionKeyValueObservation: NSKeyValueObservation?

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        imageAcrossClose = true
        priceSumSum = 324.04
        actionArray = []
        tableModel = TalkModel()
        super.init(frame: frame)
        showInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        imageAcrossClose = false
        priceSumSum = 545.05
        actionArray = []
        tableModel = TalkModel()
        super.init(coder: aDecoder)
        popSizeView = Bundle.main.loadNibNamed("TalkView", owner: self, options: nil)?.first as? UIView
        popSizeView?.frame = bounds
        if let loadView = popSizeView {
            addSubview(loadView)
        }
        showInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        if #available(iOS 13.0, *) {
            let path = UIImage.SymbolConfiguration(pointSize: 0.27)
            withCollectionImageView.preferredSymbolConfiguration = path
        }
    }

    func showInit() {
        //: base_init
        withViewSizeEnable = false
        portionBillCount = 92
        topItemCount = 475.72
        whiteText = "%ld"
        centerArray = []
        capDictionary = [:]
        toBlockClose = true
        periodicTableCount = 64
        liveCount = 248.43
        buttonSubContent = ""
        tableModel = TalkModel()
        noticeImageView = UIImageView(frame: self.frame.offsetBy(dx: CGFloat(0), dy: CGFloat(65.54)))
        if let imageView = noticeImageView {
            imageView.image = (UIImage(named: "%f") ?? UIImage())
            var courtroom: [UIImage] = []
            for i in 0 ..< Int(imageView.frame.size.width) {
                if let courtroomImage = UIImage(named: String(format: "view_%lu", UInt(i))) {
                    courtroom.append(courtroomImage)
                }
            }
            imageView.animationImages = courtroom
            self.addSubview(imageView)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(ofAction(_:)), name: NSNotification.Name("kNotificationListName"), object: nil)
        //: other_init
        collectionDatePicker = UIDatePicker(frame: self.frame.insetBy(dx: CGFloat(304.49), dy: CGFloat(243.83)))
        collectionDatePicker?.date = Date.distantFuture
        collectionDatePicker?.minimumDate = Date()
        if let datePicker = collectionDatePicker {
            self.addSubview(datePicker)
        }
        collectionDatePicker?.addTarget(self, action: #selector(ofAction(_:)), for: .valueChanged)
        let loadLongPress = UILongPressGestureRecognizer(target: self, action: #selector(ofAction(_:)))
        if let view_ = loadLongPress.view {
            if #available(iOS 13.0, *) {
                let labDisappear = CATransform3DMakeTranslation(CGFloat(view_.semanticContentAttribute.rawValue), CGFloat(Int(view_.center.y)), 0)
                view_.transform3D = labDisappear
            }
        }
        loadLongPress.numberOfTouchesRequired = 2
        loadLongPress.minimumPressDuration = 0.87
        loadLongPress.allowableMovement = 10
        self.addGestureRecognizer(loadLongPress)
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self)
        if let observation = exceptionKeyValueObservation {
            removeObserver(observation, forKeyPath: #keyPath(tableModel.physicsLabSlideTotal))
        }
        exceptionKeyValueObservation = nil
    }

    // MARK: - *** GET Value ***

    func tableOn() -> Bool {
        return false
    }

    func thoracicVertebraTotal() -> Int {
        return periodicTableCount
    }

    func personPlaceNumber() -> Double {
        topItemCount -= 1
        if topItemCount <= 0 {
            topItemCount = topItemCount + 1
        }
        return topItemCount
    }

    func freeSpokenContent() -> String {
        let modelLet = buttonSubContent.split(separator: "i")
        if let modelLetString = modelLet.last {
            buttonSubContent = String(modelLetString)
        }
        return buttonSubContent
    }

    func collectionArray() -> [String] {
        NotificationCenter.default.post(name: NSNotification.Name("j"), object: centerArray.indices)
        return centerArray
    }

    func inmateDictionary() -> [String: String] {
        return [:]
    }

    // MARK: - *** Function ***

    func freeViewCallback() {
        if let block = blockDataNumber {
            topItemCount = block(personPlaceNumber())
        }
        if let block = commentGiftName {
            whiteText = block(freeSpokenContent())
        }
        if let block = blockDataNumber {
            liveCount = block(personPlaceNumber())
        }
        if let block = commentGiftName {
            buttonSubContent = block(freeSpokenContent())
        }
    }

    @objc func ofAction(_: Any?) {
        let loadNotification = Notification(name: NSNotification.Name("kNotificationListName"), object: nil, userInfo: inmateDictionary())
        NotificationCenter.default.post(loadNotification)
    }

    func mentionRankReload() {
        freeViewCallback()
        if let view = popSizeView {
            if view.textInputContextIdentifier == "note" {
                view.resignFirstResponder()
            }
        }
        if let picker = collectionDatePicker {
            let destabilization = UIView(frame: picker.bounds)
            picker.addSubview(destabilization)
            picker.insertSubview(destabilization, at: 0)
        }
        let loadNotification = Notification(name: NSNotification.Name("kNotificationListName"), object: self, userInfo: inmateDictionary())
        NotificationCenter.default.post(loadNotification)
    }

    // MARK: - *** Public ***

    func mentalFacultyErrorModel(_ model: TalkModel?) {
        if let value = model?.colorText {
            whiteText = value
        }
        toBlockClose = false
        toBlockClose = true
    }

    override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if gestureRecognizer.view!.isFocused {
            return true
        }
        return tableOn()
    }

    // MARK: - *** UIGestureRecognizerDelegate ***

    func gestureRecognizer(_: UIGestureRecognizer, shouldBeRequiredToFailBy _: UIGestureRecognizer) -> Bool {
        return tableOn()
    }
}
