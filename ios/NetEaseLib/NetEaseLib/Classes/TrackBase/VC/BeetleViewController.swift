
//: Declare String Begin

/*: "live_picture" :*/
fileprivate let str_gestureData:String = "view other to valuelive_p"
fileprivate let str_listenValue:[Character] = ["r","e"]

/*: "Cancel" :*/
fileprivate let str_makeExtraContent:String = "Cancels title fill return"

/*: "Post" :*/
fileprivate let str_equalName:String = "name content self varPost"

/*: "Upload failed" :*/
fileprivate let str_topValue:[Character] = ["U","p","l","o","a","d"," ","f","a","i","l"]
fileprivate let str_targetText:String = "eevent"

/*: "imgUrl" :*/
fileprivate let str_domainShowName:[Character] = ["i","m","g","U","r","l"]

/*: "videoUrl" :*/
fileprivate let str_userName:String = "videmonth"
fileprivate let str_imageVoiceTitleName:String = "Urlimage end center"

/*: "content" :*/
fileprivate let str_levelTitle:String = "CO"
fileprivate let str_upCellValue:String = "hidetehidet"

/*: "location" :*/
fileprivate let str_collectionName:String = "bottomoca"

/*: "Video review in progress" :*/
fileprivate let str_modelTitle:String = "Video center agent"
fileprivate let str_yourValue:String = "in prpush list recording label tool"

/*: "Shoot video at least 5 seconds" :*/
fileprivate let str_pictureData:String = "Shoot part height voice video"
fileprivate let str_tailValue:String = "image let makeat lea"
fileprivate let str_showViewName:String = "now open false secon"
fileprivate let str_makeTitle:String = "dmode"

/*: "Camera" :*/
fileprivate let str_femaleTableData:String = "type returnCamera"

/*: "Photo" :*/
fileprivate let str_servicePathName:String = "Photopoint text view data target"

/*: "Video" :*/
fileprivate let str_shareData:String = "Videoauto string hide error i"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeetleViewController.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import AVFoundation
import AVFoundation
//: import CoreServices
import CoreServices
//: import ModelIO
import ModelIO
//: import Photos
import Photos
//: import UIKit
import UIKit

//: protocol TalkingFreeViewControllerDelegate: NSObjectProtocol {
protocol CustomDateControllerDelegate: NSObjectProtocol {
    // 发布成功
    //: func ShareSucceed()
    func migrationSucceed()
}

// MARK: - 属性声明 & 生命周期方法

//: class TalkingFreeViewController: TalkingBaseViewController {
class BeetleViewController: PropertyViewController {
	var billOn: Bool = false
	var acrossCount: Int = 77
	var loadName: String = "social"
	var sizeArray: [AnyHashable] = []
	var voiceDictionary: [AnyHashable: String] = [:]

    var colorSearchedImageView: UIImageView?

    //: weak var delegate: TalkingFreeViewControllerDelegate?
    weak var delegate: CustomDateControllerDelegate?

    //: private var videoPath = ""
    private var videoPath = ""
    //: private var coverPath = ""
    private var coverPath = ""

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        shirtButton()

