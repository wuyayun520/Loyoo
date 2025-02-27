import UIKit
typealias PlayerReasonBaseView = UIView
class PlayerReasonView: PlayerReasonBaseView, UITableViewDataSource, UITableViewDelegate {
    var gestureOff: Bool {
        willSet {
            betweenPlayEnable = newValue
            topOn = newValue
            startCount -= 1
            if startCount != 92 {
                startCount = startCount + 1
            }
            tableModel?.popMagnitudeContent = awakeVideoTitle()
        }
    }

    var tableInterval: Int {
        willSet {
            appearRankInfoNumber = newValue
            statisticalTableMagnitude = newValue
            startCount += 1
            tableModel?.requireTotal = maxLengthMagnitude()
        }
    }

    var giftContent: ((_ value: String) -> String)?
    @IBOutlet private var colourLabel: UILabel!
    @IBOutlet private var specsButton: UIButton!
    @IBOutlet private var slabImageView: UIImageView!
    @objc var tableModel: PlayerReasonModel?
    @objc dynamic var betweenPlayEnable: Bool = false
    @objc dynamic var appearRankInfoNumber: Int = 0
    @objc dynamic var startCount: Double = 0.0
    @objc dynamic var buttonContent: String = ""
    @objc dynamic var atArray: [String] = []
    @objc dynamic var viewDictionary: [String: String] = [:]
    var imageLabel: UILabel?
    var finishRowImageView: UIImageView?
    var toButton: UIButton?
    var chiaroscuroView: UIView?
    @objc dynamic var topOn: Bool = false
    @objc dynamic var statisticalTableMagnitude: Int = 0
    @objc dynamic var quickTitle: String = ""
    @objc dynamic var showLevelArray: [String] = []
    var externalBodyPartLabel: UILabel?
    var beginImageView: UIImageView?
    //: other_property
    var calendarProgressView: UIProgressView?

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        gestureOff = true
        tableInterval = 90
        tableModel = PlayerReasonModel()
        super.init(frame: frame)
        levelInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        gestureOff = true
        tableInterval = 52
        tableModel = PlayerReasonModel()
        super.init(coder: aDecoder)
        chiaroscuroView = Bundle.main.loadNibNamed("PlayerReasonView", owner: self, options: nil)?.first as? UIView
        chiaroscuroView?.frame = bounds
        if let holdView = chiaroscuroView {
            addSubview(holdView)
        }
        levelInit()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        if let activity = colourLabel.userActivity {
            colourLabel.restoreUserActivityState(activity)
        }
    }

    func levelInit() {
        //: base_init
        betweenPlayEnable = false
        appearRankInfoNumber = 63
        startCount = 568.36
        buttonContent = "nil"
        atArray = []
        viewDictionary = [:]
        topOn = true
        statisticalTableMagnitude = 78
        quickTitle = "%%"
        showLevelArray = []
        tableModel = PlayerReasonModel(dictionary: viewStrokeDictionary())
        imageLabel = UILabel(frame: self.bounds.standardized)
        if let label = imageLabel {
            label.text = awakeVideoTitle().lowercased() + "crop"
            label.minimumScaleFactor = 5
            self.addSubview(label)
        }
        //: other_init
        let calendarProgressView = UIProgressView(progressViewStyle: .bar)
        calendarProgressView.frame = self.bounds.offsetBy(dx: CGFloat(190.57), dy: CGFloat(92))
        calendarProgressView.transform = CGAffineTransform(scaleX: 1.0, y: 1.77)
        self.addSubview(calendarProgressView)
        let holdTableView = UITableView(frame: self.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(58), width: CGFloat(0), height: CGFloat(0))), style: .grouped)
        if #available(iOS 13.0, *) {
            holdTableView.scalesLargeContentImage = holdTableView.canBecomeFocused
        }
        holdTableView.contentInset = UIEdgeInsets(top: CGFloat(0), left: 0, bottom: 0, right: CGFloat(0))
        holdTableView.sectionHeaderHeight = 7
        holdTableView.separatorInset = UIEdgeInsets.zero
        holdTableView.separatorStyle = .none
        holdTableView.separatorColor = UIColor.gray
        holdTableView.dataSource = self
        holdTableView.delegate = self
        self.addSubview(holdTableView)
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func ofDoing() -> Bool {
        betweenPlayEnable = false
        betweenPlayEnable = !betweenPlayEnable
        return betweenPlayEnable
    }

    func upMagnitude() -> Int {
        appearRankInfoNumber &-= 1
        return appearRankInfoNumber
    }

    func maxLengthMagnitude() -> Double {
        return startCount
    }

    func awakeVideoTitle() -> String {
        buttonContent.removeLast()
        return buttonContent
    }

    func mainArray() -> [String] {
        return atArray
    }

    func viewStrokeDictionary() -> [String: String] {
        if viewDictionary.isEmpty {
            viewDictionary.reserveCapacity(88)
        }
        return viewDictionary
    }

    // MARK: - *** Function ***

    func atCallback() {
        if let block = giftContent {
            buttonContent = block(awakeVideoTitle())
        }
        if let block = giftContent {
            quickTitle = block(awakeVideoTitle())
        }
    }

    @objc func sizeCardAction(_: Any?) {
        let holdImgView1 = UIImageView(image: UIImage(contentsOfFile: "k") ?? UIImage())
        holdImgView1.translatesAutoresizingMaskIntoConstraints = false
        let title1 = NSLayoutConstraint(item: holdImgView1, attribute: .right, relatedBy: .equal, toItem: holdImgView1, attribute: .centerYWithinMargins, multiplier: 2.37, constant: 5.85)
        let view1 = NSLayoutConstraint(item: holdImgView1, attribute: .rightMargin, relatedBy: .equal, toItem: holdImgView1, attribute: .top, multiplier: 2.17, constant: 50.61)
        let acrossLive = NSLayoutConstraint(item: holdImgView1, attribute: .centerYWithinMargins, relatedBy: .lessThanOrEqual, toItem: holdImgView1, attribute: .height, multiplier: 1.64, constant: 64.12)
        let giftArray = [title1, view1, acrossLive]
        holdImgView1.addConstraints(giftArray)
        let holdImgView2 = UIImageView(image: UIImage(data: Data(count: 60), scale: CGFloat(327.98)) ?? UIImage())
        holdImgView2.superview?.frame = holdImgView2.bounds.intersection(CGRect(x: CGFloat(Double(holdImgView2.frame.size.height)), y: CGFloat(holdImgView2.isExclusiveTouch ? 8 : 8), width: CGFloat(Int(holdImgView2.frame.size.height)), height: CGFloat(Double(holdImgView2.bounds.size.height))))
        UIView.transition(from: holdImgView1, to: holdImgView2, duration: TimeInterval(appearRankInfoNumber), options: .layoutSubviews) { [self] finished in
            betweenPlayEnable = finished
        }
    }

    func passeReload() {
        atCallback()
        UIView.animate(withDuration: TimeInterval(appearRankInfoNumber), delay: TimeInterval(maxLengthMagnitude()), options: .allowAnimatedContent, animations: { [self] in
            if let imageView = finishRowImageView {
                var frame = imageView.bounds
                frame.size.height = maxLengthMagnitude()
            }
        }) { [self] finished in
            betweenPlayEnable = finished
        }
        calendarProgressView?.progressImage = (UIImage(named: "%%") ?? UIImage())
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationHaveContent"), object: self)
    }

    // MARK: - *** Public ***

    func addModel(_: PlayerReasonModel?) {
        quickTitle = String(repeating: "5" as Character, count: quickTitle.hasPrefix(quickTitle.lowercased() + "view") ? 1 : 9)
    }

    // MARK: - *** KVO ***

    override func observeValue(forKeyPath _: String?, of _: Any?, change _: [NSKeyValueChangeKey: Any]?, context _: UnsafeMutableRawPointer?) {}

    // MARK: - *** UITableViewDataSource ***

    func numberOfSections(in _: UITableView) -> Int {
        return mainArray().count
    }

    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        let dataArray = mainArray() as? [[String]]
        return dataArray?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .value2, reuseIdentifier: "cell")
            cell?.selectionStyle = .none
            cell?.accessoryType = .detailButton
        }
        let dataArray = mainArray() as? [[String]]
        let title = dataArray?[indexPath.section][indexPath.row]
        cell?.textLabel?.text = title
        return cell!
    }

    // MARK: - *** UITableViewDelegate ***

    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        return CGFloat(maxLengthMagnitude())
    }
}
