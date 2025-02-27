
//: Declare String Begin

/*: "🌛 🌛 enter  :*/
fileprivate let str_barTitle:[Character] = ["🌛"," ","\u{0001f31b}"," ","e","n"]
fileprivate let str_allName:[Character] = ["t","e","r"," "]

/*: "present_picture" :*/
fileprivate let str_hungOutsideName:[Character] = ["p","r","e","s","e"]
fileprivate let str_addUpText:[Character] = ["n","t","_"]
fileprivate let str_modelValue:String = "pictucontainere"

/*: "🌛 🌛 deinit  :*/
fileprivate let str_nameMakeContent:String = "🌛 🌛 dimage if data load next"
fileprivate let str_blockName:[Character] = ["e","i","n","i","t"," "]

/*: "nav_back_black_nor" :*/
fileprivate let str_tableShareName:String = "nav_outside pic if"
fileprivate let str_leadingFatalValue:String = "lack_noview if in room var"
fileprivate let str_equalText:[Character] = ["r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PropertyViewController.swift
//  AbroadTalking
//
//  Created by DouXiu on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingBaseViewController: UIViewController {
class PropertyViewController: UIViewController {
	var managerSum: Int = 94
	var frameCount: Double = 34.8

    var indexImageView: UIImageView?
    //: var hideNavi = false
    var hideNavi = false // 是否隐藏导航

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: printLog(message: "🌛 🌛 enter \(self)")
        printLog(message: (String(str_barTitle) + String(str_allName)) + "\(self)")
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.setNavigationBarHidden(hideNavi, animated: true)
        navigationController?.setNavigationBarHidden(hideNavi, animated: true)
        /// 开启侧滑返回手势
        //: popGesture(isOpen: true)
        labUp(isOpen: true)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    
            if (self.isMovingToParent) && (self.presentingViewController?.title == "appear") {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let labelLet = EqualFromController()



            
            labelLet.switcherOutsideMagnitude = { [self] cakeSum in
            self.managerSum = cakeSum
            
            return self.managerSum
            }
                self.navigationController?.present(labelLet.self, animated: true) { [self] in
                self.frameCount += 1
                if Int(self.frameCount) > -83 {
                    self.frameCount = self.frameCount - 1
                }
                }
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.playerEqual()

        indexImageView = UIImageView(frame: self.view.bounds.integral)
        if let indexImageView = indexImageView {
            self.indexImageView?.image = UIImage(named: (String(str_hungOutsideName) + String(str_addUpText) + str_modelValue.replacingOccurrences(of: "container", with: "r")))
            if (indexImageView.isUserInteractionEnabled == true) && (indexImageView.image != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(indexImageView)
            }
        }
    }

    //: deinit {
    deinit {
        //: printLog(message: "🌛 🌛 deinit \(self)")
        printLog(message: (String(str_nameMakeContent.prefix(5)) + String(str_blockName)) + "\(self)")
    }
}

//: extension TalkingBaseViewController: UIGestureRecognizerDelegate {
extension PropertyViewController: UIGestureRecognizerDelegate {
    //: func addTapGestureRecognizer() {
    func moveRecognizer() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(func__TapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(bubble))
        //: tap.delegate = self
        tap.delegate = self
        //: tap.cancelsTouchesInView = false
        tap.cancelsTouchesInView = false
        //: view.addGestureRecognizer(tap)
        view.addGestureRecognizer(tap)
    }

    //: @objc func func__TapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc func bubble(_: UITapGestureRecognizer) {
        //: view.endEditing(true)
        view.endEditing(true)
    }

    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
    func gestureRecognizer(_: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        //: if touch.view!.isKind(of: UIControl.self) {
        if touch.view!.isKind(of: UIControl.self) {
            //: return false
            return false
        }
        //: return true
        return true
    }
}

// MARK: - 侧滑返回手势开关

//: extension TalkingBaseViewController {
extension PropertyViewController {
    /// 侧滑返回手势开关【直播、音视频通话及后续页面不支持返回手势】
    /// - Parameter isOpen: 是否开启
    //: func popGesture(isOpen: Bool) {
    func labUp(isOpen: Bool) {
        //: var isOpen = isOpen
        var isOpen = isOpen
        //: if let navArr = navigationController?.viewControllers {
        if let navArr = navigationController?.viewControllers {
            //: if navArr.contains(where: {
            if navArr.contains(where: {
                //: $0.isKind(of: TalkingVoiceRoomViewController.self) ||
                $0.isKind(of: BlockManagerDelegate.self) ||
                    //: $0.isKind(of: TalkingLiveBeautifyViewController.self) ||
                    $0.isKind(of: MTheoryThen.self) ||
                    //: $0.isKind(of: TalkingLivePullStreamsViewController.self) ||
                    $0.isKind(of: MarkRecognizerDelegate.self) ||
                    //: $0.isKind(of: TalkingVoiceChatViewController.self) ||
                    $0.isKind(of: ToObjectProtocol.self) ||
                    //: $0.isKind(of: TalkingVideoChatViewController.self)
                    $0.isKind(of: HumanActivityPartyDelegate.self)
                //: }) {
            }) {
                //: isOpen = false
                isOpen = false
            }
        }

        //: if let interactivePopGestureRecognizer = navigationController?.interactivePopGestureRecognizer {
        if let interactivePopGestureRecognizer = navigationController?.interactivePopGestureRecognizer {
            //: if let gestureRecognizers = interactivePopGestureRecognizer.view?.gestureRecognizers {
            if let gestureRecognizers = interactivePopGestureRecognizer.view?.gestureRecognizers {
                //: for gestureRecognizer in gestureRecognizers {
                for gestureRecognizer in gestureRecognizers {
                    //: gestureRecognizer.isEnabled = isOpen
                    gestureRecognizer.isEnabled = isOpen
                }
            }
        }
    }
}

//: extension UIViewController {
extension UIViewController {
    //: func naviPopbackItem() -> UIBarButtonItem {
    func petTitle() -> UIBarButtonItem {
        //: let item = UIBarButtonItem(image: UIImage.outsideText(name: "nav_back_black_nor"), style: .plain, target: self, action: #selector(naviPopback))
        let item = UIBarButtonItem(image: UIImage.outsideText(name: (String(str_tableShareName.prefix(4)) + "back_b" + String(str_leadingFatalValue.prefix(7)) + String(str_equalText))), style: .plain, target: self, action: #selector(noNavi))
        //: item.imageInsets = UIEdgeInsets(top: 0, left: -6, bottom: 0, right: 0)
        item.imageInsets = UIEdgeInsets(top: 0, left: -6, bottom: 0, right: 0)
        //: item.width = 34
        item.width = 34
        //: return item
        return item
    }

    //: @objc func naviPopback() {
    @objc func noNavi() {
        //: navigationController?.popViewController(animated: true)
        navigationController?.popViewController(animated: true)
    }
}
