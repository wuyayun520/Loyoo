
//: Declare String Begin

/*: "live_picture" :*/
fileprivate let str_blockText:[Character] = ["l","i","v","e","_","p"]
fileprivate let str_succeedData:String = "ictutabe"

/*: "#33005B" :*/
fileprivate let str_labelTitle:String = "value"
fileprivate let str_requestValue:[Character] = ["3","3","0","0","5","B"]

/*: "get json error" :*/
fileprivate let str_shareName:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r","r","o","r"]

/*: "btn_live_mini_nor" :*/
fileprivate let str_toData:[Character] = ["b","t","n","_","l","i","v","e","_","m"]
fileprivate let str_colorViewData:[Character] = ["i","n","i","_","n","o","r"]

/*: "icon_views_number" :*/
fileprivate let str_insideName:String = "icover"
fileprivate let str_everyData:String = "color touchon_vie"
fileprivate let str_errorValue:String = "sectionber"

/*: "Random Video" :*/
fileprivate let str_leadingViewText:String = "Random Vitype mini view"
fileprivate let str_turnText:String = "appeo"

/*: "Accept Video Match Call" :*/
fileprivate let str_styleImageIfText:String = "Acceproom add equal"
fileprivate let str_cameraName:String = "eo actual asset execute view"
fileprivate let str_modelData:[Character] = ["M","a","t","c","h"," ","C","a","l","l"]

/*: "%@ chatting" :*/
fileprivate let str_titleValueData:[Character] = ["%","@"," ","c","h","a","t","t"]
fileprivate let str_windowContent:String = "ierrorg"

/*: "chattingNum" :*/
fileprivate let str_momentValue:String = "creporttt"

/*: "type" :*/
fileprivate let str_nameTitle:[UInt8] = [0x74,0x79,0x70,0x65]

/*: "randomVideo" :*/
fileprivate let str_imageData:[Character] = ["r","a","n","d","o","m"]
fileprivate let str_modelText:String = "Videotitle to string"

/*: "-1" :*/
fileprivate let str_sectionTitle:String = "-1"

/*: "value" :*/
fileprivate let str_ofAddData:String = "vacomponentue"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingNumberThen.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/8/16.
//

//: import UIKit
import UIKit

//: class TalkingFemaleStaticRandomVideoVC: TalkingBaseViewController {
class TalkingNumberThen: PropertyViewController {
	var selectEnable: Bool = false
	var valueQuantity: Int = 1
	var showNumber: Double = -48.5
	var errorText: String = "stall"
	var sectionArray: [AnyHashable] = []

    var lineTableImageView: UIImageView?
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        toDelay()
        //: setupSubViewsConstraint()
        addName()
        //: req_videoMatchCheck()
        equalSize()

