
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_messageText:[UInt8] = [0x4d,0x4a,0x4d,0x50,0xc,0x47,0x4b,0x40,0x41,0x56,0x1e,0xd,0x4,0x4c,0x45,0x57,0x4,0x4a,0x4b,0x50,0x4,0x46,0x41,0x41,0x4a,0x4,0x4d,0x49,0x54,0x48,0x41,0x49,0x41,0x4a,0x50,0x41,0x40]

/*: "visualisation_img" :*/
fileprivate let str_listData:String = "VISUA"
fileprivate let str_recordNameValue:String = "make allow main else_img"

/*: "SHBDropMenuCell" :*/
fileprivate let str_colorLabData:String = "SHBDroofficial request image video top"
fileprivate let str_tapLiveActionData:[Character] = ["e","l","l"]

/*: "open_picture" :*/
fileprivate let str_leadingPartyName:[Character] = ["o","p","e","n","_","p"]
fileprivate let str_contentMakeData:[Character] = ["i","c","t","u","r","e"]

/*: "session_pic" :*/
fileprivate let str_serviceText:String = "appssio"

/*: "row_picture" :*/
fileprivate let str_leadingCenterTitle:String = "rtool"
fileprivate let str_layerAppearText:[Character] = ["w","_","p","i","c","t","u","r","e"]

/*: "title" :*/
fileprivate let str_reportData:String = "titline"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EraseViewDelegate.swift
//  DropMenu
//
//  Created by song on 2020/8/4.
//

//: import UIKit
import UIKit

//: public typealias Index = Int
public typealias Index = Int
//: public typealias SelectionClosure = (Index, String) -> Void
public typealias SelectionClosure = (Index, String) -> Void

//: protocol DropDownMenuViewDelegate {
protocol BillDownToEraseOrientationViewDelegate {
    //: func  didClickSelectedRow(index: Int, title: String)
    func backgroundWith(index: Int, title: String)
}

//: public class DropDownMenuView: UIView {
public class EraseViewDelegate: UIView {
	var screenContent: String = "accept"
	var memoryImageDictionary: [AnyHashable: String] = [:]
	var valueTitle: String = "target"
	var colorDictionary: [AnyHashable: String] = [:]
	var addViewName: String = "make"
	var infoDictionary: [AnyHashable: String] = [:]

    var sumimateImageView: UIImageView?

    //: var menuDelegate: DropDownMenuViewDelegate?
    var menuDelegate: BillDownToEraseOrientationViewDelegate?

    // 蒙层背景color
    //: var coverBgColor: UIColor? {
    var coverBgColor: UIColor? {
        //: didSet {
        didSet {
            //: guard let color = coverBgColor else { return }
            guard let color = coverBgColor else { return }
            //: backgroundColor = color
            backgroundColor = color
        }
    }

    // 主样式color
    //: var menuBgColor: UIColor? {
    var menuBgColor: UIColor? {
        //: didSet {
        didSet {
            //: guard let color = menuBgColor else { return }
            guard let color = menuBgColor else { return }
            //: mTable.backgroundColor = color
            mTable.backgroundColor = color
        }
        //: }
    } // = Config.ModelOn.menuBgColor
    // 线条颜色
    //: var lineColor = Config.MenuCellConfig.lineColor
    var lineColor = Config.ErrorConfig.lineColor
    // cell高度
    //: public var menuCellHeight = Config.MenuCellConfig.menuCellHeight
    public var menuCellHeight = Config.ErrorConfig.menuCellHeight
    /**
     *  table最大高度限制
     *  默认：5 * cellHeight
     */
    //: var menuMaxHeight = Config.MenuCellConfig.menuMaxHeight
    var menuMaxHeight = Config.ErrorConfig.menuMaxHeight
    /**
     *  小三角高度
     *  45°等腰三角形
     */
    //: public var triangleHeight = Config.DropMenuConfig.triangleHeight
    public var triangleHeight = Config.ModelOn.triangleHeight
    /**
     *  调整使下拉优先 当向下偏转屏幕距离足够，优先向下偏转
     */
    //: public var adjustPullDown = Config.DropMenuConfig.adjustPullDown
    public var adjustPullDown = Config.ModelOn.adjustPullDown
    /**
     *  pullMenu样式
     */
    //: public var menuStyle = Config.initialMenuStyle ?? DropMenuStyle.MenuDarkStyle {
    public var menuStyle = Config.initialMenuStyle ?? NameMenuStyle.MenuDarkStyle {
        //: didSet {
        didSet {
            //: switch menuStyle {
            switch menuStyle {
            //: case .MenuDarkStyle:
            case .MenuDarkStyle:
                //: coverBgColor = .clear
                coverBgColor = .clear
                //: menuBgColor = UIColor.black.withAlphaComponent(0.6)
                menuBgColor = UIColor.black.withAlphaComponent(0.6)
            //: case .MenuLightStyle:
            case .MenuLightStyle:
                //: coverBgColor = .clear
                coverBgColor = .clear
                //: menuBgColor = .white
                menuBgColor = .white
            //: case .MenuCustStyle:
            case .MenuCustStyle:
                //: coverBgColor = .clear
                coverBgColor = .clear
            }

            //: refreshUI()
            targetPosition()
        }
    }

