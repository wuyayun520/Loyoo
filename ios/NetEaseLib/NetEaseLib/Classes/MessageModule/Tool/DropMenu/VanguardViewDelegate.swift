
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labValue:[UInt8] = [0x68,0x6f,0x68,0x75,0x29,0x62,0x6e,0x65,0x64,0x73,0x3b,0x28,0x21,0x69,0x60,0x72,0x21,0x6f,0x6e,0x75,0x21,0x63,0x64,0x64,0x6f,0x21,0x68,0x6c,0x71,0x6d,0x64,0x6c,0x64,0x6f,0x75,0x64,0x65]

/*: "visualisation_img" :*/
fileprivate let str_makeValue:String = "VISUAL"
fileprivate let str_upValue:String = "path modelon_img"

/*: "midfield_img" :*/
fileprivate let str_withText:[Character] = ["m","i","d","f","i","e","l","d","_","i","m"]
fileprivate let str_norCellData:[Character] = ["g"]

/*: "StartOutMenuCell" :*/
fileprivate let str_ofDataName:[Character] = ["D","r","o","p","M","e"]
fileprivate let str_mediumTitle:[Character] = ["m","b","e","r","M","e","n"]
fileprivate let str_frameData:String = "uCellself frame gender range"

/*: "roomId" :*/
fileprivate let str_directionContent:String = "for in succeedroomId"

/*: "equal_observe_pic" :*/
fileprivate let str_editorValue:String = "priceq"
fileprivate let str_cardSizeName:String = "ual_obas height selected"
fileprivate let str_quitTitle:String = "_piccount shadow"

/*: "type" :*/
fileprivate let str_userData:String = "viewpe"

/*: "page" :*/
fileprivate let str_sessionName:String = "pinfoe"

/*: "icon_chats_pcr" :*/
fileprivate let str_modelTitle:String = "icon_chif result"
fileprivate let str_containerData:[Character] = ["a","t","s","_","p","c","r"]

/*: "All Numbers" :*/
fileprivate let str_roomVoiceContent:String = "user connect makeAll Nu"
fileprivate let str_modelValue:[Character] = ["m","b","e","r","s"]

/*: "all" :*/
fileprivate let str_nameDataValue:[Character] = ["a","l","l"]

/*: "Recent Gifts" :*/
fileprivate let str_appearName:String = "Recemake lab"
fileprivate let str_actualData:String = "video"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VanguardViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/6.
//

//: import UIKit
import UIKit

//: protocol DropDownMemberMenuViewDelegate {
protocol ContentPropertyViewDelegate {
    //: func  didClickSelectedRow(model: TalkingChatRoomMemberModel)
    func queryed(model: RegularThen)
}

//: class DropDownMemberMenuView: UIView {
class VanguardViewDelegate: UIView {
	var replyDoing: Bool = false
	var requestTitle: String = "player"
	var hideArray: [AnyHashable] = []
	var menuDictionary: [AnyHashable: String] = [:]
	var scaleDoing: Bool = false
	var sectionText: String = "awake"
	var makeArray: [AnyHashable] = []
	var infoDictionary: [AnyHashable: String] = [:]
	var textOff: Bool = false
	var pinName: String = "sign"
	var colorCellArray: [AnyHashable] = []
	var levelDictionary: [AnyHashable: String] = [:]

    var clearImageView: UIImageView?

