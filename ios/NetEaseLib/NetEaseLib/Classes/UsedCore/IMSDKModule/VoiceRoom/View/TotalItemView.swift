
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_nameData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#7166F9" :*/
fileprivate let str_liveData:[Character] = ["#","7","1","6","6","F","9"]

/*: "party_seat_mike_close" :*/
fileprivate let str_fillData:String = "PART"
fileprivate let str_valueName:String = "t_mikview model path user"

/*: "party_seat_host" :*/
fileprivate let str_observerName:String = "to text backgroundparty_se"
fileprivate let str_fromTitle:String = "by"
fileprivate let str_broadcastName:String = "manager view maket_host"

/*: "#FA9D33" :*/
fileprivate let str_objectValue:[Character] = ["#","F","A","9","D","3","3"]

/*: "party_seat_heartvalue" :*/
fileprivate let str_mainValue:[Character] = ["p","a","r","t","y","_","s"]
fileprivate let str_numberName:String = "eat_hpost key style let if"
fileprivate let str_pointTopData:String = "atitleue"

/*: "party_seat_lock" :*/
fileprivate let str_picColorText:[UInt8] = [0x70,0x61,0x72,0x74,0x79,0x5f,0x73,0x65,0x61,0x74,0x5f,0x6c,0x6f,0x63,0x6b]

/*: "party_seat_empty" :*/
fileprivate let str_normalData:String = "black voice userparty_"
fileprivate let str_titleName:[Character] = ["_","e","m","p","t","y"]

/*: "99999+" :*/
fileprivate let str_addTitle:[UInt8] = [0x39,0x39,0x39,0x39,0x39,0x2b]

/*: "Unlock" :*/
fileprivate let str_spaceData:String = "Unlockmanager view equal"

/*: "The seat is locked, click on the empty seat to play" :*/
fileprivate let str_centerValue:[UInt8] = [0x54,0x68,0x65,0x20,0x73,0x65,0x61,0x74,0x20,0x69,0x73,0x20,0x6c,0x6f,0x63,0x6b,0x65,0x64,0x2c,0x20,0x63,0x6c,0x69,0x63,0x6b,0x20,0x6f,0x6e,0x20,0x74,0x68,0x65,0x20,0x65,0x6d,0x70,0x74,0x79,0x20,0x73,0x65,0x61,0x74,0x20,0x74,0x6f,0x20,0x70,0x6c,0x61,0x79]

/*: "Under mic" :*/
fileprivate let str_pickFormatValue:String = "Under position type as"
fileprivate let str_receiveShowViewValue:String = "MIC"

/*: _ :*/
fileprivate let str_topTitle:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_selectedTitle:[UInt8] = [0x11,0x1d,0x10,0x19]

/*: "female" :*/
fileprivate let str_addName:String = "fembackgrounde"

/*: "On mic" :*/
fileprivate let str_equalValue:String = "On micof false package"

/*: "Lock" :*/
fileprivate let str_limitTitle:String = "Lockmanager transform tag self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotalItemView.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/9/24.
//

//: import UIKit
import UIKit

/// 当前Item宽高
//: let MikePositionItemView_Size = CGSize(width: (ScreenWidth - 35) / 4, height: actualWidth(w: 102))
let a_viewName = CGSize(width: (a_blockValue - 35) / 4, height: actualWidth(w: 102))

//: class TalkingMikePositionItemView: UIView {
class TotalItemView: UIView {
    var styleImageView: UIImageView?
    /// 用户资料卡block
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?
    /// 麦位
    //: private var position = 0
    private var position = 0
    /// 麦位模型
    //: private var itemModel = TalkingMikeListItemModel()
    private var itemModel = WithDoingHandyJSON()
    /// 是否正在动画
    //: private var isAnimation = false
    private var isAnimation = false
    /// 1s内最大音浪值
    //: private var maxAmplitude = 0.0
    private var maxAmplitude = 0.0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        off()
        //: setupSubViewsConstraint()
        submitConstraint()
        //: bindInteraction()
        bindReciprocation()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_nameData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var animationV1: UIView = {
    private lazy var animationV1: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.15)
        v.backgroundColor = UIColor(hex: (String(str_liveData)))?.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 29
        v.layer.cornerRadius = 29
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var animationV2: UIView = {
    private lazy var animationV2: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.55)
        v.backgroundColor = UIColor(hex: (String(str_liveData)))?.withAlphaComponent(0.55)
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
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
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var mikeCloseImgV: UIImageView = {
    private lazy var mikeCloseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.outsideText(name: "party_seat_mike_close")
        v.image = UIImage.outsideText(name: (str_fillData.lowercased() + "y_sea" + String(str_valueName.prefix(5)) + "e_close"))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 2
        v.spacing = 2
        //: return v
        return v
        //: }()
    }()

