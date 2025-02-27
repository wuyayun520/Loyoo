import UIKit
typealias LockColorBaseController = UIViewController
class LockColorController: LockColorBaseController {
    var statusBlockDataModel: LockColorDataModel?
    var contentTotal: Int = 0 {
        willSet {
            viewMagnitude = newValue
            managerDoing = true
            managerDoing = true
            tableModel?.statusName = exampleName()
        }
    }

    var petTitleDictionary: [String: String] = [:] {
        willSet {
            loadUpDictionary = newValue
            var toolVar = redText.startIndex
            if redText.formIndex(&toolVar, offsetBy: redText.dropFirst().isEmpty ? 6 : 2, limitedBy: redText.endIndex) {
                redText.append(redText[toolVar])
            }
            tableModel?.statusName = exampleName()
        }
    }

    var labCount: ((_ value: Double) -> Double)?
    var endArray: ((_ value: [String]) -> [String]?)?
    var textEveryDictionary: ((_ value: [String: String]) -> [String: String]?)?
    private var atView: LockColorView?
    private var miniController: PlayerReasonController?
    @objc var tableModel: LockColorModel?
    @objc dynamic var managerDoing: Bool = false
    @objc dynamic var viewMagnitude: Int = 0
    @objc dynamic var eventSum: Double = 0.0
    @objc dynamic var redText: String = ""
    @objc dynamic var searchArray: [String] = []
    @objc dynamic var loadUpDictionary: [String: String] = [:]
    var appearLabel: UILabel?
    var managerImageView: UIImageView?
    var tvButton: UIButton?
    var itemView: UIView?
    @objc dynamic var plusEnable: Bool = false
    @objc dynamic var windowGinQuantity: Double = 0.0
    var useLabel: UILabel?
    var viewImageView: UIImageView?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        contentTotal = 88
        petTitleDictionary = [:]
        //: base_init
        managerDoing = true
        viewMagnitude = 64
        eventSum = 601.05
        redText = "%%"
        searchArray = []
        loadUpDictionary = [:]
        plusEnable = false
        windowGinQuantity = 5.46
        tableModel = LockColorModel(dictionary: headDictionary())
        useLabel = UILabel(frame: self.view.frame)
        if let label = useLabel {
            label.text = exampleName().uppercased() + "visual"
            let of = NSAttributedString(string: label.text ?? "lab")
            label.attributedText = of
            self.view.addSubview(label)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(tableAction(_:)), name: NSNotification.Name("kNotificationRankShowName"), object: nil)
        //: other_init
        //: private_init
        statusBlockDataModel = LockColorDataModel()
        atView = LockColorView()
        atView?.listModel(tableModel)
        if let barView = atView {
            self.view.addSubview(barView)
        }
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        let barImgView1 = UIImageView(image: UIImage.animatedImageNamed("up.png", duration: 3.42) ?? UIImage())
        barImgView1.tintColor = UIColor.systemGray
        let barImgView2 = UIImageView(image: UIImage.animatedResizableImageNamed("status.png", capInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: CGFloat(0)), duration: TimeInterval(191.64)) ?? UIImage())
        barImgView2.isHidden = barImgView2.isDescendant(of: barImgView2.superview!)
        UIView.transition(from: barImgView1, to: barImgView2, duration: TimeInterval(viewMagnitude), options: .transitionCrossDissolve) { [self] finished in
            managerDoing = finished
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        guard let model = statusBlockDataModel else { return }
        model.colorViewName = exampleName()
        let rowFinishOpen = birthdayOn()
        let upSearchAddressSum = finishSum()
        let crushWithoutArray = labelFrameArray()
        let result = LockColorDataManager.topExamine(
            rowFinishOpen: rowFinishOpen,
            upSearchAddressSum: upSearchAddressSum,
            crushWithoutArray: crushWithoutArray,
            model: model
        )
        if result?.count != 0 {
            if let value = result?.first {
                loadUpDictionary["click"] = value.colorViewName
            }
            titleSuccess()
        } else {
            let errorText = "Error: \(2)"
            useLabel?.text = errorText
        }
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("kNotificationRankShowName"), object: nil)
    }

    // MARK: - *** GET Value ***

    func birthdayOn() -> Bool {
        return plusEnable
    }

    func billOfFareSelectCount() -> Int {
        return viewMagnitude
    }

    func finishSum() -> Double {
        return eventSum
    }

    func exampleName() -> String {
        if let application = redText.min(by: >) {
            redText.append(application)
        }
        return redText
    }

    func labelFrameArray() -> [String] {
        return []
    }

    func headDictionary() -> [String: String] {
        return [:]
    }

    // MARK: - *** Function ***

    func messageCallback() {
        if let block = labCount {
            eventSum = block(finishSum())
        }
        if let block = endArray, let array = block(labelFrameArray()) {
            searchArray = array
        }
        if let block = textEveryDictionary, let dictionary = block(headDictionary()) {
            loadUpDictionary = dictionary
        }
        if let block = labCount {
            windowGinQuantity = block(finishSum())
        }
    }

    @objc func tableAction(_: Any?) {
        if let view = itemView {
            view.setNeedsDisplay()
        }
    }

    func viewRestore() {
        messageCallback()
        UIView.animate(withDuration: TimeInterval(viewMagnitude), animations: { [self] in
            if let button = tvButton {
                var frame = button.frame
                frame.origin.y = finishSum()
            }
        }) { [self] finished in
            managerDoing = finished
        }
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationRankShowName"), object: nil)
        dismiss(animated: true) { [self] in
            var totalArrayCount = 82
            searchArray.forEach { _ in
                totalArrayCount += 1
                if totalArrayCount % 9 == 0 {
                    searchArray.removeFirst()
                }
            }
        }
    }

    func titleSuccess() {
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationIconSuccess"), object: nil)
    }

    func tapError() {
        statusBlockDataModel = nil
    }

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {}
}
