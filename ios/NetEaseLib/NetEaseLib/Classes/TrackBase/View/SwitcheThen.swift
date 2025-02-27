
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_fadeData:[UInt8] = [0xa1,0xa6,0xa1,0xbc,0xe0,0xab,0xa7,0xac,0xad,0xba,0xf2,0xe1,0xe8,0xa0,0xa9,0xbb,0xe8,0xa6,0xa7,0xbc,0xe8,0xaa,0xad,0xad,0xa6,0xe8,0xa1,0xa5,0xb8,0xa4,0xad,0xa5,0xad,0xa6,0xbc,0xad,0xac]

/*: "btn_dongtai_dianzan_nor" :*/
fileprivate let str_fileTitle:String = "temp clear self itembtn_"
fileprivate let str_makeContent:[Character] = ["i","_","d","i","a","n","z"]
fileprivate let str_pathTitle:String = "model name statean_nor"

/*: "btn_dongtai_dianzan_nor1" :*/
fileprivate let str_textValue:String = "btn_doview in"
fileprivate let str_dataPackageValue:String = "i_dimoment down color"
fileprivate let str_removeViewData:String = "height control print net selfn_nor1"

/*: "btn_dongtai_pinglun_nor" :*/
fileprivate let str_errorName:String = "btn_doaccept bottom show"
fileprivate let str_topValue:String = "timeng"

/*: "btn_dynamic_chat_nor" :*/
fileprivate let str_frameViewAtData:String = "data right self makebtn_dy"
fileprivate let str_followLessValue:String = "chat_self index super"
fileprivate let str_equalSumValue:[Character] = ["n","o","r"]

/*: "icon_dynamic_heart_default" :*/
fileprivate let str_sendName:[Character] = ["i","c","o","n","_","d","y","n","a","m","i","c","_","h","e"]
fileprivate let str_showValue:[Character] = ["a","r","t","_","d","e","f","a","u","l","t"]

/*: "Chat" :*/
fileprivate let str_handleText:String = "self intimate size make toolChat"

/*: "#752FE9" :*/
fileprivate let str_bottomName:String = "#752FEmake to index"
fileprivate let str_shadowName:[Character] = ["9"]

/*: "99+" :*/
fileprivate let str_playerName:[UInt8] = [0x39,0x39,0x2b]

/*: "%d" :*/
fileprivate let str_equalValue:String = "%dmessage value guard video info"

/*: "Comment" :*/
fileprivate let str_randomClearName:String = "video else inside drop changeCo"
fileprivate let str_groupValue:String = "mmenremove"

/*: "momentId" :*/
fileprivate let str_roomData:[Character] = ["m"]
fileprivate let str_imageValueName:String = "size video phone back dataomentId"

/*: "type" :*/
fileprivate let str_keyYourText:[Character] = ["t","y","p","e"]

/*: "like" :*/
fileprivate let str_finishTitle:[Character] = ["l","i","k","e"]

/*: "model" :*/
fileprivate let str_smallName:[UInt8] = [0x6d,0x6f,0x64,0x65,0x6c]

/*: "get json error" :*/
fileprivate let str_sexValue:String = "get jinput true request info color"
fileprivate let str_callContent:String = "shareshareoshare"

/*: "comment" :*/
fileprivate let str_imageTitle:String = "commetitlet"