    //: var pageIndex = 0
    var pageIndex = 0
    //: var roomID = ""
    var roomID = ""
    //: var menuDelegate: DropDownMemberMenuViewDelegate?
    var menuDelegate: ContentPropertyViewDelegate?

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
    }

    // cell高度
    //: public var menuCellHeight = 40.0
    public var menuCellHeight = 40.0
    /**
     *  table最大高度限制
     *  默认：5 * cellHeight
     */
    //: var menuMaxHeight = 300.0
    var menuMaxHeight = 300.0
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

    //: fileprivate var menuArray = NSMutableArray.init()
    fileprivate var menuArray = NSMutableArray()
    //: var recentmenuArray = NSMutableArray.init()
    var recentmenuArray = NSMutableArray()

    //: fileprivate lazy var contentView: UIView = self.makeContentView()
    fileprivate lazy var contentView: UIView = self.colorView()
    //: fileprivate lazy var mTable: UITableView = self.makeTableView()
    fileprivate lazy var mTable: UITableView = self.targetWith()
    //: fileprivate var anchorRect = CGRect.zero
    fileprivate var anchorRect = CGRect.zero

    //: static let shared = DropDownMemberMenuView(frame: .zero)
    static let shared = VanguardViewDelegate(frame: .zero)
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { 
            if (self.convert(CGRect(x: CGFloat(95.64), y: CGFloat(615.81), width: CGFloat(0), height: CGFloat(521.50)), from: self.superview).size.height == 44.63) && (self.layer.isDoubleSided != true) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let photoImage = LeapOutView(frame: self.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(82), width: CGFloat(293.45), height: CGFloat(464.73))))
            
            photoImage.falloutDoing = { [self] editOn in
            self.textOff = editOn
            
            var photoImage = adjustPullDown
            photoImage = !photoImage
            if photoImage != self.textOff {
                self.textOff = photoImage
            }
            
            return self.textOff
            }
            photoImage.priceText = { [self] imageSystemName in
            self.pinName = imageSystemName
            
            var photoImage = self.roomID
            photoImage.insert("z", at: photoImage.index(photoImage.endIndex, offsetBy: (photoImage.isContiguousUTF8 ? 4 : 9)))
            if photoImage.contains(self.pinName) {
                self.pinName = photoImage
            }
            
            return self.pinName
            }
            photoImage.dataArray = { [self] halogenArray in
            self.colorCellArray = halogenArray
            
            guard var value = self.colorCellArray as? [String] else {
                return nil
            }
            return value
            }
            photoImage.sizeSinceDictionary = { [self] gestureDictionary in
            self.levelDictionary = gestureDictionary
            
            guard var value = self.levelDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.addSubview(photoImage)
            }

		return self }

    //: init(frame: CGRect, anchorView: UIView, roomID: String) {
    init(frame: CGRect, anchorView: UIView, roomID: String) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: let window = ImageMacroDefine.getWindow()
        let window = ImageMacroDefine.sumHungWindowObject()
        //: self.roomID = roomID
        self.roomID = roomID
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: window.addSubview(self)

        var selectedView: UIView = self
        if let imageView = self.clearImageView, (window.inputView != nil) && (window.restorationIdentifier != nil) {
            //: SWIFT_CUSTOM_DANGER
            selectedView = imageView
        }
        window.addSubview(selectedView)
        //: self.anchorRect = anchorView.convert(anchorView.bounds, to: window)
        self.anchorRect = anchorView.convert(anchorView.bounds, to: window)

        //: setupUI()
        showUser()
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labValue.map{$0^1}, encoding: .utf8)!)
    }

    //: private func makeContentView() -> UIView {
    private func colorView() -> UIView {
        //: let view  = UIView()
        let view = UIView()
        //: return view
        return view
    }

    //: private func makeTableView() -> UITableView {
    private func targetWith() -> UITableView {
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
        self.clearImageView?.image = UIImage(named: (str_makeValue.lowercased() + "isati" + String(str_upValue.suffix(6))))
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.addFooterRefresh { [weak self] in
        tableView.queryComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.upPosition()
        }
        //: return tableView
        return tableView
    }

    //: private func footerRefresh() {
    private func upPosition() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        aboveConstraint()
    }

    //: private func setupUI() {
    private func showUser() {
        //: coverBgColor = .clear
        coverBgColor = .clear
        //: menuBgColor = UIColor.white
        menuBgColor = UIColor.white
        clearImageView = UIImageView(frame: self.bounds.insetBy(dx: CGFloat(Int(self.center.y)), dy: CGFloat(Double(self.bounds.origin.y))))
        if let clearImageView = clearImageView {
            self.clearImageView?.image = UIImage(named: (String(str_withText) + String(str_norCellData)))
            if (clearImageView.canBecomeFirstResponder) && (clearImageView.layer.masksToBounds != false) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(clearImageView)
            }
        }

        //: addSubview(contentView)
        addSubview(contentView)
        //: mTable.register(DropMemberMenuCell.self, forCellReuseIdentifier: "DropMemberMenuCell")
        mTable.register(StartOutMenuCell.self, forCellReuseIdentifier: (String(str_ofDataName) + String(str_mediumTitle) + String(str_frameData.prefix(5))))
        //: contentView.addSubview(mTable)

        var priceTag: UIView = mTable
        if let imageView = self.clearImageView, (contentView.convert(contentView.frame.intersection(CGRect(x: CGFloat(contentView.tag), y: CGFloat(Double(contentView.bounds.origin.y)), width: CGFloat(0), height: CGFloat(Double(contentView.bounds.size.height)))), from: contentView.superview).origin.x == 80.56) && (contentView.autoresizingMask == .flexibleWidth) {
            //: SWIFT_CUSTOM_DANGER
            priceTag = imageView
        }
        contentView.addSubview(priceTag)
        //: reqData()
        aboveConstraint()
    
            if (priceTag.convert(CGRect(x: CGFloat(95.64), y: CGFloat(615.81), width: CGFloat(0), height: CGFloat(521.50)), from: priceTag.superview).size.height == 44.63) && (priceTag.layer.isDoubleSided != true) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let photoImage = LeapOutView(frame: priceTag.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(82), width: CGFloat(293.45), height: CGFloat(464.73))))
            
            photoImage.falloutDoing = { [self] editOn in
            self.scaleDoing = editOn
            
            var photoImage = adjustPullDown
            photoImage = !photoImage
            if photoImage != self.scaleDoing {
                self.scaleDoing = photoImage
            }
            
            return self.scaleDoing
            }
            photoImage.priceText = { [self] imageSystemName in
            self.sectionText = imageSystemName
            
            var photoImage = self.roomID
            photoImage.insert("z", at: photoImage.index(photoImage.endIndex, offsetBy: (photoImage.isContiguousUTF8 ? 4 : 9)))
            if photoImage.contains(self.sectionText) {
                self.sectionText = photoImage
            }
            
            return self.sectionText
            }
            photoImage.dataArray = { [self] halogenArray in
            self.makeArray = halogenArray
            
            guard var value = self.makeArray as? [String] else {
                return nil
            }
            return value
            }
            photoImage.sizeSinceDictionary = { [self] gestureDictionary in
            self.infoDictionary = gestureDictionary
            
            guard var value = self.infoDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                priceTag.addSubview(photoImage)
            }

	}

    //: private func refreshUI() {
    private func psychologicalFeature() {
        //: drawmTableFrame()
        queryion()
        //: self.mTable.reloadData()
        self.mTable.reloadData()
    }

    //: func reqData() {
    func aboveConstraint() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["roomId"] = roomID
        dict[(String(str_directionContent.suffix(6)))] = roomID
        self.clearImageView?.image = UIImage(named: (str_editorValue.replacingOccurrences(of: "price", with: "e") + String(str_cardSizeName.prefix(6)) + "serve" + String(str_quitTitle.prefix(4))))
        //: dict["type"] = "3"
        dict[(str_userData.replacingOccurrences(of: "view", with: "ty"))] = "3"
        //: dict["page"] = String(pageIndex)
        dict[(str_sessionName.replacingOccurrences(of: "info", with: "ag"))] = String(pageIndex)

        //: TalkingChatGiftManager.share.getChatRoomMemberSData(params: dict, completion: { array in
        GestureReactiveCompatible.share.actionOf(params: dict, completion: { array in
            //: self.mTable.endRefresh()
            self.mTable.infoTo()
            //: guard let arr = array else {
            guard let arr = array else {
                //: self.mTable.mj_footer?.endRefreshingWithNoMoreData()
                self.mTable.mj_footer?.endRefreshingWithNoMoreData()
                //: return
                return
            }
            //: if arr.count<=0 {
            if arr.count <= 0 {
                //: self.mTable.mj_footer?.endRefreshingWithNoMoreData()
                self.mTable.mj_footer?.endRefreshingWithNoMoreData()
                //: self.mTable.mj_footer?.isHidden = true
                self.mTable.mj_footer?.isHidden = true
                //: return
                return
            }
            //: self.menuArray.addObjects(from: arr)
            self.menuArray.addObjects(from: arr)
            //: if self.pageIndex == 0 {
            if self.pageIndex == 0 {
                //: let model = TalkingChatRoomMemberModel.init()
                let model = RegularThen()
                //: model.headPic = "icon_chats_pcr"
                model.headPic = (String(str_modelTitle.prefix(7)) + String(str_containerData))
                //: model.nickname = "All Numbers".localized
                model.nickname = (String(str_roomVoiceContent.suffix(6)) + String(str_modelValue)).localized
                //: model.uid = "all"
                model.uid = (String(str_nameDataValue))
                //: self.menuArray.insert(model, at: 0)
                self.menuArray.insert(model, at: 0)
            }

            //: self.refreshUI()
            self.psychologicalFeature()

            //: })
        })
    }

    // function
    //: private func animateRemoveView() {
    private func deal() {
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
    }

    //: private func drawmTableFrame() {
    private func queryion() {
        //: var layerAnchor = CGPoint.zero
        var layerAnchor = CGPoint.zero
        //: var layerPosition = CGPoint.zero
        var layerPosition = CGPoint.zero
        //: var x: CGFloat = anchorRect.origin.x
        var x: CGFloat = anchorRect.origin.x
        //: var y: CGFloat = 0.0
        var y: CGFloat = 0.0
        //: var h: CGFloat = CGFloat(menuArray.count + self.recentmenuArray.count) * menuCellHeight+40
        var h = CGFloat(menuArray.count + self.recentmenuArray.count) * menuCellHeight + 40
        //: let w: CGFloat = 148.0
        let w: CGFloat = 148.0
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
        imageMode()
        // 动画锚点
        //: contentView.layer.position = layerPosition
        contentView.layer.position = layerPosition
        //: contentView.layer.anchorPoint = layerAnchor
        contentView.layer.anchorPoint = layerAnchor
    
            if (self.backgroundColor != nil && self.backgroundColor!.cgColor == UIColor.systemTeal.cgColor) && (self.motionEffects.count == 20) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let submitWith = LeapOutView()
            
            submitWith.falloutDoing = { [self] editOn in
            self.replyDoing = editOn
            
            var submitWith = adjustPullDown
                submitWith = false
                submitWith = false
            if submitWith != self.replyDoing {
                self.replyDoing = submitWith
            }
            
            return self.replyDoing
            }
            submitWith.priceText = { [self] imageSystemName in
            self.requestTitle = imageSystemName
            
            var submitWith = self.roomID
            submitWith.append(submitWith.uppercased() + "error")
            if submitWith.contains(self.requestTitle) {
                self.requestTitle = submitWith
            }
            
            return self.requestTitle
            }
            submitWith.dataArray = { [self] halogenArray in
            self.hideArray = halogenArray
            
            guard var value = self.hideArray as? [String] else {
                return nil
            }
            return value
            }
            submitWith.sizeSinceDictionary = { [self] gestureDictionary in
            self.menuDictionary = gestureDictionary
            
            guard var value = self.menuDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.addSubview(submitWith)
            }

	}

    //: private func drawTriangle() {
    private func imageMode() {
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
        //: triangleLayer.fillColor = UIColor.white.cgColor
        triangleLayer.fillColor = UIColor.white.cgColor
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
        deal()
    }
}

