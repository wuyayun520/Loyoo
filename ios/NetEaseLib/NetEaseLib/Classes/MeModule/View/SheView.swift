
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_frameName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#333333" :*/
fileprivate let str_toData:[Character] = ["#","3","3","3","3","3","3"]

/*: "My photos" :*/
fileprivate let str_outputText:String = "cover view toMy p"

/*: "#999999" :*/
fileprivate let str_beyondName:[Character] = ["#","9","9","9","9","9"]
fileprivate let str_bagValue:String = "system"

/*: "Click to change or delete photo." :*/
fileprivate let str_labelName:[UInt8] = [0x43,0x6c,0x69,0x63,0x6b,0x20,0x74,0x6f,0x20,0x63,0x68,0x61,0x6e,0x67,0x65,0x20,0x6f,0x72,0x20,0x64,0x65,0x6c,0x65,0x74,0x65,0x20,0x70,0x68,0x6f,0x74,0x6f,0x2e]

/*: "btn_me_edit_photo_add_nor" :*/
fileprivate let str_makeValue:[Character] = ["b","t","n","_","m","e","_","e","d","i","t","_","p","h","o","t","o","_","a","d","d","_"]
fileprivate let str_pushContent:String = "nosize"

/*: "btn_me_edit_photo_add_pre" :*/
fileprivate let str_lastFrameNameValue:[Character] = ["b","t","n","_","m","e","_","e","d","i","t","_","p"]
fileprivate let str_sectionValue:[Character] = ["h","o","t","o","_","a","d","d","_","p","r","e"]

/*: "btn_me_edit_photo_delete" :*/
fileprivate let str_pathTitle:String = "view let color addbtn_m"
fileprivate let str_itemData:String = "_photovar resolution view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SheView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: public protocol EditPhotoDelegate: NSObject {
public protocol ErrorPhotoDelegate: NSObject {
    /// 图片add
    //: func addPhoto(_ icon: [UIImage])
    func marque(_ icon: [UIImage])
    /// 图片本地delete
    //: func deletePhoto(_ icon: UIImage)
    func errorView(_ icon: UIImage)
    /// 图片后台delete
    //: func deletePhotoWithUid(_ iconUid: String)
    func beforeWith(_ iconUid: String)
}

//: class TalkingEditPhotoCell: UITableViewCell {
class SheView: UITableViewCell {
	var ofDoing: Bool = true
	var stopMagnitude: Double = 73.7
	var activityArray: [AnyHashable] = []
	var ofDictionary: [AnyHashable: String] = [:]
	var strongboxOff: Bool = false
	var styleLotSum: Double = -24.0
	var containerArray: [AnyHashable] = []
	var currentDictionary: [AnyHashable: String] = [:]

    var enlargementAfterImageView: UIImageView?

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var count = 0
    var count = 0
    //: open weak var delegate: EditPhotoDelegate?
    open weak var delegate: ErrorPhotoDelegate?
    //: var allPhoto = Array<Any>()
    var allPhoto = [Any]()
    //: var backBottomOffer = -41
    var backBottomOffer = -41

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if ((backView.inputAssistantItem.trailingBarButtonGroups.count == 8) && (backView.inputAssistantItem.leadingBarButtonGroups.count == 5)) && (backView.layer.contentsRect.size.width != 1) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let saveData = UpwardlyView()
            saveData.tipTotal = backBottomOffer

