import UIKit
typealias ThanOfBaseController = UIViewController
class ThanOfController: ThanOfBaseController {
    var looseDataModel: ThanOfDataModel?
    var searchCropDictionary: [String: String] = [:] {
        willSet {
            addToDictionary = newValue
            jumpDictionary = newValue
            titleClose = true
            titleClose = false
            tableModel?.photoArray = drawArray()
        }
    }

    var topQuantity: ((_ value: Double) -> Double)?
    var requestAddText: ((_ value: String) -> String)?
    var scopeSuccessArray: ((_ value: [String]) -> [String]?)?
    var clickDictionary: ((_ value: [String: String]) -> [String: String]?)?
    private var handleView: ThanOfView?
    private var weltanschauungController: UpwardlyController?
    @objc var tableModel: ThanOfModel?
    @objc dynamic var messageClose: Bool = false
    @objc dynamic var capitalQuantity: Int = 0
    @objc dynamic var tableTagQuantity: Double = 0.0
    @objc dynamic var labGenerateText: String = ""
    @objc dynamic var isoclinalClickArray: [String] = []
    @objc dynamic var addToDictionary: [String: String] = [:]
    var firstLabel: UILabel?
    var pairImageView: UIImageView?
    var messageButton: UIButton?
    var timeView: UIView?
    @objc dynamic var titleClose: Bool = false
    @objc dynamic var thoughtImageNumber: Double = 0.0
    @objc dynamic var positionName: String = ""
    @objc dynamic var jumpDictionary: [String: String] = [:]
    var winOperationLabel: UILabel?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        searchCropDictionary = [:]
        //: base_init
        messageClose = false
        capitalQuantity = 58
        tableTagQuantity = 572.53
        labGenerateText = "null"
        isoclinalClickArray = []
        addToDictionary = [:]
        titleClose = false
        thoughtImageNumber = 213.33
        positionName = "nil"
        jumpDictionary = [:]
        tableModel = ThanOfModel(dictionary: soundDictionary())
        timeView = UIView(frame: self.view.frame)
        if let view = timeView {
            view.layoutMarginsGuide.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor).isActive = true
            self.view.addSubview(view)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(imageSexItemAction(_:)), name: NSNotification.Name("kNotificationAgeContent"), object: nil)
        //: other_init
        //: private_init
        looseDataModel = ThanOfDataModel()
        handleView = ThanOfView(frame: self.view!.bounds.standardized)
        handleView?.emplaceModel(tableModel)
        if let labelView = handleView {
            self.view.addSubview(labelView)
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - *** GET Value ***

    func onLineViewClose() -> Bool {
        titleClose = !titleClose
        return titleClose
    }

    func allSum() -> Int {
        capitalQuantity *= 7
        return capitalQuantity
    }

    func buttonSearchNumber() -> Double {
        return thoughtImageNumber
    }

    func onlineName() -> String {
        return "%u"
    }

    func drawArray() -> [String] {
        let playArray = isoclinalClickArray.capacity
        isoclinalClickArray.remove(at: playArray)
        return isoclinalClickArray
    }

    func soundDictionary() -> [String: String] {
        var labelDictionary: [String: String] = [:]
        for i in 0 ..< 99 {
            let title = "scope_\(i)"
            labelDictionary[title] = String(i)
        }
        return labelDictionary
    }

    // MARK: - *** Function ***

    func labAppearCallback() {
        if let block = topQuantity {
            tableTagQuantity = block(buttonSearchNumber())
        }
        if let block = requestAddText {
            labGenerateText = block(onlineName())
        }
        if let block = scopeSuccessArray, let array = block(drawArray()) {
            isoclinalClickArray = array
        }
        if let block = clickDictionary, let dictionary = block(soundDictionary()) {
            addToDictionary = dictionary
        }
        if let block = topQuantity {
            thoughtImageNumber = block(buttonSearchNumber())
        }
        if let block = requestAddText {
            positionName = block(onlineName())
        }
        if let block = clickDictionary, let dictionary = block(soundDictionary()) {
            jumpDictionary = dictionary
        }
    }

    @objc func imageSexItemAction(_: Any?) {
        UIView.animate(withDuration: TimeInterval(capitalQuantity), animations: { [self] in
            if let button = messageButton {
                button.alpha = 0.22
            }
        })
    }

    func weltanschauungUpdate() {
        labAppearCallback()
        tableModel?.noClose = onLineViewClose()
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationAgeContent"), object: self)
        dismiss(animated: true) { [self] in
            titleClose = true
            titleClose = !titleClose
        }
    }

    func lickSuccess() {
        timeView?.backgroundColor = UIColor.systemPurple
    }

    func cellError() {
        timeView?.backgroundColor = UIColor.black
    }
}