    //: private lazy var houseImgV: UIImageView = {
    private lazy var houseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.outsideText(name: "party_seat_host")
        v.image = UIImage.outsideText(name: (String(str_observerName.suffix(8)) + str_fromTitle.replacingOccurrences(of: "by", with: "a") + String(str_broadcastName.suffix(6))))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FA9D33")
        lab.backgroundColor = UIColor(hex: (String(str_objectValue)))
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 9)
        lab.font = UIFont.methodPlay(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = actualWidth(w: 12) / 2
        lab.layer.cornerRadius = actualWidth(w: 12) / 2
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 12)
        lab.font = UIFont.drogueSize(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var heartCoinBtn: TalkingButton = {
    private lazy var heartCoinBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton()
        let btn = PathErrorTalkingButton()
        //: btn.setImage(UIImage.outsideText(name: "party_seat_heartvalue"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_mainValue) + String(str_numberName.prefix(5)) + "eartv" + str_pointTopData.replacingOccurrences(of: "title", with: "l"))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 8)
        btn.titleLabel?.font = .thoughtImage(type: .Regular, fontSize: 8)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("0", for: .normal)
        btn.setTitle("0", for: .normal)
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        //: btn.layer.cornerRadius = actualWidth(w: 12) / 2
        btn.layer.cornerRadius = actualWidth(w: 12) / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMikePositionItemView {
extension TotalItemView {
    /// 刷新视图
    /// - Parameters:
    ///   - seatNumber: 席位
    ///   - model: 模型
    //: func refreshMikeItemView(_ seatNumber: Int, model: TalkingMikeListItemModel) {
    func sharedDismiss(_ seatNumber: Int, model: WithDoingHandyJSON) {
        //: position = seatNumber
        position = seatNumber
        //: itemModel = model
        itemModel = model
        //: seatNumLab.text = "\(seatNumber + 1)"
        seatNumLab.text = "\(seatNumber + 1)"

        //: guard model.posStatus == 0, model.uid > 0 else {
        guard model.posStatus == 0, model.uid > 0 else {
            //: let imgStr = (itemModel.posStatus == 1) ? "party_seat_lock" : "party_seat_empty"
            let imgStr = (itemModel.posStatus == 1) ? String(bytes: str_picColorText, encoding: .utf8)! : (String(str_normalData.suffix(6)) + "seat" + String(str_titleName))
            //: icon.image = UIImage.outsideText(name: imgStr)
            icon.image = UIImage.outsideText(name: imgStr)
            //: mikeCloseImgV.isHidden = true
            mikeCloseImgV.isHidden = true
            //: houseImgV.isHidden = true
            houseImgV.isHidden = true
            //: nickNameLab.isHidden = true
            nickNameLab.isHidden = true
            //: heartCoinBtn.isHidden = true
            heartCoinBtn.isHidden = true
            //: return
            return
        }

        // 麦位开启，麦上有人
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.posit(urlStr: model.headPic, options: optionsInfo)
        //: mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        // 是否是主播
        //: houseImgV.isHidden = !(model.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)
        houseImgV.isHidden = !(model.uid == ImageToThen.labelShared().partyModel.streamerInfo.uid)
        //: nickNameLab.text = model.nickname
        nickNameLab.text = model.nickname
        //: nickNameLab.isHidden = false
        nickNameLab.isHidden = false
        //: let heartValue = (model.coin > 99999) ? "99999+" : String(model.coin)
        let heartValue = (model.coin > 99999) ? String(bytes: str_addTitle, encoding: .utf8)! : String(model.coin)
        //: heartCoinBtn.setTitle(heartValue, for: .normal)
        heartCoinBtn.setTitle(heartValue, for: .normal)
        //: heartCoinBtn.isHidden = false
        heartCoinBtn.isHidden = false
        //: let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        //: heartCoinBtn.snp.updateConstraints { make in
        heartCoinBtn.snp.updateConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
        }
    }

    /// 麦位点击事件
    //: @objc func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc func tapSizeRecognizer(_: UITapGestureRecognizer) {
        // 是否房主
        //: let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid)
        let isAnchor = (String(ImageToThen.labelShared().partyModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid)
        //: guard itemModel.posStatus == 0 else {
        guard itemModel.posStatus == 0 else {
            //: if itemModel.posStatus == 1 {
            if itemModel.posStatus == 1 { // 麦位锁定
                //: if isAnchor {
                if isAnchor { // 房主
                    //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                    let vc = MediumDataSource(frame: UIScreen.main.bounds)
                    //: vc.initwithList(cellTitleList: ["Unlock".localized])
                    vc.messageWith(cellTitleList: [(String(str_spaceData.prefix(6))).localized])
                    //: vc.cancelColor = .appTitleColor()
                    vc.cancelColor = .blockOf()
                    //: vc.munuBlock = { [weak self] _, str in
                    vc.munuBlock = { [weak self] _, str in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if str == "Unlock".localized {
                        if str == (String(str_spaceData.prefix(6))).localized {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 2, position: position)
                            ImageToThen.labelShared().beyondAll(uid: 0, type: 2, position: position)
                        }
                    }

                    //: } else {
                } else {
                    //: func__showStatusBarErrorMsg(showMsg: "The seat is locked, click on the empty seat to play".localized)
                    episode(showMsg: String(bytes: str_centerValue, encoding: .utf8)!.localized)
                }
            }
            //: return
            return
        }

        // 麦位开启
        //: if itemModel.uid > 0 {
        if itemModel.uid > 0 { // 麦上有人
            //: if String(itemModel.uid) == MeasurementAppManager.share.loginUid {
            if String(itemModel.uid) == MeasurementAppManager.share.loginUid { // 点击自己麦位
                // 用户主动下麦
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = MediumDataSource(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["Under mic".localized])
                vc.messageWith(cellTitleList: [(String(str_pickFormatValue.prefix(6)) + str_receiveShowViewValue.lowercased()).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .blockOf()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "Under mic".localized {
                    if str == (String(str_pickFormatValue.prefix(6)) + str_receiveShowViewValue.lowercased()).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 2, position: position)
                        ImageToThen.labelShared().addPosition(type: 2, position: position)
                        //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_underMic)_\(MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                        a_textTurnName.photoOf(eventID: "\(a_useData)_\(MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_selectedTitle.map{$0^124}, encoding: .utf8)! : (str_addName.replacingOccurrences(of: "background", with: "al")))")
                    }
                }

                //: } else {
            } else { // 点击别人麦位, 查看资料卡
                //: showUserCardBlock?(itemModel.uid)
                showUserCardBlock?(itemModel.uid)
            }

            //: } else {
        } else { // 空位
            //: if isAnchor {
            if isAnchor { // 房主
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = MediumDataSource(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["On mic".localized, "Lock".localized])
                vc.messageWith(cellTitleList: [(String(str_equalValue.prefix(6))).localized, (String(str_limitTitle.prefix(4))).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .blockOf()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "On mic".localized {
                    if str == (String(str_equalValue.prefix(6))).localized {
                        //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                        if ImageToThen.labelShared().partyModel.position >= 0 { // 在麦位上切麦
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                            ImageToThen.labelShared().addPosition(type: 3,
                                                                              //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                              position: ImageToThen.labelShared().partyModel.position,
                                                                              //: toPosition: position)
                                                                              toPosition: position)
                            //: } else {
                        } else {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                            ImageToThen.labelShared().addPosition(type: 1, position: position)
                            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                            a_textTurnName.photoOf(eventID: "\(a_listName)_\(MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_selectedTitle.map{$0^124}, encoding: .utf8)! : (str_addName.replacingOccurrences(of: "background", with: "al")))")
                        }

                        //: } else if str == "Lock".localized {
                    } else if str == (String(str_limitTitle.prefix(4))).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 1, position: position)
                        ImageToThen.labelShared().beyondAll(uid: 0, type: 1, position: position)
                    }
                }

                //: } else {
            } else { // 观众在麦位上切麦，否则上麦
                //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                if ImageToThen.labelShared().partyModel.position >= 0 {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                    ImageToThen.labelShared().addPosition(type: 3,
                                                                      //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                      position: ImageToThen.labelShared().partyModel.position,
                                                                      //: toPosition: position)
                                                                      toPosition: position)
                    //: } else {
                } else {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                    ImageToThen.labelShared().addPosition(type: 1, position: position)
                    //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                    a_textTurnName.photoOf(eventID: "\(a_listName)_\(MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue ? String(bytes: str_selectedTitle.map{$0^124}, encoding: .utf8)! : (str_addName.replacingOccurrences(of: "background", with: "al")))")
                }
            }
        }
    }
}

