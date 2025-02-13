
//: Declare String Begin

/*: "Face verification" :*/
fileprivate let str_resInsideTitle:String = "to true self sub labelFace "
fileprivate let str_disabledName:[Character] = ["a","t","i","o","n"]

/*: "leading_add_image" :*/
fileprivate let str_colorFlushData:String = "ltoadi"
fileprivate let str_equalStyleTitleData:String = "regular"
fileprivate let str_imageHiddenValue:String = "IMAGE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SocialErrorThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleVC: TalkingBaseViewController {
class SocialErrorThen: PropertyViewController {
	var errorEnable: Bool = false
	var videoText: String = "fee"
	var tableArray: [AnyHashable] = []
	var presideDictionary: [AnyHashable: String] = [:]

    var showImageView: UIImageView?

    //: var isRegisterPush = false
    var isRegisterPush = false /// 注册页进行真人认证
    //: typealias IconActionBlock = (_ img: UIImage) -> Void
    typealias IconActionBlock = (_ img: UIImage) -> Void
    //: var iconActionBlock: IconActionBlock?
    var iconActionBlock: IconActionBlock?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Face verification".localized
        title = (String(str_resInsideTitle.suffix(5)) + "verific" + String(str_disabledName)).localized
        //: self.createUI()
        self.selected()
        //: self.createUIConstraint()
        self.itemConstraint()

        showImageView = UIImageView(frame: self.view.frame.integral)
        if let showImageView = showImageView {
            self.showImageView?.image = UIImage(named: (str_colorFlushData.replacingOccurrences(of: "to", with: "e") + "ng_add" + str_equalStyleTitleData.replacingOccurrences(of: "regular", with: "_") + str_imageHiddenValue.lowercased()))
            if (showImageView.layer.contentsRect.origin.x != 0) && (showImageView.layer.position.y == 35.13) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(showImageView)
            }
        }
    
            if (mainView.backgroundColor != nil && mainView.backgroundColor!.cgColor == UIColor.systemTeal.cgColor) && (mainView.motionEffects.count == 20) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let submitWith = LeapOutView()
            
            submitWith.falloutDoing = { [self] editOn in
            self.errorEnable = editOn
            
            var submitWith = isRegisterPush
                submitWith = false
                submitWith = false
            if submitWith != self.errorEnable {
                self.errorEnable = submitWith
            }
            
            return self.errorEnable
            }
            submitWith.priceText = { [self] imageSystemName in
            self.videoText = imageSystemName
            
            return self.videoText
            }
            submitWith.dataArray = { [self] halogenArray in
            self.tableArray = halogenArray
            
            guard var value = self.tableArray as? [String] else {
                return nil
            }
            return value
            }
            submitWith.sizeSinceDictionary = { [self] gestureDictionary in
            self.presideDictionary = gestureDictionary
            
            guard var value = self.presideDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                mainView.addSubview(submitWith)
            }

	}

    // MARK: - Lazy load

    //: lazy var mainView: TalkingVerificationExampleView = {
    lazy var mainView: MarkReactiveCompatible = {
        //: let view = TalkingVerificationExampleView()
        let view = MarkReactiveCompatible()
        //: return view
        return view
        //: }()
    }()
}

// MARK: - UIImagePickerControllerDelegate, UINavigationControllerDelegate

//: extension TalkingVerificationExampleVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension SocialErrorThen: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func takePhoto() {
    private func digitiser() {
        //: let isAvailable = UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        let isAvailable = UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        //: let isFrontAvailable = UIImagePickerController.isCameraDeviceAvailable(UIImagePickerController.CameraDevice.front)
        let isFrontAvailable = UIImagePickerController.isCameraDeviceAvailable(UIImagePickerController.CameraDevice.front)

        //: let imagePicker = UIImagePickerController()
        let imagePicker = UIImagePickerController()
        //: if isAvailable {
        if isAvailable {
            //: imagePicker.sourceType = .camera
            imagePicker.sourceType = .camera
            //: } else {
        } else {
            //: imagePicker.sourceType = .photoLibrary
            imagePicker.sourceType = .photoLibrary
        }
        //: if isFrontAvailable {
        if isFrontAvailable {
            //: imagePicker.cameraDevice = .front
            imagePicker.cameraDevice = .front
        }
        //: imagePicker.delegate = self
        imagePicker.delegate = self
        //: present(imagePicker, animated: true, completion: {})
        present(imagePicker, animated: true, completion: {})
    }

    //: func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    func imagePickerController(_: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                //: if self.isRegisterPush {
                if self.isRegisterPush {
                    //: self.iconActionBlock?(photo)
                    self.iconActionBlock?(photo)
                    //: self.navigationController?.popViewController(animated: true)
                    self.navigationController?.popViewController(animated: true)
                    //: } else {
                } else {
                    //: let vc = TalkingVerificationTakePhotoVC.init(photoImage: photo)
                    let vc = TalkingToSkiagraphTakeViewController(photoImage: photo)
                    //: self.navigationController?.pushViewController(vc, animated: true)
                    self.navigationController?.pushViewController(vc, animated: true)
                }
            }
        }
    }

    //: func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    func imagePickerControllerDidCancel(_: UIImagePickerController) {
        //: self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)
    }
}

// MARK: - UI

//: extension TalkingVerificationExampleVC {
extension SocialErrorThen {
    //: func createUI() {
    func selected() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: mainView.btnClickBlock = { [weak self] () -> Void in
        mainView.btnClickBlock = { [weak self] () in
            //: guard let self = self else { return }
            guard let self = self else { return }
            // 拍照
            //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(true) { isOpen in
            PrefaceReactiveCompatible.appBlock(true) { isOpen in
                //: guard isOpen == true else { return }
                guard isOpen == true else { return }
                //: self.takePhoto()
                self.digitiser()
            }
        }
    }

    //: func createUIConstraint() {
    func itemConstraint() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
    }
}
