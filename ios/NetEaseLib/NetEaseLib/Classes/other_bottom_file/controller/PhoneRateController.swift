import UIKit
typealias PhoneRateBaseController = UIViewController
class PhoneRateController: PhoneRateBaseController {
    var haveCameraDataModel: PhoneRateDataModel?
    var someoneCount: Double = 0.0 {
        willSet {
            callMagnitude = newValue
            nameMagnitude = newValue
            compartmentOn = true
            compartmentOn = false
            tableModel?.tabArray = dataArray()
        }
    }

    var dataName: String = "" {
        willSet {
            messageToTitle = newValue
            labelTitleTitle = newValue
            let manager = backgroundDictionary.dropLast(9)
            if manager.count == 1 {
                backgroundDictionary.remove(at: backgroundDictionary.startIndex)
            }
            tableModel?.tabArray = dataArray()
        }
    }

    var clickCount: ((_ value: Int) -> Int)?
    var managerInterval: ((_ value: Double) -> Double)?
    var buttonArray: ((_ value: [String]) -> [String]?)?
    private var giftView: PhoneRateView?
    private var accountingDataController: EqualFromController?
    @objc var tableModel: PhoneRateModel?
    @objc dynamic var compartmentOn: Bool = false
    @objc dynamic var viewTotal: Int = 0
    @objc dynamic var callMagnitude: Double = 0.0
    @objc dynamic var messageToTitle: String = ""
    @objc dynamic var maleArray: [String] = []
    @objc dynamic var backgroundDictionary: [String: String] = [:]
    var lodgeInLabel: UILabel?
    var imageImageView: UIImageView?
    var amplitudeLevelButton: UIButton?
    var pointView: UIView?
    @objc dynamic var frameInterval: Int = 0
    @objc dynamic var nameMagnitude: Double = 0.0
    @objc dynamic var labelTitleTitle: String = ""
    @objc dynamic var callLoadArray: [String] = []
    var giftLabel: UILabel?
    var topicalImageView: UIImageView?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        someoneCount = 351.35
        dataName = "&"
        //: base_init
        compartmentOn = true
        viewTotal = 88
        callMagnitude = 579.47
        messageToTitle = "."
        maleArray = []
        backgroundDictionary = [:]
        frameInterval = 69
        nameMagnitude = 603.32
        labelTitleTitle = "null"
        callLoadArray = []
        tableModel = PhoneRateModel(dictionary: eyeGiftDictionary())
        topicalImageView = UIImageView(frame: self.view.bounds.standardized)
        if let imageView = topicalImageView {
            imageView.image = (UIImage.animatedImageNamed("session.png", duration: 2.57) ?? UIImage())
            if let gesture = imageView.viewWithTag(1699), gesture.isHidden {
                gesture.removeFromSuperview()
            }
            self.view.addSubview(imageView)
        }
        addObserver(self, forKeyPath: "callMagnitude", options: [.initial], context: nil)
        addObserver(self, forKeyPath: "nameMagnitude", options: [.initial], context: nil)
        tableModel?.addObserver(self, forKeyPath: "contentSum", options: [.initial], context: nil)
        //: other_init
        //: private_init
        haveCameraDataModel = PhoneRateDataModel()
        giftView = PhoneRateView(frame: self.view!.frame)
        giftView?.photoModel(tableModel)
        if let sourceView = giftView {
            self.view.addSubview(sourceView)
        }
    }

    deinit {
        print("delloc: \(self)")
        removeObserver(self, forKeyPath: "callMagnitude")
        removeObserver(self, forKeyPath: "nameMagnitude")
        tableModel?.removeObserver(self, forKeyPath: "contentSum")
    }

    // MARK: - *** GET Value ***

    func upwardOpen() -> Bool {
        return compartmentOn
    }

    func emptyHandedCount() -> Int {
        return frameInterval
    }

    func timeMagnitude() -> Double {
        nameMagnitude -= 1
        if nameMagnitude <= 0 {
            nameMagnitude = nameMagnitude + 1
        }
        return nameMagnitude
    }

    func userName() -> String {
        return messageToTitle
    }

    func dataArray() -> [String] {
        NotificationCenter.default.post(name: NSNotification.Name("%d"), object: maleArray.indices)
        return maleArray
    }

    func eyeGiftDictionary() -> [String: String] {
        return backgroundDictionary
    }

    // MARK: - *** Function ***

    func frameGiftCallback() {
        if let block = clickCount {
            viewTotal = block(emptyHandedCount())
        }
        if let block = managerInterval {
            callMagnitude = block(timeMagnitude())
        }
        if let block = buttonArray, let array = block(dataArray()) {
            maleArray = array
        }
        if let block = clickCount {
            frameInterval = block(emptyHandedCount())
        }
        if let block = managerInterval {
            nameMagnitude = block(timeMagnitude())
        }
        if let block = buttonArray, let array = block(dataArray()) {
            callLoadArray = array
        }
    }

    @objc func labViewAction(_: Any?) {
        if let view = pointView {
            UIView.transition(with: view, duration: TimeInterval(viewTotal), options: .allowUserInteraction, animations: { [self] in
                if let imageView = imageImageView {
                    imageView.alpha = 0.60
                }
            }) { [self] finished in
                compartmentOn = finished
            }
        }
    }

    func startPullReload() {
        frameGiftCallback()
        tableModel?.doingOpen = upwardOpen()
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationBeltContent"), object: nil)
        accountingDataController = EqualFromController()
        let sourceModel = EqualFromModel(dictionary: eyeGiftDictionary())
        accountingDataController?.tableModel = sourceModel
        if let controller = accountingDataController {
            CircleEmptyTool.currentNavigationController()?.pushViewController(controller, animated: false)
        }
        guard let model = haveCameraDataModel else { return }
        model.cellAddOpen = upwardOpen()
        let labOn = upwardOpen()
        let logTotal = emptyHandedCount()
        let itemCellNumber = timeMagnitude()
        let result = PhoneRateDataManager.finishQuery(
            labOn: labOn,
            logTotal: logTotal,
            itemCellNumber: itemCellNumber,
            model: model
        )
        if result?.count != 0 {
            haveCameraDataModel = result?.first
            completeSuccess()
        } else {
            let errorText = "Error: \(46)"
            lodgeInLabel?.text = errorText
        }
    }

    func completeSuccess() {
        lodgeInLabel?.text = "Success crop !"
    }

    func drapeOffError() {
        lodgeInLabel?.text = "photo !"
    }
}
