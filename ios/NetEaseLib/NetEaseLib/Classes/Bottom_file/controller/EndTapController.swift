import UIKit
typealias EndTapBaseController = UIViewController
class EndTapController: EndTapBaseController, UITextViewDelegate {
    var portionFinishDataModel: EndTapDataModel?
    var viewCount: Double = 0.0 {
        willSet {
            pathNumber = newValue
            toolBagAwakeTotal = newValue
            climaxArray.removeLast()
            tableModel?.titleReset()
        }
    }

    var loadArray: [String] = [] {
        willSet {
            climaxArray = newValue
            tagTitle.append(tagTitle[tagTitle.endIndex])
            tableModel?.sourcePlayerDoing = likeClose()
        }
    }

    var directionDictionary: [String: String] = [:] {
        willSet {
            managerStyleDictionary = newValue
            toolBagAwakeTotal -= 1
            if toolBagAwakeTotal != 82 {
                toolBagAwakeTotal = toolBagAwakeTotal + 1
            }
            tableModel?.sourcePlayerDoing = likeClose()
        }
    }

    var smallLabelEnable: ((_ value: Bool) -> Bool)?
    var viewProgressCount: ((_ value: Double) -> Double)?
    private var selectView: EndTapView?
    private var auditoryImageController: LeapOutController?
    @objc var tableModel: EndTapModel?
    @objc dynamic var panelOpen: Bool = false
    @objc dynamic var callMagnitude: Int = 0
    @objc dynamic var pathNumber: Double = 0.0
    @objc dynamic var tagTitle: String = ""
    @objc dynamic var climaxArray: [String] = []
    @objc dynamic var managerStyleDictionary: [String: String] = [:]
    var confinementLabel: UILabel?
    var occupyImageView: UIImageView?
    var modelButton: UIButton?
    var blockFrameView: UIView?
    @objc dynamic var tableMagnitude: Int = 0
    @objc dynamic var toolBagAwakeTotal: Double = 0.0
    var roomMakeLabel: UILabel?
    var correlationTableQueryImageView: UIImageView?
    var shadeView: UIView?
    //: other_property
    var cameraPageControl: UIPageControl?

    // MARK: *** Init ***

    override func viewDidLoad() {
        super.viewDidLoad()
        //: property_init
        viewCount = 91.16
        loadArray = []
        directionDictionary = [:]
        //: base_init
        panelOpen = true
        callMagnitude = 93
        pathNumber = 544.11
        tagTitle = "null"
        climaxArray = []
        managerStyleDictionary = [:]
        tableMagnitude = 82
        toolBagAwakeTotal = 610.91
        tableModel = EndTapModel()
        blockFrameView = UIView(frame: self.view.bounds.insetBy(dx: CGFloat(105.32), dy: CGFloat(233.43)))
        if let view = blockFrameView {
            if let pick = view.superview?.bounds.size.width {
                let viewPop = view.systemLayoutSizeFitting(CGSize(width: pick, height: 0), withHorizontalFittingPriority: .required, verticalFittingPriority: .fittingSizeLevel)
                view.frame = CGRect(x: 0, y: 0, width: pick, height: viewPop.height)
            }
            self.view.addSubview(view)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(itemTextAction(_:)), name: NSNotification.Name("kNotificationLoadContent"), object: nil)
        //: other_init
        let renderTextView = UITextView(frame: self.view.frame.insetBy(dx: CGFloat(67), dy: CGFloat(66)))
        renderTextView.contentMode = .bottomRight
        renderTextView.isEditable = likeClose()
        renderTextView.text = "receiveTab"
        renderTextView.textColor = UIColor.orange
        renderTextView.font = UIFont.italicSystemFont(ofSize: 16)
        renderTextView.isScrollEnabled = likeClose()
        renderTextView.delegate = self
        self.view.addSubview(renderTextView)
        cameraPageControl = UIPageControl()
        cameraPageControl?.frame = self.view.bounds.insetBy(dx: CGFloat(52), dy: CGFloat(630.80))
        cameraPageControl?.numberOfPages = 6
        cameraPageControl?.currentPage = callMagnitude
        cameraPageControl?.currentPageIndicatorTintColor = UIColor.blue
        if let pageControl = cameraPageControl {
            self.view.addSubview(pageControl)
        }
        cameraPageControl?.addTarget(self, action: #selector(itemTextAction(_:)), for: .valueChanged)
        //: private_init
        portionFinishDataModel = EndTapDataModel()
        selectView = EndTapView(frame: self.view!.bounds.integral)
        selectView?.scopeModel(tableModel)
        if let renderView = selectView {
            self.view.addSubview(renderView)
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("kNotificationLoadContent"), object: nil)
    }

    // MARK: - *** GET Value ***

    func likeClose() -> Bool {
        panelOpen = false
        panelOpen = !panelOpen
        return panelOpen
    }

    func popAddCount() -> Int {
        return 80
    }

    func averageCostTotal() -> Double {
        return pathNumber
    }

    func rowName() -> String {
        return tagTitle
    }

    func dataArray() -> [String] {
        let arrayChange = climaxArray.prefix(through: climaxArray.startIndex).isEmpty
        climaxArray.removeAll(keepingCapacity: arrayChange)
        return climaxArray
    }

    func labelDictionary() -> [String: String] {
        return managerStyleDictionary
    }

    // MARK: - *** Function ***

    func playCallback() {
        if let block = smallLabelEnable {
            panelOpen = block(likeClose())
        }
        if let block = viewProgressCount {
            pathNumber = block(averageCostTotal())
        }
        if let block = viewProgressCount {
            toolBagAwakeTotal = block(averageCostTotal())
        }
    }

    @objc func itemTextAction(_: Any?) {
        if let view = blockFrameView {
            view.rightAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: CGFloat(Int(view.contentScaleFactor))).isActive = true
        }
    }

    func labReload() {
        playCallback()
        UIView.animate(withDuration: TimeInterval(callMagnitude), delay: TimeInterval(averageCostTotal()), options: .transitionFlipFromLeft, animations: { [self] in
            if let button = modelButton {
                button.frame = CGRect()
            }
        }) { [self] finished in
            panelOpen = finished
        }
        if let view = blockFrameView {
            cameraPageControl?.frame = view.frame.integral
        }
        let renderNotification = Notification(name: NSNotification.Name("kNotificationLoadContent"), object: self)
        NotificationCenter.default.post(renderNotification)
        dismiss(animated: true) { [self] in
        }
        let acceptSum = averageCostTotal()
        let textContent = rowName()
        let coinArray = dataArray()
        EndTapNetManager.request(
            acceptSum: acceptSum,
            textContent: textContent,
            coinArray: coinArray,
            canSuccess: { [self] message in
                let label = UILabel()
                label.text = message
                blockFrameView?.addSubview(label)
                imageSuccess()
            },
            error: { [self] errorCode, errorMessage in
                let errorText = "code:\(errorCode)\n message:\(errorMessage ?? "")"
                confinementLabel?.text = errorText
            }
        )
    }

    func imageSuccess() {
        let image = UIImage(named: "moreSuccess.png")
        correlationTableQueryImageView?.image = image
    }

    func inputError() {
        portionFinishDataModel = nil
    }

    // MARK: - *** UITextViewDelegate ***

    func textViewShouldEndEditing(_: UITextView) -> Bool {
        return likeClose()
    }

    func textView(_: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if range.length + text.lowercased().count != 0 {
            return true
        }
        return likeClose()
    }
}
