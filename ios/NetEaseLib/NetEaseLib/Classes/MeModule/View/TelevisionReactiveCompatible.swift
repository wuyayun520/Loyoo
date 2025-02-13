
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_signData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "Video Cover" :*/
fileprivate let str_myText:[Character] = ["V","i","d","e","o"," ","C","o"]
fileprivate let str_eventName:[Character] = ["v","e","r"]

/*: "Adding a video cover to show the charm can get more good feelings." :*/
fileprivate let str_giftValue:[UInt8] = [0xc1,0xe4,0xe4,0xe9,0xee,0xe7,0xa0,0xe1,0xa0,0xf6,0xe9,0xe4,0xe5,0xef,0xa0,0xe3,0xef,0xf6,0xe5,0xf2,0xa0,0xf4,0xef,0xa0,0xf3,0xe8,0xef,0xf7,0xa0,0xf4,0xe8,0xe5,0xa0,0xe3,0xe8,0xe1,0xf2,0xed,0xa0,0xe3,0xe1,0xee,0xa0,0xe7,0xe5,0xf4,0xa0,0xed,0xef,0xf2,0xe5,0xa0,0xe7,0xef,0xef,0xe4,0xa0,0xe6,0xe5,0xe5,0xec,0xe9,0xee,0xe7,0xf3,0xae]

/*: "img_me_edit_video_default" :*/
fileprivate let str_uponValue:[Character] = ["i","m","g","_","m","e","_","e","d","i"]
fileprivate let str_failureValue:String = "t_videreturn make any print"

/*: "btn_me_edit_photo_change" :*/
fileprivate let str_managerMessageText:[Character] = ["b","t","n","_","m","e","_","e","d","i","t","_","p","h","o","t","o","_","c","h","a","n","g","e"]

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_shadowGiftUserName:String = "block share add letbtn_dyn"
fileprivate let str_noTitle:String = "item view audienceamic_s"

/*: "#FF506D" :*/
fileprivate let str_mData:String = "self frame frame lab limit#F"
fileprivate let str_imageTitle:[Character] = ["F","5","0","6","D"]

/*: "Reviewing" :*/
fileprivate let str_touchFatalContent:[Character] = ["R","e","v","i","e","w","i","n","g"]