        colorSearchedImageView = UIImageView(frame: self.view.bounds.union(CGRect(x: CGFloat(Int(self.view.center.x)), y: CGFloat(Int(self.view.autoresizingMask.rawValue)), width: CGFloat(self.view.effectiveUserInterfaceLayoutDirection.rawValue), height: CGFloat(0))))
        if let colorSearchedImageView = colorSearchedImageView {
            self.colorSearchedImageView?.image = UIImage(named: (String(str_gestureData.suffix(6)) + "ictu" + String(str_listenValue)))
            if (colorSearchedImageView.textInputContextIdentifier != nil) && (colorSearchedImageView.clipsToBounds) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(colorSearchedImageView)
            }
        }
    
            if (self.supportedInterfaceOrientations == .portraitUpsideDown) && (self.inputAccessoryViewController != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let constraintMake = UpwardlyController()
            constraintMake.titleMessageName = coverPath
            
            if let value = collectionView.imageArray as? [String] {
                constraintMake.managerArray = value
            }
            
            
            constraintMake.existentPicOpen = { [self] contentViewSwitch in
            self.billOn = contentViewSwitch
            
            var constraintMake = self.hideNavi
            constraintMake = !constraintMake
            if constraintMake != self.billOn {
                self.billOn = constraintMake
            }
            
                self.billOn = true
                self.billOn = true
            return self.billOn
            }
            constraintMake.superiorInterval = { [self] observerQuantity in
            self.acrossCount = observerQuantity
            
            var constraintMake = collectionView.MaxImagesCount
            constraintMake &*= 5
            if constraintMake > self.acrossCount {
                self.acrossCount = constraintMake
            }
            
            return self.acrossCount
            }
            constraintMake.mentalFacultyLocationContent = { [self] tableText in
            self.loadName = tableText
            
            var constraintMake = videoPath
            constraintMake = String(repeating: constraintMake.lowercased() + "sex", count: (constraintMake.isContiguousUTF8 ? 9 : 4))
            if constraintMake.hasSuffix(self.loadName) {
                self.loadName = constraintMake
            }
            
            return self.loadName
            }
            constraintMake.photoArray = { [self] freeArray in
            self.sizeArray = freeArray
            
            if var constraintMake = collectionView.imageArray as? [String] {
                if constraintMake.contains(where: { self.sizeArray.contains($0) }) {
                    self.sizeArray = constraintMake
                }
            }
            
            guard var value = self.sizeArray as? [String] else {
                return nil
            }
            return value
            }
            constraintMake.beautyDictionary = { [self] windowDictionary in
            self.voiceDictionary = windowDictionary
            
            guard var value = self.voiceDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.navigationController?.pushViewController(constraintMake.self, animated: true)
            }

	}

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var reqManager: TalkingMomentRequestTool = {
    private lazy var reqManager: RequestTool = //: return RequestTool()
        .init()
    //: }()

    //: private lazy var cancelBtn: UIButton = {
    private lazy var cancelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_makeExtraContent.prefix(6))).localized, for: .normal)
        //: btn.setTitleColor(.appValueColor(), for: .normal)
        btn.setTitleColor(.complexion(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(cancelBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(videoShow), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var postBtn: UIButton = {
    private lazy var postBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Post".localized, for: .normal)
        btn.setTitle((String(str_equalName.suffix(4))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 70, height: 30)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: 70, height: 30)), for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(postBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(deviceQuantityeraction), for: .touchUpInside)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var collectionView: FreeCollectionView = {
    private lazy var collectionView: NameRecognizerDelegate = {
        //: let collectionView = FreeCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
        let collectionView = NameRecognizerDelegate(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.delegte = self
        collectionView.delegte = self
        //: collectionView.deleteActionBlock = { [weak self] in
        collectionView.deleteActionBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.collectionView.imageArray.count == 0 {
            if self.collectionView.imageArray.count == 0 {
                //: self.collectionView.contentType = MomentType.nones
                self.collectionView.contentType = CellSubqueryConvertible.nones
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.coverPath = ""
                self.coverPath = ""
            }
            //: self.updataImageNumber()
            self.showBar()
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingFreeViewController {
extension BeetleViewController {
    /// 发布动态
    //: func requestReleaseMoment() {
    func changeFile() {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: let content = self.collectionView.headerView?.textView.text ?? ""
        let content = self.collectionView.headerView?.textView.text ?? ""
        //: reqManager.releasePhotosMoment(photos: self.collectionView.imageArray, content: content) { [weak self] succeed, result, errorModel in
        reqManager.accumulation(photos: self.collectionView.imageArray, content: content) { [weak self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.postBtn.isEnabled = true
            self.postBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: return
                return
            }
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: NotificationCenter.default.post(name: POST_EXPLORE_SUCCESS_NOTIFICATION, object: self, userInfo: nil)
            NotificationCenter.default.post(name: a_tableName, object: self, userInfo: nil)
        }
    }

    /// 上传视频到腾讯云COS
    //: func uploadVideo() {
    func userIcon() {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: let content = self.collectionView.headerView?.textView.text ?? ""
        let content = self.collectionView.headerView?.textView.text ?? ""
        //: TalkingMomentVideoManager.shared.cos_uploadVideo(type: 1, coverPath: self.coverPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
        MediumLabThen.shared.all(type: 1, coverPath: self.coverPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
            //: guard succeed else {
            guard succeed else {
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: self.func__showStatusBarErrorMsg(showMsg: "Upload failed".localized)
                self.episode(showMsg: (String(str_topValue) + str_targetText.replacingOccurrences(of: "event", with: "d")).localized)
                //: return
                return
            }

            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["imgUrl"] = coverUrl
            dict[(String(str_domainShowName))] = coverUrl
            //: dict["videoUrl"] = videoUrl
            dict[(str_userName.replacingOccurrences(of: "month", with: "o") + String(str_imageVoiceTitleName.prefix(3)))] = videoUrl
            //: dict["content"] = content
            dict[(str_levelTitle.lowercased() + str_upCellValue.replacingOccurrences(of: "hide", with: "n"))] = content
            //: dict["location"] = ""
            dict[(str_collectionName.replacingOccurrences(of: "bottom", with: "l") + "tion")] = ""

            //: TalkingMomentRequestTool.releaseVideoMoment(params: dict) {[weak self] succeed, result, errorModel in
            RequestTool.doingDetail(params: dict) { [weak self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                SizeHungReactiveCompatible.dataMessage()
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.postBtn.isEnabled = true
                self.postBtn.isEnabled = true
                //: guard succeed else {
                guard succeed else {
                    //: return
                    return
                }
                //: self.deleteFile()
                self.ad()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Video review in progress".localized)
                self.afterTitle(showMsg: (String(str_modelTitle.prefix(6)) + "review " + String(str_yourValue.prefix(5)) + "ogress").localized)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
                //: self.delegate?.ShareSucceed()
                self.delegate?.migrationSucceed()
                //: NotificationCenter.default.post(name: POST_EXPLORE_SUCCESS_NOTIFICATION, object: self, userInfo: nil)
                NotificationCenter.default.post(name: a_tableName, object: self, userInfo: nil)
            }
        }
    }
}

// MARK: Event事件

//: extension TalkingFreeViewController {
extension BeetleViewController {
    //: @objc func cancelBtnClickEvent() {
    @objc func videoShow() { // 返回
        //: TalkingMomentVideoManager.shared.stopCompressVideo()
        MediumLabThen.shared.lockEffect()
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: @objc func postBtnClickEvent() {
    @objc func deviceQuantityeraction() { // 发布
        //: postBtn.isEnabled = false
        postBtn.isEnabled = false
        //: collectionView.headerView?.textView.resignFirstResponder()
        collectionView.headerView?.textView.resignFirstResponder()
        //: if self.collectionView.contentType == .Photo {
        if self.collectionView.contentType == .Photo {
            //: requestReleaseMoment()
            changeFile()
            //: } else if self.collectionView.contentType == .Video {
        } else if self.collectionView.contentType == .Video {
            //: uploadVideo()
            userIcon()
        }
    }

    /// 更新发布按钮状态
    //: func updataImageNumber() {
    func showBar() {
        //: postBtn.isEnabled = collectionView.imageArray.count > 0 ? true:false
        postBtn.isEnabled = collectionView.imageArray.count > 0 ? true : false
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    // MARK: - 相机、相册

    //: func openCamera() {
    func digitizer() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(true) { (isOpen: Bool) in
        PrefaceReactiveCompatible.appBlock(true) { (isOpen: Bool) in
            //: guard isOpen else { return }
            guard isOpen else { return }

            //: let cameraPicker = UIImagePickerController()
            let cameraPicker = UIImagePickerController()
            //: cameraPicker.delegate = self
            cameraPicker.delegate = self
            //: cameraPicker.sourceType = .camera
            cameraPicker.sourceType = .camera
            //: switch self.collectionView.contentType {
            switch self.collectionView.contentType {
            //: case .Photo:
            case .Photo:
                //: cameraPicker.cameraCaptureMode = .photo
                cameraPicker.cameraCaptureMode = .photo
            //: break
            //: default:
            default:
                //: cameraPicker.mediaTypes = [kUTTypeMovie as String, kUTTypeImage as String]
                cameraPicker.mediaTypes = [kUTTypeMovie as String, kUTTypeImage as String]
                //: cameraPicker.cameraCaptureMode = .video
                cameraPicker.cameraCaptureMode = .video
                //: cameraPicker.videoQuality = .typeMedium
                cameraPicker.videoQuality = .typeMedium
                //: cameraPicker.videoMaximumDuration = 30
                cameraPicker.videoMaximumDuration = 30
                //: break
            }
            //: cameraPicker.modalPresentationStyle = .fullScreen
            cameraPicker.modalPresentationStyle = .fullScreen
            //: self.present(cameraPicker, animated: true)
            self.present(cameraPicker, animated: true)
        }
    }

    //: func openAlbum() {
    func enableUpAlbum() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        PrefaceReactiveCompatible.beModel(true) { (isOpen: Bool) in
            //: guard isOpen else { return }
            guard isOpen else { return }
            //: let count = 9 - self.collectionView.imageArray.count
            let count = 9 - self.collectionView.imageArray.count
            //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: count, allowPhoto: true, allowVideo: false)
            let vc = StreetSmartThen.censusVideo(maxCount: count, allowPhoto: true, allowVideo: false)
            //: vc.modalPresentationStyle = .fullScreen
            vc.modalPresentationStyle = .fullScreen
            //: self.present(vc, animated: true)
            self.present(vc, animated: true)
            //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
            vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                             //: assets: Array<Any>?,
                                                             _: [Any]?,
                                                             //: isSelectOriginalPhoto: Bool?)  in
                                                             _: Bool?) in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: guard let photos = photos else { return }
                    guard let photos = photos else { return }

                    //: for img in photos {
                    for img in photos {
                        //: self.collectionView.imageArray.append(img)
                        self.collectionView.imageArray.append(img)
                    }
                    //: self.collectionView.MaxImagesCount = 9
                    self.collectionView.MaxImagesCount = 9
                    //: self.collectionView.contentType = .Photo
                    self.collectionView.contentType = .Photo
                    //: self.updataImageNumber()
                    self.showBar()
            }
        }
    }

    //: func openVideo() {
    func thrust() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        PrefaceReactiveCompatible.beModel(true) { (isOpen: Bool) in
            //: guard isOpen else { return }
            guard isOpen else { return }
            //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: false, allowVideo: true)
            let vc = StreetSmartThen.censusVideo(maxCount: 1, allowPhoto: false, allowVideo: true)
            //: vc.modalPresentationStyle = .fullScreen
            vc.modalPresentationStyle = .fullScreen
            //: self.present(vc, animated: true)
            self.present(vc, animated: true)
            //: vc.didFinishPickingVideoHandle = { [weak self] ( coverImage: UIImage?,
            vc.didFinishPickingVideoHandle = { [weak self] (_: UIImage?,
                                                            //: assets: PHAsset?)  in
                                                            assets: PHAsset?) in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: TalkingImagePickTool.getVideoPath(asset: assets) { filePath in
                    StreetSmartThen.mTheory(asset: assets) { filePath in
                        //: guard filePath != nil else { return }
                        guard filePath != nil else { return }
                        //: let asset = AVURLAsset.init(url: filePath!)
                        let asset = AVURLAsset(url: filePath!)
                        //: let time = asset.duration
                        let time = asset.duration
                        //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                        let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                        //: if seconds >= 5 {
                        if seconds >= 5 {
                            //: self.CompressedVideo(url: filePath!)
                            self.rawDataUrl(url: filePath!)
                            //: } else {
                        } else {
                            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                                self.episode(showMsg: (String(str_pictureData.prefix(6)) + "video " + String(str_tailValue.suffix(6)) + "st 5" + String(str_showViewName.suffix(6)) + str_makeTitle.replacingOccurrences(of: "mode", with: "s")).localized)
                            }
                        }
                    }
            }
        }
    }

    /// 视频编辑+压缩
    //: func CompressedVideo(url: URL) {
    func rawDataUrl(url: URL) {
        //: let videoVC = TalkingVideoEditorController(maxDuration: 60.0, videoURL: url) { videoInfo in
        let videoVC = UpRecognizerDelegate(maxDuration: 60.0, videoURL: url) { videoInfo in
            //: guard let videoInfo = videoInfo else { return }
            guard let videoInfo = videoInfo else { return }
            //: self.videoPath = videoInfo.videoPath
            self.videoPath = videoInfo.videoPath
            //: self.coverPath = videoInfo.coverPath
            self.coverPath = videoInfo.coverPath
            //: self.collectionView.contentType = .Video
            self.collectionView.contentType = .Video
            //: let img = UIImage.init(contentsOfFile: self.coverPath) ?? UIImage.init()
            let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            //: self.collectionView.imageArray.append(img)
            self.collectionView.imageArray.append(img)
            //: self.collectionView.MaxImagesCount = 1
            self.collectionView.MaxImagesCount = 1
            //: self.updataImageNumber()
            self.showBar()
        }
        //: ProgressHUD.dismiss()
        SizeHungReactiveCompatible.dataMessage()
        //: videoVC.modalPresentationStyle = .fullScreen
        videoVC.modalPresentationStyle = .fullScreen
        //: self.present(videoVC, animated: true)
        self.present(videoVC, animated: true)
    }

    //: func deleteFile() {
    func ad() {
        //: if FileManager.default.fileExists(atPath: self.videoPath) {
        if FileManager.default.fileExists(atPath: self.videoPath) {
            //: try? FileManager.default.removeItem(atPath: self.videoPath)
            try? FileManager.default.removeItem(atPath: self.videoPath)
        }
    }
}

// MARK: - UIImagePickerControllerDelegate

//: extension TalkingFreeViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
extension BeetleViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    //: func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    func imagePickerController(_: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: let mediaType = info[.mediaType] as! String
            let mediaType = info[.mediaType] as! String

            //: if mediaType == kUTTypeMovie as String {
            if mediaType == kUTTypeMovie as String {
                //: let asset = AVURLAsset.init(url: info[.mediaURL] as! URL)
                let asset = AVURLAsset(url: info[.mediaURL] as! URL)
                //: let time = asset.duration
                let time = asset.duration
                //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                //: if seconds>=5 {
                if seconds >= 5 {
                    //: ProgressHUD.show()
                    SizeHungReactiveCompatible.picCurrent()
                    //: self.CompressedVideo(url: info[.mediaURL]! as! URL)
                    self.rawDataUrl(url: info[.mediaURL]! as! URL)

                    //: } else {
                } else {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { // 视频压缩取消
                        //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                        self.episode(showMsg: (String(str_pictureData.prefix(6)) + "video " + String(str_tailValue.suffix(6)) + "st 5" + String(str_showViewName.suffix(6)) + str_makeTitle.replacingOccurrences(of: "mode", with: "s")).localized)
                    }
                }
                //: }else if mediaType == kUTTypeImage as String {
            } else if mediaType == kUTTypeImage as String {
                //: guard let image = info[.originalImage] as? UIImage else {
                guard let image = info[.originalImage] as? UIImage else {
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: self.collectionView.MaxImagesCount = 9
                    self.collectionView.MaxImagesCount = 9
                    //: self.collectionView.contentType = .Photo
                    self.collectionView.contentType = .Photo
                    //: self.collectionView.imageArray.append(image)
                    self.collectionView.imageArray.append(image)
                    //: self.updataImageNumber()
                    self.showBar()
                }
            }
        }
    }
}

// MARK: - PunctuateViewDelegate

//: extension TalkingFreeViewController: FreeCollectionViewDelegate {
extension BeetleViewController: PunctuateViewDelegate {
    /// 选择图片
    //: func needSelectReleaseImages() {
    func tableVideoImages() {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = MediumDataSource(frame: self.view.frame)
        //: if self.collectionView.contentType == .Photo {
        if self.collectionView.contentType == .Photo {
            //: vc.initwithList(cellTitleList: ["Camera".localized, "Photo".localized])
            vc.messageWith(cellTitleList: [(String(str_femaleTableData.suffix(6))).localized, (String(str_servicePathName.prefix(5))).localized])
            //: }else {
        } else {
            //: vc.initwithList(cellTitleList: ["Camera".localized, "Photo".localized, "Video".localized])
            vc.messageWith(cellTitleList: [(String(str_femaleTableData.suffix(6))).localized, (String(str_servicePathName.prefix(5))).localized, (String(str_shareData.prefix(5))).localized])
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if index == 0 {
            if index == 0 {
                //: self.openCamera()
                self.digitizer()
                //: } else if index == 1 {
            } else if index == 1 {
                //: self.openAlbum()
                self.enableUpAlbum()
                //: } else if index == 2 {
            } else if index == 2 {
                //: self.openVideo()
                self.thrust()
            }
        }
    }

    /// 展示当前选中图片
    //: func needShowCurrentImage(index: IndexPath) {
    func showDelete(index: IndexPath) {
        //: let vc = TalkingMomentPhotosVC.init(images: self.collectionView.imageArray, index: index.row, type: .publish)
        let vc = CellViewController(images: self.collectionView.imageArray, index: index.row, type: .publish)
        // 删除按钮block
        //: vc.deleteBlock = { index in
        vc.deleteBlock = { index in
            //: guard self.collectionView.imageArray.count > index else {
            guard self.collectionView.imageArray.count > index else {
                //: return
                return
            }
            //: self.collectionView.imageArray.remove(at: index)
            self.collectionView.imageArray.remove(at: index)
            //: self.updataImageNumber()
            self.showBar()
            //: self.collectionView.contentType = MomentType.nones
            self.collectionView.contentType = CellSubqueryConvertible.nones
        }
        //: vc.modalPresentationStyle = .fullScreen
        vc.modalPresentationStyle = .fullScreen
        //: self.present(vc, animated: true)
        self.present(vc, animated: true)
    }

    /// 展示当前选中视频
    //: func needShowCurrentVideo() {
    func equalMode() {
        //: let vc = TalkingMomentVideoVC.init(videoPath: self.videoPath)
        let vc = LargePlayerDelegate(videoPath: self.videoPath)
        //: vc.modalPresentationStyle = .fullScreen
        vc.modalPresentationStyle = .fullScreen
        //: self.present(vc, animated: true)
        self.present(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingFreeViewController {
extension BeetleViewController {
    //: func createUI() {
    func shirtButton() {
        //: self.view.addSubview(cancelBtn)
        self.view.addSubview(cancelBtn)
        //: cancelBtn.snp.makeConstraints { make in
        cancelBtn.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+7)
            make.top.equalTo(a_limitRecordScreenName + 7)
            //: make.size.equalTo(CGSize(width: 80, height: 30))
            make.size.equalTo(CGSize(width: 80, height: 30))
        }

        //: self.view.addSubview(postBtn)
        self.view.addSubview(postBtn)
        //: postBtn.snp.makeConstraints { make in
        postBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(StatusBarHeight+7)
            make.top.equalTo(a_limitRecordScreenName + 7)
            //: make.size.equalTo(CGSize(width: 70, height: 30))
            make.size.equalTo(CGSize(width: 70, height: 30))
        }

        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarNavigationBarHeight)
            make.top.equalToSuperview().offset(a_itemTitle)
            //: make.leading.trailing.bottom.equalTo(0)
            make.leading.trailing.bottom.equalTo(0)
        }
    }
}
