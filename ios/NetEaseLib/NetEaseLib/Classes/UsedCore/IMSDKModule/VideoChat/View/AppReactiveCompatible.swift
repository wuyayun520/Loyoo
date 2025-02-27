
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_theoryData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "inside_img" :*/
fileprivate let str_cameraContent:[Character] = ["i","n","s","i","d","e","_","i"]
fileprivate let str_backgroundName:String = "inputg"

/*: "icon_mini_voice_end" :*/
fileprivate let str_modelTitle:[Character] = ["i","c","o","n","_","m","i","n","i","_","v","o","i","c","e"]
fileprivate let str_digitalValue:[Character] = ["_","e","n","d"]

/*: "#F95151" :*/
fileprivate let str_normalContent:[Character] = ["#","F","9","5","1"]
fileprivate let str_blockData:[Character] = ["5","1"]

/*: "End of call" :*/
fileprivate let str_labTitle:[Character] = ["E","n","d"," ","o","f"," ","c","a","l"]
fileprivate let str_limitContent:String = "value"

/*: "img_home_shadow_icon" :*/
fileprivate let str_imageTitle:[Character] = ["i","m","g","_","h","o","m","e","_","s","h","a"]
fileprivate let str_blockTitle:[Character] = ["d","o","w"]
fileprivate let str_tingDefineValue:[Character] = ["_","i","c","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/6/1.
//

//: import UIKit
import UIKit

//: class TalkingVideoMiniView: TalkingBaseMiniView {
class AppReactiveCompatible: LabelMiniView {
	var tapLoadDoing: Bool = false
	var barTitle: String = "empty"
	var actionArray: [AnyHashable] = []
	var playerDictionary: [AnyHashable: String] = [:]

    var changeFormImageView: UIImageView?

    // 小窗口通话状态
    //: private var currStatus = MiniWindowStatus.end
    private var currStatus = OccurrentWindowStatus.end

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubViewsConstraint()
        playerSub()
        //: addTapAndPanGestures()
        eachGestures()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_theoryData, encoding: .utf8)!)
    }

    /// 重写父类方法
    //: override func dismissWhenCallEnd() {
    override func sortExit() {
        //: self.coverView.isHidden = false
        self.coverView.isHidden = false
        //: self.renderView.isHidden = true
        self.renderView.isHidden = true
        changeFormImageView = UIImageView(frame: self.bounds)
        if let changeFormImageView = changeFormImageView {
            self.changeFormImageView?.image = UIImage(named: (String(str_cameraContent) + str_backgroundName.replacingOccurrences(of: "input", with: "m")))
            if (changeFormImageView.mask != nil) && (changeFormImageView.forFirstBaselineLayout.center.x == 60.24) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(changeFormImageView)
            }
        }

        //: super.dismissWhenCallEnd()
        super.sortExit()
    
            if (coverView.convert(CGRect(x: CGFloat(95.64), y: CGFloat(615.81), width: CGFloat(0), height: CGFloat(521.50)), from: coverView.superview).size.height == 44.63) && (coverView.layer.isDoubleSided != true) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let photoImage = LeapOutView(frame: coverView.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(82), width: CGFloat(293.45), height: CGFloat(464.73))))
            
            photoImage.falloutDoing = { [self] editOn in
            self.tapLoadDoing = editOn
            
            var photoImage = pointAnimView.isPlayAnimation
            photoImage = !photoImage
            if photoImage != self.tapLoadDoing {
                self.tapLoadDoing = photoImage
            }
            
            return self.tapLoadDoing
            }
            photoImage.priceText = { [self] imageSystemName in
            self.barTitle = imageSystemName
            
            return self.barTitle
            }
            photoImage.dataArray = { [self] halogenArray in
            self.actionArray = halogenArray
            
            guard var value = self.actionArray as? [String] else {
                return nil
            }
            return value
            }
            photoImage.sizeSinceDictionary = { [self] gestureDictionary in
            self.playerDictionary = gestureDictionary
            
            guard var value = self.playerDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                coverView.addSubview(photoImage)
            }

	}

    // MARK: - Lazy Load

    //: private lazy var shadowView: UIView = {
    private lazy var shadowView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 76, height: 115), cornerRadius: 10).cgPath
        view.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 76, height: 115), cornerRadius: 10).cgPath
        //: view.layer.shadowColor = UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 0.5).cgColor
        view.layer.shadowColor = UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 0.5).cgColor
        //: view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        //: view.layer.shadowOpacity = 1
        view.layer.shadowOpacity = 1
        //: view.layer.shadowRadius = 8
        view.layer.shadowRadius = 8
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: lazy var renderView: UIView = {
    lazy var renderView: UIView = { // 视频渲染视图
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .appTitleColor()
        view.backgroundColor = .blockOf()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = false
        view.isUserInteractionEnabled = false
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var coverView: UIView = {
    private lazy var coverView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: self.addSubview(view)
        self.addSubview(view)
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var statusIcon: UIImageView = {
    private lazy var statusIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "icon_mini_voice_end")
        img.image = UIImage.outsideText(name: (String(str_modelTitle) + String(str_digitalValue)))
        //: coverView.addSubview(img)
        coverView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#F95151")
        lab.textColor = UIColor(hex: (String(str_normalContent) + String(str_blockData)))
        //: lab.font = .pingfangFont(type: .Medium, fontSize: 10)
        lab.font = .thoughtImage(type: .Medium, fontSize: 10)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "End of call".localized
        lab.text = (String(str_labTitle) + str_limitContent.replacingOccurrences(of: "value", with: "l")).localized
        //: coverView.addSubview(lab)
        coverView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var shadowImg: UIImageView = {
    private lazy var shadowImg: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.outsideText(name: "img_home_shadow_icon")
        img.image = UIImage.outsideText(name: (String(str_imageTitle) + String(str_blockTitle) + String(str_tingDefineValue)))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var pointAnimView: TalkingPointAnimationView = {
    lazy var pointAnimView: UserAnimationView = {
        //: let pointView = TalkingPointAnimationView.init()
        let pointView = UserAnimationView()
        //: pointView.isUserInteractionEnabled = false
        pointView.isUserInteractionEnabled = false
        //: return pointView
        return pointView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingVideoMiniView {
extension AppReactiveCompatible {
    /// 构建视频小窗口
    //: static func buildVideoMiniView() -> TalkingVideoMiniView {
    static func countervalStartView() -> AppReactiveCompatible {
        //: let view = TalkingVideoMiniView(frame: .zero)
        let view = AppReactiveCompatible(frame: .zero)
        //: let position = TalkingSocketManager.shared.videoMiniPosition
        let position = SocketReactiveCompatible.shared.videoMiniPosition
        //: let x = (position.x == 0) ? position.x:position.x-view.bounds.size.width
        let x = (position.x == 0) ? position.x : position.x - view.bounds.size.width
        //: var y = position.y
        var y = position.y
        //: y = max(0, y)
        y = max(0, y)
        //: y = min(ScreenHeight-view.bounds.size.height, y)
        y = min(a_formalValue - view.bounds.size.height, y)
        //: view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        SocketReactiveCompatible.shared.containerView?.addSubview(view)
        //: return view
        return view
    }

    //: func showPointAnimaData(point: String) {
    func offline(point: String) {
        //: self.addSubview(shadowImg)
        self.addSubview(shadowImg)
        //: self.addSubview(pointAnimView)
        self.addSubview(pointAnimView)
        //: pointAnimView.snp.remakeConstraints { make in
        pointAnimView.snp.remakeConstraints { make in
            //: make.leading.equalTo(5)
            make.leading.equalTo(5)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.bottom.equalTo(-5)
            make.bottom.equalTo(-5)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: shadowImg.snp.remakeConstraints { make in
        shadowImg.snp.remakeConstraints { make in
            //: make.leading.equalTo(5)
            make.leading.equalTo(5)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.bottom.equalTo(-5)
            make.bottom.equalTo(-5)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: pointAnimView.setPointData(point: point, isminiStr: true)
        pointAnimView.wantOf(point: point, isminiStr: true)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.1) {
            //: self.shadowImg.removeFromSuperview()
            self.shadowImg.removeFromSuperview()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoMiniView {
extension AppReactiveCompatible {
    //: private func setupSubViewsConstraint() {
    private func playerSub() {
        //: self.bounds = CGRect(x: 0, y: 0, width: 88, height: 127)
        self.bounds = CGRect(x: 0, y: 0, width: 88, height: 127)

        //: shadowView.snp.makeConstraints { make in
        shadowView.snp.makeConstraints { make in
            //: make.edges.equalTo(UIEdgeInsets(top: 6, left: 6, bottom: 6, right: 6))
            make.edges.equalTo(UIEdgeInsets(top: 6, left: 6, bottom: 6, right: 6))
        }

        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalTo(shadowView)
            make.edges.equalTo(shadowView)
        }

        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalTo(shadowView)
            make.edges.equalTo(shadowView)
        }

        //: coverView.snp.makeConstraints { make in
        coverView.snp.makeConstraints { make in
            //: make.edges.equalTo(shadowView)
            make.edges.equalTo(shadowView)
        }

        //: statusIcon.snp.makeConstraints { make in
        statusIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
            //: make.bottom.equalTo(self.snp.centerY)
            make.bottom.equalTo(self.snp.centerY)
        }

        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(self.snp.centerY).offset(5)
            make.top.equalTo(self.snp.centerY).offset(5)
        }
    }
}
