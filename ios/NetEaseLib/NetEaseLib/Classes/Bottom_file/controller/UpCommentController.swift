import UIKit
typealias UpCommentBaseController = UIViewController
class UpCommentController: UpCommentBaseController {
    var clickDataModel: UpCommentDataModel?
    var withOpen: ((_ value: Bool) -> Bool)?
    var blockText: ((_ value: String) -> String)?
    private var rawView: UpCommentView?
    private var mediumController: CleanController?
    @objc var tableModel: UpCommentModel?
    @objc dynamic var rowHideDoing: Bool = false
    @objc dynamic var subNumber: Int = 0
    @objc dynamic var dataMagnitude: Double = 0.0
    @objc dynamic var ofContent: String = ""
    @objc dynamic var matchReportArray: [String] = []
    @objc dynamic var modelDictionary: [String: String] = [:]
    var textLabel: UILabel?
    var addImageView: UIImageView?
    var loadButton: UIButton?
    var addView: UIView?
    @objc dynamic var reasonClose: Bool = false
    @objc dynamic var listNumber: Int = 0
    @objc dynamic var targetText: String = ""
    @objc dynamic var rankOfArray: [String] = []
    @objc dynamic var closelineDictionary: [String: String] = [:]
    var userImageLabel: UILabel?
    var cloutImageView: UIImageView?
    var reView: UIView?
    //: other_property

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        //: base_init
        rowHideDoing = true
        subNumber = 67
        dataMagnitude = 455.71
        ofContent = "%d"
        matchReportArray = []
        modelDictionary = [:]
        reasonClose = true
        listNumber = 65
        targetText = "%f"
        rankOfArray = []
        closelineDictionary = [:]
        tableModel = UpCommentModel(dictionary: priceDictionary())
        cloutImageView = UIImageView(frame: self.view.bounds.insetBy(dx: CGFloat(77), dy: CGFloat(225.41)))
        if let imageView = cloutImageView {
            imageView.image = UIImage()
            imageView.frame = imageView.bounds.integral
            self.view.addSubview(imageView)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(comeAcrossAction(_:)), name: NSNotification.Name("kNotificationLevelTitle"), object: nil)
        //: other_init
        //: private_init
        clickDataModel = UpCommentDataModel()
        rawView = UpCommentView(frame: self.view!.bounds.insetBy(dx: CGFloat(616.24), dy: CGFloat(12.34)))
        rawView?.toModel(tableModel)
        if let pathView = rawView {
            self.view.addSubview(pathView)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        guard let model = clickDataModel else { return }
        model.addDictionary = priceDictionary()
        let replySum = onUpMagnitude()
        let cellDictionary = priceDictionary()
        let result = UpCommentDataManager.sizeCreateOmit(
            replySum: replySum,
            cellDictionary: cellDictionary,
            model: model
        )
        if result {
            noEmptySuccess()
        } else {
            specsError()
        }
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        if let view = addView {
            if view.canResignFirstResponder {
                view.resignFirstResponder()
            }
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("kNotificationLevelTitle"), object: nil)
    }

    // MARK: - *** GET Value ***

    func barrelhouseOn() -> Bool {
        return true
    }

    func onUpMagnitude() -> Int {
        return subNumber
    }

    func theQuantity() -> Double {
        return 161.53
    }

    func effectContent() -> String {
        let rowReplacement: [CChar] = [27, 39, 10]
        rowReplacement.withUnsafeBufferPointer { ptr in
            targetText = String(validatingUTF8: ptr.baseAddress!) ?? targetText.lowercased() + "moon"
        }
        return targetText
    }

    func imageArray() -> [String] {
        let pointArray = matchReportArray.suffix(from: matchReportArray.index(matchReportArray.startIndex, offsetBy: 92)).isEmpty
        matchReportArray.removeAll(keepingCapacity: pointArray)
        return matchReportArray
    }

    func priceDictionary() -> [String: String] {
        return closelineDictionary
    }

    // MARK: - *** Function ***

    func viewModelCallback() {
        if let block = withOpen {
            rowHideDoing = block(barrelhouseOn())
        }
        if let block = blockText {
            ofContent = block(effectContent())
        }
        if let block = withOpen {
            reasonClose = block(barrelhouseOn())
        }
        if let block = blockText {
            targetText = block(effectContent())
        }
    }

    @objc func comeAcrossAction(_: Any?) {
        let pathNotification = Notification(name: NSNotification.Name("kNotificationLevelTitle"), object: self)
        NotificationCenter.default.post(pathNotification)
    }

    func showReload() {
        viewModelCallback()
        UIView.animate(withDuration: TimeInterval(theQuantity()), delay: TimeInterval(subNumber), usingSpringWithDamping: 0.74, initialSpringVelocity: 0.58, options: .curveEaseOut, animations: { [self] in
            if let label = userImageLabel {
                label.backgroundColor = UIColor.lightGray
            }
            if let imageView = cloutImageView {
                var frame = imageView.bounds
                frame.size.height = theQuantity()
            }
            if let view = reView {
                var frame = view.bounds
                frame.size.height = theQuantity()
            }
        }) { [self] finished in
            rowHideDoing = finished
        }
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationLevelTitle"), object: nil, userInfo: priceDictionary())
        dismiss(animated: false) { [self] in
            rowHideDoing = !rowHideDoing
        }
        UpCommentNetManager.request(
            backSuccess: { [self] dic in
                if let value = dic?["invite"] as? Int {
                    listNumber = value
                }
                noEmptySuccess()
            },
            error: { [self] errorCode, _ in
                if errorCode == 384 {
                    addView?.isHidden = false
                }
            }
        )
    }

    func noEmptySuccess() {
        loadButton?.setTitle("view", for: .selected)
    }

    func specsError() {
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationDoingError"), object: nil)
    }

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {}
}
