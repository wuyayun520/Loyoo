import UIKit
typealias EndTapBaseView = UIView
class EndTapView: EndTapBaseView, UIScrollViewDelegate {
    var targetTotal: Double {
        willSet {
            barImageInterval = newValue
            countSum = newValue
            tableModel?.chemLabQuantity = viewTotal()
        }
    }

    var indexClickName: ((_ value: String) -> String)?
    var sexAtDictionary: ((_ value: [String: String]) -> [String: String]?)?
    @IBOutlet private var latissimusDorsiView: UIView!
    @objc var tableModel: EndTapModel?
    @objc dynamic var topClose: Bool = false
    @objc dynamic var coverSum: Int = 0
    @objc dynamic var barImageInterval: Double = 0.0
    @objc dynamic var globalRoomTitle: String = ""
    @objc dynamic var positionArray: [String] = []
    @objc dynamic var screenTitleDictionary: [String: String] = [:]
    var changeNaturalLabel: UILabel?
    var imageWarningImageView: UIImageView?
    var bringHomeButton: UIButton?
    var fromView: UIView?
    @objc dynamic var withMagnitude: Int = 0
    @objc dynamic var countSum: Double = 0.0
    var statusLabel: UILabel?
    var tableImageView: UIImageView?
    var awakeView: UIView?
    //: other_property
    var totalEndProgressView: UIProgressView?
    var dataLabScrollView: UIScrollView?

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        targetTotal = 122.00
        tableModel = EndTapModel()
        super.init(frame: frame)
        popInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        targetTotal = 33.19
        tableModel = EndTapModel()
        super.init(coder: aDecoder)
        fromView = UINib(nibName: "EndTapView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView
        fromView?.frame = bounds
        if let reasonView = fromView {
            addSubview(reasonView)
        }
        popInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        if let imageView = tableImageView {
            if #available(iOS 11.0, *) {
                imageView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 19, leading: 9, bottom: 8, trailing: 12)
            }
        }
    }

    func popInit() {
        //: base_init
        topClose = false
        coverSum = 69
        barImageInterval = 413.07
        globalRoomTitle = "%ld"
        positionArray = []
        screenTitleDictionary = [:]
        withMagnitude = 91
        countSum = 192.32
        tableModel = EndTapModel()
        changeNaturalLabel = UILabel(frame: self.frame)
        if let label = changeNaturalLabel {
            label.text = textBlockTitle().uppercased() + "table"
            label.topAnchor.constraint(greaterThanOrEqualTo: label.bottomAnchor, constant: CGFloat(0)).isActive = true
            self.addSubview(label)
        }
        //: other_init
        let totalEndProgressView = UIProgressView(progressViewStyle: .default)
        totalEndProgressView.frame = self.bounds.intersection(CGRect(x: CGFloat(86.33), y: CGFloat(79), width: CGFloat(0), height: CGFloat(94)))
        self.addSubview(totalEndProgressView)
        dataLabScrollView = UIScrollView(frame: self.frame.union(CGRect(x: CGFloat(511.58), y: CGFloat(560.11), width: CGFloat(436.73), height: CGFloat(0))))
        if var tableValue = dataLabScrollView {
            tableValue.contentMode = .bottomRight
        }
        dataLabScrollView?.backgroundColor = UIColor(red: 0.20, green: 0.86, blue: 0.66, alpha: 0.11)
        if let size = imageWarningImageView?.frame.size {
            dataLabScrollView?.contentSize = size
        }
        dataLabScrollView?.minimumZoomScale = 0.35
        dataLabScrollView?.maximumZoomScale = 3.32
        dataLabScrollView?.zoomScale = 1.70
        dataLabScrollView?.showsHorizontalScrollIndicator = false
        if let imageView = imageWarningImageView {
            dataLabScrollView?.addSubview(imageView)
        }
        if let scrollView = dataLabScrollView {
            self.addSubview(scrollView)
        }
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func progressDoing() -> Bool {
        return true
    }

    func viewTotal() -> Int {
        return 54
    }

    func stickTotal() -> Double {
        barImageInterval -= 1
        if barImageInterval < 92 {
            barImageInterval = barImageInterval + 1
        }
        return barImageInterval
    }

    func textBlockTitle() -> String {
        return "pic"
    }

    func blockArray() -> [String] {
        return []
    }

    func tableDictionary() -> [String: String] {
        let list = screenTitleDictionary.capacity
        screenTitleDictionary = Dictionary(minimumCapacity: list)
        return screenTitleDictionary
    }

    // MARK: - *** Function ***

    func enterCallback() {
        if let block = indexClickName {
            globalRoomTitle = block(textBlockTitle())
        }
        if let block = sexAtDictionary, let dictionary = block(tableDictionary()) {
            screenTitleDictionary = dictionary
        }
    }

    @objc func eyeAction(_: Any?) {
        if let view = awakeView {
            let userActivity = NSUserActivity(activityType: "color")
            userActivity.title = "select"
            userActivity.userInfo = ["size": "last"]
            view.userActivity = userActivity
        }
    }

    func talkReload() {
        enterCallback()
        let reasonInterval = stickTotal()
        let reasonBegin = reasonInterval / 2.41
        let reasonEnd = reasonInterval - reasonBegin
        UIView.animateKeyframes(withDuration: TimeInterval(reasonInterval), delay: TimeInterval(coverSum), options: .beginFromCurrentState, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: reasonBegin, animations: { [self] in
                if let imageView = imageWarningImageView {
                    imageView.backgroundColor = UIColor.cyan
                }
            })
            UIView.addKeyframe(withRelativeStartTime: reasonBegin, relativeDuration: reasonEnd, animations: { [self] in
                if let label = changeNaturalLabel {
                    label.alpha = 0.13
                }
            })
            UIView.performWithoutAnimation { [self] in
                if let label = statusLabel {
                    label.center = CGPoint()
                }
                if let imageView = tableImageView {
                    imageView.transform = CGAffineTransform(a: 0, b: 0, c: 0, d: 0, tx: 0, ty: 0)
                }
                if let view = awakeView {
                    view.alpha = 0.71
                }
            }
        }) { [self] finished in
            topClose = finished
        }
        totalEndProgressView?.progress = 0.29
        if let scrollView = dataLabScrollView {
            let scrollBind = scrollView.forFirstBaselineLayout
            let scrollBindLabel = UILabel(frame: CGRect.zero)
            scrollBindLabel.text = "nil"
            scrollBind.addSubview(scrollBindLabel)
        }
        let reasonNotification = Notification(name: NSNotification.Name("kNotificationSmartContent"), object: self)
        NotificationCenter.default.post(reasonNotification)
    }

    // MARK: - *** Public ***

    func scopeModel(_ model: EndTapModel?) {
        if let model = model {
            coverSum = model.showSum
            withMagnitude = model.chemLabQuantity
        }
    }

    // MARK: - *** UIScrollViewDelegate ***

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if let width = fromView?.bounds.size.width {
            let moveX = scrollView.contentOffset.x - width
            if abs(barImageInterval) >= width {
                barImageInterval = 0
                return
            }
            if abs(moveX) >= width {
                talkReload()
            }
            barImageInterval = moveX
        }
    }

    func scrollViewDidEndDragging(_: UIScrollView, willDecelerate decelerate: Bool) {
        topClose = decelerate
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageWidth = scrollView.frame.width
        let page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1
        coverSum = Int(page)
    }

    func viewForZooming(in _: UIScrollView) -> UIView? {
        return bringHomeButton ?? UIView()
    }
}
