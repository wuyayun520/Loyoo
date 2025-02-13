
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_withText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "party_mini_close" :*/
fileprivate let str_topData:String = "user labelparty_"
fileprivate let str_titleName:String = "line attribute black_close"

/*: "party_mini_bg_left" :*/
fileprivate let str_centerName:[UInt8] = [0x70,0x61,0x72,0x74,0x79,0x5f,0x6d,0x69,0x6e,0x69,0x5f,0x62,0x67,0x5f,0x6c,0x65,0x66,0x74]

/*: "party_mini_bg_right" :*/
fileprivate let str_imageData:[Character] = ["p","a","r","t","y","_"]
fileprivate let str_totalToViewData:String = "return let cellmini_b"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QualifyMiniView.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMiniView: TalkingBaseMiniView {
class QualifyMiniView: LabelMiniView {
	var imageMessageEnable: Bool = false
	var backName: String = "view"

    var imageStopImageView: UIImageView?
    /// 悬浮窗是否在左侧
    //: private var isLeft = (LanguageManager.shared.direction == .rightToLeft)
    private var isLeft = (ConstraintLanguageManager.shared.direction == .rightToLeft)
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubViewsConstraint()
        modelConstraint()
        //: addTapAndPanGestures()
        eachGestures()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_withText.reversed(), encoding: .utf8)!)
    }

    /// 重写父类拖拽响应事件
    //: override func panGestureEvent(sender: UIPanGestureRecognizer) {
    override func picture(sender: UIPanGestureRecognizer) {
        //: super.panGestureEvent(sender: sender)
        super.picture(sender: sender)
        //: bgImgView.isHidden = true
        bgImgView.isHidden = true
        //: closeBtn.isHidden = true
        closeBtn.isHidden = true
        //: guard sender.state == .ended else { return }
        guard sender.state == .ended else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.isLeft = (self.center.x <= ScreenWidth * 0.5)
            self.isLeft = (self.center.x <= a_blockValue * 0.5)
            //: self.setupSubViewsConstraint()
            self.modelConstraint()
        }
    
	if let imageStopImageView = imageStopImageView {

            if (imageStopImageView.isHidden) && (imageStopImageView.layer.shadowRadius == 0.27) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let tableMode = LockColorView()

            
            tableMode.giftConversationOff = { [self] layerInviteOpen in
            self.imageMessageEnable = layerInviteOpen
            
                self.imageMessageEnable = false
                self.imageMessageEnable = !self.imageMessageEnable
            return self.imageMessageEnable
            }
            tableMode.extraContent = { [self] colorContent in
            self.backName = colorContent
            
            return self.backName
            }
                imageStopImageView.addSubview(tableMode)
            }

	}

	}

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: self.addSubview(img)
        self.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 20
        v.layer.cornerRadius = 20
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderColor = UIColor.white.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: self.addSubview(v)
        self.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "party_mini_close"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_topData.suffix(6)) + "mini" + String(str_titleName.suffix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bastardy), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomMiniView {
extension QualifyMiniView {
    /// 构建视频小窗口
    //: static func buildLiveMiniView() -> TalkingVoiceRoomMiniView {
    static func root() -> QualifyMiniView {
        //: let view = TalkingVoiceRoomMiniView(frame: .zero)
        let view = QualifyMiniView(frame: .zero)
        //: let position = TalkingSocketManager.shared.partyMiniPosition
        let position = SocketReactiveCompatible.shared.partyMiniPosition
        //: let x = (position.x == 0) ? position.x : position.x-view.bounds.size.width
        let x = (position.x == 0) ? position.x : position.x - view.bounds.size.width
        //: var y = position.y
        var y = position.y
        //: y = max(0, y)
        y = max(0, y)
        //: y = min(ScreenHeight-view.bounds.size.height, y)
        y = min(a_formalValue - view.bounds.size.height, y)
        //: view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        SocketReactiveCompatible.shared.containerView?.addSubview(view)
        //: return view
        return view
    }

    /// 刷新直播小窗口
    //: func refreshMiniView() {
    func restore() {
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
        //: icon.setUrlImage(urlStr: TalkingVoiceRoomManager.shared().partyModel.streamerInfo.headPic, options: optionsInfo)
        icon.posit(urlStr: ImageToThen.labelShared().partyModel.streamerInfo.headPic, options: optionsInfo)
    }

    /// 关闭按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func bastardy() {
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        ImageToThen.labelShared().sprechgesang()
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMiniView {
extension QualifyMiniView {
    //: private func setupSubViewsConstraint() {
    private func modelConstraint() {
        //: bounds = CGRect(x: 0, y: 0, width: 55, height: 70)
        bounds = CGRect(x: 0, y: 0, width: 55, height: 70)

        //: let imageStr = isLeft ? "party_mini_bg_left" : "party_mini_bg_right"
        let imageStr = isLeft ? String(bytes: str_centerName, encoding: .utf8)! : (String(str_imageData) + String(str_totalToViewData.suffix(6)) + "g_right")
        //: bgImgView.image = UIImage.outsideText(name: imageStr)
        bgImgView.image = UIImage.outsideText(name: imageStr)
        //: bgImgView.isHidden = false
        bgImgView.isHidden = false
        //: bgImgView.snp.remakeConstraints { make in
        bgImgView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: icon.snp.remakeConstraints { make in
        icon.snp.remakeConstraints { make in
            //: if isLeft {
            if isLeft {
                //: make.right.equalTo(-3)
                make.right.equalTo(-3)
                //: } else {
            } else {
                //: make.left.equalTo(3)
                make.left.equalTo(3)
            }
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }

        //: closeBtn.isHidden = false
        closeBtn.isHidden = false
        //: closeBtn.snp.remakeConstraints { make in
        closeBtn.snp.remakeConstraints { make in
            //: if isLeft {
            if isLeft {
                //: make.left.equalTo(icon).offset(-3)
                make.left.equalTo(icon).offset(-3)
                //: } else {
            } else {
                //: make.right.equalTo(icon).offset(3)
                make.right.equalTo(icon).offset(3)
            }
            //: make.top.equalTo(icon).offset(-3)
            make.top.equalTo(icon).offset(-3)
            //: make.width.height.equalTo(16)
            make.width.height.equalTo(16)
        }
    }
}
