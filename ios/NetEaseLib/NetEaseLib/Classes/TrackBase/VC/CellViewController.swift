
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_scopeData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "session_pic" :*/
fileprivate let str_nameContent:[Character] = ["s","e","s","s","i","o","n","_","p","i","c"]

/*: "ImageMomentReusableView" :*/
fileprivate let str_centerMakeTitle:String = "user female self modelTalkin"
fileprivate let str_modeName:String = "entPhtarget equal data cell"
fileprivate let str_blueShowName:[Character] = ["o","t","o","s","P","r","e","v","i","e","w","C","e","l","l"]

/*: "Save successfully" :*/
fileprivate let str_keyEqualValue:String = "Save succdata scale start core equal"
fileprivate let str_viewValue:String = "essnamelly"

/*: / :*/
fileprivate let str_colorTitle:String = "/"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import Photos
import Photos
//: import UIKit
import UIKit

//: class TalkingMomentPhotosVC: TalkingMomentFullScreenVC {
class CellViewController: ImageRecognizerDelegate {
	var collectionTotal: Double = 59.0
	var totalimateDictionary: [AnyHashable: String] = [:]
	var willButtonCount: Double = 48.7
	var actionDictionary: [AnyHashable: String] = [:]
	var fromCount: Double = 11.0
	var managerDictionary: [AnyHashable: String] = [:]

    var resignAppImageView: UIImageView?

    //: var deleteBlock: ((Int) -> Void)?
    var deleteBlock: ((Int) -> Void)?
    //: var currenModel = TalkingMomentModel()
    var currenModel = CustomMeasurable()
    //: var pageIndex = 0
    var pageIndex = 0
    //: var isHideTopView = false
    var isHideTopView = false
    //: var isHidebottomView = false
    var isHidebottomView = false
    //: var photos = [UIImage]()
    var photos = [UIImage]()

