
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_sizeData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Face verification" :*/
fileprivate let str_currentData:[Character] = ["F","a","c","e"," ","v","e","r","i","f","i","c"]
fileprivate let str_imageValue:[Character] = ["a","t","i","o","n"]

/*: "view_image" :*/
fileprivate let str_topUpName:[Character] = ["v"]
fileprivate let str_onValue:[Character] = ["i","e","w","_","i","m","a","g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingToSkiagraphTakeViewController.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationTakePhotoVC: TalkingBaseViewController {
class TalkingToSkiagraphTakeViewController: PropertyViewController {
	var tvCount: Double = -82.7
	var refuseDictionary: [AnyHashable: String] = [:]
	var capacityTotal: Double = -67.8
	var receiveDictionary: [AnyHashable: String] = [:]

    var distributionBackgroundImageView: UIImageView?

    //: var takedPhotoImg: UIImage?
    var takedPhotoImg: UIImage?

    //: init(photoImage: UIImage) {
    init(photoImage: UIImage) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.takedPhotoImg = photoImage
        self.takedPhotoImg = photoImage
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_sizeData.reversed(), encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        labUp(isOpen: false)
    

	}

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: popGesture(isOpen: true)
        labUp(isOpen: true)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Face verification".localized
        title = (String(str_currentData) + String(str_imageValue)).localized
        //: self.createUI()
        self.roomFile()
        //: self.createUIConstraint()
        self.cannulize()

	}

    // MARK: - Lazy load

    //: lazy var mainView: TalkingVerificationTakePhotoView = {
    lazy var mainView: PathReactiveCompatible = {
        //: let view = TalkingVerificationTakePhotoView()
        let view = PathReactiveCompatible()
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingVerificationTakePhotoVC {
extension TalkingToSkiagraphTakeViewController {
    //: func requestSubmitPhoto(photo: UIImage) {
    func message(photo: UIImage) {
        // 图片压缩成data  auth_pic : data
        //: ProgressHUD.show(superView: view)
        SizeHungReactiveCompatible.exhibitRemoveCuttingEdge(superView: view)
        //: TalkingUserRequestManager.func__realVerifyUploadPic(pic: photo) { succeed, result, errorModel in
        ConsumerRequestManager.petite(pic: photo) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()

            //: if succeed == true {
            if succeed == true {
                //: MeasurementAppManager.share.loginUserMode.isTPAuth = "1"
                MeasurementAppManager.share.loginUserMode.isTPAuth = "1"
                //: let vc = TalkingFinalVerificationVC()
                let vc = ManagerVerificationVc()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: ProgressHUD.toast(errorModel?.errorMsg)
                SizeHungReactiveCompatible.toToast(errorModel?.errorMsg)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingVerificationTakePhotoVC {
extension TalkingToSkiagraphTakeViewController {
    //: override func naviPopback() {
    override func noNavi() {
        //: for index in 0..<(self.navigationController?.viewControllers.count)! {
        for index in 0 ..< (self.navigationController?.viewControllers.count)! {
            //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingFaceVerificationVC.self) == true {
            if self.navigationController?.viewControllers[index].isKind(of: FacialLeadingVerificationVc.self) == true {
                //: let vc = (self.navigationController?.viewControllers[index] as? TalkingFaceVerificationVC)!
                let vc = (self.navigationController?.viewControllers[index] as? FacialLeadingVerificationVc)!
                //: self.navigationController?.popToViewController(vc, animated: true)
                self.navigationController?.popToViewController(vc, animated: true)
                //: break
                break
            }
        }
    }
}

// MARK: - UIImagePickerControllerDelegate, UINavigationControllerDelegate

//: extension TalkingVerificationTakePhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension TalkingToSkiagraphTakeViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: func retakePhoto() {
    func equalFor() {
        //: let isAvailable = UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        let isAvailable = UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        //: let imagePicker = UIImagePickerController()
        let imagePicker = UIImagePickerController()
        //: imagePicker.sourceType = .photoLibrary
        imagePicker.sourceType = .photoLibrary
        //: if isAvailable {
        if isAvailable {
            //: imagePicker.sourceType = .camera
            imagePicker.sourceType = .camera
        }
        //: imagePicker.delegate = self
        imagePicker.delegate = self
        //: present(imagePicker, animated: true, completion: {})
        present(imagePicker, animated: true, completion: {})
    }

    //: func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    func imagePickerController(_: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        //: self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)

        //: if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
        if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            //: mainView.rightPhotoImageView.image = photo
            mainView.rightPhotoImageView.image = photo
        }
    }

    //: func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    func imagePickerControllerDidCancel(_: UIImagePickerController) {
        //: self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)
    }
}

// MARK: - UI

//: extension TalkingVerificationTakePhotoVC {
extension TalkingToSkiagraphTakeViewController {
    //: func createUI() {
    func roomFile() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: mainView.rightPhotoImageView.image = self.takedPhotoImg
        mainView.rightPhotoImageView.image = self.takedPhotoImg
        //: mainView.submitClickBlock = { [weak self] (_ photoImage: UIImage) -> Void in
        mainView.submitClickBlock = { [weak self] (_ photoImage: UIImage) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.requestSubmitPhoto(photo: photoImage)
            self.message(photo: photoImage)
            //: return
        }
        //: mainView.retakeClickBlock = { [weak self] () -> Void in
        mainView.retakeClickBlock = { [weak self] () in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.retakePhoto()
            self.equalFor()
            //: return
        }
    }

    //: func createUIConstraint() {
    func cannulize() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
    }
}
