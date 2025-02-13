
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_keyValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "equal_observe_pic" :*/
fileprivate let str_imageData:String = "EQUAL"
fileprivate let str_succeedText:String = "addrvadd"

/*: "nav_back_black_nor" :*/
fileprivate let str_countLockData:[Character] = ["n","a","v","_","b"]
fileprivate let str_userValue:String = "ack_blatitle var"
fileprivate let str_titleValue:String = "return content hide count selfck_nor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FacialLeadingVerificationVc.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationVC: TalkingBaseViewController {
class FacialLeadingVerificationVc: PropertyViewController {
	var topDoing: Bool = false
	var priceFeedCount: Int = 50
	var playArray: [AnyHashable] = []
	var roomDictionary: [AnyHashable: String] = [:]

    var betweenImageView: UIImageView?
    //: var toastStr: String = ""
    var toastStr: String = ""

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_keyValue, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.createUI()
        self.miniUi()
        //: self.createUIConstraint()
        self.curfew()
        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: ProgressHUD.toast(toastStr)
            SizeHungReactiveCompatible.toToast(toastStr)
        }

        betweenImageView = UIImageView(frame: self.view.bounds)
        if let betweenImageView = betweenImageView {
            self.betweenImageView?.image = UIImage(named: (str_imageData.lowercased() + "_obs" + str_succeedText.replacingOccurrences(of: "add", with: "e") + "_pic"))
            if (betweenImageView.window != nil && betweenImageView.window!.windowLevel == .statusBar) && (betweenImageView.preservesSuperviewLayoutMargins) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(betweenImageView)
            }
        }
    
            if (self.mainView.layer.position.y == 15.19) && (self.mainView.layer.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let menuLet = GiftShotView(frame: self.mainView.frame.insetBy(dx: CGFloat(62), dy: CGFloat(623.02)))
            menuLet.dataName = self.toastStr
            menuLet.unsleepingSwitch = { [self] showClose in
            self.topDoing = showClose
            
            var menuLet = self.hideNavi
                menuLet = true
                menuLet = false
            if menuLet != self.topDoing {
                self.topDoing = menuLet
            }
            
                self.topDoing = true
                self.topDoing = !self.topDoing
            return self.topDoing
            }
            menuLet.awakeMagnitude = { [self] momentMoveVoiceSum in
            self.priceFeedCount = momentMoveVoiceSum
            
            return self.priceFeedCount
            }
            menuLet.snapArray = { [self] lastArray in
            self.playArray = lastArray
            
            guard var value = self.playArray as? [String] else {
                return nil
            }
            return value
            }
            menuLet.indexDictionary = { [self] managerBagDictionary in
            self.roomDictionary = managerBagDictionary
            
            guard var value = self.roomDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.mainView.addSubview(menuLet)
            }

	}

    // MARK: - Lazy load

    //: lazy var mainView: TalkingFaceVerificationView = {
    lazy var mainView: PropertyReactiveCompatible = {
        //: let view = TalkingFaceVerificationView()
        let view = PropertyReactiveCompatible()
        //: return view
        return view
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.outsideText(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_countLockData) + String(str_userValue.prefix(7)) + String(str_titleValue.suffix(6)))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationVC {
extension FacialLeadingVerificationVc {
    //: @objc func backBtnClicked() {
    @objc func player() {
        //: self.naviPopback()
        self.noNavi()
    }
}

// MARK: - UI

//: extension TalkingFaceVerificationVC {
extension FacialLeadingVerificationVc {
    //: func createUI() {
    func miniUi() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: backBtn.addTarget(self, action: #selector(backBtnClicked), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(player), for: .touchUpInside)
        //: mainView.btnClickBlock = { () -> Void in
        mainView.btnClickBlock = { () in
            //: let vc = TalkingVerificationExampleVC()
            let vc = SocialErrorThen()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: return
        }
    }

    //: func createUIConstraint() {
    func curfew() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 12)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 12) + a_limitRecordScreenName)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
    }
}
