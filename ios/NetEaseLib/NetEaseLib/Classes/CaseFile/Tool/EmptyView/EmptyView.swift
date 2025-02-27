
//: Declare String Begin

/*: "icon_kong_kong_default" :*/
fileprivate let str_cameraTitle:String = "hiddenco"
fileprivate let str_viewData:String = "var elsen_kon"
fileprivate let str_onlineContent:String = "social session true else label_def"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

/// 样式
//: public struct EmptyStyle {
public struct PlunderedEmptyStyle {
    /// 提示文字
    //: public var TipsTitle = ""
    public var TipsTitle = ""

    /// 缺省图片
    //: public var TipsIcon = "icon_kong_kong_default"
    public var TipsIcon = (str_cameraTitle.replacingOccurrences(of: "hidden", with: "i") + String(str_viewData.suffix(5)) + "g_kong" + String(str_onlineContent.suffix(4)) + "ault")

    /// 添加下拉刷新，默认添加
    //: public var addHeaderRefresh = true
    public var addHeaderRefresh = true
}

//: typealias EmptyViewBlock = () -> Void
typealias EmptyViewBlock = () -> Void

//: class EmptyView: UIScrollView {
class EmptyView: UIScrollView {
	var observerMagnitude: Int = 82
	var sexTitle: String = "by"
	var playerArray: [AnyHashable] = []
	var adminCount: Int = 31
	var addName: String = "video"
	var equalArray: [AnyHashable] = []

    var pointImageView: UIImageView?

    //: var emptyBlock: EmptyViewBlock?
    var emptyBlock: EmptyViewBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toTitle, encoding: .utf8)!)
    }

    //: public init(frame: CGRect, style: EmptyStyle) {
    public init(frame: CGRect, style: PlunderedEmptyStyle) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .appBgColor()
        self.backgroundColor = .playerEqual()
        //: enptyStyle = style
        enptyStyle = style
        //: createUI()
        theCustomImage()
        //: if enptyStyle.addHeaderRefresh {
        if enptyStyle.addHeaderRefresh {
            //: self.addHeaderRefresh { [weak self] in
            self.thumbPunctuate { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.headerRefresh()
                self.tableTotal()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                    //: self.endRefresh()
                    self.infoTo()
                }
            }
        }
    }

    //: func headerRefresh() {
    func tableTotal() {
        //: if self.emptyBlock != nil {
        if self.emptyBlock != nil {
            //: emptyBlock!()
            emptyBlock!()
        }
    
            if (imgV.convert(CGRect(x: 0, y: CGFloat(62), width: 0, height: 0), to: imgV.superview).origin.x == 66.69) && (imgV.convert(CGRect(x: CGFloat(0), y: CGFloat(248.97), width: CGFloat(0), height: CGFloat(87)), to: imgV.superview).size.height == 34.89) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let listName = ViewBarView()
            listName.genreDestroySwitch = enptyStyle.addHeaderRefresh

            
            listName.premiumInterval = { [self] rowNumber in
            self.adminCount = rowNumber
            
            return self.adminCount
            }
            listName.indexText = { [self] writeText in
            self.addName = writeText
            
            var listName = enptyStyle.TipsTitle
            listName.append("^")
            if listName.hasSuffix(self.addName) {
                self.addName = listName
            }
            
            let atStar = self.addName.prefix(through: self.addName.index(self.addName.startIndex, offsetBy: self.addName.lowercased().count)).isEmpty
            self.addName.removeAll(keepingCapacity: atStar)
            return self.addName
            }
            listName.progressArray = { [self] reArray in
            self.equalArray = reArray
            
            guard var value = self.equalArray as? [String] else {
                return nil
            }
            return value
            }
                imgV.addSubview(listName)
            }

	}

    // MARK: - UI

    //: func createUI() {
    func theCustomImage() {
        //: self.addSubview(imgV)

        var logView: UIView = imgV
        if let imageView = self.pointImageView, (logView.tag == 1957) && (logView.isHidden) {
            //: SWIFT_CUSTOM_DANGER
            logView = imageView
        }
        self.addSubview(logView)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(StatusBarHeight+192)
            make.top.equalToSuperview().offset(a_limitRecordScreenName + 192)
        }

        //: self.addSubview(desLab)
        self.addSubview(desLab)
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    
	if let pointImageView = pointImageView {

            if (pointImageView.preservesSuperviewLayoutMargins) && (pointImageView.convert(CGRect.zero, from: pointImageView.superview).origin.y == 86.68) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let showLet = ViewBarView(frame: pointImageView.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(67), width: CGFloat(0), height: CGFloat(0))))
            showLet.genreDestroySwitch = enptyStyle.addHeaderRefresh

            
            showLet.premiumInterval = { [self] rowNumber in
            self.observerMagnitude = rowNumber
            
            return self.observerMagnitude
            }
            showLet.indexText = { [self] writeText in
            self.sexTitle = writeText
            
            var showLet = enptyStyle.TipsTitle
            let nurseLog = showLet.split(separator: "@", omittingEmptySubsequences: showLet.hasSuffix(showLet.lowercased() + "array"))
            if let nurseLogString = nurseLog.last {
                showLet = String(nurseLogString)
            }
            if showLet.hasSuffix(self.sexTitle) {
                self.sexTitle = showLet
            }
            
            self.sexTitle = String(repeating: "=" as Character, count: self.sexTitle.lowercased().count)
            return self.sexTitle
            }
            showLet.progressArray = { [self] reArray in
            self.playerArray = reArray
            
            guard var value = self.playerArray as? [String] else {
                return nil
            }
            return value
            }
                pointImageView.addSubview(showLet)
            }

	}

	}

    // MARK: - Lazy load

    //: private lazy var imgV: UIImageView = {
    private lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.outsideText(name: self.enptyStyle.TipsIcon))
        let v = UIImageView(image: UIImage.outsideText(name: self.enptyStyle.TipsIcon))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .observerShared()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 16)
        lab.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = self.enptyStyle.TipsTitle
        lab.text = self.enptyStyle.TipsTitle
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var enptyStyle: EmptyStyle = {
    lazy var enptyStyle: PlunderedEmptyStyle = {
        //: let temp = EmptyStyle()
        let temp = PlunderedEmptyStyle()
        //: return temp
        return temp
        //: }()
    }()
}