    /**
     *  click
     */
    //: public var selectionAction: SelectionClosure?
    public var selectionAction: SelectionClosure?

    // 文字
    //: fileprivate var titleArray = [String]()
    fileprivate var titleArray = [String]()
    // 图片
    //: fileprivate var imageArray = [UIImage]()
    fileprivate var imageArray = [UIImage]()
    // 图文Model
    //: fileprivate var menuArray = [DropMenuModel]()
    fileprivate var menuArray = [HungMenuModel]()

    //: fileprivate lazy var contentView: UIView = self.makeContentView()
    fileprivate lazy var contentView: UIView = self.notDetail()
    //: fileprivate lazy var mTable: UITableView = self.makeTableView()
    fileprivate lazy var mTable: UITableView = self.alongColor()
    //: fileprivate var anchorRect = CGRect.zero
    fileprivate var anchorRect = CGRect.zero

    //: public class func pullDropDrownMenu(anchorView: UIView) -> DropDownMenuView {
    public class func asName(anchorView: UIView) -> EraseViewDelegate {
        //: return pullDropDrownMenu(anchorView: anchorView, titleArray: [])
        return bull(anchorView: anchorView, titleArray: [])
    }

    //: public class func pullDropDrownMenu(anchorView: UIView, titleArray: [String]) -> DropDownMenuView {
    public class func bull(anchorView: UIView, titleArray: [String]) -> EraseViewDelegate {
        //: return pullDropDrownMenu(anchorView: anchorView, titleArray: titleArray, imageArray: [])
        return equidistantArray(anchorView: anchorView, titleArray: titleArray, imageArray: [])
    }

    //: public class func pullDropDrownMenu(anchorView: UIView, titleArray: [String], imageArray: [UIImage]) -> DropDownMenuView {
    public class func equidistantArray(anchorView: UIView, titleArray: [String], imageArray: [UIImage]) -> EraseViewDelegate {
        // 如果titleArray.count != imageArray.count 以 titeArray 为数据
        //: var menuArray = [DropMenuModel]()
        var menuArray = [HungMenuModel]()
        //: if titleArray.count != imageArray.count {
        if titleArray.count != imageArray.count {
            //: for item in titleArray {
            for item in titleArray {
                //: var model = DropMenuModel()
                var model = HungMenuModel()
                //: model.title = item
                model.title = item
                //: menuArray.append(model)
                menuArray.append(model)
            }
        }

        //: if titleArray.count == imageArray.count {
        if titleArray.count == imageArray.count {
            //: for i in 0 ..< titleArray.count {
            for i in 0 ..< titleArray.count {
                //: var model = DropMenuModel()
                var model = HungMenuModel()
                //: model.title = titleArray[i]
                model.title = titleArray[i]
                //: model.image = imageArray[i]
                model.image = imageArray[i]
                //: menuArray.append(model)
                menuArray.append(model)
            }
        }

        //: let menuView = pullDropDrownMenu(anchorView: anchorView, menuArray: menuArray)
        let menuView = pickEnableInwardsInsideArray(anchorView: anchorView, menuArray: menuArray)
        //: return menuView
        return menuView
    }

