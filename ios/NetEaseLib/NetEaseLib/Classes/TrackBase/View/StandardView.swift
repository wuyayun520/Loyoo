
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_addValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "point_image" :*/
fileprivate let str_labelContent:[Character] = ["p","o"]
fileprivate let str_tableValue:String = "by lab case varint_i"

/*: "icon_ziliao_nandi_default" :*/
fileprivate let str_ofName:String = "ICON"
fileprivate let str_reasonData:String = "add window recordiao_na"
fileprivate let str_listName:String = "ndview"
fileprivate let str_managerVideoData:String = "_defmodel guard"

/*: "iv_crush" :*/
fileprivate let str_appPostText:[Character] = ["i","v","_","c","r","u","s","h"]

/*: "Crush" :*/
fileprivate let str_viewName:String = "coin text var letCrush"

/*: "get json error" :*/
fileprivate let str_intimateValue:String = "wait equal show touch pathget "
fileprivate let str_numberData:String = " errorconfirm appear image"

/*: "targetUid" :*/
fileprivate let str_customTitle:String = "background lab input var viewtargetUi"
fileprivate let str_lastProgressName:[Character] = ["d"]

/*: "The other party has received your crush" :*/
fileprivate let str_fromData:[UInt8] = [0x54,0x68,0x65,0x20,0x6f,0x74,0x68,0x65,0x72,0x20,0x70,0x61,0x72,0x74,0x79,0x20,0x68,0x61,0x73,0x20,0x72,0x65,0x63,0x65,0x69,0x76,0x65,0x64,0x20,0x79,0x6f,0x75,0x72,0x20,0x63,0x72,0x75,0x73,0x68]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StandardView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class StandardView: UIView {
	var collectionOn: Bool = true
	var atSectionArray: [AnyHashable] = []

    var actualImageView: UIImageView?

    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        pastPicName()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_addValue, encoding: .utf8)!)
    }

    //: func customUI() {
    func pastPicName() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.each(51, 51, 51, 0.8)

        //: guard MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            actualImageView = UIImageView(frame: self.bounds.intersection(CGRect(x: CGFloat(Double(self.center.y)), y: CGFloat(0), width: CGFloat(Double(self.center.y)), height: CGFloat(0))))
            if let actualImageView = actualImageView {
                self.actualImageView?.image = UIImage(named: (String(str_labelContent) + String(str_tableValue.suffix(5)) + "mage"))
                if (actualImageView.viewWithTag(1412) != nil) && (actualImageView.layer.contents != nil) {
                    //: SWIFT_CUSTOM_DANGER
                    self.addSubview(actualImageView)
                }
            }

            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)

        var totaleractionEqualFill: UIView = crushPlayer
        if let imageView = self.actualImageView, (self.inputView != nil) && (self.layer.isDoubleSided != true) {
            //: SWIFT_CUSTOM_DANGER
            totaleractionEqualFill = imageView
        }
        self.addSubview(totaleractionEqualFill)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    
	if let actualImageView = actualImageView {

            if (actualImageView.semanticContentAttribute == .spatial) && (actualImageView.motionEffects.count == 17) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let dataLet = BeyondPointHeightView()



            dataLet.fullTitle = modelUid
            dataLet.addressOff = { [self] lastOff in
            self.collectionOn = lastOff
            
                self.collectionOn = true
                self.collectionOn = !self.collectionOn
            return self.collectionOn
            }
            dataLet.valueArray = { [self] rowArray in
            self.atSectionArray = rowArray
            
            guard var value = self.atSectionArray as? [String] else {
                return nil
            }
            return value
            }
                actualImageView.addSubview(dataLet)
            }

	}

	}

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = PathErrorTalkingButton()
        //: btn.setBackgroundImage(UIImage.outsideText(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (str_ofName.lowercased() + "_zil" + String(str_reasonData.suffix(6)) + str_listName.replacingOccurrences(of: "view", with: "i") + String(str_managerVideoData.prefix(4)) + "ault")), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_appPostText))), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle((String(str_viewName.suffix(5))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(follow), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension StandardView: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func follow() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = MonochromeThen.default.telecasting(type: .Crush)
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
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_intimateValue.suffix(4)) + "json" + String(str_numberData.prefix(6))))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(String(str_customTitle.suffix(8)) + String(str_lastProgressName))] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        RequestTool.number(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.showMake(showMsg: String(bytes: str_fromData, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.episode(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}