/*: "Shoot video at least 5 seconds" :*/
fileprivate let str_dataTwoName:[Character] = ["S","h","o","o","t"," ","v","i","d","e","o"," ","a","t"," ","l","e","a","s","t"," ","5"," ","s","e","c","o","n","d","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TelevisionReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/28.
//

//: import Photos
import Photos
//: import UIKit
import UIKit

//: typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
//: typealias DeleteVideoBlock = () -> Void
typealias DeleteVideoBlock = () -> Void

//: class TalkingEditVideoCell: UITableViewCell {
class TelevisionReactiveCompatible: UITableViewCell {
	var errorTotal: Int = 78
	var headTitle: String = "collection"
	var adjustArray: [AnyHashable] = []
	var rimeTotal: Int = 88
	var areaName: String = "cell"
	var mainArray: [AnyHashable] = []
	var showQuantity: Int = 16
	var someoneTitle: String = "quote"
	var modelArray: [AnyHashable] = []

    var makeImageView: UIImageView?

    //: var seleteBlock: EditSeleteVideoBlock!
    var seleteBlock: EditSeleteVideoBlock!
    //: var deleteBlock: DeleteVideoBlock!
    var deleteBlock: DeleteVideoBlock!

    //: var coverPath = ""
    var coverPath = ""
    //: var videoPath = ""
    var videoPath = ""
    //: var videoPlayPath = ""
    var videoPlayPath = ""
    //: var videoStatus = -3
    var videoStatus = -3

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if (playBtn.convert(CGRect(x: 0, y: CGFloat(62), width: 0, height: 0), to: playBtn.superview).origin.x == 66.69) && (playBtn.convert(CGRect(x: CGFloat(0), y: CGFloat(248.97), width: CGFloat(0), height: CGFloat(87)), to: playBtn.superview).size.height == 34.89) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let listName = ViewBarView()


            
            listName.premiumInterval = { [self] rowNumber in
            self.errorTotal = rowNumber
            
            var listName = videoStatus
            listName &*= 9
            if listName < self.errorTotal {
                self.errorTotal = listName
            }
            
            return self.errorTotal
            }
            listName.indexText = { [self] writeText in
            self.headTitle = writeText
            
            var listName = self.videoPath
            listName.append("^")
            if listName.hasSuffix(self.headTitle) {
                self.headTitle = listName
            }
            
            let atStar = self.headTitle.prefix(through: self.headTitle.index(self.headTitle.startIndex, offsetBy: self.headTitle.lowercased().count)).isEmpty
            self.headTitle.removeAll(keepingCapacity: atStar)
            return self.headTitle
            }
            listName.progressArray = { [self] reArray in
            self.adjustArray = reArray
            
            guard var value = self.adjustArray as? [String] else {
                return nil
            }
            return value
            }
                playBtn.addSubview(listName)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
            if (messageLB.convert(CGRect(x: 0, y: CGFloat(62), width: 0, height: 0), to: messageLB.superview).origin.x == 66.69) && (messageLB.convert(CGRect(x: CGFloat(0), y: CGFloat(248.97), width: CGFloat(0), height: CGFloat(87)), to: messageLB.superview).size.height == 34.89) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let listName = ViewBarView()
            listName.genreDestroySwitch = animated

            
            listName.premiumInterval = { [self] rowNumber in
            self.showQuantity = rowNumber
            
            var listName = self.videoStatus
            listName &*= 9
            if listName < self.showQuantity {
                self.showQuantity = listName
            }
            
            return self.showQuantity
            }
            listName.indexText = { [self] writeText in
            self.someoneTitle = writeText
            
            var listName = videoPlayPath
            listName.append("^")
            if listName.hasSuffix(self.someoneTitle) {
                self.someoneTitle = listName
            }
            
            let atStar = self.someoneTitle.prefix(through: self.someoneTitle.index(self.someoneTitle.startIndex, offsetBy: self.someoneTitle.lowercased().count)).isEmpty
            self.someoneTitle.removeAll(keepingCapacity: atStar)
            return self.someoneTitle
            }
            listName.progressArray = { [self] reArray in
            self.modelArray = reArray
            
            guard var value = self.modelArray as? [String] else {
                return nil
            }
            return value
            }
                messageLB.addSubview(listName)
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
        //: setupSubviews()
        withView()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_signData, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: setupSubViewsConstraint()
        change()
    
	if let makeImageView = makeImageView {

            if (makeImageView.preservesSuperviewLayoutMargins) && (makeImageView.convert(CGRect.zero, from: makeImageView.superview).origin.y == 86.68) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let showLet = ViewBarView(frame: makeImageView.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(67), width: CGFloat(0), height: CGFloat(0))))


            
            showLet.premiumInterval = { [self] rowNumber in
            self.rimeTotal = rowNumber
            
            var showLet = videoStatus
                showLet -= 1
                if showLet < 78 {
                    showLet = showLet + 1
                }
            if showLet > self.rimeTotal {
                self.rimeTotal = showLet
            }
            
            return self.rimeTotal
            }
            showLet.indexText = { [self] writeText in
            self.areaName = writeText
            
            var showLet = videoPath
            let nurseLog = showLet.split(separator: "@", omittingEmptySubsequences: showLet.hasSuffix(showLet.lowercased() + "array"))
            if let nurseLogString = nurseLog.last {
                showLet = String(nurseLogString)
            }
            if showLet.hasSuffix(self.areaName) {
                self.areaName = showLet
            }
            
            self.areaName = String(repeating: "=" as Character, count: self.areaName.lowercased().count)
            return self.areaName
            }
            showLet.progressArray = { [self] reArray in
            self.mainArray = reArray
            
            guard var value = self.mainArray as? [String] else {
                return nil
            }
            return value
            }
                makeImageView.addSubview(showLet)
            }

	}

	}

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.blockOf()
        //: lb.text = "Video Cover".localized
        lb.text = (String(str_myText) + String(str_eventName)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.appValueDetailColor()
        lb.textColor = UIColor.observerShared()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.text = "Adding a video cover to show the charm can get more good feelings.".localized
        lb.text = String(bytes: str_giftValue.map{$0^128}, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setImage(UIImage.outsideText(name: "img_me_edit_video_default"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_uponValue) + String(str_failureValue.prefix(6)) + "o_default")), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconbtnclick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(storageIconbtnclick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var changeBtn: UIButton = {
    lazy var changeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_me_edit_photo_change"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_managerMessageText))), for: .normal)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(changeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(blockName), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var playBtn: UIImageView = {
    lazy var playBtn: UIImageView = {
        //: let icon = UIImageView.init()
        let icon = UIImageView()
        //: icon.image = UIImage.outsideText(name: "btn_dynamic_stop_nor")
        icon.image = UIImage.outsideText(name: (String(str_shadowGiftUserName.suffix(7)) + String(str_noTitle.suffix(6)) + "top_nor"))
        //: icon.isHidden = true
        icon.isHidden = true
        //: icon.isUserInteractionEnabled = false
        icon.isUserInteractionEnabled = false
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 12)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(str_mData.suffix(2)) + String(str_imageTitle)))
        //: lb.text = "Reviewing".localized
        lb.text = (String(str_touchFatalContent)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Setting

//: extension TalkingEditVideoCell {
extension TelevisionReactiveCompatible {
    //: func upDateCellView(videoPlayPath: String) {
    func informantPath(videoPlayPath: String) {
        //: self.videoPlayPath = videoPlayPath
        self.videoPlayPath = videoPlayPath
        //: playBtn.isHidden = false
        playBtn.isHidden = false
    }

    //: func setCellView(iconPath: String) {
    func roundItemPath(iconPath: String) {
        //: iconBtn.setUrlImage(urlStr: iconPath)
        iconBtn.fulfill(urlStr: iconPath)
    }

    //: func setVideoStatusLB(status: Int) {
    func panoramicView(status: Int) {
        //: self.videoStatus = status
        self.videoStatus = status
        // 待审核
        //: statusLB.isHidden = status != 0
        statusLB.isHidden = status != 0
        //: changeBtn.isHidden = status != 1
        changeBtn.isHidden = status != 1
    }
}

// MARK: - Event

//: extension TalkingEditVideoCell {
extension TelevisionReactiveCompatible {
    //: @objc private func changeBtnClick() {
    @objc private func blockName() {
        //: if !MeasurementAppManager.share.loginUserMode.isNaUser,
        if !MeasurementAppManager.share.loginUserMode.isNaUser,
           //: MeasurementAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           MeasurementAppManager.share.loginUserMode.isTPAuth != LaterUserValueConvertible.isSuccessed.rawValue,
           //: MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            ToViewWindowManager.shared.messagePlayer()
            //: return
            return
        }
        //: seleteVideoTool()
        byLabel()
    }

    //: @objc private func iconbtnclick() {
    @objc private func storageIconbtnclick() {
        //: if !MeasurementAppManager.share.loginUserMode.isNaUser,
        if !MeasurementAppManager.share.loginUserMode.isNaUser,
           //: MeasurementAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           MeasurementAppManager.share.loginUserMode.isTPAuth != LaterUserValueConvertible.isSuccessed.rawValue,
           //: MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            ToViewWindowManager.shared.messagePlayer()
            //: return
            return
        }

        //: if self.videoStatus == -3 && self.videoPlayPath.isEmptyString {
        if self.videoStatus == -3, self.videoPlayPath.isEmptyString {
            //: seleteVideoTool()
            byLabel()
            //: } else {
        } else {
            //: let vc = TalkingMomentVideoVC.init(videoPath: self.videoPlayPath)
            let vc = LargePlayerDelegate(videoPath: self.videoPlayPath)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.colorController()?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: private func  seleteVideoTool() {
    private func byLabel() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        PrefaceReactiveCompatible.beModel(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: false, allowVideo: true)
                let vc = StreetSmartThen.censusVideo(maxCount: 1, allowPhoto: false, allowVideo: true)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.colorController()?.present(vc, animated: true)
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
                            //: if seconds>=5 {
                            if seconds >= 5 {
                                //: self.CompressedVideo(url: filePath!)
                                self.waitingRoom(url: filePath!)

                                //: } else {
                            } else {
                                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { // 视频压缩取消
                                    //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                                    self.episode(showMsg: (String(str_dataTwoName)).localized)
                                }
                            }
                        }
                }
            }
        }
    }

    /// 视频压缩
    //: private func CompressedVideo(url: URL) {
    private func waitingRoom(url: URL) {
        //: let videoVC = TalkingVideoEditorController(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
        let videoVC = UpRecognizerDelegate(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard let videoInfo = videoInfo else { return }
            guard let videoInfo = videoInfo else { return }
            //: self.videoPath = videoInfo.videoPath
            self.videoPath = videoInfo.videoPath
            //: self.coverPath = videoInfo.coverPath
            self.coverPath = videoInfo.coverPath
            // 压缩成功
            //: let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            //: self.iconBtn.setImage(img, for: .normal)
            self.iconBtn.setImage(img, for: .normal)
            //: self.videoPlayPath = self.videoPath
            self.videoPlayPath = self.videoPath
            //: if self.seleteBlock != nil {
            if self.seleteBlock != nil {
                //: self.seleteBlock(self.coverPath, self.videoPath)
                self.seleteBlock(self.coverPath, self.videoPath)
            }
        }

        //: ProgressHUD.dismiss()
        SizeHungReactiveCompatible.dataMessage()
        //: self.currentViewController()?.navigationController?.pushViewController(videoVC, animated: true)
        self.colorController()?.navigationController?.pushViewController(videoVC, animated: true)
    }

    //: private func deleteFile() {
    private func hangout() {
        //: if FileManager.default.fileExists(atPath: self.videoPath) {
        if FileManager.default.fileExists(atPath: self.videoPath) {
            //: try? FileManager.default.removeItem(atPath: self.videoPath)
            try? FileManager.default.removeItem(atPath: self.videoPath)
        }
    }
}