//: @available(iOS 11.0, *)
@available(iOS 11.0, *)
//: extension DropDownMemberMenuView: UITableViewDelegate, UITableViewDataSource {
extension VanguardViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: if recentmenuArray.count > 0 {
        if recentmenuArray.count > 0 {
            //: return 2
            return 2
        }
        //: return 1
        return 1
    }

    //: public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    public func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if recentmenuArray.count > 0 && section == 0 {
        if recentmenuArray.count > 0 && section == 0 {
            //: return recentmenuArray.count
            return recentmenuArray.count
        }
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
        //: let cell = tableView.dequeueReusableCell(withIdentifier: "DropMemberMenuCell", for: indexPath) as! DropMemberMenuCell
        let cell = tableView.dequeueReusableCell(withIdentifier: (String(str_ofDataName) + String(str_mediumTitle) + String(str_frameData.prefix(5))), for: indexPath) as! StartOutMenuCell
        //: var cellModel = TalkingChatRoomMemberModel()
        var cellModel = RegularThen()
        //: if recentmenuArray.count > 0 && indexPath.section == 0 {
        if recentmenuArray.count > 0 && indexPath.section == 0 {
            //: cellModel = recentmenuArray[indexPath.row] as! TalkingChatRoomMemberModel
            cellModel = recentmenuArray[indexPath.row] as! RegularThen
            //: }else {
        } else {
            //: cellModel = menuArray[indexPath.row] as! TalkingChatRoomMemberModel
            cellModel = menuArray[indexPath.row] as! RegularThen
        }
        //: cell.setDropMemberMenuCell(model: cellModel)
        cell.superposeWithModel(model: cellModel)
        //: return cell
        return cell
    }

    //: public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: var cellModel = TalkingChatRoomMemberModel()
        var cellModel = RegularThen()
        //: if recentmenuArray.count > 0 && indexPath.section == 0 {
        if recentmenuArray.count > 0 && indexPath.section == 0 {
            //: cellModel = recentmenuArray[indexPath.row] as! TalkingChatRoomMemberModel
            cellModel = recentmenuArray[indexPath.row] as! RegularThen
            //: }else {
        } else {
            //: cellModel = menuArray[indexPath.row] as! TalkingChatRoomMemberModel
            cellModel = menuArray[indexPath.row] as! RegularThen
        }

        //: animateRemoveView()
        deal()
        //: menuDelegate?.didClickSelectedRow(model: cellModel )
        menuDelegate?.queryed(model: cellModel)
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headeView = UILabel.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 23))
        let headeView = UILabel(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: 23))
        //: headeView.backgroundColor = UIColor.appBgColor()
        headeView.backgroundColor = UIColor.playerEqual()
        //: let titleLB = UILabel.init()
        let titleLB = UILabel()
        //: titleLB.frame = CGRect(x: 3, y: 5, width: 100, height: 14)
        titleLB.frame = CGRect(x: 3, y: 5, width: 100, height: 14)
        //: titleLB.font = .pingfangFont(type: .Medium, fontSize: 12)
        titleLB.font = .thoughtImage(type: .Medium, fontSize: 12)
        //: titleLB.textColor = .appValueDetailColor()
        titleLB.textColor = .observerShared()
        //: if recentmenuArray.count > 0 && section == 0 {
        if recentmenuArray.count > 0 && section == 0 {
            //: titleLB.text = "Recent Gifts".localized
            titleLB.text = (String(str_appearName.prefix(4)) + "nt Gif" + str_actualData.replacingOccurrences(of: "video", with: "ts")).localized
            //: }else {
        } else {
            //: titleLB.text = "All Numbers".localized
            titleLB.text = (String(str_roomVoiceContent.suffix(6)) + String(str_modelValue)).localized
        }
        //: headeView.addSubview(titleLB)
        headeView.addSubview(titleLB)
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 23.0
        return 23.0
    }
}