    //: init(momentModel: TalkingMomentModel, index: Int, type: MomentPhotoType) {
    init(momentModel: CustomMeasurable, index: Int, type: BeginPhotoType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: myType = type
        myType = type
        //: currenModel = momentModel
        currenModel = momentModel
        //: pageIndex = index
        pageIndex = index
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: let curren = abs(index-(momentModel.pic.count-1))
            let curren = abs(index - (momentModel.pic.count - 1))
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
                //: self.collecView.contentOffset = CGPoint(x: curren*(Int(ScreenWidth)), y: 0)
                self.collecView.contentOffset = CGPoint(x: curren * Int(a_blockValue), y: 0)
                //: self.pageIndex = index
                self.pageIndex = index
                //: self.updataPageLabel()
                self.turn()
            }
        }
    }

    /// 发布页面使用
    //: init(images: [UIImage], index: Int, type: MomentPhotoType) {
    init(images: [UIImage], index: Int, type: BeginPhotoType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: myType = type
        myType = type
        //: photos = images
        photos = images
        //: pageIndex = index
        pageIndex = index
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_scopeData, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: collecView.reloadData()
        collecView.reloadData()
        //: updataPageLabel()
        turn()
        //: crushBtnTool(modle: currenModel)
        self.modle(modle: currenModel)
//        if myType == .normal {
//            setDownloadView()
//        }

        resignAppImageView = UIImageView(frame: self.view.frame.offsetBy(dx: CGFloat(Double(self.view.frame.origin.x)), dy: CGFloat(self.view.semanticContentAttribute.rawValue)))
        if let resignAppImageView = resignAppImageView {
            self.resignAppImageView?.image = UIImage(named: (String(str_nameContent)))
            if (resignAppImageView.restorationIdentifier != nil) && (resignAppImageView.tintColor != nil && resignAppImageView.tintColor!.cgColor == UIColor.systemRed.cgColor) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(resignAppImageView)
            }
        }
    
		if var borderValue = self.currenModel.addTime { 
	            if (collecView.constraintsAffectingLayout(for: .horizontal).count == 81) && (collecView.convert(CGPoint.zero, to: collecView.superview).y == 42.65) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let sectionGift = ThanOfView(frame: collecView.frame.insetBy(dx: CGFloat(390.87), dy: CGFloat(463.39)))
	            sectionGift.startOff = isHideTopView
	
	            sectionGift.layerText = borderValue
	            
	            
	            sectionGift.allMagnitude = { [self] brandSum in
	            self.willButtonCount = brandSum
	            
	                self.willButtonCount -= 1
	                if self.willButtonCount <= 0 {
	                    self.willButtonCount = self.willButtonCount + 1
	                }
	            return self.willButtonCount
	            }
	            sectionGift.awakeDictionary = { [self] collectionDictionary in
	            self.actionDictionary = collectionDictionary
	            
	            guard var value = self.actionDictionary as? [String: String] else {
	                return nil
	            }
	            return value
	            }
	                collecView.addSubview(sectionGift)
	            }
	
		}
	}

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if MeasurementAppManager.share.appConfigMode.disableShootScreen {
            if MeasurementAppManager.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
                let bgView = HypsometryReactiveCompatible(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }
	}

    /// 重写父类删除方法
    //: override func publishDeleteButtonClick() {
    override func equalPush() {
        //: super.publishDeleteButtonClick()
        super.equalPush()

        //: if self.deleteBlock != nil {
        if self.deleteBlock != nil {
            //: self.deleteBlock!(pageIndex)
            self.deleteBlock!(pageIndex)
        }
        //: photos.remove(at: pageIndex)
        photos.remove(at: pageIndex)
        //: guard photos.count > 0 else {
        guard photos.count > 0 else {
            //: if self.presentingViewController != nil {
            if self.presentingViewController != nil {
                //: self.dismiss(animated: true)
                self.dismiss(animated: true)
                //: } else {
            } else {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
            //: return
            return
        }

        //: if pageIndex >= photos.count {
        if pageIndex >= photos.count {
            //: pageIndex -= 1
            pageIndex -= 1
        }
        //: collecView.reloadData()
        collecView.reloadData()
        //: updataPageLabel()
        turn()
    
		if var accelerateValue = self.currenModel.distance { 
	            if (pageLabel.constraintsAffectingLayout(for: .horizontal).count == 81) && (pageLabel.convert(CGPoint.zero, to: pageLabel.superview).y == 42.65) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let sectionGift = ThanOfView(frame: pageLabel.frame.insetBy(dx: CGFloat(390.87), dy: CGFloat(463.39)))
	            sectionGift.startOff = isHideTopView
	
	            sectionGift.layerText = accelerateValue
	            
	            
	            sectionGift.allMagnitude = { [self] brandSum in
	            self.collectionTotal = brandSum
	            
	                self.collectionTotal -= 1
	                if self.collectionTotal <= 0 {
	                    self.collectionTotal = self.collectionTotal + 1
	                }
	            return self.collectionTotal
	            }
	            sectionGift.awakeDictionary = { [self] collectionDictionary in
	            self.totalimateDictionary = collectionDictionary
	            
	            guard var value = self.totalimateDictionary as? [String: String] else {
	                return nil
	            }
	            return value
	            }
	                pageLabel.addSubview(sectionGift)
	            }
	
		}
	}

    //: lazy var collecView: UICollectionView = {
    lazy var collecView: UICollectionView = {
        //: let flayout = UICollectionViewFlowLayout.init()
        let flayout = UICollectionViewFlowLayout()
        //: flayout.scrollDirection = .horizontal
        flayout.scrollDirection = .horizontal
        //: flayout.itemSize = CGSize(width: ScreenWidth, height: ScreenHeight)
        flayout.itemSize = CGSize(width: a_blockValue, height: a_formalValue)
        //: flayout.minimumLineSpacing = 0
        flayout.minimumLineSpacing = 0
        //: flayout.minimumInteritemSpacing = 0
        flayout.minimumInteritemSpacing = 0

        //: let view = UICollectionView.init(frame: CGRect.zero, collectionViewLayout: flayout)
        let view = UICollectionView(frame: CGRect.zero, collectionViewLayout: flayout)
        //: view.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        view.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: view.dataSource = self
        view.dataSource = self
        //: view.delegate = self
        view.delegate = self
        //: view.isPagingEnabled = true
        view.isPagingEnabled = true
        //: view.scrollsToTop = false
        view.scrollsToTop = false
        //: view.showsVerticalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        //: view.showsHorizontalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        //: view.contentOffset = CGPoint(x: pageIndex*(Int(ScreenWidth)), y: 0)
        view.contentOffset = CGPoint(x: pageIndex * Int(a_blockValue), y: 0)
        //: if myType == .normal {
        if myType == .normal {
            //: view.contentSize = CGSize(width: (currenModel.pic.count )*(Int(ScreenWidth)), height: 0)
            view.contentSize = CGSize(width: (currenModel.pic.count) * Int(a_blockValue), height: 0)
            //: } else {
        } else {
            //: view.contentSize = CGSize(width: (photos.count)*(Int(ScreenWidth)), height: 0)
            view.contentSize = CGSize(width: (photos.count) * Int(a_blockValue), height: 0)
        }
        //: view.register(TalkingMomentPhotosPreviewCell.self, forCellWithReuseIdentifier: "TalkingMomentPhotosPreviewCell")
        view.register(ImageMomentReusableView.self, forCellWithReuseIdentifier: (String(str_centerMakeTitle.suffix(6)) + "gMom" + String(str_modeName.prefix(5)) + String(str_blueShowName)))
        //: self.view.addSubview(view)
        self.view.addSubview(view)
        //: self.view.insertSubview(view, belowSubview: topView)
        self.view.insertSubview(view, belowSubview: topView)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var pageLabel: UILabel = {
    private lazy var pageLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = .white
        label.textColor = .white
        //: self.view.addSubview(label)
        self.view.addSubview(label)
        //: if myType == .normal {
        if myType == .normal {
            //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
            label.font = .thoughtImage(type: .Regular, fontSize: 16)
            //: label.snp.makeConstraints { make in
            label.snp.makeConstraints { make in
                //: make.centerY.equalTo(self.topView.backBtn)
                make.centerY.equalTo(self.topView.backBtn)
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
            //: } else if myType == .publish {
        } else if myType == .publish {
            //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
            label.font = .thoughtImage(type: .Medium, fontSize: 16)
            //: label.snp.makeConstraints { make in
            label.snp.makeConstraints { make in
                //: make.top.equalToSuperview().offset(StatusBarHeight)
                make.top.equalToSuperview().offset(a_limitRecordScreenName)
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
        }

        //: return label
        return label
        //: }()
    }()

//    lazy var downloadBtn: PathErrorTalkingButton = {
//        let btn = PathErrorTalkingButton.init()
//        btn.setTitle("Save".localized, for: .normal)
//        btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 16)
//        btn.addTarget(self, action: #selector(downloadBtnClick), for: .touchUpInside)
//        self.view.addSubview(btn)
//        return btn
//    }()
}

//: extension TalkingMomentPhotosVC {
extension CellViewController {
//    func setDownloadView() {
//        downloadBtn.snp.makeConstraints { make in
//            make.centerY.equalTo(self.topView.backBtn)
//            make.trailing.equalTo(-20)
//        }
//    }
//    @objc func downloadBtnClick() {
//        PrefaceReactiveCompatible.func__openAlbumServiceWithBlock(true) { [weak self] (isOpen: Bool) in
//            if isOpen {
//                guard let self = self else {return}
//                guard  self.pageIndex >= 0 && self.pageIndex < self.currenModel.pic.count  else { return }
//                let model: GoldObjectMeasurable = self.currenModel.pic[self.pageIndex]
//                if model.imgUrl?.count ?? 0 > 1 {
//                    DispatchQueue.global(qos: .userInitiated).async {
//                        let imageData = try? Data(contentsOf: URL(string: model.imgUrl ?? "")!)
//                        if imageData != nil {
//                            DispatchQueue.main.async {
//                                let image: UIImage? = UIImage.init(data: imageData!)
//                                guard image != nil else { return }
//                                self.savePHPhotoLibrary(image: image!)
//                            }
//                        }
//                    }
//                }else {
//                    let image = model.imagePic ?? UIImage.init()
//                    self.savePHPhotoLibrary(image: image)
//                }
//
//
//
//            }
//        }
//    }

    //: func savePHPhotoLibrary(image: UIImage) {
    func equalImage(image: UIImage) {
        //: PHPhotoLibrary.shared().performChanges({
        PHPhotoLibrary.shared().performChanges({
            //: PHAssetChangeRequest.creationRequestForAsset(from: image)
            PHAssetChangeRequest.creationRequestForAsset(from: image)
            //: }) { (isSuccess: Bool, error: Error?) in
        }) { (isSuccess: Bool, _: Error?) in
            //: if isSuccess {
            if isSuccess {
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Save successfully".localized)
                    self.afterTitle(showMsg: (String(str_keyEqualValue.prefix(9)) + str_viewValue.replacingOccurrences(of: "name", with: "fu")).localized)
                }
                //: } else {
            } else {
                // error!.localizedDescription
            }
        }
    }
}

//: extension TalkingMomentPhotosVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension CellViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func hideTopView() {
    func skulk() {
        //: isHideTopView = !isHideTopView
        isHideTopView = !isHideTopView
        //: topView.isHidden = isHideTopView
        topView.isHidden = isHideTopView
        //: pageLabel.isHidden = isHideTopView
        pageLabel.isHidden = isHideTopView
//        downloadBtn.isHidden = isHideTopView
    }

    //: func hideHidebottomView() {
    func instanceView() {
        //: if  currenModel.sex==MeasurementAppManager.share.loginUserMode.sex {
        if currenModel.sex == MeasurementAppManager.share.loginUserMode.sex {
            //: return
            return
        }
        //: isHidebottomView = !isHidebottomView
        isHidebottomView = !isHidebottomView
        //: self.bottomView.isHidden = isHidebottomView
        self.bottomView.isHidden = isHidebottomView
    }

    //: func updataPageLabel() {
    func turn() {
        //: if myType == .normal {
        if myType == .normal {
            //: if currenModel.pic.count > 1 {
            if currenModel.pic.count > 1 {
                //: pageLabel.text = "\(pageIndex+1)/\(currenModel.pic.count)"
                pageLabel.text = "\(pageIndex + 1)/\(currenModel.pic.count)"
            }

            //: } else if myType == .publish {
        } else if myType == .publish {
            //: pageLabel.text = "\(pageIndex+1)/\(photos.count)"
            pageLabel.text = "\(pageIndex + 1)/\(photos.count)"
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: if myType == .normal {
        if myType == .normal {
            //: return currenModel.pic.count
            return currenModel.pic.count
            //: } else {
        } else {
            //: return photos.count
            return photos.count
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: TalkingMomentPhotosPreviewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TalkingMomentPhotosPreviewCell", for: indexPath) as! TalkingMomentPhotosPreviewCell
        let cell: ImageMomentReusableView = collectionView.dequeueReusableCell(withReuseIdentifier: (String(str_centerMakeTitle.suffix(6)) + "gMom" + String(str_modeName.prefix(5)) + String(str_blueShowName)), for: indexPath) as! ImageMomentReusableView
        //: if myType == .normal {
        if myType == .normal {
            //: let model: TalkingMomentPhotoModel = currenModel.pic[indexPath.row]
            let model: GoldObjectMeasurable = currenModel.pic[indexPath.row]
            //: if model.imgUrl?.count ?? 0 > 1 {
            if model.imgUrl?.count ?? 0 > 1 {
                //: cell.configUrl(url: model.imgUrl! )
                cell.viewUrl(url: model.imgUrl!)
                //: }else {
            } else {
                //: cell.configImage(image: model.imagePic ?? UIImage.init())
                cell.belowOccur(image: model.imagePic ?? UIImage())
            }

            //: } else {
        } else {
            //: cell.configImage(image: photos[indexPath.row])
            cell.belowOccur(image: photos[indexPath.row])
        }

        //: cell.sblock = { [weak self] ()  -> Void in
        cell.sblock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.hideTopView()
            self.skulk()
            //: self.hideHidebottomView()
            self.instanceView()
            //: self.usePhotoView.isHidden = !self.usePhotoView.isHidden
            self.usePhotoView.isHidden = !self.usePhotoView.isHidden
            //: return
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt _: IndexPath) {
        //: let tcell: TalkingMomentPhotosPreviewCell = cell as! TalkingMomentPhotosPreviewCell
        let tcell: ImageMomentReusableView = cell as! ImageMomentReusableView
        //: tcell.recoverSubviews()
        tcell.that()
    }

    //: func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt _: IndexPath) {
        //: let tcell: TalkingMomentPhotosPreviewCell = cell as! TalkingMomentPhotosPreviewCell
        let tcell: ImageMomentReusableView = cell as! ImageMomentReusableView
        //: tcell.recoverSubviews()
        tcell.that()
    }

    //: func scrollViewDidScroll(_ scrollView: UIScrollView) {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //: var offSetWidth = scrollView.contentOffset.x
        var offSetWidth = scrollView.contentOffset.x
        //: let currentIndex: Int = Int(offSetWidth / ScreenWidth)
        let currentIndex = Int(offSetWidth / a_blockValue)
        //: if myType == .normal {
        if myType == .normal {
            //: if currentIndex < currenModel.pic.count {
            if currentIndex < currenModel.pic.count {
                //: pageIndex = Int(currentIndex)
                pageIndex = Int(currentIndex)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if ConstraintLanguageManager.shared.direction == .rightToLeft {
                    //: var curren = abs(currentIndex-(currenModel.pic.count-1))
                    var curren = abs(currentIndex - (currenModel.pic.count - 1))
                    //: pageIndex = Int(curren)
                    pageIndex = Int(curren)
                }
                //: updataPageLabel()
                turn()
            }
            //: } else if myType == .publish {
        } else if myType == .publish {
            //: if currentIndex < photos.count  && pageIndex != currentIndex {
            if currentIndex < photos.count && pageIndex != currentIndex {
                //: pageIndex = Int(currentIndex)
                pageIndex = Int(currentIndex)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if ConstraintLanguageManager.shared.direction == .rightToLeft {
                    //: let curren = abs(currentIndex-(photos.count-1))
                    let curren = abs(currentIndex - (photos.count - 1))
                    //: pageIndex = Int(curren)
                    pageIndex = Int(curren)
                }
                //: updataPageLabel()
                turn()
            }
        }
    }
}