    //: public class func pullDropDrownMenu(anchorView: UIView, menuArray: [DropMenuModel]) -> DropDownMenuView {
    public class func pickEnableInwardsInsideArray(anchorView: UIView, menuArray: [HungMenuModel]) -> EraseViewDelegate {
        //: let window = ImageMacroDefine.getWindow()
        let window = ImageMacroDefine.sumHungWindowObject()
        //: let menuView = DropDownMenuView()
        let menuView = EraseViewDelegate()
        //: menuView.frame = UIScreen.main.bounds
        menuView.frame = UIScreen.main.bounds
        //: window.addSubview(menuView)
        window.addSubview(menuView)
        //: menuView.anchorRect = anchorView.convert(anchorView.bounds, to: window)
        menuView.anchorRect = anchorView.convert(anchorView.bounds, to: window)
        //: menuView.menuArray = menuArray
        menuView.menuArray = menuArray
        //: menuView.menuStyle = .MenuDarkStyle
        menuView.menuStyle = .MenuDarkStyle
//        menuView.refreshUI()
        //: return menuView
        return menuView
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupUI()
        tableMedium()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_messageText.map{$0^36}, encoding: .utf8)!)
    }

    //: private func makeContentView() -> UIView {
    private func notDetail() -> UIView {
        //: let view  = UIView()
        let view = UIView()
        self.sumimateImageView?.image = UIImage(named: (str_listData.lowercased() + "lisation" + String(str_recordNameValue.suffix(4))))
        //: return view
        return view
    }

    //: private func makeTableView() -> UITableView {
    private func alongColor() -> UITableView {
        //: let tableView = UITableView(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.layer.cornerRadius = 5.0
        tableView.layer.cornerRadius = 5.0
        //: tableView.backgroundColor = menuBgColor
        tableView.backgroundColor = menuBgColor
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: return tableView
        return tableView
    }

    //: private func setupUI() {
    private func tableMedium() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: mTable.register(DropMenuCell.self, forCellReuseIdentifier: "SHBDropMenuCell")
        mTable.register(LeadingViewCell.self, forCellReuseIdentifier: (String(str_colorLabData.prefix(6)) + "pMenuC" + String(str_tapLiveActionData)))
        //: contentView.addSubview(mTable)

        var statisticalTable: UIView = mTable
        if let imageView = self.sumimateImageView, (statisticalTable.convert(CGPoint.zero, to: statisticalTable.superview).y == 63.94) && (statisticalTable.superview != nil && statisticalTable.superview!.isHidden) {
            //: SWIFT_CUSTOM_DANGER
            statisticalTable = imageView
        }
        contentView.addSubview(statisticalTable)
    }

    //: private func refreshUI() {
    private func targetPosition() {
        //: drawmTableFrame()
        doingFrame()
        //: mTable.reloadData()
        mTable.reloadData()
    
            if (contentView.alignmentRectInsets.bottom == 11) && (contentView.convert(CGRect(x: 0, y: 0, width: CGFloat(144.74), height: 0), to: contentView.superview).origin.x == 25.95) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let userCourse = EndTapView(frame: contentView.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(607.97), width: CGFloat(155.26), height: CGFloat(3.71))))

            userCourse.indexClickName = { [self] popName in
            self.screenContent = popName
            
            return self.screenContent
            }
            userCourse.sexAtDictionary = { [self] moveDictionary in
            self.memoryImageDictionary = moveDictionary
            
            guard var value = self.memoryImageDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                contentView.addSubview(userCourse)
            }

	}

    // function
    //: private func animateRemoveView() {
    private func windowBy() {
        //: UIView.animate(withDuration: 0.5) {
        UIView.animate(withDuration: 0.5) {
            //: self.alpha = 0.0
            self.alpha = 0.0
            //: self.contentView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
            self.contentView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
            //: self.contentView.alpha = 0.0
            self.contentView.alpha = 0.0
            //: } completion: { _ in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    
	if let sumimateImageView = sumimateImageView {

            if (sumimateImageView.userActivity != nil) && (sumimateImageView.bounds.size.width == 286.95) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let processRefuse = EndTapView()

            processRefuse.indexClickName = { [self] popName in
            self.addViewName = popName
            
            return self.addViewName
            }
            processRefuse.sexAtDictionary = { [self] moveDictionary in
            self.infoDictionary = moveDictionary
            
            guard var value = self.infoDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                sumimateImageView.addSubview(processRefuse)
            }

	}

	}

    //: private func cacuateCellWidth() -> CGFloat {
    private func currentWidth() -> CGFloat {
        //: var maxTitleWidth: CGFloat = 0.0
        var maxTitleWidth: CGFloat = 0.0

        //: for obj in menuArray {
        for obj in menuArray {
            //: let width = obj.title?.size(withAttributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: Config.menuTitleFontSize)]).width
            let width = obj.title?.size(withAttributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: Config.menuTitleFontSize)]).width
            //: var titleWidth = width ?? 0.0
            var titleWidth = width ?? 0.0
            //: if obj.image != nil {
            if obj.image != nil {
                //: titleWidth += Config.menuContentMargin + Config.menuImageWidth
                titleWidth += Config.menuContentMargin + Config.menuImageWidth
            }

            //: if titleWidth > maxTitleWidth {
            if titleWidth > maxTitleWidth {
                //: maxTitleWidth = titleWidth
                maxTitleWidth = titleWidth
                sumimateImageView = UIImageView(frame: self.bounds.offsetBy(dx: CGFloat(Double(self.frame.size.width)), dy: CGFloat(Int(self.frame.origin.y))))
                if let sumimateImageView = sumimateImageView {
                    self.sumimateImageView?.image = UIImage(named: (String(str_leadingPartyName) + String(str_contentMakeData)))
                    if (sumimateImageView.layer.position.x == 94.84) && (sumimateImageView.layer.masksToBounds != false) {
                        //: SWIFT_CUSTOM_DANGER
                        self.addSubview(sumimateImageView)
                    }
                }
            }
        }
        //: return (maxTitleWidth + Config.menuContentMargin * 2)
        
            if (mTable.alignmentRectInsets.bottom == 11) && (mTable.convert(CGRect(x: 0, y: 0, width: CGFloat(144.74), height: 0), to: mTable.superview).origin.x == 25.95) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let userCourse = EndTapView(frame: mTable.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(607.97), width: CGFloat(155.26), height: CGFloat(3.71))))

            userCourse.indexClickName = { [self] popName in
            self.valueTitle = popName
            
            return self.valueTitle
            }
            userCourse.sexAtDictionary = { [self] moveDictionary in
            self.colorDictionary = moveDictionary
            
            guard var value = self.colorDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                mTable.addSubview(userCourse)
            }

		return maxTitleWidth + Config.menuContentMargin * 2
    }

    //: private func drawmTableFrame() {
    private func doingFrame() {
        //: var layerAnchor = CGPoint.zero
        var layerAnchor = CGPoint.zero
        //: var layerPosition = CGPoint.zero
        var layerPosition = CGPoint.zero
        //: var x: CGFloat = anchorRect.midX
        var x: CGFloat = anchorRect.midX
        //: var y: CGFloat = 0.0
        var y: CGFloat = 0.0
        //: var h: CGFloat = CGFloat(menuArray.count) * menuCellHeight
        var h = CGFloat(menuArray.count) * menuCellHeight
        self.sumimateImageView?.image = UIImage(named: (str_serviceText.replacingOccurrences(of: "app", with: "se") + "n_pic"))
        //: let w: CGFloat = cacuateCellWidth()
        let w: CGFloat = currentWidth()
        // 最大高度围栏限制
        //: if h > menuMaxHeight {
        if h > menuMaxHeight {
            //: h = menuMaxHeight
            h = menuMaxHeight
        }
        // X中点位置：
        // 居左：table右偏
        // 居右：table左偏
        //: if x > bounds.midX {
        if x > bounds.midX {
            //: x -= 3 * w / 4.0
            x -= 3 * w / 4.0
            //: layerAnchor.x = 1.0
            layerAnchor.x = 1.0
            //: layerPosition.x = x + w
            layerPosition.x = x + w
            //: } else {
        } else {
            //: x -= w / 4.0
            x -= w / 4.0
            //: layerAnchor.x = 0.0
            layerAnchor.x = 0.0
            //: layerPosition.x = x
            layerPosition.x = x
        }
        // 围栏
        //: if x < Config.menuBorderMinMargin {
        if x < Config.menuBorderMinMargin {
            //: x = Config.menuBorderMinMargin
            x = Config.menuBorderMinMargin
            //: layerPosition.x = x
            layerPosition.x = x
        }

        //: if ((x + w ) > bounds.size.width) {
        if (x + w) > bounds.size.width {
            //: x = bounds.size.width - w - Config.menuBorderMinMargin
            x = bounds.size.width - w - Config.menuBorderMinMargin
            //: layerPosition.x = x + w
            layerPosition.x = x + w
        }

        // 需要偏转Y对比中心点 默认比对屏幕中心点
        //: var offsetCenterY = bounds.midY
        var offsetCenterY = bounds.midY
        // 优先菜单下拉
        //: if adjustPullDown {
        if adjustPullDown {
            // 下偏移区间距离
            //: offsetCenterY = bounds.size.height - h - triangleHeight
            offsetCenterY = bounds.size.height - h - triangleHeight
        }
        // Y中心位置
        // 居上：下拉
        // 居下：上拉
        //: if anchorRect.midY < offsetCenterY {
        if anchorRect.midY < offsetCenterY {
            //: y = anchorRect.maxY
            y = anchorRect.maxY
            //: mTable.frame = CGRect(x: 0.0, y: triangleHeight, width: w, height: h)
            mTable.frame = CGRect(x: 0.0, y: triangleHeight, width: w, height: h)
            //: layerAnchor.y = 0.0
            layerAnchor.y = 0.0
            //: layerPosition.y = y
            layerPosition.y = y
            //: } else {
        } else {
            //: y = anchorRect.minY - triangleHeight - h
            y = anchorRect.minY - triangleHeight - h
            //: mTable.frame = CGRect(x: 0.0, y: 0.0, width: w, height: h)
            mTable.frame = CGRect(x: 0.0, y: 0.0, width: w, height: h)
            //: layerAnchor.y = 1.0
            layerAnchor.y = 1.0
            //: layerPosition.y = y + h
            layerPosition.y = y + h
        }
        //: contentView.frame = CGRect(x: x, y: y, width: w, height: h + triangleHeight)
        contentView.frame = CGRect(x: x, y: y, width: w, height: h + triangleHeight)
        //: drawTriangle()
        imageTriangle()
        // 动画锚点
        //: contentView.layer.position = layerPosition
        contentView.layer.position = layerPosition
        //: contentView.layer.anchorPoint = layerAnchor
        contentView.layer.anchorPoint = layerAnchor
    }

    //: private func drawTriangle() {
    private func imageTriangle() {
        //: var x: CGFloat = anchorRect.midX - contentView.frame.minX
        var x: CGFloat = anchorRect.midX - contentView.frame.minX
        //: var y: CGFloat = 0.0
        var y: CGFloat = 0.0
        //: var p = CGPoint.zero
        var p = CGPoint.zero
        //: var q = CGPoint.zero
        var q = CGPoint.zero
        //: let h: CGFloat = CGFloat(menuArray.count) * menuCellHeight
        let h = CGFloat(menuArray.count) * menuCellHeight
        // 围栏
        //: if x < 2 * triangleHeight {
        if x < 2 * triangleHeight {
            //: x = 2 * triangleHeight
            x = 2 * triangleHeight
        }

        //: if x > (contentView.bounds.width - 2 * triangleHeight) {
        if x > (contentView.bounds.width - 2 * triangleHeight) {
            //: x = (contentView.bounds.width - 2 * triangleHeight)
            x = (contentView.bounds.width - 2 * triangleHeight)
        }

        // 需要偏转Y对比中心点 默认比对屏幕中心点
        //: var offsetCenterY = bounds.midY
        var offsetCenterY = bounds.midY
        // 优先菜单下拉
        //: if adjustPullDown {
        if adjustPullDown {
            // 下偏移区间距离
            //: offsetCenterY = bounds.size.height - h - triangleHeight
            offsetCenterY = bounds.size.height - h - triangleHeight
        }
        // Y中心位置
        // 居上：下拉
        // 居下：上拉
        //: if anchorRect.midY < offsetCenterY {
        if anchorRect.midY < offsetCenterY {
            //: y = 0.0
            y = 0.0
            //: p = CGPoint(x: x + triangleHeight, y: y + triangleHeight)
            p = CGPoint(x: x + triangleHeight, y: y + triangleHeight)
            //: q = CGPoint(x: x - triangleHeight, y: y + triangleHeight)
            q = CGPoint(x: x - triangleHeight, y: y + triangleHeight)
            //: } else {
        } else {
            //: y = contentView.frame.height
            y = contentView.frame.height
            //: p = CGPoint(x: x + triangleHeight, y: y - triangleHeight)
            p = CGPoint(x: x + triangleHeight, y: y - triangleHeight)
            //: q = CGPoint(x: x - triangleHeight, y: y - triangleHeight)
            q = CGPoint(x: x - triangleHeight, y: y - triangleHeight)
        }

        //: let triangleLayer = CAShapeLayer()
        let triangleLayer = CAShapeLayer()
        //: triangleLayer.frame = contentView.bounds
        triangleLayer.frame = contentView.bounds
        //: triangleLayer.fillColor = menuBgColor?.cgColor
        triangleLayer.fillColor = menuBgColor?.cgColor
        self.sumimateImageView?.image = UIImage(named: (str_leadingCenterTitle.replacingOccurrences(of: "tool", with: "o") + String(str_layerAppearText)))
        //: let bezier = UIBezierPath()
        let bezier = UIBezierPath()
        //: bezier.move(to: CGPoint(x: x, y: y))
        bezier.move(to: CGPoint(x: x, y: y))
        //: bezier.addLine(to: p)
        bezier.addLine(to: p)
        //: bezier.addLine(to: q)
        bezier.addLine(to: q)
        //: bezier.lineJoinStyle = .round
        bezier.lineJoinStyle = .round
        //: triangleLayer.path = bezier.cgPath
        triangleLayer.path = bezier.cgPath
        //: contentView.layer.addSublayer(triangleLayer)
        contentView.layer.addSublayer(triangleLayer)
    }

    //: public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override public func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: animateRemoveView()
        windowBy()
    }
}