// MARK: - 音浪动效

//: extension TalkingMikePositionItemView {
extension TotalItemView {
    /// 播放音浪值动效
    /// - Parameter amplitude: 音浪值
    //: func animateCircle(withAmplitude amplitude: CGFloat) {
    func pointAmplitude(withAmplitude amplitude: CGFloat) {
        //: maxAmplitude = max(maxAmplitude, amplitude)
        maxAmplitude = max(maxAmplitude, amplitude)
        //: guard isAnimation == false else { return }
        guard isAnimation == false else { return }
        //: isAnimation = true
        isAnimation = true

        //: animationV1.isHidden = false
        animationV1.isHidden = false
        //: animationV2.isHidden = false
        animationV2.isHidden = false
        //: let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        //: let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        //: maxAmplitude = 0.0
        maxAmplitude = 0.0
        //: UIView.animate(withDuration: 1, animations: {
        UIView.animate(withDuration: 1, animations: {
            //: self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            //: self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            //: }) { _ in
        }) { _ in
            //: self.animationV1.transform = .identity
            self.animationV1.transform = .identity
            //: self.animationV2.transform = .identity
            self.animationV2.transform = .identity
            //: self.animationV1.isHidden = true
            self.animationV1.isHidden = true
            //: self.animationV2.isHidden = true
            self.animationV2.isHidden = true
            //: self.isAnimation = false
            self.isAnimation = false
        }
    }
}

