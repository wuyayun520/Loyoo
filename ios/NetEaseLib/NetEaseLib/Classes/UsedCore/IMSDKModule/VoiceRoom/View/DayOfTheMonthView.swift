
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_nameValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#45003A" :*/
fileprivate let str_centerData:String = "drown icon target#45003A"

/*: "#2D0059" :*/
fileprivate let str_hiddenData:String = "height player if return class#2D0059"

/*: "party_close_btn" :*/
fileprivate let str_removeValue:[Character] = ["p","a","r","t","y","_","c","l","o","s","e","_","b","t"]
fileprivate let str_statusData:String = "time"

/*: "btn_party_minimal_nor" :*/
fileprivate let str_titleData:String = "btn_pato gesture center"
fileprivate let str_addTitle:String = "sharedm"
fileprivate let str_aspectValue:[Character] = ["a","l","_","n","o","r"]

/*: "Minimal" :*/
fileprivate let str_cardText:[Character] = ["M","i","n","i","m"]
fileprivate let str_nameViewContent:String = "imagel"

/*: "btn_party_quit_nor" :*/
fileprivate let str_halfValue:String = "btn_bottom var view text"
fileprivate let str_blockModeData:[Character] = ["t","_","n","o","r"]

/*: "Quit" :*/
fileprivate let str_shareData:[Character] = ["Q","u","i","t"]

/*: "btn_party_close_nor" :*/
fileprivate let str_valueData:String = "btn_plet user in view"
fileprivate let str_addName:String = "lose_view object pic"
fileprivate let str_valueTitle:String = "nocat"

/*: "Close" :*/
fileprivate let str_useStartName:String = "Closelet return model"

/*: "Do you want to close the room? After closing the room, all users will be removed from the room." :*/
fileprivate let str_cellValue:[UInt8] = [0x44,0x6f,0x20,0x79,0x6f,0x75,0x20,0x77,0x61,0x6e,0x74,0x20,0x74,0x6f,0x20,0x63,0x6c,0x6f,0x73,0x65,0x20,0x74,0x68,0x65,0x20,0x72,0x6f,0x6f,0x6d,0x3f,0x20,0x41,0x66,0x74,0x65,0x72,0x20,0x63,0x6c,0x6f,0x73,0x69,0x6e,0x67,0x20,0x74,0x68,0x65,0x20,0x72,0x6f,0x6f,0x6d,0x2c,0x20,0x61,0x6c,0x6c,0x20,0x75,0x73,0x65,0x72,0x73,0x20,0x77,0x69,0x6c,0x6c,0x20,0x62,0x65,0x20,0x72,0x65,0x6d,0x6f,0x76,0x65,0x64,0x20,0x66,0x72,0x6f,0x6d,0x20,0x74,0x68,0x65,0x20,0x72,0x6f,0x6f,0x6d,0x2e]

