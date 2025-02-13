
//: Declare String Begin

/*: "view_image" :*/
fileprivate let str_hiddenData:[Character] = ["v","i","e","w","_"]
fileprivate let str_equalData:String = "daymage"

/*: "nav_back_black_nor" :*/
fileprivate let str_buttonName:[Character] = ["n","a","v","_","b","a","c","k","_","b","l","a","c","k","_","n","o"]
fileprivate let str_toValue:String = "icon"

/*: "live_explain" :*/
fileprivate let str_needTitle:[Character] = ["l","i","v","e","_","e"]
fileprivate let str_viewValue:String = "xplawith"

/*: "Live" :*/
fileprivate let str_homeBottomValue:[Character] = ["L","i","v","e"]

/*: "#FAF6FF" :*/
fileprivate let str_contentTitle:[Character] = ["#","F","A","F","6","F","F"]

/*: "icon_live_certification" :*/
fileprivate let str_keyContent:String = "return professional bubble skipicon_l"
fileprivate let str_phoneData:String = "viewic"

/*: "Turn on live certification" :*/
fileprivate let str_timeData:[Character] = ["T","u","r","n"," ","o","n"," ","l","i","v","e"," ","c","e","r","t"]
fileprivate let str_makeData:String = "ifirecord"

/*: "will increase the chances of receiving calls to earn more points." :*/
fileprivate let str_managerValue:[UInt8] = [0x77,0x69,0x6c,0x6c,0x20,0x69,0x6e,0x63,0x72,0x65,0x61,0x73,0x65,0x20,0x74,0x68,0x65,0x20,0x63,0x68,0x61,0x6e,0x63,0x65,0x73,0x20,0x6f,0x66,0x20,0x72,0x65,0x63,0x65,0x69,0x76,0x69,0x6e,0x67,0x20,0x63,0x61,0x6c,0x6c,0x73,0x20,0x74,0x6f,0x20,0x65,0x61,0x72,0x6e,0x20,0x6d,0x6f,0x72,0x65,0x20,0x70,0x6f,0x69,0x6e,0x74,0x73,0x2e]

/*: "icon_live_publicly" :*/
fileprivate let str_screenText:[Character] = ["i","c","o","n","_","l","i","v","e","_","p","u","b","l","i","c","l","y"]

/*: "Your live will be publicly displayed to others" :*/
fileprivate let str_imageData:[UInt8] = [0x59,0x6f,0x75,0x72,0x20,0x6c,0x69,0x76,0x65,0x20,0x77,0x69,0x6c,0x6c,0x20,0x62,0x65,0x20,0x70,0x75,0x62,0x6c,0x69,0x63,0x6c,0x79,0x20,0x64,0x69,0x73,0x70,0x6c,0x61,0x79,0x65,0x64,0x20,0x74,0x6f,0x20,0x6f,0x74,0x68,0x65,0x72,0x73]

/*: "its content must comply with current laws and regulations and platform requirements." :*/
fileprivate let str_toName:[UInt8] = [0x69,0x74,0x73,0x20,0x63,0x6f,0x6e,0x74,0x65,0x6e,0x74,0x20,0x6d,0x75,0x73,0x74,0x20,0x63,0x6f,0x6d,0x70,0x6c,0x79,0x20,0x77,0x69,0x74,0x68,0x20,0x63,0x75,0x72,0x72,0x65,0x6e,0x74,0x20,0x6c,0x61,0x77,0x73,0x20,0x61,0x6e,0x64,0x20,0x72,0x65,0x67,0x75,0x6c,0x61,0x74,0x69,0x6f,0x6e,0x73,0x20,0x61,0x6e,0x64,0x20,0x70,0x6c,0x61,0x74,0x66,0x6f,0x72,0x6d,0x20,0x72,0x65,0x71,0x75,0x69,0x72,0x65,0x6d,0x65,0x6e,0x74,0x73,0x2e]

/*: "icon_live_face" :*/
fileprivate let str_revenueValue:[Character] = ["i","c","o","n","_","l","i","v","e","_","f","a"]
fileprivate let str_countValue:String = "cmanager"

/*: "Please make sure" :*/
fileprivate let str_outsideStateData:[Character] = ["P","l","e","a","s","e"," "]
fileprivate let str_dialogHeadText:[Character] = ["m","a","k","e"," ","s","u","r","e"]

/*: "your face is always in the video frame." :*/
fileprivate let str_kitValue:[UInt8] = [0x79,0x6f,0x75,0x72,0x20,0x66,0x61,0x63,0x65,0x20,0x69,0x73,0x20,0x61,0x6c,0x77,0x61,0x79,0x73,0x20,0x69,0x6e,0x20,0x74,0x68,0x65,0x20,0x76,0x69,0x64,0x65,0x6f,0x20,0x66,0x72,0x61,0x6d,0x65,0x2e]

/*: "Turn on" :*/
fileprivate let str_detailData:String = "Tuadd image time"
fileprivate let str_targetValue:String = "rn ontype view view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveExplainViewController: TalkingBaseViewController {
class CellReactiveCompatible: PropertyViewController {
	var appearOff: Bool = true
	var colorQuickInterval: Int = 39
	var choiceNumber: Double = 23.2
	var withName: String = "level"
	var titleArray: [AnyHashable] = []

