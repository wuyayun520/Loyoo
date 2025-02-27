import UIKit
typealias RecordBaseController = UIViewController
class RecordController: RecordBaseController {
    var obtrudeDataModel: RecordDataModel?
    var announcementSwitch: Bool = false {
        willSet {
            moveEnable = newValue
            feeOn = newValue
            feeOn = false
            feeOn = !feeOn
            tableModel?.picArray = wantArray()
        }
    }

    var tableEventInterval: Int = 0 {
        willSet {
            cutSaveMagnitude = newValue
            signMagnitude = 0
            tableModel?.toeholdReset()
        }
    }

    var makeNumber: Double = 0.0 {
        willSet {
            signMagnitude = newValue
            tableModel?.picArray = wantArray()
        }
    }

    var indexArray: [String] = [] {
        willSet {
            pageArray = newValue
            if distributionListTitle > distributionListTitle.lowercased() + "tap" {
                print(distributionListTitle)
            }
            tableModel?.searchedNumber = withBlockTotal()
        }
    }

    var backDictionary: [String: String] = [:] {
        willSet {
            cellDictionary = newValue
            feeOn = false
            feeOn = false
            tableModel?.searchedNumber = withBlockTotal()
        }
    }

    private var impressionView: RecordView?
    private var oldController: SectionController?
    @objc var tableModel: RecordModel?
    @objc dynamic var moveEnable: Bool = false
    @objc dynamic var cutSaveMagnitude: Int = 0
    @objc dynamic var signMagnitude: Double = 0.0
    @objc dynamic var distributionListTitle: String = ""
    @objc dynamic var pageArray: [String] = []
    @objc dynamic var cellDictionary: [String: String] = [:]
    var tableLabel: UILabel?
    var textImageView: UIImageView?
    var matronymicButton: UIButton?
    var cohabitView: UIView?
    @objc dynamic var feeOn: Bool = false
    var emptyLabel: UILabel?
    var backgroundTheoryImageView: UIImageView?
    //: other_property
    var findKeyValueObservation: NSKeyValueObservation?

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        announcementSwitch = false
        tableEventInterval = 59
        makeNumber = 506.91
        indexArray = []
        backDictionary = [:]
        //: base_init
        moveEnable = true
        cutSaveMagnitude = 98
        signMagnitude = 273.71
        distributionListTitle = "%u"
        pageArray = []
        cellDictionary = [:]
        feeOn = true
        tableModel = RecordModel(dictionary: movementDictionary())
        backgroundTheoryImageView = UIImageView(frame: self.view.frame.union(CGRect(x: CGFloat(489.64), y: CGFloat(67), width: CGFloat(52), height: CGFloat(0))))
        if let imageView = backgroundTheoryImageView {
            imageView.image = (UIImage(contentsOfFile: "key") ?? UIImage())
            let reply = imageView.convert(imageView.bounds.intersection(CGRect(x: CGFloat(imageView.isFocused ? 2 : 1), y: CGFloat(Double(imageView.center.y)), width: CGFloat(Double(imageView.frame.size.width)), height: CGFloat(0))), to: imageView.superview)
            imageView.frame = reply
            self.view.addSubview(imageView)
        }
        //: other_init
        //: private_init
        obtrudeDataModel = RecordDataModel()
        impressionView = RecordView(frame: self.view!.frame.intersection(CGRect(x: CGFloat(350.18), y: CGFloat(185.26), width: CGFloat(0), height: CGFloat(91))))
        impressionView?.playerStopModel(tableModel)
        if let betweenView = impressionView {
            self.view.addSubview(betweenView)
        }
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        if #available(iOS 13.0, *) {
            UIView.modifyAnimations(withRepeatCount: CGFloat(cutSaveMagnitude), autoreverses: moveEnable, animations: {
                if let view = cohabitView {
                    view.transform = CGAffineTransform(a: 0, b: 0, c: 0, d: 0, tx: 0, ty: 0)
                }
            })
        }
    }

    deinit {
        print("delloc: \(self)")
        findKeyValueObservation = nil
    }

    // MARK: - *** GET Value ***

    func changeOn() -> Bool {
        return true
    }

    func withBlockTotal() -> Int {
        return cutSaveMagnitude
    }

    func headSum() -> Double {
        return 212.82
    }

    func halfStaffText() -> String {
        return distributionListTitle
    }

    func wantArray() -> [String] {
        pageArray = pageArray.compactMap { $0 }
        return pageArray
    }

    func movementDictionary() -> [String: String] {
        return cellDictionary
    }

    // MARK: - *** Function ***

    func coverTextCallback() {}

    @objc func yellowAction(_: Any?) {
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationHeadText"), object: self)
    }

    func progressFlush() {
        coverTextCallback()
        tableModel?.toeholdReset()
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationHeadText"), object: nil)
        CircleEmptyTool.currentNavigationController()?.popViewController(animated: true)
        guard let model = obtrudeDataModel else { return }
        model.mediaContent = halfStaffText()
        let infoMagnitude = withBlockTotal()
        let countContent = halfStaffText()
        let result = RecordDataManager.giftCheck(
            infoMagnitude: infoMagnitude,
            countContent: countContent,
            model: model
        )
        if result?.count != 0 {
            if let result = result {
                pageArray = result.map { $0.atName }
            }
            tabContentSuccess()
        } else {
            matronymicButton?.isEnabled = false
        }
    }

    func tabContentSuccess() {
        let image = UIImage(named: "loadSuccess.png")
        backgroundTheoryImageView?.image = image
    }

    func viewError() {
        let image = UIImage(named: "availableError.png")
        textImageView?.image = image
    }
}
