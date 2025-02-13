
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_userTopName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "bg_live_countdown" :*/
fileprivate let str_sharedLeadingData:String = "make tabbg_live_"
fileprivate let str_eachData:String = "work"
fileprivate let str_viewData:String = "OUNTDOWN"

/*: "Live will end soon" :*/
fileprivate let str_serverAtData:String = "Live wat share mode view"
fileprivate let str_maxInputData:String = "ill string white to if"

/*: "Make sure your face is always in the frame" :*/
fileprivate let str_actionName:[UInt8] = [0x51,0x7d,0x77,0x79,0x3c,0x6f,0x69,0x6e,0x79,0x3c,0x65,0x73,0x69,0x6e,0x3c,0x7a,0x7d,0x7f,0x79,0x3c,0x75,0x6f,0x3c,0x7d,0x70,0x6b,0x7d,0x65,0x6f,0x3c,0x75,0x72,0x3c,0x68,0x74,0x79,0x3c,0x7a,0x6e,0x7d,0x71,0x79]

/*: "get json error" :*/
fileprivate let str_playerName:String = "get jspost custom label first"
fileprivate let str_circleTextData:String = "date"

/*: "#FF2348" :*/
fileprivate let str_capableValue:String = "gift environment in commit#FF2348"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpgradeityReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/9/26.
//

//: import UIKit
import UIKit

//: class TalkingLiveCountdownView: UIView {
class UpgradeityReactiveCompatible: UIView {
    var toImageView: UIImageView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: setupSubviews()
        oneTitle()
        //: setupSubViewsConstraint()
        workplace()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_userTopName, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.outsideText(name: "bg_live_countdown")
        iamg.image = UIImage.outsideText(name: (String(str_sharedLeadingData.suffix(8)) + str_eachData.replacingOccurrences(of: "work", with: "c") + str_viewData.lowercased()))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 18)
        lab.font = UIFont.methodPlay(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Live will end soon".localized
        lab.text = (String(str_serverAtData.prefix(6)) + String(str_maxInputData.prefix(4)) + "end soon").localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.drogueSize(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Make sure your face is always in the frame".localized
        lab.text = String(bytes: str_actionName.map{$0^28}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_countdown_bg)
        let url = MonochromeThen.default.telecasting(type: .Live_countdown_bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_playerName.prefix(6)) + "on erro" + str_circleTextData.replacingOccurrences(of: "date", with: "r")))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaNumLab: UILabel = {
    private lazy var svgaNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 29)
        lab.font = UIFont.methodPlay(fontSize: 29)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.textColor = UIColor(hex: "#FF2348")
        lab.textColor = UIColor(hex: (String(str_capableValue.suffix(7))))
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveCountdownView {
extension UpgradeityReactiveCompatible {
    /// 刷新视图
    /// - Parameter countdown: 倒计时
    //: func refreshView(countdown: String) {
    func same(countdown: String) {
        //: self.svgaNumLab.text = countdown
        self.svgaNumLab.text = countdown
    }
}

// MARK: - Layout

//: extension TalkingLiveCountdownView {
extension UpgradeityReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func oneTitle() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: topIcon.addSubview(svgaPlayer)
        topIcon.addSubview(svgaPlayer)
        //: topIcon.addSubview(svgaNumLab)
        topIcon.addSubview(svgaNumLab)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func workplace() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 250)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 250)))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: 20))
            make.top.equalTo(actualWidth(w: 20))
            //: make.size.equalTo(CGSize(width: actualWidth(w: 148), height: actualWidth(w: 120)))
            make.size.equalTo(CGSize(width: actualWidth(w: 148), height: actualWidth(w: 120)))
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 60))
            make.width.height.equalTo(actualWidth(w: 60))
        }
        //: svgaNumLab.snp.makeConstraints { make in
        svgaNumLab.snp.makeConstraints { make in
            //: make.center.width.height.equalTo(svgaPlayer)
            make.center.width.height.equalTo(svgaPlayer)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(topIcon.snp.bottom).offset(actualWidth(w: 17))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(actualWidth(w: 10))
            make.top.equalTo(titleLab.snp.bottom).offset(actualWidth(w: 10))
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }
    }
}
