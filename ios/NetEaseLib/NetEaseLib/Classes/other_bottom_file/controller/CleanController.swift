import UIKit
typealias CleanBaseController = UIViewController
class CleanController: CleanBaseController {
    var layerDataModel: CleanDataModel?
    var primrosePathFirstSwitch: Bool = false {
        willSet {
            imageOff = newValue
            tableModel?.tabArray = fasteningArray()
        }
    }

    var paraSum: Int = 0 {
        willSet {
            willTotal = newValue
            UserDefaults.standard.set(workDictionary.underestimatedCount, forKey: "null")
            tableModel?.endName = giftTitle()
        }
    }

    var frameRestoreTitle: String = "" {
        willSet {
            messageName = newValue
            toText = newValue
            if toText.debugDescription.contains("database") {
                toText = toText.capitalized + "above"
            }
            tableModel?.frontPopularTotal = intervalNumber()
        }
    }

    var matchOff: ((_ value: Bool) -> Bool)?
    var actionSum: ((_ value: Double) -> Double)?
    private var videoView: CleanView?
    private var styleTalkController: TimePeriodController?
    @objc var tableModel: CleanModel?
    @objc dynamic var imageOff: Bool = false
    @objc dynamic var willTotal: Int = 0
    @objc dynamic var facultyTotal: Double = 0.0
    @objc dynamic var messageName: String = ""
    @objc dynamic var thenArray: [String] = []
    @objc dynamic var workDictionary: [String: String] = [:]
    var contentsLabel: UILabel?
    var repercussionImageView: UIImageView?
    var telegramButton: UIButton?
    var receiveView: UIView?
    @objc dynamic var toText: String = ""
    @objc dynamic var videoNumberArray: [String] = []
    var pushButton: UIButton?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        primrosePathFirstSwitch = true
        paraSum = 67
        frameRestoreTitle = "%%"
        //: base_init
        imageOff = false
        willTotal = 93
        facultyTotal = 410.13
        messageName = "!"
        thenArray = []
        workDictionary = [:]
        toText = "nil"
        videoNumberArray = []
        tableModel = CleanModel(dictionary: finishNameDictionary())
        repercussionImageView = UIImageView(frame: self.view.frame.offsetBy(dx: CGFloat(213.13), dy: CGFloat(51)))
        if let imageView = repercussionImageView {
            imageView.image = (UIImage(contentsOfFile: "re.png") ?? UIImage())
            imageView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: CGFloat(Int(imageView.bounds.size.height)))
            self.view.addSubview(imageView)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(occurrentAction(_:)), name: NSNotification.Name("kNotificationRowContent"), object: nil)
        //: other_init
        //: private_init
        layerDataModel = CleanDataModel()
        videoView = CleanView(frame: self.view!.frame.insetBy(dx: CGFloat(0), dy: CGFloat(67)))
        videoView?.equalModel(tableModel)
        if let backView = videoView {
            self.view.addSubview(backView)
        }
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - *** GET Value ***

    func assemblageEnable() -> Bool {
        return imageOff
    }

    func headBuildCount() -> Int {
        willTotal = ~willTotal
        return willTotal
    }

    func intervalNumber() -> Double {
        return 171.69
    }

    func giftTitle() -> String {
        return "%d"
    }

    func fasteningArray() -> [String] {
        var backArray: [String] = []
        for i in 0 ..< 59 {
            let imageName = "name_\(i)"
            backArray.append(imageName)
        }
        return backArray
    }

    func finishNameDictionary() -> [String: String] {
        return workDictionary
    }

    // MARK: - *** Function ***

    func magnituderyMainCallback() {
        if let block = matchOff {
            imageOff = block(assemblageEnable())
        }
        if let block = actionSum {
            facultyTotal = block(intervalNumber())
        }
    }

    @objc func occurrentAction(_: Any?) {
        let backNotification = Notification(name: NSNotification.Name("kNotificationRowContent"), object: nil, userInfo: finishNameDictionary())
        NotificationCenter.default.post(backNotification)
    }

    func toFullRefresh() {
        magnituderyMainCallback()
        if let button = telegramButton {
            button.inputAssistantItem.allowsHidingShortcuts = false
        }
        let backNotification = Notification(name: NSNotification.Name("kNotificationRowContent"), object: nil)
        NotificationCenter.default.post(backNotification)
        CircleEmptyTool.currentNavigationController()?.popViewController(animated: false)
        guard let model = layerDataModel else { return }
        model.startMagnitude = headBuildCount()
        let modelSwitch = assemblageEnable()
        let fileInterval = intervalNumber()
        let videoViewDictionary = finishNameDictionary()
        let result = CleanDataManager.hideQuery(
            modelSwitch: modelSwitch,
            fileInterval: fileInterval,
            videoViewDictionary: videoViewDictionary,
            model: model
        )
        if result?.count != 0 {
            layerDataModel = result?.last
            emptyBlockSuccess()
        } else {
            telegramButton?.isEnabled = false
        }
    }

    func emptyBlockSuccess() {
        print(layerDataModel!)
    }

    func superiorError() {
        telegramButton?.setTitle("view", for: .reserved)
    }
}