    var sizeImageView: UIImageView?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true

        //: setupSubviews()
        executeSend()
        //: setupSubViewsConstraint()
        wrinkle()

        sizeImageView = UIImageView(frame: self.view.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(Int(self.view.bounds.origin.x)), height: CGFloat(self.view.isExclusiveTouch ? 5 : 4))))
        if let sizeImageView = sizeImageView {
            self.sizeImageView?.image = UIImage(named: (String(str_hiddenData) + str_equalData.replacingOccurrences(of: "day", with: "i")))
            if (sizeImageView.alpha != 1.0) && (sizeImageView.convert(sizeImageView.bounds.insetBy(dx: CGFloat(Double(sizeImageView.frame.size.width)), dy: CGFloat(Double(sizeImageView.bounds.origin.x))), to: sizeImageView.superview).size.height == 16.83) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(sizeImageView)
            }
        }
    
            if (liveImgView.layer.contentsRect.size.width != 1) && (liveImgView.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let landLet = LineView()
            landLet.imageOn = self.hideNavi


            
            landLet.inscriptionOn = { [self] periodicTableOff in
            self.appearOff = periodicTableOff
            
            var landLet = self.hideNavi
            landLet = true
            if landLet != self.appearOff {
                self.appearOff = landLet
            }
            
                self.appearOff = false
                self.appearOff = !self.appearOff
            return self.appearOff
            }
            landLet.colorIconQuantity = { [self] filterMagnitude in
            self.colorQuickInterval = filterMagnitude
            
            return self.colorQuickInterval
            }
            landLet.giftMagnitude = { [self] timeNumber in
            self.choiceNumber = timeNumber
            
            return self.choiceNumber
            }
            landLet.imageContent = { [self] viewStartContent in
            self.withName = viewStartContent
            
            return self.withName
            }
            landLet.voiceInfoGiftArray = { [self] giftExamineArray in
            self.titleArray = giftExamineArray
            
            guard var value = self.titleArray as? [String] else {
                return nil
            }
            return value
            }
                liveImgView.addSubview(landLet)
            }

	}

    // MARK: - Lazy Load

    //: private lazy var backButton: UIButton = {
    private lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.outsideText(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.outsideText(name: (String(str_buttonName) + str_toValue.replacingOccurrences(of: "icon", with: "r"))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .black
        btn.tintColor = .black
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(runLow), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveImgView: UIImageView = {
    private lazy var liveImgView: UIImageView = {
        //: let v = UIImageView(image: UIImage.outsideText(name: "live_explain"))
        let v = UIImageView(image: UIImage.outsideText(name: (String(str_needTitle) + str_viewValue.replacingOccurrences(of: "with", with: "in"))))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Live".localized
        lab.text = (String(str_homeBottomValue)).localized
        //: lab.textColor = .appThemeColor()
        lab.textColor = .offt()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lab.font = UIFont.thoughtImage(type: .Semibold, fontSize: 18)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#FAF6FF")
        v.backgroundColor = UIColor(hex: (String(str_contentTitle)))
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var imgView1: UIImageView = {
    private lazy var imgView1: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.outsideText(name: "icon_live_certification")
        v.image = UIImage.outsideText(name: (String(str_keyContent.suffix(6)) + "ive_cert" + str_phoneData.replacingOccurrences(of: "view", with: "if") + "ation"))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab1: UILabel = {
    private lazy var titleLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Turn on live certification".localized
        lab.text = (String(str_timeData) + str_makeData.replacingOccurrences(of: "record", with: "c") + "ation").localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 16)
        lab.font = UIFont.methodPlay(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab1: UILabel = {
    private lazy var desLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "will increase the chances of receiving calls to earn more points.".localized
        lab.text = String(bytes: str_managerValue, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .complexion()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.drogueSize(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView2: UIImageView = {
    private lazy var imgView2: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.outsideText(name: "icon_live_publicly")
        v.image = UIImage.outsideText(name: (String(str_screenText)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab2: UILabel = {
    private lazy var titleLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Your live will be publicly displayed to others".localized
        lab.text = String(bytes: str_imageData, encoding: .utf8)!.localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 16)
        lab.font = UIFont.methodPlay(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab2: UILabel = {
    private lazy var desLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "its content must comply with current laws and regulations and platform requirements.".localized
        lab.text = String(bytes: str_toName, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .complexion()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.drogueSize(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView3: UIImageView = {
    private lazy var imgView3: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.outsideText(name: "icon_live_face")
        v.image = UIImage.outsideText(name: (String(str_revenueValue) + str_countValue.replacingOccurrences(of: "manager", with: "e")))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab3: UILabel = {
    private lazy var titleLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please make sure".localized
        lab.text = (String(str_outsideStateData) + String(str_dialogHeadText)).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 16)
        lab.font = UIFont.methodPlay(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab3: UILabel = {
    private lazy var desLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "your face is always in the video frame.".localized
        lab.text = String(bytes: str_kitValue, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .complexion()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.drogueSize(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var turnOnBtn: UIButton = {
    private lazy var turnOnBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(str_detailData.prefix(2)) + String(str_targetValue.prefix(5))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: 240, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(turnOnButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(appPrice), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveExplainViewController {
extension CellReactiveCompatible {
    /// 返回按钮点击事件
    //: @objc private func clickBackButtonAction() {
    @objc private func runLow() {
        //: self.dismiss(animated: true)
        self.dismiss(animated: true)
    }

    /// turn on 按钮点击事件
    //: @objc private func turnOnButtonClick() {
    @objc private func appPrice() {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            PropertyMManageressPushListener.giftShared().frontCustomMake()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveExplainViewController {
extension CellReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func executeSend() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(backButton)
        view.addSubview(backButton)
        //: view.addSubview(liveImgView)
        view.addSubview(liveImgView)
        //: view.addSubview(liveLab)
        view.addSubview(liveLab)
        //: view.addSubview(contentView)
        view.addSubview(contentView)
        //: contentView.addSubview(imgView1)
        contentView.addSubview(imgView1)
        //: contentView.addSubview(titleLab1)
        contentView.addSubview(titleLab1)
        //: contentView.addSubview(desLab1)
        contentView.addSubview(desLab1)
        //: contentView.addSubview(imgView2)
        contentView.addSubview(imgView2)
        //: contentView.addSubview(titleLab2)
        contentView.addSubview(titleLab2)
        //: contentView.addSubview(desLab2)
        contentView.addSubview(desLab2)
        //: contentView.addSubview(imgView3)
        contentView.addSubview(imgView3)
        //: contentView.addSubview(titleLab3)
        contentView.addSubview(titleLab3)
        //: contentView.addSubview(desLab3)
        contentView.addSubview(desLab3)
        //: view.addSubview(turnOnBtn)
        view.addSubview(turnOnBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func wrinkle() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(a_toText)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(a_limitRecordScreenName)
        }

        //: liveImgView.snp.makeConstraints { make in
        liveImgView.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 80))
            make.top.equalTo(a_limitRecordScreenName + actualWidth(w: 80))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(100)
            make.width.height.equalTo(100)
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveImgView.snp.bottom)
            make.top.equalTo(liveImgView.snp.bottom)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(liveLab.snp.bottom).offset(20)
            make.top.equalTo(liveLab.snp.bottom).offset(20)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: imgView1.snp.makeConstraints { make in
        imgView1.snp.makeConstraints { make in
            //: make.top.leading.equalTo(20)
            make.top.leading.equalTo(20)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab1.snp.makeConstraints { make in
        titleLab1.snp.makeConstraints { make in
            //: make.top.equalTo(imgView1).offset(3)
            make.top.equalTo(imgView1).offset(3)
            //: make.leading.equalTo(imgView1.snp.trailing).offset(10)
            make.leading.equalTo(imgView1.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab1.snp.makeConstraints { make in
        desLab1.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab1.snp.bottom).offset(4)
            make.top.equalTo(titleLab1.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab1)
            make.leading.trailing.equalTo(titleLab1)
        }
        //: imgView2.snp.makeConstraints { make in
        imgView2.snp.makeConstraints { make in
            //: make.top.equalTo(desLab1.snp.bottom).offset(24)
            make.top.equalTo(desLab1.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab2.snp.makeConstraints { make in
        titleLab2.snp.makeConstraints { make in
            //: make.top.equalTo(imgView2).offset(3)
            make.top.equalTo(imgView2).offset(3)
            //: make.leading.equalTo(imgView2.snp.trailing).offset(10)
            make.leading.equalTo(imgView2.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab2.snp.makeConstraints { make in
        desLab2.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab2.snp.bottom).offset(4)
            make.top.equalTo(titleLab2.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab2)
            make.leading.trailing.equalTo(titleLab2)
        }
        //: imgView3.snp.makeConstraints { make in
        imgView3.snp.makeConstraints { make in
            //: make.top.equalTo(desLab2.snp.bottom).offset(24)
            make.top.equalTo(desLab2.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab3.snp.makeConstraints { make in
        titleLab3.snp.makeConstraints { make in
            //: make.top.equalTo(imgView3).offset(3)
            make.top.equalTo(imgView3).offset(3)
            //: make.leading.equalTo(imgView3.snp.trailing).offset(10)
            make.leading.equalTo(imgView3.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab3.snp.makeConstraints { make in
        desLab3.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab3.snp.bottom).offset(4)
            make.top.equalTo(titleLab3.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab3)
            make.leading.trailing.equalTo(titleLab3)
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }

        //: turnOnBtn.snp.makeConstraints { make in
        turnOnBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(43)
            make.top.equalTo(contentView.snp.bottom).offset(43)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 240, height: 50))
            make.size.equalTo(CGSize(width: 240, height: 50))
            //: make.bottom.lessThanOrEqualTo(view).offset(0)
            make.bottom.lessThanOrEqualTo(view).offset(0)
        }
    }
}