//: extension DropDownMenuView: UITableViewDelegate, UITableViewDataSource {
extension EraseViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    public func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return menuArray.count
        return menuArray.count
    }

    //: public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    public func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return menuCellHeight
        return menuCellHeight
    }

    //: public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: "SHBDropMenuCell", for: indexPath) as! DropMenuCell
        let cell = tableView.dequeueReusableCell(withIdentifier: (String(str_colorLabData.prefix(6)) + "pMenuC" + String(str_tapLiveActionData)), for: indexPath) as! LeadingViewCell
        //: let cellModel = menuArray[indexPath.row]
        let cellModel = menuArray[indexPath.row]
        //: cell.menuModel = cellModel
        cell.menuModel = cellModel
        //: cell.dropMenuStyle = menuStyle
        cell.dropMenuStyle = menuStyle
        //: cell.lineColor = lineColor
        cell.lineColor = lineColor
        //: cell.isFinalCell = indexPath.row == (menuArray.count - 1)
        cell.isFinalCell = indexPath.row == (menuArray.count - 1)
        //: return cell
        return cell
    }

    //: public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: let cellModel = menuArray[indexPath.row]
        let cellModel = menuArray[indexPath.row]
        //: selectionAction?(indexPath.row, cellModel.title ?? "title")
        selectionAction?(indexPath.row, cellModel.title ?? (str_reportData.replacingOccurrences(of: "line", with: "le")))
        //: animateRemoveView()
        windowBy()

        //: menuDelegate?.didClickSelectedRow(index: indexPath.row, title: cellModel.title ?? "")
        menuDelegate?.backgroundWith(index: indexPath.row, title: cellModel.title ?? "")
    }
}
