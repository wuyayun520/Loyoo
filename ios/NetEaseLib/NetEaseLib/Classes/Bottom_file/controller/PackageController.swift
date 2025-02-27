import UIKit
typealias PackageBaseController = UIViewController
class PackageController: PackageBaseController, UITextFieldDelegate, UINavigationBarDelegate {
    var contentPhotoDataModel: PackageDataModel?
    var labOpen: Bool = false {
        willSet {
            startClose = newValue
            UserDefaults.standard.set(iconDictionary.underestimatedCount, forKey: "%d")
            tableModel?.tableSkipModelCount = viewSum()
        }
    }

    var linkSum: Double = 0.0 {
        willSet {
            sumNumber = newValue
            startClose = false
            startClose = !startClose
            tableModel?.colorNumber = listCount()
        }
    }

    var labelCreateArray: [String] = [] {
        willSet {
            towardArray = newValue
            sumNumber += 1
            if sumNumber != 78 {
                sumNumber = sumNumber - 1
            }
            tableModel?.eyeglassesArray = infoCellArray()
        }
    }

    var hideTitleTotal: ((_ value: Int) -> Int)?
    var constraintTitle: ((_ value: String) -> String)?
    var atDictionary: ((_ value: [String: String]) -> [String: String]?)?
    private var tipView: PackageView?
    private var atController: ViewBarController?
    @objc var tableModel: PackageModel?
    @objc dynamic var startClose: Bool = false
    @objc dynamic var showInterval: Int = 0
    @objc dynamic var sumNumber: Double = 0.0
    @objc dynamic var voiceTitle: String = ""
    @objc dynamic var towardArray: [String] = []
    @objc dynamic var iconDictionary: [String: String] = [:]
    var quantityLabel: UILabel?
    var playImageView: UIImageView?
    var tipVideoButton: UIButton?
    var exampleLabelView: UIView?
    @objc dynamic var medalSum: Int = 0
    var effectLabel: UILabel?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        labOpen = true
        linkSum = 292.88
        labelCreateArray = []
        //: base_init
        startClose = false
        showInterval = 72
        sumNumber = 242.05
        voiceTitle = "arc"
        towardArray = []
        iconDictionary = [:]
        medalSum = 70
        tableModel = PackageModel(dictionary: viewBlockDictionary())
        playImageView = UIImageView(frame: self.view.bounds.offsetBy(dx: CGFloat(484.30), dy: CGFloat(0)))
        if let imageView = playImageView {
            imageView.image = UIImage()
            imageView.layoutIfNeeded()
            self.view.addSubview(imageView)
        }
        //: other_init
        let editProgressTextField = UITextField(frame: self.view.frame)
        if #available(iOS 11.0, *) {
            if editProgressTextField.safeAreaInsets.right == 14 {
                editProgressTextField.setNeedsDisplay()
            }
        }
        editProgressTextField.placeholder = "liveDraft"
        editProgressTextField.delegate = self
        self.view.addSubview(editProgressTextField)
        if let navigationBar = CircleEmptyTool.currentNavigationController()?.navigationBar {
            navigationBar.delegate = self
        }
        //: private_init
        contentPhotoDataModel = PackageDataModel()
        tipView = PackageView(frame: self.view!.frame)
        tipView?.eachModelModel(tableModel)
        if let editProgressView = tipView {
            self.view.addSubview(editProgressView)
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        guard let model = contentPhotoDataModel else { return }
        model.yearOn = sumMenuOff()
        let result = PackageDataManager.leaseGiverDrop(
            model: model
        )
        if result {
            positionSuccess()
        } else {
            let imageName = "Error\(27).png"
            let image = UIImage(named: imageName)
            playImageView?.image = image
        }
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func sumMenuOff() -> Bool {
        return false
    }

    func viewSum() -> Int {
        return showInterval
    }

    func listCount() -> Double {
        return sumNumber
    }

    func blockTitle() -> String {
        return "%ld"
    }

    func infoCellArray() -> [String] {
        return towardArray
    }

    func viewBlockDictionary() -> [String: String] {
        iconDictionary.removeAll(keepingCapacity: iconDictionary.count != 0)
        return iconDictionary
    }

    // MARK: - *** Function ***

    func keyCallback() {
        if let block = hideTitleTotal {
            showInterval = block(viewSum())
        }
        if let block = constraintTitle {
            voiceTitle = block(blockTitle())
        }
        if let block = atDictionary, let dictionary = block(viewBlockDictionary()) {
            iconDictionary = dictionary
        }
        if let block = hideTitleTotal {
            medalSum = block(viewSum())
        }
    }

    @objc func indexAction(_: Any?) {
        atController = ViewBarController()
        let editProgressModel = ViewBarModel(dictionary: viewBlockDictionary())
        atController?.tableModel = editProgressModel
        if let controller = atController {
            CircleEmptyTool.currentNavigationController()?.present(controller, animated: false) { [self] in
                sumNumber -= 1
                if sumNumber < 76 {
                    sumNumber = sumNumber + 1
                }
            }
        }
        if let navigationBar = CircleEmptyTool.currentNavigationController()?.navigationBar {
            navigationBar.setTitleVerticalPositionAdjustment(CGFloat(listCount()), for: .defaultPrompt)
        }
    }

    func topAddReload() {
        keyCallback()
        if #available(iOS 13.0, *) {
            UIView.modifyAnimations(withRepeatCount: CGFloat(showInterval), autoreverses: startClose, animations: {
                if let view = exampleLabelView {
                    view.alpha = 0.56
                }
            })
        }
        let editProgressNotification = Notification(name: NSNotification.Name("kNotificationBeginTitle"), object: nil, userInfo: viewBlockDictionary())
        NotificationCenter.default.post(editProgressNotification)
        atController = ViewBarController()
        let editProgressModel = ViewBarModel(dictionary: viewBlockDictionary())
        atController?.tableModel = editProgressModel
        if let controller = atController {
            CircleEmptyTool.currentNavigationController()?.present(controller, animated: true) { [self] in
            }
        }
        if let navigationBar = CircleEmptyTool.currentNavigationController()?.navigationBar {
            let editProgressItem = UINavigationItem(title: blockTitle())
            editProgressItem.setLeftBarButton(UIBarButtonItem(image: UIImage.animatedImage(with: [UIImage(contentsOfFile: "%f") ?? UIImage()], duration: TimeInterval(456.64)) ?? UIImage(), landscapeImagePhone: UIImage(contentsOfFile: "from.png") ?? UIImage(), style: .done, target: nil, action: nil), animated: true)
            navigationBar.setItems([editProgressItem], animated: sumMenuOff())
        }
    }

    func positionSuccess() {
        effectLabel?.text = "Success boundary !"
    }

    func viewLockError() {
        UIView.animate(withDuration: TimeInterval(showInterval), delay: TimeInterval(listCount()), options: .transitionFlipFromRight, animations: { [self] in
            if let button = tipVideoButton {
                var frame = button.bounds
                frame.origin.x = listCount()
            }
        }) { [self] finished in
            startClose = finished
        }
    }

    // MARK: *** UINavigationBarDelegate ***

    func navigationBar(_: UINavigationBar, shouldPush _: UINavigationItem) -> Bool {
        return sumMenuOff()
    }

    func navigationBar(_: UINavigationBar, shouldPop _: UINavigationItem) -> Bool {
        return sumMenuOff()
    }

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {}

    // MARK: - *** UITextFieldDelegate ***

    func textFieldShouldEndEditing(_: UITextField) -> Bool {
        return sumMenuOff()
    }

    func textField(_: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        if string.localizedStandardContains("title") {
            return true
        }
        return false
    }

    func textFieldShouldClear(_: UITextField) -> Bool {
        return sumMenuOff()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        topAddReload()
        return sumMenuOff()
    }
}