/*: "Cancel" :*/
fileprivate let str_receiveValue:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let str_skinText:String = "close"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DayOfTheMonthView.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomCloseView: UIView {
class DayOfTheMonthView: UIView {
    var rowImageView: UIImageView?
    /// 是否是主播
    //: private let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid)
    private let isAnchor = (String(ImageToThen.labelShared().partyModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        sizeRoomSubviews()
        //: setupSubViewsConstraint()
        magnitudeimateAdd()
        //: addNotifications()
        someShould()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_nameValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        layer.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [
        layer.colors = [
            //: UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            UIColor(hex: (String(str_centerData.suffix(7))))!.withAlphaComponent(0.9).cgColor,
            //: UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor
            UIColor(hex: (String(str_hiddenData.suffix(7))))!.withAlphaComponent(0.9).cgColor,
        ]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "party_close_btn"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_removeValue) + str_statusData.replacingOccurrences(of: "time", with: "n"))), for: .normal)
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(selectedView), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_party_minimal_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_titleData.prefix(6)) + "rty_min" + str_addTitle.replacingOccurrences(of: "shared", with: "i") + String(str_aspectValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(searchForWith), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniLab: UILabel = {
    private lazy var miniLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.methodPlay(fontSize: 17)
        //: lab.text = "Minimal".localized
        lab.text = (String(str_cardText) + str_nameViewContent.replacingOccurrences(of: "image", with: "a")).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_party_quit_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_halfValue.prefix(4)) + "party_qui" + String(str_blockModeData))), for: .normal)
        //: btn.addTarget(self, action: #selector(quitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tableSection), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitLab: UILabel = {
    private lazy var quitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.methodPlay(fontSize: 17)
        //: lab.text = "Quit".localized
        lab.text = (String(str_shareData)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "btn_party_close_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_valueData.prefix(5)) + "arty_c" + String(str_addName.prefix(5)) + str_valueTitle.replacingOccurrences(of: "cat", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(closeObjectSex), for: .touchUpInside)
        //: btn.isHidden = !self.isAnchor
        btn.isHidden = !self.isAnchor
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeLab: UILabel = {
    private lazy var closeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.methodPlay(fontSize: 17)
        //: lab.text = "Close".localized
        lab.text = (String(str_useStartName.prefix(5))).localized
        //: lab.isHidden = !self.isAnchor
        lab.isHidden = !self.isAnchor
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomCloseView {
extension DayOfTheMonthView {
    /// 展示视图
    //: func show() {
    func messageGift() {
        //: guard self.superview == nil else { return }
        guard self.superview == nil else { return }
        //: ImageMacroDefine.getWindow().addSubview(self)
        ImageMacroDefine.sumHungWindowObject().addSubview(self)
    }

    /// 移除视图
    //: @objc func dismiss() {
    @objc func selectedView() {
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 最小化窗口点击事件
    //: @objc private func miniButtonClick() {
    @objc private func searchForWith() {
        //: self.dismiss()
        self.selectedView()
        //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
        ImageToThen.labelShared().toTitle()
    }

    /// 退出语聊房按钮点击事件
    //: @objc private func quitButtonClick() {
    @objc private func tableSection() {
        //: self.dismiss()
        self.selectedView()
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        ImageToThen.labelShared().sprechgesang()
    }

    /// 关闭语聊房按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func closeObjectSex() {
        //: let config = ShowAlertConfig()
        let config = MarkAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: TalkingAlertShow.customAlert(message: "Do you want to close the room? After closing the room, all users will be removed from the room.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
        TitleAlertShow.appearAll(message: String(bytes: str_cellValue, encoding: .utf8)!.localized, leftBtnTitle: (String(str_receiveValue)).localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            ImageToThen.labelShared().sprechgesang()
            //: TalkingVoiceRoomReqTool.req_voiceRoomClose(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
            SprechstimmeEventReqTool.context(roomId: ImageToThen.labelShared().partyModel.roomId)
            //: self.dismiss()
            self.selectedView()

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomCloseView {
extension DayOfTheMonthView {
    /// 添加视图
    //: private func setupSubviews() {
    private func sizeRoomSubviews() {
        //: self.layer.addSublayer(self.gradientLayer)
        self.layer.addSublayer(self.gradientLayer)
        //: self.addSubview(self.rightBtn)
        self.addSubview(self.rightBtn)
        //: self.addSubview(self.quitBtn)
        self.addSubview(self.quitBtn)
        //: self.addSubview(self.quitLab)
        self.addSubview(self.quitLab)
        //: self.addSubview(self.miniBtn)
        self.addSubview(self.miniBtn)
        //: self.addSubview(self.miniLab)
        self.addSubview(self.miniLab)
        //: self.addSubview(self.closeBtn)
        self.addSubview(self.closeBtn)
        //: self.addSubview(self.closeLab)
        self.addSubview(self.closeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func magnitudeimateAdd() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)

        //: self.rightBtn.snp.makeConstraints { make in
        self.rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + actualWidth(w: 4))
            make.top.equalTo(a_limitRecordScreenName + actualWidth(w: 4))
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }

        //: self.quitBtn.snp.makeConstraints { make in
        self.quitBtn.snp.makeConstraints { make in
            //: if self.isAnchor {
            if self.isAnchor {
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: } else {
            } else {
                //: make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
                make.top.equalTo((a_formalValue + actualWidth(w: 116)) / 2)
            }
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: self.quitLab.snp.makeConstraints { make in
        self.quitLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.miniBtn.snp.makeConstraints { make in
        self.miniBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
            make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
        }
        //: self.miniLab.snp.makeConstraints { make in
        self.miniLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.closeBtn.snp.makeConstraints { make in
        self.closeBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
        }
        //: self.closeLab.snp.makeConstraints { make in
        self.closeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func someShould() {
        // 语聊房状态变更
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(dismiss),
                                               selector: #selector(selectedView),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: a_clickData,
                                               //: object: nil)
                                               object: nil)
    }
}
