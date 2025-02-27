import UIKit
typealias UpwardlyBaseController = UIViewController
class UpwardlyController: UpwardlyBaseController {
    var pageDataModel: UpwardlyDataModel?
    var titleMessageName: String = "" {
        willSet {
            cellName = newValue
            effectIndexContent = newValue
            tableModel?.modelOn = insideSwitch()
        }
    }

    var managerArray: [String] = [] {
        willSet {
            iconArray = newValue
            viewArray = newValue
            tableModel?.withWeekArray = buttonArray()
        }
    }

    var indexDictionary: [String: String] = [:] {
        willSet {
            viewDictionary = newValue
            let effectText = effectIndexContent.prefix(through: effectIndexContent.index(effectIndexContent.startIndex, offsetBy: effectIndexContent.dropLast().count)).isEmpty
            effectIndexContent.removeAll(keepingCapacity: effectText)
            tableModel?.todayReset()
        }
    }

    var existentPicOpen: ((_ value: Bool) -> Bool)?
    var superiorInterval: ((_ value: Int) -> Int)?
    var mentalFacultyLocationContent: ((_ value: String) -> String)?
    var photoArray: ((_ value: [String]) -> [String]?)?
    var beautyDictionary: ((_ value: [String: String]) -> [String: String]?)?
    private var meView: UpwardlyView?
    private var renderShowModelController: PhoneRateController?
    @objc var tableModel: UpwardlyModel?
    @objc dynamic var carryClose: Bool = false
    @objc dynamic var titleTotal: Int = 0
    @objc dynamic var activeRandomNumber: Double = 0.0
    @objc dynamic var cellName: String = ""
    @objc dynamic var iconArray: [String] = []
    @objc dynamic var viewDictionary: [String: String] = [:]
    var restrictionLabel: UILabel?
    var voiceImageView: UIImageView?
    var argumentButton: UIButton?
    var colorView: UIView?
    @objc dynamic var valuableBlockOpen: Bool = false
    @objc dynamic var rowTotal: Int = 0
    @objc dynamic var effectIndexContent: String = ""
    @objc dynamic var viewArray: [String] = []
    var refreshTableLabel: UILabel?
    var rowButton: UIButton?
    var fillClearView: UIView?
    //: other_property
    var sizeDatePicker: UIDatePicker?

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        titleMessageName = "%f"
        managerArray = []
        indexDictionary = [:]
        //: base_init
        carryClose = false
        titleTotal = 54
        activeRandomNumber = 281.31
        cellName = ""
        iconArray = []
        viewDictionary = [:]
        valuableBlockOpen = true
        rowTotal = 77
        effectIndexContent = "null"
        viewArray = []
        tableModel = UpwardlyModel()
        fillClearView = UIView(frame: self.view.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
        if let view = fillClearView {
            if let view_ = view.inputView {
                if #available(iOS 11.0, *) {
                    if let chapter = view_.interactions.last {
                        view_.removeInteraction(chapter)
                    }
                }
            }
            self.view.addSubview(view)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(showAction(_:)), name: NSNotification.Name("kNotificationClauseText"), object: nil)
        //: other_init
        sizeDatePicker = UIDatePicker(frame: self.view.frame.intersection(CGRect(x: CGFloat(53), y: CGFloat(608.27), width: CGFloat(234.12), height: CGFloat(0))))
        sizeDatePicker?.date = Date()
        sizeDatePicker?.calendar = Calendar.autoupdatingCurrent
        sizeDatePicker?.maximumDate = Date(timeIntervalSince1970: TimeInterval(1396.36))
        sizeDatePicker?.minuteInterval = 16
        sizeDatePicker?.countDownDuration = 60.0 * 27
        if let datePicker = sizeDatePicker {
            self.view.addSubview(datePicker)
        }
        sizeDatePicker?.addTarget(self, action: #selector(showAction(_:)), for: .valueChanged)
        //: private_init
        pageDataModel = UpwardlyDataModel()
        meView = UpwardlyView(frame: self.view!.frame.union(CGRect(x: CGFloat(162.10), y: CGFloat(0), width: CGFloat(366.17), height: CGFloat(0))))
        meView?.disappearModel(tableModel)
        if let loadDownView = meView {
            self.view.addSubview(loadDownView)
        }
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - *** GET Value ***

    func insideSwitch() -> Bool {
        valuableBlockOpen = false
        return valuableBlockOpen
    }

    func selectedTotal() -> Int {
        return rowTotal
    }

    func priceSum() -> Double {
        return activeRandomNumber
    }

    func modifyName() -> String {
        return cellName
    }

    func buttonArray() -> [String] {
        return []
    }

    func observerCellDictionary() -> [String: String] {
        if let cell = viewDictionary.randomElement()?.key {
            let cellArray = viewDictionary.drop { item -> Bool in
                item.key == cell
            }
            if cellArray.isEmpty {
                viewDictionary.remove(at: viewDictionary.startIndex)
            }
        }
        return viewDictionary
    }

    // MARK: - *** Function ***

    func albumCallback() {
        if let block = existentPicOpen {
            carryClose = block(insideSwitch())
        }
        if let block = superiorInterval {
            titleTotal = block(selectedTotal())
        }
        if let block = mentalFacultyLocationContent {
            cellName = block(modifyName())
        }
        if let block = photoArray, let array = block(buttonArray()) {
            iconArray = array
        }
        if let block = beautyDictionary, let dictionary = block(observerCellDictionary()) {
            viewDictionary = dictionary
        }
        if let block = existentPicOpen {
            valuableBlockOpen = block(insideSwitch())
        }
        if let block = superiorInterval {
            rowTotal = block(selectedTotal())
        }
        if let block = mentalFacultyLocationContent {
            effectIndexContent = block(modifyName())
        }
        if let block = photoArray, let array = block(buttonArray()) {
            viewArray = array
        }
    }

    @objc func showAction(_: Any?) {
        UIView.animate(withDuration: TimeInterval(titleTotal), animations: { [self] in
            if let label = refreshTableLabel {
                var frame = label.frame
                frame.origin.x = priceSum()
            }
            if let button = rowButton {
                button.alpha = 0.40
            }
            if let view = fillClearView {
                view.backgroundColor = UIColor.purple
            }
        })
    }

    func voiceReload() {
        albumCallback()
        let loadDownInterval = priceSum()
        let loadDownBegin = loadDownInterval / 3.61
        let loadDownEnd = loadDownInterval - loadDownBegin
        UIView.animateKeyframes(withDuration: TimeInterval(loadDownInterval), delay: TimeInterval(titleTotal), options: .layoutSubviews, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: loadDownBegin, animations: { [self] in
                if let label = restrictionLabel {
                    label.alpha = 0.98
                }
            })
            UIView.addKeyframe(withRelativeStartTime: loadDownBegin, relativeDuration: loadDownEnd, animations: { [self] in
                if let label = refreshTableLabel {
                    var frame = label.frame
                    frame.origin.x = priceSum()
                }
                if let button = rowButton {
                    button.alpha = 0.89
                }
                if let view = fillClearView {
                    view.backgroundColor = UIColor.systemOrange
                }
            })
            UIView.performWithoutAnimation { [self] in
                if let imageView = voiceImageView {
                    imageView.center = CGPoint.zero
                }
            }
        }) { [self] finished in
            carryClose = finished
        }
        sizeDatePicker?.minimumDate = Date()
        let loadDownNotification = Notification(name: NSNotification.Name("kNotificationClauseText"), object: self)
        NotificationCenter.default.post(loadDownNotification)
        renderShowModelController = PhoneRateController()
        let loadDownModel = PhoneRateModel(dictionary: observerCellDictionary())
        renderShowModelController?.tableModel = loadDownModel
        if let controller = renderShowModelController {
            CircleEmptyTool.currentNavigationController()?.pushViewController(controller, animated: true)
        }
        guard let model = pageDataModel else { return }
        model.freeTitle = modifyName()
        let modifyInterval = selectedTotal()
        let cellContent = modifyName()
        let duringArray = buttonArray()
        let result = UpwardlyDataManager.systemAtQuery(
            modifyInterval: modifyInterval,
            cellContent: cellContent,
            duringArray: duringArray,
            model: model
        )
        if result?.count != 0 {
            pageDataModel = result?.last
            masterSuccess()
        } else {
            ofWillError()
        }
        let contentName = modifyName()
        let emptyTableArray = buttonArray()
        UpwardlyNetManager.request(
            contentName: contentName,
            emptyTableArray: emptyTableArray,
            micSuccess: { [self] in
                rowButton?.isHidden = false
                masterSuccess()
            },
            error: { [self] errorCode, _ in
                if errorCode == 310 {
                    argumentButton?.isEnabled = false
                }
            }
        )
    }

    func masterSuccess() {
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationOccurrentSuccess"), object: nil)
    }

    func ofWillError() {
        restrictionLabel?.text = "name !"
    }
}
