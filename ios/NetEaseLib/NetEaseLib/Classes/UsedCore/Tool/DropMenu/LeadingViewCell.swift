
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_triggerName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "live_picture" :*/
fileprivate let str_adjustmentValue:[Character] = ["l","i","v","e","_","p","i","c","t","u","r","e"]

/*: "open_picture" :*/
fileprivate let str_textName:String = "open_pvar model"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LeadingViewCell.swift
//  DropMenu
//
//  Created by song on 2020/8/4.
//

//: import UIKit
import UIKit

//: class DropMenuCell: UITableViewCell {
class LeadingViewCell: UITableViewCell {
	var fileQuantity: Double = 77.5
	var withDictionary: [AnyHashable: String] = [:]
	var contentWillSum: Double = 91.9
	var styleDictionary: [AnyHashable: String] = [:]
	var labelMediaSum: Double = -15.5
	var tabImaginationDictionary: [AnyHashable: String] = [:]

    var loadImageView: UIImageView?

    //: lazy var menuImageView: UIImageView = self.makeMenuImageView()
    lazy var menuImageView: UIImageView = self.rivetLine()
    //: lazy var menuTitleLabel: UILabel = self.makeMenuTitleLable()
    lazy var menuTitleLabel: UILabel = self.backFrom()

    //: var lineColor: UIColor = .white
    var lineColor: UIColor = .white

    //: var isFinalCell = false {
    var isFinalCell = false {
        //: didSet {
        didSet {
            //: if isFinalCell {
            if isFinalCell {
                //: lineLayer?.removeFromSuperlayer()
                lineLayer?.removeFromSuperlayer()
                //: } else {
            } else {
                //: drawLineSep()
                lineCustom()
            }
        }
    }

    //: fileprivate var selectedBgView: UIView?
    fileprivate var selectedBgView: UIView?
    //: fileprivate var lineLayer: CALayer?
    fileprivate var lineLayer: CALayer?

    //: var menuModel: DropMenuModel? {
    var menuModel: HungMenuModel? {
        //: didSet {
        didSet {
            //: guard let menuModel = menuModel else { return }
            guard let menuModel = menuModel else { return }
            //: if (menuModel.image != nil) {
            if menuModel.image != nil {
                //: menuImageView.isHidden = false
                menuImageView.isHidden = false
                //: menuImageView.image = menuModel.image
                menuImageView.image = menuModel.image
                //: menuImageView.frame = CGRect(x: Config.menuContentMargin, y: (self.bounds.size.height - Config.menuImageWidth)*0.5, width: Config.menuImageWidth, height: Config.menuImageWidth)
                menuImageView.frame = CGRect(x: Config.menuContentMargin, y: (self.bounds.size.height - Config.menuImageWidth) * 0.5, width: Config.menuImageWidth, height: Config.menuImageWidth)
                //: menuTitleLabel.frame = CGRect(x: Config.menuContentMargin * 2 + Config.menuImageWidth, y: 0, width: self.bounds.size.width - (Config.menuContentMargin * 3 + Config.menuImageWidth), height: self.bounds.size.height)
                menuTitleLabel.frame = CGRect(x: Config.menuContentMargin * 2 + Config.menuImageWidth, y: 0, width: self.bounds.size.width - (Config.menuContentMargin * 3 + Config.menuImageWidth), height: self.bounds.size.height)
                //: } else {
            } else {
                //: menuImageView.isHidden = true
                menuImageView.isHidden = true
                //: menuTitleLabel.frame = CGRect(x: Config.menuContentMargin, y: 0, width: self.bounds.size.width - Config.menuContentMargin * 2, height: self.bounds.size.height)
                menuTitleLabel.frame = CGRect(x: Config.menuContentMargin, y: 0, width: self.bounds.size.width - Config.menuContentMargin * 2, height: self.bounds.size.height)
            }
            //: menuTitleLabel.text = menuModel.title
            menuTitleLabel.text = menuModel.title
        }
    }

