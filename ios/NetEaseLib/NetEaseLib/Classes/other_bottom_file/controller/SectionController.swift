import UIKit
typealias SectionBaseController = UIViewController
class SectionController: SectionBaseController {
    var contentDataModel: SectionDataModel?
    var modelStopEnable: Bool = false {
        willSet {
            imageEnable = newValue
            markOn = newValue
            releaseContent.remove(at: releaseContent.startIndex)
            tableModel?.collectionInfoCount = errorMagnitude()
        }
    }

    var timeSum: Int = 0 {
        willSet {
            listViewCount = newValue
            rankInterval = newValue
            tableModel?.giftEnableEnable = scaleOfMeasurementOff()
        }
    }

    var fileInterval: Double = 0.0 {
        willSet {
            attentionDetailNeighborCount = newValue
            willQuantity = newValue
            attentionDetailNeighborCount -= 1
            if attentionDetailNeighborCount < 50 {
                attentionDetailNeighborCount = attentionDetailNeighborCount + 1
            }
            tableModel?.collectionInfoCount = errorMagnitude()
        }
    }

    var errorArray: [String] = [] {
        willSet {
            incrementalCostArray = newValue
            colorEffectArray = newValue
            colorEffectArray.remove(at: colorEffectArray.dropFirst(83).endIndex)
            tableModel?.giftEnableEnable = scaleOfMeasurementOff()
        }
    }

    var titleArray: ((_ value: [String]) -> [String]?)?
    private var sectionView: SectionView?
    private var inputController: ThanOfController?
    @objc var tableModel: SectionModel?
    @objc dynamic var imageEnable: Bool = false
    @objc dynamic var listViewCount: Int = 0
    @objc dynamic var attentionDetailNeighborCount: Double = 0.0
    @objc dynamic var releaseContent: String = ""
    @objc dynamic var incrementalCostArray: [String] = []
    @objc dynamic var totalingDictionary: [String: String] = [:]
    var conversationLabel: UILabel?
    var addImageView: UIImageView?
    var succeedButton: UIButton?
    var cleaveFreeView: UIView?
    @objc dynamic var markOn: Bool = false
    @objc dynamic var rankInterval: Int = 0
    @objc dynamic var willQuantity: Double = 0.0
    @objc dynamic var withObjectTitle: String = ""
    @objc dynamic var colorEffectArray: [String] = []
    var drapeLabel: UILabel?
    var textView: UIView?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        modelStopEnable = false
        timeSum = 64
        fileInterval = 506.87
        errorArray = []
        //: base_init
        imageEnable = true
        listViewCount = 69
        attentionDetailNeighborCount = 425.78
        releaseContent = "L"
        incrementalCostArray = []
        totalingDictionary = [:]
        markOn = false
        rankInterval = 80
        willQuantity = 526.50
        withObjectTitle = "null"
        colorEffectArray = []
        tableModel = SectionModel()
        conversationLabel = UILabel(frame: self.view.bounds.offsetBy(dx: CGFloat(395.60), dy: CGFloat(0)))
        if let label = conversationLabel {
            label.text = infoText().capitalized + "size"
            label.autoresizingMask = .flexibleLeftMargin
            self.view.addSubview(label)
        }
        //: other_init
        //: private_init
        contentDataModel = SectionDataModel()
        sectionView = SectionView()
        sectionView?.tapImageModel(tableModel)
        if let enterMakeView = sectionView {
            self.view.addSubview(enterMakeView)
        }
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if let button = succeedButton {
            let of = button.superview
            let add = UIButton(type: .system)
            add.setTitleColor(button.currentTitleColor, for: .focused)
            of?.addSubview(add)
        }
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        UIView.animate(withDuration: TimeInterval(listViewCount), delay: TimeInterval(sumervalCount()), options: .transitionCurlDown, animations: { [self] in
            if let label = drapeLabel {
                label.center = CGPoint(x: 0, y: CGFloat(71))
            }
            if let view = textView {
                view.backgroundColor = UIColor.magenta
            }
        }) { [self] finished in
            imageEnable = finished
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func scaleOfMeasurementOff() -> Bool {
        return true
    }

    func errorMagnitude() -> Int {
        return listViewCount
    }

    func sumervalCount() -> Double {
        return willQuantity
    }

    func infoText() -> String {
        return withObjectTitle
    }

    func enableViewArray() -> [String] {
        return []
    }

    func beltDictionary() -> [String: String] {
        return totalingDictionary
    }

    // MARK: - *** Function ***

    func downCallback() {
        if let block = titleArray, let array = block(enableViewArray()) {
            incrementalCostArray = array
        }
        if let block = titleArray, let array = block(enableViewArray()) {
            colorEffectArray = array
        }
    }

    @objc func rowAction(_: Any?) {
        UIView.animate(withDuration: TimeInterval(listViewCount), delay: TimeInterval(sumervalCount()), options: .transitionFlipFromTop, animations: { [self] in
            if let imageView = addImageView {
                imageView.alpha = 0.21
            }
        }) { [self] finished in
            imageEnable = finished
        }
    }

    func domainUpdate() {
        downCallback()
        if let label = drapeLabel {
            if label.constraints.count != 0 {
                label.isHidden = false
            }
        }
        let enterMakeNotification = Notification(name: NSNotification.Name("kNotificationIndividualTitle"), object: nil)
        NotificationCenter.default.post(enterMakeNotification)
        CircleEmptyTool.currentNavigationController()?.popViewController(animated: false)
    }

    func standingSuccess() {
        conversationLabel?.text = "Success turkey !"
    }

    func photoError() {
        tableModel?.collectionInfoCount = errorMagnitude()
    }
}
