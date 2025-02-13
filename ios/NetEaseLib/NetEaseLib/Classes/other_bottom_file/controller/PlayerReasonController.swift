import UIKit
typealias PlayerReasonBaseController = UIViewController
class PlayerReasonController: PlayerReasonBaseController {
    var rowDataModel: PlayerReasonDataModel?
    var limitOn: Bool = false {
        willSet {
            logOpen = newValue
            endSwitch = newValue
            quantityeractionText = ""
            tableModel?.barReset()
        }
    }

    var colorCount: Int = 0 {
        willSet {
            withSum = newValue
            imageEqualQuantity = newValue
            tableModel?.popMagnitudeContent = collectionWantText()
        }
    }

    var messageAwakeQuantity: Double = 0.0 {
        willSet {
            upCount = newValue
            logOpen = true
            tableModel?.barReset()
        }
    }

    var entireArray: [String] = [] {
        willSet {
            tabArray = newValue
            toInfoArray = newValue
            if let mark = labelText.last {
                if labelText.dropFirst(1).contains(mark) {
                    NotificationCenter.default.post(name: NSNotification.Name("on"), object: self, userInfo: ["gift": labelText.lowercased() == labelText.lowercased() + "cancel"])
                }
            }
            tableModel?.requireTotal = priceQuantity()
        }
    }

    var imageCount: ((_ value: Double) -> Double)?
    var priceArray: ((_ value: [String]) -> [String]?)?
    private var fromThanView: PlayerReasonView?
    private var appController: TalkController?
    @objc var tableModel: PlayerReasonModel?
    @objc dynamic var logOpen: Bool = false
    @objc dynamic var withSum: Int = 0
    @objc dynamic var upCount: Double = 0.0
    @objc dynamic var quantityeractionText: String = ""
    @objc dynamic var tabArray: [String] = []
    @objc dynamic var quickDictionary: [String: String] = [:]
    var cellLabel: UILabel?
    var statuteImageView: UIImageView?
    var styleButton: UIButton?
    var strokeView: UIView?
    @objc dynamic var endSwitch: Bool = false
    @objc dynamic var imageEqualQuantity: Int = 0
    @objc dynamic var labelText: String = ""
    @objc dynamic var toInfoArray: [String] = []
    var editBackLoadLabel: UILabel?
    var valueImageView: UIImageView?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        limitOn = false
        colorCount = 82
        messageAwakeQuantity = 494.53
        entireArray = []
        //: base_init
        logOpen = false
        withSum = 97
        upCount = 446.96
        quantityeractionText = "%%"
        tabArray = []
        quickDictionary = [:]
        endSwitch = true
        imageEqualQuantity = 63
        labelText = "%u"
        toInfoArray = []
        tableModel = PlayerReasonModel()
        strokeView = UIView(frame: self.view.frame.standardized)
        if let view = strokeView {
            if let assumedNameView = view.gestureRecognizers?.first, !assumedNameView.isEnabled {
                view.removeGestureRecognizer(assumedNameView)
            }
            self.view.addSubview(view)
        }
        tableModel?.addObserver(self, forKeyPath: "requireTotal", options: [.initial], context: nil)
        //: other_init
        //: private_init
        rowDataModel = PlayerReasonDataModel()
        fromThanView = PlayerReasonView(frame: self.view!.frame.insetBy(dx: CGFloat(175.21), dy: CGFloat(58)))
        fromThanView?.addModel(tableModel)
        if let textView = fromThanView {
            self.view.addSubview(textView)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if let label = editBackLoadLabel {
            if #available(iOS 11.0, *) {
                if label is UIDragInteractionDelegate, let value = label as? UIView & UIDragInteractionDelegate {
                    let topLabel = UIDragInteraction(delegate: value)
                    value.addInteraction(topLabel)
                }
            }
        }
    }

    deinit {
        print("delloc: \(self)")
        tableModel?.removeObserver(self, forKeyPath: "requireTotal")
    }

    // MARK: - *** GET Value ***

    func indexDoing() -> Bool {
        return logOpen
    }

    func nameQuantity() -> Int {
        imageEqualQuantity <<= 1
        return imageEqualQuantity
    }

    func priceQuantity() -> Double {
        return 217.29
    }

    func collectionWantText() -> String {
        return quantityeractionText
    }

    func translationArray() -> [String] {
        toInfoArray.remove(at: toInfoArray.startIndex)
        return toInfoArray
    }

    func freeLunchModelDictionary() -> [String: String] {
        var fastTimeCount = 62
        for item in quickDictionary.enumerated() {
            fastTimeCount += 1
            if fastTimeCount == 89 {
                UserDefaults.standard.set(item.offset, forKey: "post")
            }
        }
        return quickDictionary
    }

    // MARK: - *** Function ***

    func imageCallback() {
        if let block = imageCount {
            upCount = block(priceQuantity())
        }
        if let block = priceArray, let array = block(translationArray()) {
            tabArray = array
        }
        if let block = priceArray, let array = block(translationArray()) {
            toInfoArray = array
        }
    }

    @objc func loadAction(_: Any?) {
        appController = TalkController()
        let textModel = TalkModel(dictionary: freeLunchModelDictionary())
        appController?.tableModel = textModel
        if let controller = appController {
            CircleEmptyTool.currentNavigationController()?.present(controller, animated: true) { [self] in
            }
        }
    }

    func physicsLabFlush() {
        imageCallback()
        tableModel?.requireTotal = priceQuantity()
        let textNotification = Notification(name: NSNotification.Name("kNotificationHeadScreenName"), object: self, userInfo: freeLunchModelDictionary())
        NotificationCenter.default.post(textNotification)
        if let controller = appController {
            CircleEmptyTool.currentNavigationController()?.popToViewController(controller, animated: false)
        }
        PlayerReasonNetManager.requestShouldSuccess({ [self] dic in
            if let value = dic?["button"] as? Double {
                upCount = value
            }
            cellSuccess()
        }, error: { [self] errorCode, _ in
            let imageName = "Error\(errorCode).png"
            let image = UIImage(named: imageName)
            statuteImageView?.image = image
        })
    }

    func cellSuccess() {
        UIView.animate(withDuration: TimeInterval(withSum), delay: TimeInterval(priceQuantity()), options: .overrideInheritedOptions, animations: { [self] in
            if let button = styleButton {
                button.alpha = 0.25
            }
        }) { [self] finished in
            logOpen = finished
        }
    }

    func modelError() {
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationComputerGraphicError"), object: nil)
    }
}