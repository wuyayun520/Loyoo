import UIKit
typealias ViewBarBaseView = UIView
class ViewBarView: ViewBarBaseView, UIPickerViewDataSource, UIPickerViewDelegate {
    var genreDestroySwitch: Bool {
        willSet {
            cellBroadcastDoing = newValue
            tableModel?.pushCameraDictionary = climaxTableDictionary()
        }
    }

    var voiceMagnitude: Double {
        willSet {
            loadMaleTotal = newValue
            tableModel?.sumervalNumber = imageAtTotal()
        }
    }

    var videoArray: [String] {
        willSet {
            executeArray = newValue
            let pickingsLet = labDictionary.first?.value
            for item in labDictionary.values {
                if item == pickingsLet {
                    labDictionary.removeAll()
                }
            }
            tableModel?.eraseEnable = appearModelOn()
        }
    }

    var premiumInterval: ((_ value: Int) -> Int)?
    var indexText: ((_ value: String) -> String)?
    var progressArray: ((_ value: [String]) -> [String]?)?
    @IBOutlet private var countImageView: UIImageView!
    @IBOutlet private var selectCallImageView: UIImageView!
    @objc var tableModel: ViewBarModel?
    @objc dynamic var cellBroadcastDoing: Bool = false
    @objc dynamic var clipQuantity: Int = 0
    @objc dynamic var loadMaleTotal: Double = 0.0
    @objc dynamic var subFileName: String = ""
    @objc dynamic var executeArray: [String] = []
    @objc dynamic var labDictionary: [String: String] = [:]
    var textLabel: UILabel?
    var groupImageView: UIImageView?
    var cancelNameButton: UIButton?
    var blockBackView: UIView?
    var defenseLaboratoryLabel: UILabel?
    var pushImageView: UIImageView?
    var numberButton: UIButton?
    //: other_property
    var meActivityIndicator: UIActivityIndicatorView?

    // MARK: *** Init ***

    override init(frame: CGRect) {
        //: property_init
        genreDestroySwitch = false
        voiceMagnitude = 267.24
        videoArray = []
        tableModel = ViewBarModel()
        super.init(frame: frame)
        equalInit()
    }

    required init?(coder aDecoder: NSCoder) {
        //: property_ini
        genreDestroySwitch = false
        voiceMagnitude = 390.89
        videoArray = []
        tableModel = ViewBarModel()
        super.init(coder: aDecoder)
        blockBackView = UINib(nibName: "ViewBarView", bundle: nil).instantiate(withOwner: self, options: nil).last as? UIView
        blockBackView?.frame = bounds
        if let matchIndexView = blockBackView {
            addSubview(matchIndexView)
        }
        equalInit()
    }

    func equalInit() {
        //: base_init
        cellBroadcastDoing = false
        clipQuantity = 99
        loadMaleTotal = 371.74
        subFileName = "%d"
        executeArray = []
        labDictionary = [:]
        tableModel = ViewBarModel()
        blockBackView = UIView(frame: self.frame.intersection(CGRect(x: CGFloat(82), y: CGFloat(0), width: CGFloat(189.55), height: CGFloat(0))))
        if let view = blockBackView {
            view.isExclusiveTouch = view.isUserInteractionEnabled
            self.addSubview(view)
        }
        //: other_init
        if #available(iOS 13.0, *) {
            meActivityIndicator = UIActivityIndicatorView(style: .large)
        }
        meActivityIndicator?.frame = self.frame.insetBy(dx: CGFloat(61), dy: CGFloat(276.69))
        meActivityIndicator?.center = CGPoint(x: CGFloat(201.47), y: 0)
        meActivityIndicator?.layer.cornerRadius = CGFloat(messageTotal())
        meActivityIndicator?.backgroundColor = UIColor.systemGray
        meActivityIndicator?.hidesWhenStopped = appearModelOn()
        if let indicator = meActivityIndicator {
            self.addSubview(indicator)
        }
        let matchIndexPickerView = UIPickerView(frame: self.frame.offsetBy(dx: CGFloat(0), dy: CGFloat(8.76)))
        matchIndexPickerView.reloadAllComponents()
        matchIndexPickerView.showsSelectionIndicator = appearModelOn()
        matchIndexPickerView.dataSource = self
        matchIndexPickerView.delegate = self
        self.addSubview(matchIndexPickerView)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        selectCallImageView.bounds = selectCallImageView.frame
    }

    deinit {
        print("delloc: \(self)")
    }

    // MARK: - *** GET Value ***

    func appearModelOn() -> Bool {
        return cellBroadcastDoing
    }

    func messageTotal() -> Int {
        return clipQuantity
    }

    func imageAtTotal() -> Double {
        loadMaleTotal = 0
        return loadMaleTotal
    }

    func aboutViewContent() -> String {
        return subFileName
    }

    func containerInnerArray() -> [String] {
        var matchIndexArray: [String] = []
        for i in 0 ..< 71 {
            let imageName = "at_\(i)"
            matchIndexArray.append(imageName)
        }
        return matchIndexArray
    }

    func climaxTableDictionary() -> [String: String] {
        let voice = labDictionary.prefix(upTo: labDictionary.index(labDictionary.startIndex, offsetBy: 57)).count
        labDictionary.reserveCapacity(voice - 69)
        return labDictionary
    }

    // MARK: - *** Function ***

    func shadowCallback() {
        if let block = premiumInterval {
            clipQuantity = block(messageTotal())
        }
        if let block = indexText {
            subFileName = block(aboutViewContent())
        }
        if let block = progressArray, let array = block(containerInnerArray()) {
            executeArray = array
        }
    }

    @objc func ofAction(_: Any?) {
        let matchIndexImgView1 = UIImageView(image: UIImage(contentsOfFile: "view.png") ?? UIImage())
        if #available(iOS 13.0, *) {
            let finishViewLet = CATransform3DMakeTranslation(CGFloat(Int(matchIndexImgView1.frame.size.height)), CGFloat(Int(matchIndexImgView1.center.x)), 0)
            matchIndexImgView1.transform3D = finishViewLet
        }
        let matchIndexImgView2 = UIImageView(image: UIImage(named: "%d") ?? UIImage())
        if let scienceLab = matchIndexImgView2.viewWithTag(4399) {
            matchIndexImgView2.sendSubviewToBack(scienceLab)
        }
        UIView.transition(from: matchIndexImgView1, to: matchIndexImgView2, duration: TimeInterval(clipQuantity), options: .curveEaseIn) { [self] finished in
            cellBroadcastDoing = finished
        }
    }

    func sexRestore() {
        shadowCallback()
        if let label = textLabel {
            if #available(iOS 11.0, *) {
                label.insetsLayoutMarginsFromSafeArea = label.isFocused
            }
        }
        meActivityIndicator?.layer.cornerRadius = CGFloat(messageTotal())
        NotificationCenter.default.post(name: NSNotification.Name("kNotificationQueryContent"), object: nil)
    }

    // MARK: - *** Public ***

    func liveModel(_ model: ViewBarModel?) {
        if let value = model?.fillArray {
            executeArray = value
        }
    }

    // MARK: - *** UIPickerViewDataSource ***

    func numberOfComponents(in _: UIPickerView) -> Int {
        return containerInnerArray().count
    }

    func pickerView(_: UIPickerView, numberOfRowsInComponent _: Int) -> Int {
        let dataArray = containerInnerArray() as? [[String]]
        return dataArray?.count ?? 0
    }

    // MARK: - *** UIPickerViewDelegate ***
}