/*: "number" :*/
fileprivate let str_userValue:[Character] = ["n"]
fileprivate let str_screenSizeText:[Character] = ["u","m","b","e","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SwitcheThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentItemBottomView: UIView {
class SwitcheThen: UIView {
    var viewMakeImageView: UIImageView?

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = CustomMeasurable()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        addSubviews()
        //: setupSubViewsConstraint()
        makeEqual()
        //: bindInteraction()
        infoOf()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_fadeData.map{$0^200}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var infoLB: UILabel = {
    lazy var infoLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 14)
        label.font = .thoughtImage(type: .Regular, fontSize: 14)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var likePlayer: SVGAPlayer = {
    lazy var likePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: self.addSubview(player)
        self.addSubview(player)
        //: return player
        return player
        //: }()
    }()

    //: lazy var likeBtn: UIButton = {
    lazy var likeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_dongtai_dianzan_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_fileTitle.suffix(4)) + "dongta" + String(str_makeContent) + String(str_pathTitle.suffix(6)))), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "btn_dongtai_dianzan_nor1"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_textValue.prefix(6)) + "ngta" + String(str_dataPackageValue.prefix(4)) + "anza" + String(str_removeViewData.suffix(6)))), for: .selected)
        //: btn.adjustsImageWhenHighlighted = false
        btn.adjustsImageWhenHighlighted = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var likeNumberLB: UILabel = {
    lazy var likeNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var commentBtn: UIButton = {
    lazy var commentBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_dongtai_pinglun_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_errorName.prefix(6)) + "ngtai_" + str_topValue.replacingOccurrences(of: "time", with: "pi") + "lun_nor")), for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var commentNumberLB: UILabel = {
    lazy var commentNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var greetBtn: TalkingButton = {
    lazy var greetBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = PathErrorTalkingButton()
        //: let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        //: btn.setBackgroundImage(UIImage.outsideText(name: "btn_dynamic_chat_nor").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (String(str_frameViewAtData.suffix(6)) + "namic_" + String(str_followLessValue.prefix(5)) + String(str_equalSumValue))).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "icon_dynamic_heart_default"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_sendName) + String(str_showValue))), for: .normal)
        //: btn.setTitle("Chat".localized, for: .normal)
        btn.setTitle((String(str_handleText.suffix(4))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 14)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentItemBottomView {
extension SwitcheThen {
    //: func configModel(model: TalkingMomentModel) {
    func begin(model: CustomMeasurable) {
        //: cunrrenModel = model
        cunrrenModel = model
        //: likeBtn.isHidden = false
        likeBtn.isHidden = false
        //: likeNumberLB.isHidden = false
        likeNumberLB.isHidden = false
        //: commentBtn.isHidden = false
        commentBtn.isHidden = false
        //: commentNumberLB.isHidden = false
        commentNumberLB.isHidden = false
        //: greetBtn.isHidden = MeasurementAppManager.share.loginUserMode.sex == model.sex ||  MeasurementAppManager.share.loginUserMode.userID == model.uid
        greetBtn.isHidden = MeasurementAppManager.share.loginUserMode.sex == model.sex || MeasurementAppManager.share.loginUserMode.userID == model.uid

        //: infoLB.text = model.addTime
        infoLB.text = model.addTime
        //: likeBtn.isSelected = model.isLike!
        likeBtn.isSelected = model.isLike!
        //: likeNumberLB.textColor = model.isLike! ? UIColor.init(hex: "#752FE9") :.appValueDetailColor()
        likeNumberLB.textColor = model.isLike! ? UIColor(hex: (String(str_bottomName.prefix(6)) + String(str_shadowName))) : .observerShared()
        //: likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum! )
        likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum!)
        //: commentNumberLB.text = model.replyNum! > 99 ? "99+" :  model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : "Comment".localized
        commentNumberLB.text = model.replyNum! > 99 ? "99+" : model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : (String(str_randomClearName.suffix(2)) + str_groupValue.replacingOccurrences(of: "remove", with: "t")).localized
    }

    //: func likeBtnClik() {
    func prefer() {
        //: if !likeBtn.isSelected {
        if !likeBtn.isSelected {
            //: self.req_MomentLike(type: 1)
            self.overAppear(type: 1)
            //: self.likeplayer()
            self.sunna()
            //: }else {
        } else {
            //: req_MomentLike(type: 2)
            overAppear(type: 2)
        }
    }

    //: func req_MomentLike(type: Int) {
    func overAppear(type: Int) {
        //: likeBtn.isUserInteractionEnabled = false
        likeBtn.isUserInteractionEnabled = false
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = cunrrenModel.mid
        dict[(String(str_roomData) + String(str_imageValueName.suffix(7)))] = cunrrenModel.mid
        //: dict["type"] = type
        dict[(String(str_keyYourText))] = type

        //: TalkingMomentRequestTool.req_MomentLike(params: dict) { succeed, result, errorModel in
        RequestTool.pinpointGroup(params: dict) { succeed, _, errorModel in
            //: self.likeBtn.isUserInteractionEnabled = true
            self.likeBtn.isUserInteractionEnabled = true
            //: if succeed {
            if succeed {
                //: let isLike  =  type==1 ? true:false
                let isLike = type == 1 ? true : false
                //: var number = isLike ?  self.cunrrenModel.likeNum!+1 : self.cunrrenModel.likeNum!-1
                var number = isLike ? self.cunrrenModel.likeNum! + 1 : self.cunrrenModel.likeNum! - 1
                //: if number < 0 {
                if number < 0 {
                    //: number = 0
                    number = 0
                }
                //: self.likeBtn.isSelected = isLike
                self.likeBtn.isSelected = isLike
                //: self.cunrrenModel.isLike = isLike
                self.cunrrenModel.isLike = isLike
                //: self.cunrrenModel.likeNum = number
                self.cunrrenModel.likeNum = number
                //: self.likeNumberLB.text = String(format: "%d", number)
                self.likeNumberLB.text = String(format: "%d", number)
                //: self.likeNumberLB.textColor = isLike ? UIColor.init(hex: "#752FE9") :.appValueDetailColor()
                self.likeNumberLB.textColor = isLike ? UIColor(hex: (String(str_bottomName.prefix(6)) + String(str_shadowName))) : .observerShared()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: self, userInfo: ["type": "like", "model": self.cunrrenModel])
                    NotificationCenter.default.post(name: a_conversationSenseName, object: self, userInfo: [(String(str_keyYourText)): (String(str_finishTitle)), String(bytes: str_smallName, encoding: .utf8)!: self.cunrrenModel])
                }
                //: }else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.episode(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func greetBtnClick() {
    func phoneClick() {
        //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: cunrrenModel.uid ?? "")
        LimitPushManager.share.sharedMode(chatID: cunrrenModel.uid ?? "")
    }

    //: func likeplayer() {
    func sunna() {
        //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_like)
        var url = MonochromeThen.default.telecasting(type: .Moment_like)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_likeRight)
            url = MonochromeThen.default.telecasting(type: .Moment_likeRight)
        }
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.likePlayer.videoItem = videoItem
                self.likePlayer.videoItem = videoItem
                //: self.likePlayer.startAnimation()
                self.likePlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_sexValue.prefix(5)) + "son e" + str_callContent.replacingOccurrences(of: "share", with: "r")))
        }
    }

    //: @objc func updateCommentNumber(notification: NSNotification) -> Void {
    @objc func modifyTotalNotification(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]

        //: if userinfo["momentId"] as? Int != self.cunrrenModel.mid {
        if userinfo[(String(str_roomData) + String(str_imageValueName.suffix(7)))] as? Int != self.cunrrenModel.mid {
            //: return
            return
                //: } else if userinfo["type"] as! String == "comment".localized {
        } else if userinfo[(String(str_keyYourText))] as! String == (str_imageTitle.replacingOccurrences(of: "title", with: "n")).localized {
            //: self.cunrrenModel.replyNum = userinfo["number"] as? Int
            self.cunrrenModel.replyNum = userinfo[(String(str_userValue) + String(str_screenSizeText))] as? Int
            //: commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
            commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
        }
    }
}

