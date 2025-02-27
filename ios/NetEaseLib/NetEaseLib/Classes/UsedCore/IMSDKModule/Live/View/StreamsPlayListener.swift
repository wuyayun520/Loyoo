
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_requestValue:[UInt8] = [0xef,0xe8,0xef,0xf2,0xae,0xe5,0xe9,0xe2,0xe3,0xf4,0xbc,0xaf,0xa6,0xee,0xe7,0xf5,0xa6,0xe8,0xe9,0xf2,0xa6,0xe4,0xe3,0xe3,0xe8,0xa6,0xef,0xeb,0xf6,0xea,0xe3,0xeb,0xe3,0xe8,0xf2,0xe3,0xe2]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreamsPlayListener.swift
//  AbroadTalking
//
//  Created by young on 2023/6/16.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

//: class UserLivePullStreamsView: TalkingBaseMiniView {
class StreamsPlayListener: LabelMiniView {
    var changeImageImageView: UIImageView?

    // 播放结束Block
    //: var playEndBlock: (() -> Void)?
    var playEndBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubViewsConstraint()
        everyLast()
        //: addTapGesture()
        totalName()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_requestValue.map{$0^134}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var shadowView: UIView = {
    private lazy var shadowView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 76, height: 115), cornerRadius: 10).cgPath
        view.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 76, height: 115), cornerRadius: 10).cgPath
        //: view.layer.shadowColor = UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 0.5).cgColor
        view.layer.shadowColor = UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 0.5).cgColor
        //: view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        //: view.layer.shadowOpacity = 1
        view.layer.shadowOpacity = 1
        //: view.layer.shadowRadius = 8
        view.layer.shadowRadius = 8
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: lazy var renderView: UIView = {
    lazy var renderView: UIView = { // 视频渲染视图
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .appTitleColor()
        view.backgroundColor = .blockOf()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = false
        view.isUserInteractionEnabled = false
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var player: TXLivePlayer = {
    private lazy var player: TXLivePlayer = {
        //: var player = TXLivePlayer()
        var player = TXLivePlayer()
        //: player.delegate = self
        player.delegate = self
        //: player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
        player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
        //: player.setMute(true)
        player.setMute(true)
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Event

//: extension UserLivePullStreamsView {
extension StreamsPlayListener {
    /// 开始播放直播
    //: func setupPlayer(liveUrl: String) {
    func prompt(liveUrl: String) {
        //: self.player.startLivePlay(liveUrl, type: TX_Enum_PlayType.PLAY_TYPE_LIVE_FLV)
        self.player.startLivePlay(liveUrl, type: TX_Enum_PlayType.PLAY_TYPE_LIVE_FLV)
        //: self.player.setupVideoWidget(renderView.bounds, contain: renderView, insert: 0)
        self.player.setupVideoWidget(renderView.bounds, contain: renderView, insert: 0)
    }
}

// MARK: - TXLivePlayListener【直播拉流监听】

//: extension UserLivePullStreamsView: TXLivePlayListener {
extension StreamsPlayListener: TXLivePlayListener {
    //: func onPlayEvent(_ evtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPlayEvent(_ evtID: Int32, withParam _: [AnyHashable: Any]!) {
        // 拉流失败，退出播放
        //: if evtID == PLAY_EVT_PLAY_END.rawValue ||
        if evtID == PLAY_EVT_PLAY_END.rawValue ||
            //: evtID == PLAY_ERR_NET_DISCONNECT.rawValue ||
            evtID == PLAY_ERR_NET_DISCONNECT.rawValue ||
            //: evtID == PLAY_ERR_GET_RTMP_ACC_URL_FAIL.rawValue ||
            evtID == PLAY_ERR_GET_RTMP_ACC_URL_FAIL.rawValue ||
            //: evtID == PLAY_ERR_HEVC_DECODE_FAIL.rawValue ||
            evtID == PLAY_ERR_HEVC_DECODE_FAIL.rawValue ||
            //: evtID == PLAY_ERR_STREAM_SWITCH_FAIL.rawValue ||
            evtID == PLAY_ERR_STREAM_SWITCH_FAIL.rawValue ||
            //: evtID == PLAY_ERR_STREAM_SERVER_REFUSED.rawValue {
            evtID == PLAY_ERR_STREAM_SERVER_REFUSED.rawValue
        {
            //: self.playEndBlock?()
            self.playEndBlock?()
        }
    }

    //: func onNetStatus(_ param: [AnyHashable: Any]!) {}
    func onNetStatus(_: [AnyHashable: Any]!) {}
}

// MARK: - Layout

//: extension UserLivePullStreamsView {
extension StreamsPlayListener {
    // 更新约束
    //: private func setupSubViewsConstraint() {
    private func everyLast() {
        //: self.bounds = CGRect(x: 0, y: 0, width: 88, height: 127)
        self.bounds = CGRect(x: 0, y: 0, width: 88, height: 127)
        //: self.shadowView.frame = CGRect(x: 6, y: 6, width: 76, height: 115)
        self.shadowView.frame = CGRect(x: 6, y: 6, width: 76, height: 115)
        //: self.bgView.frame = self.shadowView.frame
        self.bgView.frame = self.shadowView.frame
        //: self.renderView.frame = self.shadowView.frame
        self.renderView.frame = self.shadowView.frame
    }
}