// MARK: - Layout

//: extension TalkingEditVideoCell {
extension TelevisionReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func withView() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(tipsLB)
        backView.addSubview(tipsLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(iconBtn)
        backView.addSubview(iconBtn)
        //: iconBtn.addSubview(changeBtn)
        iconBtn.addSubview(changeBtn)
        //: iconBtn.addSubview(playBtn)
        iconBtn.addSubview(playBtn)
        //: backView.addSubview(statusLB)
        backView.addSubview(statusLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func change() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.bottom.equalTo(-15)
            make.trailing.bottom.equalTo(-15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
        }
        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(tipsLB)
            make.leading.equalTo(tipsLB)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.top.equalTo(tipsLB.snp.bottom).offset(8)
            make.top.equalTo(tipsLB.snp.bottom).offset(8)
        }
        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(18)
            make.top.equalTo(messageLB.snp.bottom).offset(18)
            //: make.width.height.equalTo(101)
            make.width.height.equalTo(101)
            //: make.centerX.equalTo(backView)
            make.centerX.equalTo(backView)
        }
        //: changeBtn.snp.makeConstraints { make in
        changeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalTo(iconBtn)
            make.top.trailing.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playBtn.snp.makeConstraints { make in
        playBtn.snp.makeConstraints { make in
            //: make.center.equalTo(iconBtn)
            make.center.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }

        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            //: make.top.equalTo(iconBtn.snp.top).offset(-9)
            make.top.equalTo(iconBtn.snp.top).offset(-9)
            //: make.size.equalTo(CGSize(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }
    }
}