//: extension TalkingMomentItemBottomView: SVGAPlayerDelegate {
extension SwitcheThen: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {}
}

// MARK: - LayoutUI

//: extension TalkingMomentItemBottomView {
extension SwitcheThen {
    // 添加视图
    //: private func setupSubviews() {
    private func addSubviews() {
        //: backgroundColor = .clear
        backgroundColor = .clear
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func makeEqual() {
        //: infoLB.snp.makeConstraints { make in
        infoLB.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
        }

        //: likeBtn.snp.makeConstraints { make in
        likeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(infoLB.snp.bottom).offset(16)
            make.top.equalTo(infoLB.snp.bottom).offset(16)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: likePlayer.snp.makeConstraints { make in
        likePlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-5)
            make.leading.equalTo(-5)
            //: make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            //: make.size.equalTo(CGSize.init(width: 40, height: 60))
            make.size.equalTo(CGSize(width: 40, height: 60))
        }

        //: likeNumberLB.snp.makeConstraints { make in
        likeNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            //: make.size.equalTo(CGSize.init(width: 52, height: 22))
            make.size.equalTo(CGSize(width: 52, height: 22))
        }

        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeNumberLB.snp.trailing)
            make.leading.equalTo(likeNumberLB.snp.trailing)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: commentNumberLB.snp.makeConstraints { make in
        commentNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: let str = greetBtn.titleLabel?.text ?? ""
        let str = greetBtn.titleLabel?.text ?? ""
        //: let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.pingfangMediumFont(fontSize: 14)], context: nil)
        let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.methodPlay(fontSize: 14)], context: nil)

        //: greetBtn.snp.makeConstraints { make in
        greetBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalTo(-15)
            make.bottom.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(size.width+40)
            make.width.equalTo(size.width + 40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func infoOf() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateCommentNumber(notification:)), name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(modifyTotalNotification(notification:)), name: a_changeName, object: nil)
        //: likeBtn.rx.tap.subscribe(onNext: { [weak self] in
        likeBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.likeBtnClik()
            self.prefer()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: commentBtn.rx.tap.subscribe(onNext: {
        commentBtn.rx.tap.subscribe(onNext: {
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: greetBtn.rx.tap.subscribe(onNext: { [weak self] in
        greetBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.greetBtnClick()
            self.phoneClick()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
