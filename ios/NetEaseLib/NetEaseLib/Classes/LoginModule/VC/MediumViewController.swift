
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_outsideName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "view_image" :*/
fileprivate let str_viewData:String = "make to shouldview_"
fileprivate let str_actualText:String = "ipathage"

/*: "point_image" :*/
fileprivate let str_statusValue:String = "dataoint"

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let str_ofName:[Character] = ["a","p","p","l","e"," ","授","权","\u{5931}"]
fileprivate let str_viewModeData:String = "败，请稍model再试"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MediumViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class MediumViewController: PropertyViewController {
	var toolContent: String = "wire"
	var originArray: [AnyHashable] = []
	var attachTitle: String = "message"
	var magnitudeerestArray: [AnyHashable] = []

    var topImageView: UIImageView?

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
        fatalError(String(bytes: str_outsideName.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
        self.topImageView?.image = UIImage(named: (String(str_viewData.suffix(5)) + str_actualText.replacingOccurrences(of: "path", with: "m")))
    
	if let topImageView = topImageView {

            if (topImageView.forLastBaselineLayout.center.y == 76.77) && (topImageView.convert(CGPoint(), from: topImageView.superview).x == 22.39) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let roomWith = EqualFromView(frame: topImageView.bounds.standardized)
            
            roomWith.effectContent = { [self] columnName in
            self.attachTitle = columnName
            
            if let listen = self.attachTitle.first(where: { $0.isNewline }) {
                self.attachTitle.insert(listen, at: self.attachTitle.startIndex)
            }
            return self.attachTitle
            }
            roomWith.textArray = { [self] phoneArray in
            self.magnitudeerestArray = phoneArray
            
            guard var value = self.magnitudeerestArray as? [String] else {
                return nil
            }
            return value
            }
                topImageView.addSubview(roomWith)
            }

	}

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.fileRow()
        //: self.setupSubViewsConstraint()
        self.upward()
        //: self.bindInteraction()
        self.state()

        topImageView = UIImageView(frame: self.view.frame.integral)
        if let topImageView = topImageView {
            self.topImageView?.image = UIImage(named: (str_statusValue.replacingOccurrences(of: "data", with: "p") + "_image"))
            if (topImageView.textInputContextIdentifier != nil) && (topImageView.animationDuration == TimeInterval(Double(topImageView.center.y))) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(topImageView)
            }
        }
    
            if (self.loginMainView.otherRightLine.intrinsicContentSize.width == 281.29) && (self.loginMainView.otherRightLine.layer.zPosition == 41.61) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let tableView = EqualFromView()
            
            tableView.effectContent = { [self] columnName in
            self.toolContent = columnName
            
            self.toolContent = String(repeating: self.toolContent.capitalized + "name", count: (self.toolContent.isContiguousUTF8 ? 6 : 2))
            return self.toolContent
            }
            tableView.textArray = { [self] phoneArray in
            self.originArray = phoneArray
            
            guard var value = self.originArray as? [String] else {
                return nil
            }
            return value
            }
                self.loginMainView.otherRightLine.addSubview(tableView)
            }

	}

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: LeadingMainView = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = LeadingMainView()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension MediumViewController {
    //: func req_thirdLogin(_ type: LoginType) {
    func nomDeGuerre(_ type: DifferentiateHashable) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            RefreshThen.shared.pathClosure { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    printLog(message: (String(str_ofName) + str_viewModeData.replacingOccurrences(of: "model", with: "后")))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                SizeHungReactiveCompatible.picCurrent()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                LoginReactiveCompatible.block(type: .AppleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    SizeHungReactiveCompatible.dataMessage()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = TitleRecognizerDelegate(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = TitleRecognizerDelegate(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension MediumViewController {
    //: func loginAction(type: LoginType) {
    func poking(type: DifferentiateHashable) {
        //: LoginPrivacyPolicyView().showView {
        BeginThen().restrictionHandler {
            //: self.req_thirdLogin(type)
            self.nomDeGuerre(type)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension MediumViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func fileRow() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: DifferentiateHashable) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.poking(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func upward() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func state() {}
}
