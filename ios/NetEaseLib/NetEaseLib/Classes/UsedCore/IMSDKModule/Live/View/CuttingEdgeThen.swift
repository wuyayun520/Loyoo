
//: Declare String Begin

/*: s" :*/
fileprivate let str_stopName:String = "S"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorRangeContent:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "bth_live_follow_pre" :*/
fileprivate let str_coverMainName:String = "bth_lielse data var date third"
fileprivate let str_ofContent:[Character] = ["v","e"]
fileprivate let str_firstTitle:String = "equal let string table_foll"

/*: "btn_live_mini_nor" :*/
fileprivate let str_modelValue:[Character] = ["b","t","n","_","l","i","v","e","_","m","i","n","i","_","n","o","r"]

/*: "#2DF2FF" :*/
fileprivate let str_yellowColorValue:[Character] = ["#","2","D","F","2","F","F"]

/*: "Live" :*/
fileprivate let str_removeTitle:String = "add true error type editLive"

/*: "#FF506D" :*/
fileprivate let str_wrapImageValue:String = "to add size#F"
fileprivate let str_sortData:String = "to06D"

/*: "  :*/
fileprivate let str_textValue:[Character] = [" "]

/*: "removeAttentionUid" :*/
fileprivate let str_whiteText:String = "rnumbero"
fileprivate let str_tableByGiftName:String = "veAttelet port string"
fileprivate let str_exceptData:String = "nUidview hidden main for manager"

/*: "attentionUid" :*/
fileprivate let str_blackName:String = "adatadataendata"
fileprivate let str_removeValue:String = "toold"

/*: "source" :*/
fileprivate let str_placeName:String = "sourmode"

/*: "num" :*/
fileprivate let str_styleData:String = "topum"

/*: "UID: :*/
fileprivate let str_playData:String = "UID:request media"

