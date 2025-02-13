
//: Declare String Begin

/*: "mic_image" :*/
fileprivate let str_editData:String = "mini"
fileprivate let str_frameData:String = "top size giftic_image"

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_rawData:[Character] = ["b","g","_","s","h","o","u","y","e","_","m","i","s","a","n","g","u","a","n","g","_"]
fileprivate let str_backValue:String = "defaoutsidet"

/*: "Popular" :*/
fileprivate let str_viewData:[Character] = ["P"]
fileprivate let str_modeName:[Character] = ["o","p","u","l","a","r"]

/*: "777777" :*/
fileprivate let str_labelName:String = "777777"

/*: "icon_moment_news_nor" :*/
fileprivate let str_mainRoomData:[Character] = ["i","c","o","n","_","m","o","m","e","n","t","_"]
fileprivate let str_imageTitle:[Character] = ["n","e","w","s","_","n","o","r"]

/*: "icon_free_pre" :*/
fileprivate let str_finishName:String = "color"
fileprivate let str_emptyValue:String = "view string app make guardcon_"

/*: "num" :*/
fileprivate let str_equalName:[Character] = ["n","u","m"]

/*: "99+" :*/
fileprivate let str_sizeText:[UInt8] = [0x39,0x39,0x2b]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleNavigationDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class TitleNavigationDelegate: PropertyViewController {
	var baptizeOn: Bool = false
	var billiardPlayerSum: Int = 18
	var locationEnable: Bool = false
	var vanguardSum: Int = 64

    var cellImageView: UIImageView?
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        constraintPlayer()
        //: setupSubViewsConstraint()
        imageOf()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(free), name: a_numberKeyTitle, object: nil)

        cellImageView = UIImageView(frame: self.view.bounds.intersection(CGRect(x: CGFloat(Double(self.view.bounds.origin.y)), y: CGFloat(Double(self.view.center.x)), width: CGFloat(0), height: CGFloat(0))))
        if let cellImageView = cellImageView {
            self.cellImageView?.image = UIImage(named: (str_editData.replacingOccurrences(of: "mini", with: "m") + String(str_frameData.suffix(8))))
            if (cellImageView.convert(CGPoint(x: 0, y: CGFloat(Double(cellImageView.center.y))), to: cellImageView.superview).x == 40.18) && (cellImageView.layer.zPosition == 86.91) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(cellImageView)
            }
        }
    
            if (bottomImgView.convert(CGRect.zero, from: bottomImgView.superview).size.height == 20.74) && (!bottomImgView.autoresizesSubviews) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let subLet = PackageView(frame: bottomImgView.frame.offsetBy(dx: CGFloat(0), dy: CGFloat(81)))
            subLet.policyJoinClose = slideVC.scrollEnabled
            subLet.fileCount = slideVC.makeScale

            
            subLet.tableOpen = { [self] headOpen in
            self.baptizeOn = headOpen
            
            var subLet = self.hideNavi
                subLet = false
                subLet = !subLet
            if subLet != self.baptizeOn {
                self.baptizeOn = subLet
            }
            
            return self.baptizeOn
            }
            subLet.needQuantity = { [self] enableLineQuantity in
            self.billiardPlayerSum = enableLineQuantity
            
            return self.billiardPlayerSum
            }
                bottomImgView.addSubview(subLet)
            }

	}

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        remind()
    
            if (newsBtn.isExclusiveTouch) && (newsBtn.backgroundColor != nil && newsBtn.backgroundColor!.cgColor == UIColor.cyan.cgColor) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let mentalImage = PackageView()
            mentalImage.policyJoinClose = self.hideNavi
            mentalImage.fileCount = slideVC.rightSpace

            
            mentalImage.tableOpen = { [self] headOpen in
            self.locationEnable = headOpen
            
            var mentalImage = self.hideNavi
                mentalImage = true
                mentalImage = !mentalImage
            if mentalImage != self.locationEnable {
                self.locationEnable = mentalImage
            }
            
            return self.locationEnable
            }
            mentalImage.needQuantity = { [self] enableLineQuantity in
            self.vanguardSum = enableLineQuantity
            
            return self.vanguardSum
            }
                newsBtn.addSubview(mentalImage)
            }

	}

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.outsideText(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.outsideText(name: (String(str_rawData) + str_backValue.replacingOccurrences(of: "outside", with: "ul"))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: AppValueReactiveCompatible = {
        //: let vc = QYSlideNavigationViewController()
        let vc = AppValueReactiveCompatible()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = a_toText
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [ConstraintViewController()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(str_viewData) + String(str_modeName)).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .thoughtImage(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .thoughtImage(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (str_labelName.capitalized))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.blockOf()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_mainRoomData) + String(str_imageTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(success), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: CustomTextView = {
        //: let label = BadgeLab()
        let label = CustomTextView()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.outsideText(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (str_finishName.replacingOccurrences(of: "color", with: "i") + String(str_emptyValue.suffix(4)) + "free_pre")), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(live), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension TitleNavigationDelegate {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func remind() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        RequestTool.primary { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.vagary(num: json[(String(str_equalName))].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension TitleNavigationDelegate {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func success() {
        //: refreshNewsbadge(num: 0)
        vagary(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = OpenSheRecognizerDelegate()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func free() {
        //: freeBtnClickEvent()
        live()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func live() {
        //: if MeasurementAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue, MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if MeasurementAppManager.share.loginUserMode.isTPAuth != LaterUserValueConvertible.isSuccessed.rawValue, MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue, MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            TableReactiveCompatible.bring { _, _, _ in
                //: if !MeasurementAppManager.share.loginUserMode.isNaUser,
                if !MeasurementAppManager.share.loginUserMode.isNaUser,
                   //: MeasurementAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   MeasurementAppManager.share.loginUserMode.isTPAuth != LaterUserValueConvertible.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    ToViewWindowManager.shared.messagePlayer()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.part()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            part()
        }
    }

    //: private func pushFreeVC() {
    private func part() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = a_collectionName.bool(forKey: a_intervalValue)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = BeetleViewController()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any CustomDateControllerDelegate
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        ActualThen().possessWithHandler {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - AtNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension TitleNavigationDelegate: AtNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func failure(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension TitleNavigationDelegate {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func vagary(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func constraintPlayer() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func imageOf() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + a_limitRecordScreenName)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(a_limitRecordScreenName)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