// MARK: - Layout

//: extension TalkingMikePositionItemView {
extension TotalItemView {
    /// 添加视图
    //: private func setupSubviews() {
    private func off() {
        //: addSubview(animationV1)
        addSubview(animationV1)
        //: addSubview(animationV2)
        addSubview(animationV2)
        //: addSubview(icon)
        addSubview(icon)
        //: addSubview(mikeCloseImgV)
        addSubview(mikeCloseImgV)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(houseImgV)
        stackView.addArrangedSubview(houseImgV)
        //: stackView.addArrangedSubview(seatNumLab)
        stackView.addArrangedSubview(seatNumLab)
        //: stackView.addArrangedSubview(nickNameLab)
        stackView.addArrangedSubview(nickNameLab)
        //: addSubview(heartCoinBtn)
        addSubview(heartCoinBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func submitConstraint() {
        //: animationV1.snp.makeConstraints { make in
        animationV1.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 8))
            make.top.equalTo(actualWidth(w: 8))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(58)
            make.width.height.equalTo(58)
        }

        //: animationV2.snp.makeConstraints { make in
        animationV2.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: mikeCloseImgV.snp.makeConstraints { make in
        mikeCloseImgV.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(icon).offset(3)
            make.trailing.bottom.equalTo(icon).offset(3)
            //: make.width.height.equalTo(actualWidth(w: 18))
            make.width.height.equalTo(actualWidth(w: 18))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.lessThanOrEqualToSuperview()
            make.width.lessThanOrEqualToSuperview()
        }
        //: houseImgV.snp.makeConstraints { make in
        houseImgV.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }
        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }

        //: heartCoinBtn.snp.makeConstraints { make in
        heartCoinBtn.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 12))
            make.height.equalTo(actualWidth(w: 12))
            //: make.width.equalTo(actualWidth(w: 21))
            make.width.equalTo(actualWidth(w: 21))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func bindReciprocation() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapSizeRecognizer))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
