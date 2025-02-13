
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_ofName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "icon_chat_start" :*/
fileprivate let str_indexData:String = "icon_message button or lab"
fileprivate let str_normalValue:String = "if domain row space make_start"

/*: "icon_chat_lock" :*/
fileprivate let str_currentName:[Character] = ["i","c","o","n","_","c","h","a","t","_"]
fileprivate let str_sharedValue:String = "ldefinek"

/*: "icon_chat_burned" :*/
fileprivate let str_centerValue:[Character] = ["i","c","o","n","_","c","h","a","t","_","b","u","r","n","e","d"]

/*: "icon_chat_burned_shan" :*/
fileprivate let str_tableContent:String = "equalcon"
fileprivate let str_conversationName:String = "image extension view view call_burne"

/*: "Already burned" :*/
fileprivate let str_styleData:String = "interaction"
fileprivate let str_makeData:String = "lreadlocation"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayerEnableThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import FLAnimatedImage
import FLAnimatedImage
//: import UIKit
import UIKit

//: class TalkingChatVideoMsgCell: TalkingChatBaseMsgCell {
class LayerEnableThen: ComparableViewCell {
	var contextCount: Double = 52.7
	var frameCloseDictionary: [AnyHashable: String] = [:]
	var viewPerformSum: Double = -47.4
	var actionDictionary: [AnyHashable: String] = [:]

    var layerImageView: UIImageView?

    //: var videoData: ToCellData?
    var videoData: ToCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.container.addSubview(picImgView)
        self.container.addSubview(picImgView)
        //: picImgView.addSubview(self.playImgView)
        picImgView.addSubview(self.playImgView)
        //: picImgView.addSubview(self.shadeView)
        picImgView.addSubview(self.shadeView)
        //: picImgView.addSubview(self.lockImgView)

        var physicsLaboratory: UIView = self.lockImgView
        if let imageView = self.layerImageView, (picImgView.constraints.count == 54) && (picImgView.isHidden) {
            //: SWIFT_CUSTOM_DANGER
            physicsLaboratory = imageView
        }
        picImgView.addSubview(physicsLaboratory)
        //: picImgView.addSubview(self.burnedImgView)

        var lumbarVertebra: UIView = self.burnedImgView
        if let imageView = self.layerImageView, (lumbarVertebra.layer.shadowRadius == 2.72) && (lumbarVertebra.backgroundColor != nil && lumbarVertebra.backgroundColor!.cgColor == UIColor.gray.cgColor) {
            //: SWIFT_CUSTOM_DANGER
            lumbarVertebra = imageView
        }
        picImgView.addSubview(lumbarVertebra)
        //: picImgView.addSubview(self.dutationLab)