    //: var dropMenuStyle: DropMenuStyle? {
    var dropMenuStyle: NameMenuStyle? {
        //: didSet {
        didSet {
            //: guard let style = dropMenuStyle else { return }
            guard let style = dropMenuStyle else { return }
            //: switch style {
            switch style {
            //: case .MenuDarkStyle:
            case .MenuDarkStyle:
                //: selectedBgView?.backgroundColor = UIColor.black.withAlphaComponent(0.2)
                selectedBgView?.backgroundColor = UIColor.black.withAlphaComponent(0.2)
                //: menuTitleLabel.textColor = .white
                menuTitleLabel.textColor = .white
                //: lineColor = .white
                lineColor = .white
            //: case .MenuLightStyle:
            case .MenuLightStyle:
                //: selectedBgView?.backgroundColor = UIColor.groupTableViewBackground
                selectedBgView?.backgroundColor = UIColor.groupTableViewBackground
                //: menuTitleLabel.textColor = .black
                menuTitleLabel.textColor = .black
                //: lineColor = .lightGray
                lineColor = .lightGray
            //: case .MenuCustStyle:
            case .MenuCustStyle:
                //: selectedBgView?.backgroundColor = UIColor.groupTableViewBackground
                selectedBgView?.backgroundColor = UIColor.groupTableViewBackground
                //: menuTitleLabel.textColor = .black
                menuTitleLabel.textColor = .black
                //: lineColor = .lightGray
                lineColor = .lightGray
            }
        }
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupUI()
        masterKey()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_triggerName.reversed(), encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    
            if (self.forFirstBaselineLayout.center.x == 96.01) && (self.gestureRecognizers != nil && self.gestureRecognizers!.count == 12) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let finishModel = UpCommentView(frame: self.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
            finishModel.beautyOpen = self.isFinalCell

            
            finishModel.requestTotal = { [self] cornerCount in
            self.fileQuantity = cornerCount
            
            return self.fileQuantity
            }
            finishModel.viewDictionary = { [self] playerDictionary in
            self.withDictionary = playerDictionary
            
            guard var value = self.withDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.addSubview(finishModel)
            }

	}

    //: private func makeMenuImageView() -> UIImageView {
    private func rivetLine() -> UIImageView {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.clipsToBounds = true
        imageView.clipsToBounds = true
        //: imageView.contentMode = .scaleAspectFill
        imageView.contentMode = .scaleAspectFill
        self.loadImageView?.image = UIImage(named: (String(str_adjustmentValue)))
        //: return imageView
        
            if (menuTitleLabel.preservesSuperviewLayoutMargins) && (menuTitleLabel.layer.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let resultModify = UpCommentView()
            resultModify.beautyOpen = self.isFinalCell

            
            resultModify.requestTotal = { [self] cornerCount in
            self.contentWillSum = cornerCount
            
            return self.contentWillSum
            }
            resultModify.viewDictionary = { [self] playerDictionary in
            self.styleDictionary = playerDictionary
            
            guard var value = self.styleDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                menuTitleLabel.addSubview(resultModify)
            }

		return imageView
    }

    //: private func makeMenuTitleLable() -> UILabel {
    private func backFrom() -> UILabel {
        //: let titleLablel = UILabel()
        let titleLablel = UILabel()
        //: titleLablel.font = UIFont.systemFont(ofSize: Config.menuTitleFontSize)
        titleLablel.font = UIFont.systemFont(ofSize: Config.menuTitleFontSize)
        //: titleLablel.textAlignment = .center
        titleLablel.textAlignment = .center
        //: return titleLablel
        return titleLablel
    }

    //: private func setupUI() {
    private func masterKey() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: selectedBgView = UIView(frame: bounds)
        selectedBgView = UIView(frame: bounds)
        //: selectedBackgroundView = selectedBgView
        selectedBackgroundView = selectedBgView
        //: addSubview(menuImageView)

        var clickView: UIView = menuImageView
        if let imageView = self.loadImageView, (self.layer.masksToBounds != false) && (self.alpha != 1.0) {
            //: SWIFT_CUSTOM_DANGER
            clickView = imageView
        }
        self.addSubview(clickView)
        //: addSubview(menuTitleLabel)
        addSubview(menuTitleLabel)
    }

    //: private func drawLineSep() {
    private func lineCustom() {
        //: let lineLayer = CAShapeLayer()
        let lineLayer = CAShapeLayer()
        loadImageView = UIImageView(frame: self.frame.insetBy(dx: CGFloat(Int(self.contentScaleFactor)), dy: CGFloat(Double(self.center.y))))
        if let loadImageView = loadImageView {
            self.loadImageView?.image = UIImage(named: (String(str_textName.prefix(6)) + "icture"))
            if ((loadImageView.inputAssistantItem.trailingBarButtonGroups.count == 6) && (loadImageView.inputAssistantItem.leadingBarButtonGroups.count == 5)) && (loadImageView.layer.contents != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(loadImageView)
            }
        }

        //: lineLayer.strokeColor = UIColor.RGBA(230, 230, 230, 1.0).cgColor
        lineLayer.strokeColor = UIColor.each(230, 230, 230, 1.0).cgColor
        //: lineLayer.frame = bounds
        lineLayer.frame = bounds
        //: lineLayer.lineWidth = 0.5
        lineLayer.lineWidth = 0.5
        //: let sepline = UIBezierPath()
        let sepline = UIBezierPath()
        //: sepline.move(to: CGPoint(x: Config.menuContentMargin, y: bounds.size.height - lineLayer.lineWidth))
        sepline.move(to: CGPoint(x: Config.menuContentMargin, y: bounds.size.height - lineLayer.lineWidth))
        //: sepline.addLine(to: CGPoint(x: bounds.size.width - Config.menuContentMargin, y: bounds.size.height - lineLayer.lineWidth))
        sepline.addLine(to: CGPoint(x: bounds.size.width - Config.menuContentMargin, y: bounds.size.height - lineLayer.lineWidth))
        //: lineLayer.path = sepline.cgPath
        lineLayer.path = sepline.cgPath
        //: layer.addSublayer(lineLayer)
        layer.addSublayer(lineLayer)
        //: self.lineLayer = lineLayer
        self.lineLayer = lineLayer
    
            if (self.preservesSuperviewLayoutMargins) && (self.layer.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let resultModify = UpCommentView()
            resultModify.beautyOpen = self.isFinalCell

            
            resultModify.requestTotal = { [self] cornerCount in
            self.labelMediaSum = cornerCount
            
            return self.labelMediaSum
            }
            resultModify.viewDictionary = { [self] playerDictionary in
            self.tabImaginationDictionary = playerDictionary
            
            guard var value = self.tabImaginationDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.addSubview(resultModify)
            }

	}
}