        lineTableImageView = UIImageView(frame: self.view.bounds.standardized)
        if let lineTableImageView = lineTableImageView {
            self.lineTableImageView?.image = UIImage(named: (String(str_blockText) + str_succeedData.replacingOccurrences(of: "tab", with: "r")))
            if (lineTableImageView.alpha != 1.0) && (lineTableImageView.layer.masksToBounds != false) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(lineTableImageView)
            }
        }
    
            if (switchBtn.layer.contentsRect.size.width != 1) && (switchBtn.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let landLet = LineView()
            landLet.imageOn = self.hideNavi


            
            landLet.inscriptionOn = { [self] periodicTableOff in
            self.selectEnable = periodicTableOff
            
            var landLet = self.hideNavi
            landLet = true
            if landLet != self.selectEnable {
                self.selectEnable = landLet
            }
            
                self.selectEnable = false
                self.selectEnable = !self.selectEnable
            return self.selectEnable
            }
            landLet.colorIconQuantity = { [self] filterMagnitude in
            self.valueQuantity = filterMagnitude
            
            return self.valueQuantity
            }
            landLet.giftMagnitude = { [self] timeNumber in
            self.showNumber = timeNumber
            
            return self.showNumber
            }
            landLet.imageContent = { [self] viewStartContent in
            self.errorText = viewStartContent
            
            return self.errorText
            }
            landLet.voiceInfoGiftArray = { [self] giftExamineArray in
            self.sectionArray = giftExamineArray
            
            guard var value = self.sectionArray as? [String] else {
                return nil
            }
            return value
            }
                switchBtn.addSubview(landLet)
            }

	}

    // MARK: - Lazy Load

    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: (str_labelTitle.replacingOccurrences(of: "value", with: "#") + String(str_requestValue)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Bg)
        let url = MonochromeThen.default.telecasting(type: .Female_Randomvideo_Bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                // 刷新放在此处目的：是为了进入页面时，保证加载完svga资源再刷新
                //: self.refreshUI()
                self.stateOf()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_shareName)))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_toData) + String(str_colorViewData))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(actionClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton()
        let btn = PathErrorTalkingButton()
        //: btn.setImage(UIImage.outsideText(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (str_insideName.replacingOccurrences(of: "cover", with: "c") + String(str_everyData.suffix(6)) + "ws_nu" + str_errorValue.replacingOccurrences(of: "section", with: "m"))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.outsideText(name: (str_insideName.replacingOccurrences(of: "cover", with: "c") + String(str_everyData.suffix(6)) + "ws_nu" + str_errorValue.replacingOccurrences(of: "section", with: "m"))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white.withAlphaComponent(0.15)
        v.backgroundColor = .white.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: let lab1 = UILabel()
        let lab1 = UILabel()
        //: lab1.text = "Random Video".localized
        lab1.text = (String(str_leadingViewText.prefix(9)) + str_turnText.replacingOccurrences(of: "app", with: "d")).localized
        //: lab1.textColor = .white
        lab1.textColor = .white
        //: lab1.font = UIFont.pingfangMediumFont(fontSize: 20)
        lab1.font = UIFont.methodPlay(fontSize: 20)
        //: v.addSubview(lab1)
        v.addSubview(lab1)
        //: lab1.snp.makeConstraints { make in
        lab1.snp.makeConstraints { make in
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
        }
        //: let lab2 = UILabel()
        let lab2 = UILabel()
        //: lab2.text = "Accept Video Match Call".localized
        lab2.text = (String(str_styleImageIfText.prefix(5)) + "t Vid" + String(str_cameraName.prefix(3)) + String(str_modelData)).localized
        //: lab2.textColor = .white
        lab2.textColor = .white
        //: lab2.numberOfLines = 0
        lab2.numberOfLines = 0
        //: lab2.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab2.font = UIFont.drogueSize(fontSize: 15)
        //: v.addSubview(lab2)
        v.addSubview(lab2)
        //: lab2.snp.makeConstraints { make in
        lab2.snp.makeConstraints { make in
            //: make.top.equalTo(lab1.snp.bottom).offset(12)
            make.top.equalTo(lab1.snp.bottom).offset(12)
            //: make.leading.equalTo(lab1)
            make.leading.equalTo(lab1)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.bottom.equalTo(-17)
            make.bottom.equalTo(-17)
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var switchBtn: UISwitch = {
    private lazy var switchBtn: UISwitch = {
        //: let swit = UISwitch()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.offt()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(viewEnable), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingFemaleStaticRandomVideoVC {
extension TalkingNumberThen {
    /// 获取匹配人数
    //: private func req_videoMatchCheck() {
    private func equalSize() {
        //: TalkingQuickVideoManager.req_videoMatchCheck { succeed, result, _ in
        DataLabThen.pingCompletion { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.chattingNumBtn.setTitle("%@ chatting".localizedArguments(json["chattingNum"].intValue), for: .normal)
            self.chattingNumBtn.setTitle((String(str_titleValueData) + str_windowContent.replacingOccurrences(of: "error", with: "n")).random(json[(str_momentValue.replacingOccurrences(of: "report", with: "ha") + "ingNum")].intValue), for: .normal)
        }
    }

    /// 随机视频开关请求
    //: private func req_SettingChange() {
    private func domicileChange() {
        //: var params = ["type": "randomVideo"]
        var params = [String(bytes: str_nameTitle, encoding: .utf8)!: (String(str_imageData) + String(str_modelText.prefix(5)))]
        //: let value = switchBtn.isOn ? "1" : "-1"
        let value = switchBtn.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(str_ofAddData.replacingOccurrences(of: "component", with: "l"))] = value
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, _, _ in
        ConstraintRequestTool.maxData(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: self.switchBtn.isEnabled = true
            self.switchBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchBtn.isOn = !self.switchBtn.isOn
                self.switchBtn.isOn = !self.switchBtn.isOn
                //: return
                return
            }
            //: MeasurementAppManager.share.appUserConfigMode.randomVideo = value
            MeasurementAppManager.share.appUserConfigMode.randomVideo = value
            //: self.refreshUI()
            self.stateOf()
        }
    }
}

// MARK: - Event

//: extension TalkingFemaleStaticRandomVideoVC {
extension TalkingNumberThen {
    /// 关闭页面按钮事件
    //: @objc private func closeButtonClick() {
    @objc private func actionClick() {
        //: getNavigationController()?.popViewController(animated: false)
        isochronalStack()?.popViewController(animated: false)
    }

    /// 随机视频开关事件
    //: @objc private func switchDidChange() {
    @objc private func viewEnable() {
        //: switchBtn.isEnabled = false
        switchBtn.isEnabled = false
        //: req_SettingChange()
        domicileChange()
    }
}

// MARK: - Layout

//: extension TalkingFemaleStaticRandomVideoVC {
extension TalkingNumberThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func toDelay() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(closeBtn)
        view.addSubview(closeBtn)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: bottomView.addSubview(switchBtn)
        bottomView.addSubview(switchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func addName() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 435))
            make.width.height.equalTo(actualWidth(w: 435))
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + 6)
            make.top.equalTo(a_limitRecordScreenName + 6)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func stateOf() {
        //: if MeasurementAppManager.share.appUserConfigMode.randomVideo == "1" {
        if MeasurementAppManager.share.appUserConfigMode.randomVideo == "1" {
            //: svgaPlayer.startAnimation()
            svgaPlayer.startAnimation()
            //: } else {
        } else {
            //: svgaPlayer.pauseAnimation()
            svgaPlayer.pauseAnimation()
        }
        //: switchBtn.isOn = (MeasurementAppManager.share.appUserConfigMode.randomVideo == "1")
        switchBtn.isOn = (MeasurementAppManager.share.appUserConfigMode.randomVideo == "1")
    }
}