        var modelView: UIView = self.dutationLab
        if let imageView = self.layerImageView, (modelView.preservesSuperviewLayoutMargins) && (modelView.layer.isDoubleSided != true) {
            //: SWIFT_CUSTOM_DANGER
            modelView = imageView
        }
        picImgView.addSubview(modelView)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_ofName, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
            if (dutationLab.preservesSuperviewLayoutMargins) && (dutationLab.layer.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let resultModify = UpCommentView()


            
            resultModify.requestTotal = { [self] cornerCount in
            self.contextCount = cornerCount
            
            return self.contextCount
            }
            resultModify.viewDictionary = { [self] playerDictionary in
            self.frameCloseDictionary = playerDictionary
            
            guard var value = self.frameCloseDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                dutationLab.addSubview(resultModify)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    
            if (lockImgView.forFirstBaselineLayout.center.x == 96.01) && (lockImgView.gestureRecognizers != nil && lockImgView.gestureRecognizers!.count == 12) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let finishModel = UpCommentView(frame: lockImgView.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
            finishModel.beautyOpen = selected

            
            finishModel.requestTotal = { [self] cornerCount in
            self.viewPerformSum = cornerCount
            
            return self.viewPerformSum
            }
            finishModel.viewDictionary = { [self] playerDictionary in
            self.actionDictionary = playerDictionary
            
            guard var value = self.actionDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                lockImgView.addSubview(finishModel)
            }

	}

    //: private lazy var picImgView: FLAnimatedImageView = {
    private lazy var picImgView: FLAnimatedImageView = {
        //: let imgV = FLAnimatedImageView.init()
        let imgV = FLAnimatedImageView()
        //: imgV.layer.cornerRadius = 10
        imgV.layer.cornerRadius = 10
        //: imgV.layer.masksToBounds = true
        imgV.layer.masksToBounds = true
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.backgroundColor = UIColor.white
        imgV.backgroundColor = UIColor.white
        //: imgV.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imgV.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return imgV
        return imgV
        //: }()
    }()

    // 播放图标
    //: private lazy var playImgView: UIImageView = {
    private lazy var playImgView: UIImageView = {
        //: let imgV = UIImageView.init()
        let imgV = UIImageView()
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.image = UIImage.outsideText(name: "icon_chat_start")
        imgV.image = UIImage.outsideText(name: (String(str_indexData.prefix(5)) + "chat" + String(str_normalValue.suffix(6))))
        //: return imgV
        return imgV
        //: }()
    }()

    // 半透明遮罩
    //: private lazy var shadeView: UIView = {
    private lazy var shadeView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(white: 0, alpha: 0.55)
        view.backgroundColor = UIColor(white: 0, alpha: 0.55)
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()

    // 私密视频“锁”标识
    //: private lazy var lockImgView: UIImageView = {
    private lazy var lockImgView: UIImageView = {
        //: let imgV = UIImageView.init()
        let imgV = UIImageView()
        //: imgV.alpha = 0.9
        imgV.alpha = 0.9
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.image = UIImage.outsideText(name: "icon_chat_lock")
        imgV.image = UIImage.outsideText(name: (String(str_currentName) + str_sharedValue.replacingOccurrences(of: "define", with: "oc")))
        //: return imgV
        return imgV
        //: }()
    }()

    // 已“阅后即焚”标识
    //: private lazy var burnedImgView: TalkingButton = {
    private lazy var burnedImgView: PathErrorTalkingButton = {
        //: let imgV = TalkingButton.init()
        let imgV = PathErrorTalkingButton()
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.isHidden = true
        imgV.isHidden = true
        //: imgV.setBackgroundImage(UIImage.outsideText(name: "icon_chat_burned"), for: .normal)
        imgV.setBackgroundImage(UIImage.outsideText(name: (String(str_centerValue))), for: .normal)
        //: imgV.setImage(UIImage.outsideText(name: "icon_chat_burned_shan"), for: .normal)
        imgV.setImage(UIImage.outsideText(name: (str_tableContent.replacingOccurrences(of: "equal", with: "i") + "_chat" + String(str_conversationName.suffix(6)) + "d_shan")), for: .normal)
        //: imgV.imageAlignment = .top
        imgV.imageAlignment = .top
        //: imgV.setTitle("Already burned".localized, for: .normal)
        imgV.setTitle((str_styleData.replacingOccurrences(of: "interaction", with: "A") + str_makeData.replacingOccurrences(of: "location", with: "y") + " burned").localized, for: .normal)
        //: imgV.setTitleColor(.white, for: .normal)
        imgV.setTitleColor(.white, for: .normal)
        //: imgV.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 16)
        imgV.titleLabel?.font = UIFont.drogueSize(fontSize: 16)
        //: return imgV
        return imgV
        //: }()
    }()

    // 视频时长
    //: private lazy var dutationLab: UILabel = {
    private lazy var dutationLab: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.backgroundColor = UIColor(white: 0, alpha: 0.5)
        label.backgroundColor = UIColor(white: 0, alpha: 0.5)
        //: label.textColor = UIColor.white
        label.textColor = UIColor.white
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.font = UIFont.pingfangRugularFont(fontSize: 14)
        label.font = UIFont.drogueSize(fontSize: 14)
        //: label.layer.cornerRadius = 10
        label.layer.cornerRadius = 10
        //: label.layer.masksToBounds = true
        label.layer.masksToBounds = true
        //: return label
        return label
        //: }()
    }()
}

//: extension TalkingChatVideoMsgCell {
extension LayerEnableThen {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: self.videoData = data as? ToCellData
        self.videoData = data as? ToCellData
        //: guard let newData = self.videoData else { return }
        guard let newData = self.videoData else { return }
        //: self.picImgView.backgroundColor = UIColor.white
        self.picImgView.backgroundColor = UIColor.white
        //: let videoModel = newData.msgModel.msgInfo.video
        let videoModel = newData.msgModel.msgInfo.video
        //: let duration = videoModel.duration > 0 ? videoModel.duration:newData.msgModel.msgInfo.customSend.duration
        let duration = videoModel.duration > 0 ? videoModel.duration : newData.msgModel.msgInfo.customSend.duration
        //: self.dutationLab.text = NSDate.videoTimeFormat(totalTime: duration)
        self.dutationLab.text = NSDate.exampleConstraint(totalTime: duration)
        //: self.playImgView.isHidden = false
        self.playImgView.isHidden = false
        //: self.shadeView.isHidden = true
        self.shadeView.isHidden = true
        //: self.lockImgView.isHidden = true
        self.lockImgView.isHidden = true
        //: self.burnedImgView.isHidden = true
        self.burnedImgView.isHidden = true