            saveData.viewUserDoing = { [self] contentViewSwitch in
            self.strongboxOff = contentViewSwitch
            
            return self.strongboxOff
            }
            saveData.valueInterval = { [self] mSayMagnitude in
            self.styleLotSum = mSayMagnitude
            
            return self.styleLotSum
            }
            saveData.nameArray = { [self] freeArray in
            self.containerArray = freeArray
            
            guard var value = self.containerArray as? [String] else {
                return nil
            }
            return value
            }
            saveData.bottomDictionary = { [self] windowDictionary in
            self.currentDictionary = windowDictionary
            
            guard var value = self.currentDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                backView.addSubview(saveData)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
            if ((self.backView.inputAssistantItem.trailingBarButtonGroups.count == 8) && (self.backView.inputAssistantItem.leadingBarButtonGroups.count == 5)) && (self.backView.layer.contentsRect.size.width != 1) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let saveData = UpwardlyView()
            saveData.tipTotal = backBottomOffer

            saveData.viewUserDoing = { [self] contentViewSwitch in
            self.ofDoing = contentViewSwitch
            
            var saveData = animated
            saveData = false
            if saveData != self.ofDoing {
                self.ofDoing = saveData
            }
            
            return self.ofDoing
            }
            saveData.valueInterval = { [self] mSayMagnitude in
            self.stopMagnitude = mSayMagnitude
            
            return self.stopMagnitude
            }
            saveData.nameArray = { [self] freeArray in
            self.activityArray = freeArray
            
            guard var value = self.activityArray as? [String] else {
                return nil
            }
            return value
            }
            saveData.bottomDictionary = { [self] windowDictionary in
            self.ofDictionary = windowDictionary
            
            guard var value = self.ofDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.backView.addSubview(saveData)
            }

	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.addSubview(backView)

        var locationGift: UIView = backView
        if let imageView = self.enlargementAfterImageView, (locationGift.constraintsAffectingLayout(for: .vertical).count == 71) && (locationGift.layer.isDoubleSided != true) {
            //: SWIFT_CUSTOM_DANGER
            locationGift = imageView
        }
        self.addSubview(locationGift)
        //: backView.addSubview(titleBLB)

        var computerGraphicView: UIView = titleBLB
        if let imageView = self.enlargementAfterImageView, (backView.restorationIdentifier != nil) && (backView.frame.size.width == 198.53) {
            //: SWIFT_CUSTOM_DANGER
            computerGraphicView = imageView
        }
        backView.addSubview(computerGraphicView)
        //: self.addSubview(messageLB)
        self.addSubview(messageLB)
//        showMessageView()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_frameName.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self.snp.bottom).offset(backBottomOffer)
            make.bottom.equalTo(self.snp.bottom).offset(backBottomOffer)
        }
        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(backView.snp.bottom).offset(6)
            make.top.equalTo(backView.snp.bottom).offset(6)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius  = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.init(hex: "#333333")
        lb.textColor = UIColor(hex: (String(str_toData)))
        //: lb.text = "My photos".localized
        lb.text = (String(str_outputText.suffix(4)) + "hotos").localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 12)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 12)
        //: lb.textColor = UIColor.init(hex: "#999999")
        lb.textColor = UIColor(hex: (String(str_beyondName) + str_bagValue.replacingOccurrences(of: "system", with: "9")))
        //: lb.text = "Click to change or delete photo.".localized
        lb.text = String(bytes: str_labelName, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditPhotoCell {
extension SheView {
    //: func showMessageView () {
    func towardImage() {
        //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
        let sizewh = Int((a_blockValue - 30 - 12 * 2 - 9 * 2) / 3)

        //: let xa = 12
        let xa = 12 // x 初始值
        //: let ya = 46
        let ya = 46 // y 初始值
        //: let xz = 9
        let xz = 9 // 横向间隔
        //: let yz = 9
        let yz = 9 // 纵向间隔

        //: for  i in 0..<9 {
        for i in 0 ..< 9 {
            //: let X = xa+(xz + sizewh)*(i%3)
            let X = xa + (xz + sizewh) * (i % 3)
            //: let Y = ya+(yz + sizewh)*(i/3)
            let Y = ya + (yz + sizewh) * (i / 3)
            //: let frame = CGRect.init(x: X, y: Y, width: sizewh, height: sizewh)
            let frame = CGRect(x: X, y: Y, width: sizewh, height: sizewh)

            //: let colorBtn = UIButton.init(frame: frame)
            let colorBtn = UIButton(frame: frame)
            //: colorBtn.setBackgroundImage(.outsideText(name: "btn_me_edit_photo_add_nor"), for: .normal)
            colorBtn.setBackgroundImage(.outsideText(name: (String(str_makeValue) + str_pushContent.replacingOccurrences(of: "size", with: "r"))), for: .normal)
            //: colorBtn.setBackgroundImage(.outsideText(name: "btn_me_edit_photo_add_pre"), for: .highlighted)
            colorBtn.setBackgroundImage(.outsideText(name: (String(str_lastFrameNameValue) + String(str_sectionValue))), for: .highlighted)
            //: colorBtn.imageView?.contentMode = .scaleAspectFill
            colorBtn.imageView?.contentMode = .scaleAspectFill
            //: colorBtn.layer.cornerRadius = 4
            colorBtn.layer.cornerRadius = 4
            //: colorBtn.clipsToBounds = true
            colorBtn.clipsToBounds = true
            //: backView.addSubview(colorBtn)
            backView.addSubview(colorBtn)
            //: allPhoto.append(colorBtn)
            allPhoto.append(colorBtn)
            //: colorBtn.rx.tap.subscribe(onNext: { [weak self] in
            colorBtn.rx.tap.subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.seleteBtnClick(sender: colorBtn)
                self.seleteAdd(sender: colorBtn)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

            //: let deleteBtn = UIButton.init(frame: CGRect.init(x: colorBtn.frame.size.width-24, y: 0, width: 24, height: 24))
            let deleteBtn = UIButton(frame: CGRect(x: colorBtn.frame.size.width - 24, y: 0, width: 24, height: 24))
            //: deleteBtn.isHidden = true
            deleteBtn.isHidden = true
            //: deleteBtn.setBackgroundImage(.outsideText(name: "btn_me_edit_photo_delete"), for: .normal)
            deleteBtn.setBackgroundImage(.outsideText(name: (String(str_pathTitle.suffix(5)) + "e_edit" + String(str_itemData.prefix(6)) + "_delete")), for: .normal)
            //: colorBtn.addSubview(deleteBtn)
            colorBtn.addSubview(deleteBtn)
            //: deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.deleteBtnClick(sender: deleteBtn)
                self.sectionInfo(sender: deleteBtn)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
        }
    }

    //: @objc func seleteBtnClick(sender: UIButton) {
    @objc func seleteAdd(sender: UIButton) {
        //: if !MeasurementAppManager.share.loginUserMode.isNaUser,
        if !MeasurementAppManager.share.loginUserMode.isNaUser,
           //: MeasurementAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           MeasurementAppManager.share.loginUserMode.isTPAuth != LaterUserValueConvertible.isSuccessed.rawValue,
           //: MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue,
           MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue,
           //: MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            ToViewWindowManager.shared.messagePlayer()
            //: return
            return
        }
        //: var isReturn = false
        var isReturn = false
        //: _ = sender.subviews.map { view in
        _ = sender.subviews.map { view in
            //: if (view is UIButton) {
            if view is UIButton {
                //: if view.isHidden == false {
                if view.isHidden == false {
                    //: isReturn = true
                    isReturn = true
                }
            }
        }
        //: if isReturn {
        if isReturn {
            //: return
            return
        }

        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        PrefaceReactiveCompatible.beModel(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc =  TalkingImagePickTool.initImagePickerVc(maxCount: 9-self.count, allowPhoto: true, allowVideo: false)
                let vc = StreetSmartThen.censusVideo(maxCount: 9 - self.count, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen

                //: self.currentViewController()?.present(vc, animated: true)
                self.colorController()?.present(vc, animated: true)

                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }

                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: if self.count<self.allPhoto.count {
                            if self.count < self.allPhoto.count {
                                //: for j in 0..<photos!.count {
                                for j in 0 ..< photos!.count {
                                    //: let Btn: UIButton = self.allPhoto[self.count] as! UIButton
                                    let Btn: UIButton = self.allPhoto[self.count] as! UIButton
                                    //: Btn .setImage(photos?[j], for: .normal)
                                    Btn.setImage(photos?[j], for: .normal)
                                    //: Btn .setImage(photos?[j], for: .highlighted)
                                    Btn.setImage(photos?[j], for: .highlighted)
                                    //: _ = Btn.subviews.map { view in
                                    _ = Btn.subviews.map { view in
                                        //: if (view is UIButton) {
                                        if view is UIButton {
                                            //: view.isHidden = false
                                            view.isHidden = false
                                        }
                                    }
                                    //: self.count+=1
                                    self.count += 1
                                }
                            }
                            //: self.delegate?.addPhoto(photos!)
                            self.delegate?.marque(photos!)
                        }
                        //: return
                }
            }
        }
    }

    //: @objc func deleteBtnClick(sender: UIButton) {
    @objc func sectionInfo(sender: UIButton) {
        //: if !MeasurementAppManager.share.loginUserMode.isNaUser,
        if !MeasurementAppManager.share.loginUserMode.isNaUser,
           //: MeasurementAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           MeasurementAppManager.share.loginUserMode.isTPAuth != LaterUserValueConvertible.isSuccessed.rawValue,
           //: MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue,
           MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue,
           //: MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            ToViewWindowManager.shared.messagePlayer()
            //: return
            return
        }
        //: let superBtn: UIButton = sender.superview as! UIButton
        let superBtn: UIButton = sender.superview as! UIButton

        //: self.delegate?.deletePhoto(superBtn.imageView?.image ?? UIImage.init())
        self.delegate?.errorView(superBtn.imageView?.image ?? UIImage())

        //: self.delegate?.deletePhotoWithUid(String(superBtn.tag))
        self.delegate?.beforeWith(String(superBtn.tag))

        //: superBtn.setImage(UIImage.init(), for: .normal)
        superBtn.setImage(UIImage(), for: .normal)
        //: superBtn.setImage(UIImage.init(), for: .highlighted)
        superBtn.setImage(UIImage(), for: .highlighted)
        //: sender.isHidden = true
        sender.isHidden = true
    }

    //: func setPhoto(selete: Array<TalkingUserInfoGalleryModel>) {
    func qualify(selete: [CellMeasurable]) {
        //: _ = backView.subviews.map { view in
        _ = backView.subviews.map { view in
            //: if (view is UIButton) {
            if view is UIButton {
                //: view.removeFromSuperview()
                view.removeFromSuperview()
            }
        }
        //: allPhoto.removeAll()
        allPhoto.removeAll()
        //: showMessageView()
        towardImage()

        //: count = selete.count
        count = selete.count
        //: for i in 0..<selete.count {
        for i in 0 ..< selete.count {
            //: if i<allPhoto.count {
            if i < allPhoto.count {
                //: let Btn: UIButton = allPhoto[i] as! UIButton
                let Btn: UIButton = allPhoto[i] as! UIButton
                //: Btn.tag = Int(selete[i].uid) ?? 0
                Btn.tag = Int(selete[i].uid) ?? 0
                //: if selete[i].isLocal {
                if selete[i].isLocal {
                    //: Btn.setImage(selete[i].imagePic, for: .normal)
                    Btn.setImage(selete[i].imagePic, for: .normal)
                    //: } else {
                } else {
                    //: Btn.setUrlImage(urlStr: selete[i].url)
                    Btn.fulfill(urlStr: selete[i].url)
                }
                //: _ = Btn.subviews.map { view in
                _ = Btn.subviews.map { view in
                    //: if (view is UIButton) {
                    if view is UIButton {
                        //: view.isHidden = false
                        view.isHidden = false
                    }
                }
            }
        }
    }

    //: func setTips(str: String) {
    func tarotCardPage(str: String) {
        //: titleBLB.text = str
        titleBLB.text = str
        //: messageLB.isHidden = true
        messageLB.isHidden = true
    }

    //: func resetPhoto() {
    func imageOfLive() {
        //: count = 0
        count = 0
        //: allPhoto.removeAll()
        allPhoto.removeAll()
        //: showMessageView()
        towardImage()
    }
}