/*: "btn_live_closed_nor" :*/
fileprivate let str_playerGiftData:String = "btn_live_image show add equal"
fileprivate let str_allValue:[Character] = ["c","l","o","s","e","d","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CuttingEdgeThen.swift
//  AbroadTalking
//
//  Created by young on 2023/7/11.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomTopView: UIView {
class CuttingEdgeThen: UIView {
    var layerImageView: UIImageView?

    //: weak var weakVC: TalkingBaseViewController?
    weak var weakVC: PropertyViewController?
    // 右侧按钮点击Block
    //: var rightBtnBlock: (() -> Void)? = nil
    var rightBtnBlock: (() -> Void)? = nil
    // 未检测出人脸时长（间隔1秒）
    //: var noFaceTime: Int = 0 {
    var noFaceTime: Int = 0 {
        //: didSet {
        didSet {
            //: if noFaceTime >= MeasurementAppManager.share.appConfigMode.countdown1 {
            if noFaceTime >= MeasurementAppManager.share.appConfigMode.countdown1 { // 展示倒计时
                //: self.liveStatusImgV.isHidden = true
                self.liveStatusImgV.isHidden = true
                //: self.countdownView.isHidden = false
                self.countdownView.isHidden = false
                //: self.countdownLab.text = "\(MAX_NOFACETIME-noFaceTime)s"
                self.countdownLab.text = "\(a_screenContent - noFaceTime)s"
                // svga
                //: self.svgaView.isHidden = false
                self.svgaView.isHidden = false
                //: self.svgaView.refreshView(countdown: "\(MAX_NOFACETIME-noFaceTime)")
                self.svgaView.same(countdown: "\(a_screenContent - noFaceTime)")
                //: } else {
            } else {
                //: self.refreshLiveStatus()
                self.makeStatus()
            }
        }
    }

    // 主播信息
    //: private var liveModel = TalkingLiveRoomModel()
    private var liveModel = AtModelType()

    //: var onlineNunTimer: Timer?
    var onlineNunTimer: Timer? /// 直播人数刷新定时器

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        quantitySubviews()
        //: setupSubViewsConstraint()
        swaddlingClothesError()
        //: startTimer()
        mortalTimer()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorRangeContent, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var iconBgBtn: UIButton = {
    private lazy var iconBgBtn: UIButton = {
        //: let v = UIButton()
        let v = UIButton()
        //: v.backgroundColor = .black.withAlphaComponent(0.2)
        v.backgroundColor = .black.withAlphaComponent(0.2)
        //: v.layer.cornerRadius = actualWidth(w: 32)/2
        v.layer.cornerRadius = actualWidth(w: 32) / 2
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.addTarget(self, action: #selector(iconBgButtonClick), for: .touchUpInside)
        v.addTarget(self, action: #selector(coatButton), for: .touchUpInside)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = actualWidth(w: 32)/2
        v.layer.cornerRadius = actualWidth(w: 32) / 2
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 11)
        lab.font = UIFont.methodPlay(fontSize: 11)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.white.withAlphaComponent(0.7)
        lab.textColor = UIColor.white.withAlphaComponent(0.7)
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 11)
        lab.font = UIFont.methodPlay(fontSize: 11)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followBtn: UIButton = {
    private lazy var followBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.setImage(UIImage.outsideText(name: "bth_live_follow_pre"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_coverMainName.prefix(6)) + String(str_ofContent) + String(str_firstTitle.suffix(5)) + "ow_pre")), for: .normal)
        //: btn.addTarget(self, action: #selector(followButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(locationCrop), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_modelValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(blockClick), for: .touchUpInside)
        //: btn.isHidden = (MeasurementAppManager.share.appStatus == AppSkinStatus.special.rawValue && MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = (MeasurementAppManager.share.appStatus == LabCustomReflectable.special.rawValue && MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveStatusImgV: TalkingButton = {
    private lazy var liveStatusImgV: PathErrorTalkingButton = {
        //: let img = TalkingButton()
        let img = PathErrorTalkingButton()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor.init(red: 9/255.0 , green: 9/255.0 , blue: 9/255.0 , alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.remote(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 12)
        img.titleLabel?.font = UIFont.methodPlay(fontSize: 12)
        //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#2DF2FF")!, size: CGSize.init(width: 8, height: 8))
        let image = UIImage.visualPropertyView(color: UIColor(hex: (String(str_yellowColorValue)))!, size: CGSize(width: 8, height: 8))
        //: img.setImage(image.circle(), for: .normal)
        img.setImage(image.pastCircleQuantityimate(), for: .normal)
        //: img.setTitle("Live".localized, for: .normal)
        img.setTitle((String(str_removeTitle.suffix(4))).localized, for: .normal)
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var countdownView: UIView = {
    private lazy var countdownView: UIView = {
        //: let bg = UIView()
        let bg = UIView()
        //: bg.isHidden = true
        bg.isHidden = true
        //: bg.layer.cornerRadius = 4
        bg.layer.cornerRadius = 4
        //: bg.layer.masksToBounds = true
        bg.layer.masksToBounds = true
        //: bg.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        bg.backgroundColor = UIColor.black.withAlphaComponent(0.3)

        //: let icon = UIView()
        let icon = UIView()
        //: icon.backgroundColor = UIColor(hex: "#FF506D")
        icon.backgroundColor = UIColor(hex: (String(str_wrapImageValue.suffix(2)) + str_sortData.replacingOccurrences(of: "to", with: "F5")))
        //: icon.layer.cornerRadius = 3.5
        icon.layer.cornerRadius = 3.5
        //: icon.layer.masksToBounds = true
        icon.layer.masksToBounds = true
        //: icon.layer.borderWidth = 1
        icon.layer.borderWidth = 1
        //: icon.layer.borderColor = UIColor.white.cgColor
        icon.layer.borderColor = UIColor.white.cgColor
        //: bg.addSubview(icon)
        bg.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(4)
            make.leading.equalTo(4)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 7, height: 7))
            make.size.equalTo(CGSize(width: 7, height: 7))
        }
        //: return bg
        return bg
        //: }()
    }()

    //: private lazy var countdownLab: UILabel = {
    private lazy var countdownLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 12)
        lab.font = UIFont.methodPlay(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.text = " \(MeasurementAppManager.share.appConfigMode.countdown2)s"
        lab.text = " \(MeasurementAppManager.share.appConfigMode.countdown2)s"
        //: countdownView.addSubview(lab)
        countdownView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var svgaView: TalkingLiveCountdownView = {
    lazy var svgaView: UpgradeityReactiveCompatible = {
        //: let v = TalkingLiveCountdownView()
        let v = UpgradeityReactiveCompatible()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    /// 在线人数
    //: private lazy var onlineNumBtn: UIButton = {
    private lazy var onlineNumBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundColor(color: UIColor.black.withAlphaComponent(0.25), forState: .normal)
        btn.achromaticColour(color: UIColor.black.withAlphaComponent(0.25), forState: .normal)
        //: btn.addTarget(self, action: #selector(onlineNumBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(countOf), for: .touchUpInside)
        //: btn.layer.cornerRadius = actualWidth(w: 32)/2
        btn.layer.cornerRadius = actualWidth(w: 32) / 2
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 12)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 12)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var onlineListView: TalkingLiveRoomOnlineListView = {
    private lazy var onlineListView: ImageListView = {
        //: let v = TalkingLiveRoomOnlineListView()
        let v = ImageListView()
        //: v.touchIconBtnBlock = { [weak self] uid in
        v.touchIconBtnBlock = { [weak self] uid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.showUserCard(uid: uid)
            self.aggregationTo(uid: uid)
        }
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingLiveRoomTopView {
extension CuttingEdgeThen {
    /// 关注/取消关注
    /// - Parameters:
    ///   - uid: 用户Id
    ///   - isAttention: true: 取关；false: 关注
    //: @objc func req_followRequest(uid: Int, isAttention: Bool, completion: ((_ succeed: Bool) -> Void)? = nil) {
    @objc func gleam(uid: Int, isAttention: Bool, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            episode(showMsg: a_userText)
            //: completion?(false)
            completion?(false)
            //: return
            return
        }

        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: if isAttention {
        if isAttention {
            //: dict["removeAttentionUid"] = uid
            dict[(str_whiteText.replacingOccurrences(of: "number", with: "em") + String(str_tableByGiftName.prefix(6)) + "ntio" + String(str_exceptData.prefix(4)))] = uid
            //: } else {
        } else {
            //: dict["attentionUid"] = uid
            dict[(str_blackName.replacingOccurrences(of: "data", with: "t") + "ionU" + str_removeValue.replacingOccurrences(of: "tool", with: "i"))] = uid
            //: dict["source"] = "1"
            dict[(str_placeName.replacingOccurrences(of: "mode", with: "ce"))] = "1"
        }
        //: DoingSheRequestTool.req_atationTool(isAttention: !isAttention, params: dict) { succeed, result, errorModel in
        DoingSheRequestTool.trackSize(isAttention: !isAttention, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }
}

// MARK: - 在线人数

//: extension TalkingLiveRoomTopView {
extension CuttingEdgeThen {
    //: @objc private func onlineNumBtnClick() {
    @objc private func countOf() {
        //: self.onlineListView.showView(chatGroupId: liveModel.chatGroupId)
        self.onlineListView.varna(chatGroupId: liveModel.chatGroupId)
    }

    /// 获取
    //: @objc private func getOnlineNumData() {
    @objc private func customData() {
        //: TalkingAudienceManager().req_liveRoomOnlineNum(chatGroupId: liveModel.chatGroupId, completion:{ succeed, result, errorModel in
        TextAudienceManager().pin(chatGroupId: liveModel.chatGroupId, completion: { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let num = json["num"].string
            let num = json[(str_styleData.replacingOccurrences(of: "top", with: "n"))].string
            //: guard num?.count ?? 0 > 0 else {
            guard num?.count ?? 0 > 0 else {
                //: self.onlineNumBtn.isHidden = true
                self.onlineNumBtn.isHidden = true
                //: return
                return
            }
            //: self.onlineNumBtn.setTitle(num, for: .normal)
            self.onlineNumBtn.setTitle(num, for: .normal)

            //: })
        })
    }

    //: private func startTimer() {
    private func mortalTimer() {
        //: stopTimer()
        pushTimer()
        //: onlineNunTimer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(getOnlineNumData), userInfo: nil, repeats: true)
        onlineNunTimer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(customData), userInfo: nil, repeats: true)
    }

    //: func stopTimer() {
    func pushTimer() {
        //: onlineNunTimer?.invalidate()
        onlineNunTimer?.invalidate()
        //: onlineNunTimer = nil
        onlineNunTimer = nil
    }
}

// MARK: - Event

//: extension TalkingLiveRoomTopView {
extension CuttingEdgeThen {
    /// 刷新顶部视图
    //: func refreshTopView(_ liveModel: TalkingLiveRoomModel) {
    func picResponse(_ liveModel: AtModelType) {
        //: self.liveModel = liveModel
        self.liveModel = liveModel
        //: getOnlineNumData()
        customData()
        //: nickNameLab.text = liveModel.streamerInfo.nickname
        nickNameLab.text = liveModel.streamerInfo.nickname
        //: uidLab.text = "UID:\(liveModel.streamerInfo.uid)"
        uidLab.text = (String(str_playData.prefix(4))) + "\(liveModel.streamerInfo.uid)"
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 20)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 20)))]
        //: icon.setUrlImage(urlStr: liveModel.streamerInfo.headPic, placeImg: UIImage.placeHolderImage(sex: liveModel.streamerInfo.sex), options: optionsInfo)
        icon.posit(urlStr: liveModel.streamerInfo.headPic, placeImg: UIImage.tempWithGift(sex: liveModel.streamerInfo.sex), options: optionsInfo)
        // 是否是主播
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid)
        //: if isAnchor {
        if isAnchor {
            //: refreshLiveStatus()
            makeStatus()
            //: miniBtn.setImage(UIImage.outsideText(name: "btn_live_mini_nor"), for: .normal)
            miniBtn.setImage(UIImage.outsideText(name: (String(str_modelValue))), for: .normal)
            //: refreshFollow(isAttention: true)
            cover(isAttention: true)
            //: } else {
        } else {
            //: miniBtn.setImage(UIImage.outsideText(name: "btn_live_closed_nor"), for: .normal)
            miniBtn.setImage(UIImage.outsideText(name: (String(str_playerGiftData.prefix(9)) + String(str_allValue))), for: .normal)
            //: refreshFollow(isAttention: self.liveModel.streamerInfo.isAttention)
            cover(isAttention: self.liveModel.streamerInfo.isAttention)
        }
    }

    /// 最小化/关闭直播 按钮点击事件
    //: @objc func miniButtonClick() {
    @objc func blockClick() {
        //: rightBtnBlock?()
        rightBtnBlock?()
        // 是否是主播
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid)
        //: if isAnchor {
        if isAnchor { // 改为小窗口
            //: TalkingLiveManager.shared().live_updateTXLivePreview(smallWindow: true)
            PropertyMManageressPushListener.giftShared().colouring(smallWindow: true)
            //: currentViewController()?.navigationController?.popViewController(animated: false)
            colorController()?.navigationController?.popViewController(animated: false)
        }
    }

    //: @objc private func iconBgButtonClick() {
    @objc private func coatButton() {
        //: showUserCard(uid: String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid))
        aggregationTo(uid: String(PropertyMManageressPushListener.giftShared().liveRoomModel.streamerInfo.uid))
    }

    /// 展示个人资料卡
    //: private func showUserCard(uid: String) {
    private func aggregationTo(uid: String) {
        //: let userCard = TalkingLiveUserCardView(frame: .zero, uid: uid)
        let userCard = LabelThen(frame: .zero, uid: uid)
        //: userCard.delegate = weakVC as? any TalkingLiveUserCardViewDelegate
        userCard.delegate = weakVC as? any ReloadSizeObjectProtocol
        //: userCard.show()
        userCard.visualPropertyStatus()
    }

    /// 刷新关注按钮
    //: private func refreshFollow(isAttention: Bool) {
    private func cover(isAttention: Bool) {
        //: followBtn.isHidden = isAttention
        followBtn.isHidden = isAttention
        //: iconBgBtn.snp.updateConstraints { make in
        iconBgBtn.snp.updateConstraints { make in
            //: make.width.equalTo(followBtn.isHidden ? actualWidth(w: 115):actualWidth(w: 130))
            make.width.equalTo(followBtn.isHidden ? actualWidth(w: 115) : actualWidth(w: 130))
        }
    }

    /// 刷新直播状态
    //: private func refreshLiveStatus() {
    private func makeStatus() {
        //: self.liveStatusImgV.isHidden = !TalkingLiveManager.shared().isLive
        self.liveStatusImgV.isHidden = !PropertyMManageressPushListener.giftShared().isLive
        //: self.countdownView.isHidden = !self.liveStatusImgV.isHidden
        self.countdownView.isHidden = !self.liveStatusImgV.isHidden
        //: self.svgaView.isHidden = !self.liveStatusImgV.isHidden
        self.svgaView.isHidden = !self.liveStatusImgV.isHidden
    }

    /// 关注按钮点击事件
    //: @objc private func followButtonClick() {
    @objc private func locationCrop() {
        //: req_followRequest(uid: liveModel.streamerInfo.uid, isAttention: liveModel.streamerInfo.isAttention) { [weak self] succeed in
        gleam(uid: liveModel.streamerInfo.uid, isAttention: liveModel.streamerInfo.isAttention) { [weak self] succeed in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed else { return }
            guard succeed else { return }
            //: let isAttention = self.liveModel.streamerInfo.isAttention
            let isAttention = self.liveModel.streamerInfo.isAttention
            //: self.liveModel.streamerInfo.isAttention = !isAttention
            self.liveModel.streamerInfo.isAttention = !isAttention
            //: self.refreshFollow(isAttention: self.liveModel.streamerInfo.isAttention)
            self.cover(isAttention: self.liveModel.streamerInfo.isAttention)
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomTopView {
extension CuttingEdgeThen {
    // 添加视图
    //: private func setupSubviews() {
    private func quantitySubviews() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(iconBgBtn)
        addSubview(iconBgBtn)
        //: iconBgBtn.addSubview(icon)
        iconBgBtn.addSubview(icon)
        //: iconBgBtn.addSubview(nickNameLab)
        iconBgBtn.addSubview(nickNameLab)
        //: iconBgBtn.addSubview(uidLab)
        iconBgBtn.addSubview(uidLab)
        //: iconBgBtn.addSubview(followBtn)
        iconBgBtn.addSubview(followBtn)
        //: addSubview(miniBtn)
        addSubview(miniBtn)
        //: addSubview(liveStatusImgV)
        addSubview(liveStatusImgV)
        //: addSubview(countdownView)
        addSubview(countdownView)
        //: addSubview(onlineNumBtn)
        addSubview(onlineNumBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func swaddlingClothesError() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: StatusBarHeight+actualWidth(w: 68))
        self.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_limitRecordScreenName + actualWidth(w: 68))

        //: iconBgBtn.snp.makeConstraints { make in
        iconBgBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(a_limitRecordScreenName + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 32))
            make.height.equalTo(actualWidth(w: 32))
            //: make.width.equalTo(actualWidth(w: 115))
            make.width.equalTo(actualWidth(w: 115))
        }
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.width.height.equalTo(iconBgBtn.snp.height)
            make.width.height.equalTo(iconBgBtn.snp.height)
        }
        //: nickNameLab.snp.makeConstraints { make in
        nickNameLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 2))
            make.top.equalTo(actualWidth(w: 2))
            //: make.leading.equalTo(icon.snp.trailing).offset(actualWidth(w: 7))
            make.leading.equalTo(icon.snp.trailing).offset(actualWidth(w: 7))
            //: make.width.equalTo(actualWidth(w: 65))
            make.width.equalTo(actualWidth(w: 65))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualWidth(w: 2))
            make.bottom.equalTo(-actualWidth(w: 2))
            //: make.leading.width.equalTo(nickNameLab)
            make.leading.width.equalTo(nickNameLab)
        }
        //: followBtn.snp.makeConstraints { make in
        followBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-actualWidth(w: 6))
            make.trailing.equalTo(-actualWidth(w: 6))
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(actualWidth(w: 20))
        }

        //: miniBtn.snp.makeConstraints { make in
        miniBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconBgBtn)
            make.centerY.equalTo(iconBgBtn)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: onlineNumBtn.snp.makeConstraints { make in
        onlineNumBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(miniBtn)
            make.centerY.equalTo(miniBtn)
            //: make.trailing.equalTo(miniBtn.snp.leading).offset(-15)
            make.trailing.equalTo(miniBtn.snp.leading).offset(-15)
            //: make.size.equalTo(miniBtn)
            make.size.equalTo(miniBtn)
        }
        //: let text: NSString = liveStatusImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = liveStatusImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangMediumFont(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.methodPlay(fontSize: 12)], context: nil)

        //: liveStatusImgV.snp.makeConstraints { make in
        liveStatusImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBgBtn)
            make.leading.equalTo(iconBgBtn)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.width.equalTo(rect.width+20)
            make.width.equalTo(rect.width + 20)
        }
        //: let countdown_w = 13.0+countdownLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 15)).width
        let countdown_w = 13.0 + countdownLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 15)).width
        //: countdownView.snp.makeConstraints { make in
        countdownView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(liveStatusImgV)
            make.leading.top.equalTo(liveStatusImgV)
            //: make.size.equalTo(CGSize(width: countdown_w, height: 16))
            make.size.equalTo(CGSize(width: countdown_w, height: 16))
        }
        //: countdownLab.snp.makeConstraints { make in
        countdownLab.snp.makeConstraints { make in
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
