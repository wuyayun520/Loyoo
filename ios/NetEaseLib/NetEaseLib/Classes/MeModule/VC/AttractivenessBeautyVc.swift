
//: Declare String Begin

/*: "visualisation_img" :*/
fileprivate let str_voiceValue:String = "VI"
fileprivate let str_viewValue:String = "formalualiformal"
fileprivate let str_modelData:String = "_imggift gift"

/*: "Video calls will all use the current Beautify Settings" :*/
fileprivate let str_managerName:[UInt8] = [0xf1,0xce,0xc3,0xc2,0xc8,0x87,0xc4,0xc6,0xcb,0xcb,0xd4,0x87,0xd0,0xce,0xcb,0xcb,0x87,0xc6,0xcb,0xcb,0x87,0xd2,0xd4,0xc2,0x87,0xd3,0xcf,0xc2,0x87,0xc4,0xd2,0xd5,0xd5,0xc2,0xc9,0xd3,0x87,0xe5,0xc2,0xc6,0xd2,0xd3,0xce,0xc1,0xde,0x87,0xf4,0xc2,0xd3,0xd3,0xce,0xc9,0xc0,0xd4]

/*: "Cancel" :*/
fileprivate let str_coatValue:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let str_errorTitle:String = "data"

/*: "Done" :*/
fileprivate let str_imageValue:String = "text moreDone"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AttractivenessBeautyVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: class TalkingMyBeautyVC: TalkingBaseViewController {
class AttractivenessBeautyVc: PropertyViewController {
	var indexNumber: Int = 27
	var accumulationName: String = "effect"
	var assemblageArray: [AnyHashable] = []
	var videoSum: Int = 69
	var positionTitle: String = "to"
	var addAppearArray: [AnyHashable] = []

    var contentImageView: UIImageView?

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.startRunning()
            self.beautyView.stCamera.startRunning()
        }
    
	if let contentImageView = contentImageView {

            if (contentImageView.preservesSuperviewLayoutMargins) && (contentImageView.convert(CGRect.zero, from: contentImageView.superview).origin.y == 86.68) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let showLet = ViewBarView(frame: contentImageView.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(67), width: CGFloat(0), height: CGFloat(0))))
            showLet.genreDestroySwitch = animated

            
            showLet.premiumInterval = { [self] rowNumber in
            self.videoSum = rowNumber
            
            return self.videoSum
            }
            showLet.indexText = { [self] writeText in
            self.positionTitle = writeText
            
            self.positionTitle = String(repeating: "=" as Character, count: self.positionTitle.lowercased().count)
            return self.positionTitle
            }
            showLet.progressArray = { [self] reArray in
            self.addAppearArray = reArray
            
            guard var value = self.addAppearArray as? [String] else {
                return nil
            }
            return value
            }
                contentImageView.addSubview(showLet)
            }

	}

	}

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    
	if let contentImageView = contentImageView {

            if (contentImageView.preservesSuperviewLayoutMargins) && (contentImageView.convert(CGRect.zero, from: contentImageView.superview).origin.y == 86.68) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let showLet = ViewBarView(frame: contentImageView.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(67), width: CGFloat(0), height: CGFloat(0))))
            showLet.genreDestroySwitch = self.hideNavi

            
            showLet.premiumInterval = { [self] rowNumber in
            self.indexNumber = rowNumber
            
            return self.indexNumber
            }
            showLet.indexText = { [self] writeText in
            self.accumulationName = writeText
            
            self.accumulationName = String(repeating: "=" as Character, count: self.accumulationName.lowercased().count)
            return self.accumulationName
            }
            showLet.progressArray = { [self] reArray in
            self.assemblageArray = reArray
            
            guard var value = self.assemblageArray as? [String] else {
                return nil
            }
            return value
            }
                contentImageView.addSubview(showLet)
            }

	}

	}

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.stopRunning()
            self.beautyView.stCamera.stopRunning()
        }
        //: popGesture(isOpen: true)
        labUp(isOpen: true)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: popGesture(isOpen: false)
        labUp(isOpen: false)
        //: setupSubviews()
        coordinate()

        contentImageView = UIImageView(frame: self.view.bounds.insetBy(dx: CGFloat(Int(self.view.center.x)), dy: CGFloat(Double(self.view.frame.size.width))))
        if let contentImageView = contentImageView {
            self.contentImageView?.image = UIImage(named: (str_voiceValue.lowercased() + str_viewValue.replacingOccurrences(of: "formal", with: "s") + "ation" + String(str_modelData.prefix(4))))
            if (contentImageView.convert(contentImageView.bounds, from: contentImageView.superview).origin.x == 1.70) && (contentImageView.isUserInteractionEnabled == true) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(contentImageView)
            }
        }
    }

    // MARK: - Lazy Load

    //: lazy var beautyView: STFilterView = {
    lazy var beautyView: STFilterView = {
        //: let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        //: v?.frame = self.view.bounds
        v?.frame = self.view.bounds
        //: return v!
        return v!
        //: }()
    }()

    //: private lazy var justView: STBeautyAdjustView = {
    private lazy var justView: STBeautyAdjustView = {
        //: let view = STBeautyAdjustView.init(frame: CGRect.init(x: 0, y: ScreenHeight-(258+kDeviceSafeBottomHeight+50), width: ScreenWidth, height: 258+kDeviceSafeBottomHeight+50))
        let view = STBeautyAdjustView(frame: CGRect(x: 0, y: a_formalValue - (258 + a_agentData + 50), width: a_blockValue, height: 258 + a_agentData + 50))
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingMyBeautyVC {
extension AttractivenessBeautyVc {
    //: @objc func backClick() {
    @objc func titleStage() {
        //: let config = ShowAlertConfig()
        let config = MarkAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        config.textFont = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Video calls will all use the current Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        TitleAlertShow.appearAll(message: String(bytes: str_managerName.map{$0^167}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_coatValue)).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            TitleAlertShow.lastAlert()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            TitleAlertShow.lastAlert()
            //: STFilterCacheCost.share.store()
            STFilterCacheCost.share.store()
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: }, config: config)
        }, config: config)
    }
}

//: extension TalkingMyBeautyVC {
extension AttractivenessBeautyVc {
    /// 添加视图
    //: private func setupSubviews() {
    private func coordinate() {
        //: self.view.backgroundColor = .black
        self.view.backgroundColor = .black

        //: let backBtn = UIButton.init()
        let backBtn = UIButton()
        //: backBtn.setTitle("Done".localized, for: .normal)
        backBtn.setTitle((String(str_imageValue.suffix(4))).localized, for: .normal)
        //: backBtn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        backBtn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: backBtn.addTarget(self, action: #selector(backClick), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(titleStage), for: .touchUpInside)
        //: self.view.addSubview(backBtn)
        self.view.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(a_limitRecordScreenName)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(50)
            make.width.equalTo(50)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: self.view.insertSubview(beautyView, at: 0)
        self.view.insertSubview(beautyView, at: 0)
        //: beautyView.snp.makeConstraints { make in
        beautyView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }

        //: self.view.addSubview(justView)
        self.view.addSubview(justView)
    }
}
