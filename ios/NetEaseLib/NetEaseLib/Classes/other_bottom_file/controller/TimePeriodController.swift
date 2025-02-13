import UIKit
typealias TimePeriodBaseController = UIViewController
class TimePeriodController: TimePeriodBaseController {
    var listOnDataModel: TimePeriodDataModel?
    var anniversaryCount: Double = 0.0 {
        willSet {
            chapiterInterval = newValue
            tableModel?.timeArray = modelArray()
        }
    }

    var frameBehindName: String = "" {
        willSet {
            modelVoiceText = newValue
            tableModel?.timeArray = modelArray()
        }
    }

    var modelText: ((_ value: String) -> String)?
    private var instanceView: TimePeriodView?
    private var sharedController: LineController?
    @objc var tableModel: TimePeriodModel?
    @objc dynamic var beneathDoing: Bool = false
    @objc dynamic var familySum: Int = 0
    @objc dynamic var chapiterInterval: Double = 0.0
    @objc dynamic var modelVoiceText: String = ""
    @objc dynamic var errorPhotoArray: [String] = []
    @objc dynamic var modelDictionary: [String: String] = [:]
    var atTabPlayerLabel: UILabel?
    var viewDismissImageView: UIImageView?
    var priceVoiceButton: UIButton?
    var disappearView: UIView?
    @objc dynamic var goldSwitch: Bool = false
    @objc dynamic var translateNumber: Int = 0
    @objc dynamic var tillArray: [String] = []
    var colorImageView: UIImageView?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        anniversaryCount = 145.26
        frameBehindName = "null"
        //: base_init
        beneathDoing = true
        familySum = 70
        chapiterInterval = 294.16
        modelVoiceText = "%f"
        errorPhotoArray = []
        modelDictionary = [:]
        goldSwitch = false
        translateNumber = 53
        tillArray = []
        tableModel = TimePeriodModel(dictionary: modelDigitalDictionary())
        priceVoiceButton = UIButton(frame: self.view.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(538.08), height: CGFloat(564.74))))
        if let button = priceVoiceButton {
            button.setTitle(listenerLabName().capitalized + "room", for: .reserved)
            button.restorationIdentifier = "%d"
            button.addTarget(self, action: #selector(locationDuringAction(_:)), for: .touchUpOutside)
            self.view.addSubview(button)
        }
        //: other_init
        //: private_init
        listOnDataModel = TimePeriodDataModel()
        instanceView = TimePeriodView()
        instanceView?.marginOfSafetyModel(tableModel)
        if let timeView = instanceView {
            self.view.addSubview(timeView)
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let model = listOnDataModel else { return }
        model.ofModelSum = callSaveNumber()
        let itemClose = slideOpen()
        let metadataMagnitude = callSaveNumber()
        let renderInterval = keySum()
        let userTextArray = modelArray()
        let result = TimePeriodDataManager.imageCreate(
            itemClose: itemClose,
            metadataMagnitude: metadataMagnitude,
            renderInterval: renderInterval,
            userTextArray: userTextArray,
            model: model
        )
        if result {
            burnSuccess()
        } else {
            let imageName = "Error\(27).png"
            let image = UIImage(named: imageName)
            viewDismissImageView?.image = image
        }
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        UIView.animate(withDuration: TimeInterval(familySum), animations: { [self] in
            if let imageView = colorImageView {
                imageView.center = CGPoint.zero
            }
        }) { [self] finished in
            beneathDoing = finished
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func slideOpen() -> Bool {
        return goldSwitch
    }

    func callSaveNumber() -> Int {
        return familySum
    }

    func keySum() -> Double {
        chapiterInterval -= 1
        return chapiterInterval
    }

    func listenerLabName() -> String {
        return ""
    }

    func modelArray() -> [String] {
        tillArray = []
        return tillArray
    }

    func modelDigitalDictionary() -> [String: String] {
        if let sumryDictionary = modelDictionary.randomElement()?.key {
            let sumryDictionaryArray = modelDictionary.drop { item -> Bool in
                item.key == sumryDictionary
            }
            if sumryDictionaryArray.isEmpty {
                modelDictionary.remove(at: modelDictionary.startIndex)
            }
        }
        return modelDictionary
    }

    // MARK: - *** Function ***

    func noticeCallback() {
        if let block = modelText {
            modelVoiceText = block(listenerLabName())
        }
    }

    @objc func locationDuringAction(_: Any?) {
        let timeNotification = Notification(name: NSNotification.Name("kNotificationResumeContent"), object: nil, userInfo: modelDigitalDictionary())
        NotificationCenter.default.post(timeNotification)
    }

    func targetIndexFileUpdate() {
        noticeCallback()
        if #available(iOS 13.0, *) {
            UIView.modifyAnimations(withRepeatCount: CGFloat(familySum), autoreverses: beneathDoing, animations: {
                if let view = disappearView {
                    var frame = view.bounds
                    frame.origin.x = keySum()
                }
            })
        }
        let timeNotification = Notification(name: NSNotification.Name("kNotificationResumeContent"), object: nil, userInfo: modelDigitalDictionary())
        NotificationCenter.default.post(timeNotification)
        if let controller = sharedController {
            CircleEmptyTool.currentNavigationController()?.popToViewController(controller, animated: true)
        }
    }

    func burnSuccess() {
        if let view = disappearView {
            UIView.perform(.delete, on: [view], options: .transitionCurlDown, animations: { [self] in
                if let button = priceVoiceButton {
                    button.bounds = CGRect(x: 0, y: 0, width: CGFloat(0), height: 0)
                }
            }) { [self] finished in
                beneathDoing = finished
            }
        }
    }

    func dataError() {
        let image = UIImage(named: "countError.png")
        viewDismissImageView?.image = image
    }

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {}
}