        //: var imgIsMosaic = true
        var imgIsMosaic = true

        //: if videoModel.lockStatus == 1 {
        if videoModel.lockStatus == 1 { // 锁定状态，添加"锁"标识
            //: self.shadeView.isHidden = false
            self.shadeView.isHidden = false
            //: self.lockImgView.isHidden = false
            self.lockImgView.isHidden = false
            //: } else if videoModel.burnStatus == 1 {
        } else if videoModel.burnStatus == 1 { // 已阅后即焚，销毁
            //: self.playImgView.isHidden = true
            self.playImgView.isHidden = true
            //: self.shadeView.isHidden = false
            self.shadeView.isHidden = false
            //: self.burnedImgView.isHidden = false
            self.burnedImgView.isHidden = false
            //: } else if (videoModel.lockStatus != 1 && videoModel.burnStatus == -1) {
        } else if videoModel.lockStatus != 1, videoModel.burnStatus == -1 { // 已解锁的永久私密视频，展示原图
            //: imgIsMosaic = false
            imgIsMosaic = false
        }
        //: self.loadIntimatePhoto(urlStr: videoModel.coverImg, isMosaic: imgIsMosaic)
        self.skiagraphTotalimateGestureBombUp(urlStr: videoModel.coverImg, isMosaic: imgIsMosaic)
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.picImgView.snp.remakeConstraints { make in
        self.picImgView.snp.remakeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.top.equalTo(2)
            make.top.equalTo(2)
            //: make.width.height.equalTo(120)
            make.width.height.equalTo(120)
        }
        //: self.dutationLab.snp.remakeConstraints { make in
        self.dutationLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(64)
            make.leading.equalTo(64)
            //: make.top.equalTo(94)
            make.top.equalTo(94)
            //: make.width.equalTo(50)
            make.width.equalTo(50)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: self.playImgView.snp.remakeConstraints { make in
        self.playImgView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(46)
            make.width.equalTo(46)
            //: make.height.equalTo(47)
            make.height.equalTo(47)
        }
        //: self.shadeView.snp.remakeConstraints { make in
        self.shadeView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: self.lockImgView.snp.remakeConstraints { make in
        self.lockImgView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(35)
            make.width.equalTo(35)
            //: make.height.equalTo(45)
            make.height.equalTo(45)
        }
        //: self.burnedImgView.snp.remakeConstraints { make in
        self.burnedImgView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    //: func loadIntimatePhoto(urlStr: String, isMosaic: Bool) -> Void {
    func skiagraphTotalimateGestureBombUp(urlStr: String, isMosaic: Bool) {
        //: guard let newData = self.videoData else { return }
        guard let newData = self.videoData else { return }
        //: let coverImgPath = newData.msgModel.msgInfo.customSend.localCoverImg
        let coverImgPath = newData.msgModel.msgInfo.customSend.localCoverImg

        //: let isExit = FileManager.default.fileExists(atPath: coverImgPath)
        let isExit = FileManager.default.fileExists(atPath: coverImgPath)
        //: if !coverImgPath.isEmptyString && isExit {
        if !coverImgPath.isEmptyString, isExit { // 加载本地
            //: let data = NSData(contentsOfFile: coverImgPath)
            let data = NSData(contentsOfFile: coverImgPath)
            //: let image = UIImage(data: data! as Data)
            let image = UIImage(data: data! as Data)
            //: if isMosaic {
            if isMosaic {
                //: self.picImgView.image = UIImage.trans(toMosaicImage: image, blockLevel: 90)
                self.picImgView.image = UIImage.head(image, choppingBlock: 90)
                //: } else {
            } else {
                //: self.picImgView.image = image
                self.picImgView.image = image
            }
            //: } else {
        } else { // 网络图片
            //: self.picImgView.setCookieToUrlImage(urlStr: urlStr) {  [weak self] image in
            self.picImgView.scoff(urlStr: urlStr) { [weak self] image in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if image != nil && isMosaic {
                if image != nil, isMosaic {
                    //: self.picImgView.image = UIImage.trans(toMosaicImage: image, blockLevel: 90)
                    self.picImgView.image = UIImage.head(image, choppingBlock: 90)
                }
            }
        }
    }

    //: func removeGes() {
    func getMoving() {
        //: for  ges in self.container.gestureRecognizers! {
        for ges in self.container.gestureRecognizers! {
            //: self.container.removeGestureRecognizer(ges)
            self.container.removeGestureRecognizer(ges)
        }
    }
}
