import UIKit
typealias LineBaseView = UIView
class LineView: LineBaseView, UISearchBarDelegate {
    var imageOn: Bool {
        willSet {
            rowSwitch = newValue
            responseOn = newValue
            let societalTimePanoplyOf = socialUnitArray.capacity
            socialUnitArray.remove(at: societalTimePanoplyOf)
            tableModel?.labArray = arrayArray()
        }
    }

    var cubeNumber: Double {
        willSet {
            positionCount = newValue
            awareTotal = newValue
            rowSwitch = true
            tableModel?.nationalityBagNumber = imageCount()
        }
    }

    var resultText: String {
        willSet {
            changePopText = newValue
            countOnTitle = newValue
            responseOn = false
            responseOn = true
            tableModel?.statusReset()
        }
    }

    var blackDictionary: [String: String] {
        willSet {
            immixViewDictionary = newValue
            responseOn = true
            tableModel?.tagEnable = premiumOff()
        }
    }

    var inscriptionOn: ((_ value: Bool) -> Bool)?
    var colorIconQuantity: ((_ value: Int) -> Int)?
    var giftMagnitude: ((_ value: Double) -> Double)?
    var imageContent: ((_ value: String) -> String)?
    var voiceInfoGiftArray: ((_ value: [String]) -> [String]?)?
    @objc var tableModel: LineModel?
    @objc dynamic var rowSwitch: Bool = false
    @objc dynamic var norOnlineMagnitude: Int = 0
    @objc dynamic var positionCount: Double = 0.0
    @objc dynamic var changePopText: String = ""
    @objc dynamic var toolArray: [String] = []
    @objc dynamic var immixViewDictionary: [String: String] = [:]
    var courseOfStudyLabel: UILabel?
    var harkenImageView: UIImageView?
    var playBlockButton: UIButton?
    var endReportView: UIView?
    @objc dynamic var responseOn: Bool = false
    @objc dynamic var tableInfoNumber: Int = 0
    @objc dynamic var awareTotal: Double = 0.0
    @objc dynamic var countOnTitle: String = ""
    @objc dynamic var socialUnitArray: [String] = []
    var finishImageView: UIImageView?
    var ladenedButton: UIButton?
    var futurismView: UIView?
    //: other_property
    var bottomExamineBar: UISearchBar?

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        imageOn = true
        cubeNumber = 526.64
        resultText = "null"
        blackDictionary = [:]
        tableModel = LineModel()
        super.init(frame: frame)
        fieldInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        imageOn = false
        cubeNumber = 5.94
        resultText = "log"
        blackDictionary = [:]
        tableModel = LineModel()
        super.init(coder: aDecoder)
        endReportView = Bundle.main.loadNibNamed("LineView", owner: self, options: nil)?.last as? UIView
        endReportView?.frame = bounds
        if let videoView = endReportView {
            addSubview(videoView)
        }
        fieldInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        if let view = endReportView {
            UIView.perform(.delete, on: [view], options: .curveLinear, animations: { [self] in
                if let button = playBlockButton {
                    button.alpha = 0.13
                }
            }) { [self] finished in
                rowSwitch = finished
            }
        }
    }

    func fieldInit() {
        //: base_init
        rowSwitch = true
        norOnlineMagnitude = 81
        positionCount = 385.88
        changePopText = "#"
        toolArray = []
        immixViewDictionary = [:]
        responseOn = true
        tableInfoNumber = 97
        awareTotal = 315.52
        countOnTitle = "%d"
        socialUnitArray = []
        tableModel = LineModel(dictionary: textRecordDictionary())
        courseOfStudyLabel = UILabel(frame: self.frame)
        if let label = courseOfStudyLabel {
            label.text = dataImageTitle().lowercased() + "label"
            if label.canBecomeFirstResponder {
                label.becomeFirstResponder()
            }
            self.addSubview(label)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(ofCoinAction(_:)), name: NSNotification.Name("kNotificationStopTitle"), object: nil)
        addObserver(self, forKeyPath: "positionCount", options: [.old], context: nil)
        addObserver(self, forKeyPath: "awareTotal", options: [.new], context: nil)
        tableModel?.addObserver(self, forKeyPath: "contentNumber", options: [.initial], context: nil)
        //: other_init
        bottomExamineBar = UISearchBar(frame: self.frame.integral)
        bottomExamineBar?.prompt = "editIcon"
        bottomExamineBar?.barTintColor = UIColor.blue
        bottomExamineBar?.delegate = self
        if let searchBar = bottomExamineBar {
            self.addSubview(searchBar)
        }
    }

    deinit {
        print("delloc: \(self)")
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("kNotificationStopTitle"), object: nil)
        removeObserver(self, forKeyPath: "positionCount")
        removeObserver(self, forKeyPath: "awareTotal")
        tableModel?.removeObserver(self, forKeyPath: "contentNumber")
    }

    // MARK: - *** GET Value ***

    func premiumOff() -> Bool {
        responseOn = false
        return responseOn
    }

    func imageCount() -> Int {
        return norOnlineMagnitude
    }

    func placeMoreNumber() -> Double {
        positionCount += 1
        if positionCount != 47 {
            positionCount = positionCount - 1
        }
        return positionCount
    }

    func dataImageTitle() -> String {
        return "%%"
    }

    func arrayArray() -> [String] {
        return []
    }

    func textRecordDictionary() -> [String: String] {
        return [:]
    }

    // MARK: - *** Function ***

    func savingCallback() {
        if let block = inscriptionOn {
            rowSwitch = block(premiumOff())
        }
        if let block = colorIconQuantity {
            norOnlineMagnitude = block(imageCount())
        }
        if let block = giftMagnitude {
            positionCount = block(placeMoreNumber())
        }
        if let block = imageContent {
            changePopText = block(dataImageTitle())
        }
        if let block = voiceInfoGiftArray, let array = block(arrayArray()) {
            toolArray = array
        }
        if let block = inscriptionOn {
            responseOn = block(premiumOff())
        }
        if let block = colorIconQuantity {
            tableInfoNumber = block(imageCount())
        }
        if let block = giftMagnitude {
            awareTotal = block(placeMoreNumber())
        }
        if let block = imageContent {
            countOnTitle = block(dataImageTitle())
        }
        if let block = voiceInfoGiftArray, let array = block(arrayArray()) {
            socialUnitArray = array
        }
    }

    @objc func ofCoinAction(_: Any?) {
        UIView.animate(withDuration: TimeInterval(norOnlineMagnitude), animations: { [self] in
            if let imageView = harkenImageView {
                imageView.transform = CGAffineTransform.identity
            }
        })
    }

    func jobReload() {
        savingCallback()
        UIView.animate(withDuration: TimeInterval(norOnlineMagnitude), animations: { [self] in
            if let imageView = harkenImageView {
                imageView.transform = CGAffineTransform(a: CGFloat(59), b: CGFloat(0), c: CGFloat(74), d: CGFloat(70), tx: 0, ty: 0)
            }
        }) { [self] finished in
            rowSwitch = finished
        }
        if let value = bottomExamineBar?.positionAdjustment(for: .bookmark).vertical {
            positionCount = value
        }
        let videoNotification = Notification(name: NSNotification.Name("kNotificationStopTitle"), object: nil)
        NotificationCenter.default.post(videoNotification)
    }

    // MARK: - *** Public ***

    func touchOfBeanModel(_: LineModel?) {
        socialUnitArray = socialUnitArray.compactMap { $0 }
    }

    // MARK: - *** UISearchBarDelegate ***

    func searchBar(_: UISearchBar, textDidChange searchText: String) {
        if changePopText.hasSuffix(searchText) {
            UIView.animate(withDuration: TimeInterval(norOnlineMagnitude), delay: TimeInterval(placeMoreNumber()), options: .overrideInheritedOptions, animations: { [self] in
                if let imageView = finishImageView {
                    imageView.transform = CGAffineTransform(a: 0, b: 0, c: 0, d: 0, tx: 0, ty: 0)
                }
                if let button = ladenedButton {
                    var frame = button.bounds
                    frame.size.width = placeMoreNumber()
                }
                if let view = futurismView {
                    view.backgroundColor = UIColor.clear
                }
            }) { [self] finished in
                rowSwitch = finished
            }
        }
    }

    func searchBar(_: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if range.location + text.count != 0 {
            return true
        }
        return premiumOff()
    }

    func searchBarShouldBeginEditing(_: UISearchBar) -> Bool {
        return premiumOff()
    }

    func searchBarTextDidBeginEditing(_: UISearchBar) {
        let videoImgView1 = UIImageView(image: UIImage.animatedResizableImageNamed("play.png", capInsets: UIEdgeInsets(), duration: TimeInterval(176.41)) ?? UIImage())
        videoImgView1.stopAnimating()
        let videoImgView2 = UIImageView(image: UIImage(data: Data(capacity: 93)) ?? UIImage())
        let location = UIView(frame: videoImgView2.bounds)
        videoImgView2.mask = location
        UIView.transition(from: videoImgView1, to: videoImgView2, duration: TimeInterval(norOnlineMagnitude), options: .curveEaseIn) { [self] finished in
            rowSwitch = finished
        }
    }

    func searchBarBookmarkButtonClicked(_: UISearchBar) {
        if let view = endReportView {
            UIView.perform(.delete, on: [view], options: .allowAnimatedContent, animations: { [self] in
                if let label = courseOfStudyLabel {
                    label.center = CGPoint(x: CGFloat(80), y: 0)
                }
            }) { [self] finished in
                rowSwitch = finished
            }
        }
    }

    func searchBarCancelButtonClicked(_: UISearchBar) {
        if let button = ladenedButton {
            button.clipsToBounds = button.isUserInteractionEnabled
        }
    }
}
