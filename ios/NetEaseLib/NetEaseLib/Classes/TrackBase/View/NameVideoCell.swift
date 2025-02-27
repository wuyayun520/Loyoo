
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_indexName:String = "btn_dfalse frame view app"
fileprivate let str_countColorTextTitle:String = "ynammodel"
fileprivate let str_askSizeValue:String = "let image statusc_sto"

/*: "icon_Topping_bg" :*/
fileprivate let str_colorFileText:[Character] = ["i","c","o","n","_","T","o"]
fileprivate let str_sendData:[Character] = ["p","p","i","n","g","_","b","g"]

/*: "#F5F5F5" :*/
fileprivate let str_roomName:String = "frame let model#F5F5F5"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameVideoCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/4.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: class TalkingMomentVideoCell: UIView {
class NameVideoCell: UIView {
    var reReleaseNameImageView: UIImageView?

    //: var isPlaying = false
    var isPlaying = false
    //: var videoUrl = ""
    var videoUrl = ""
    //: var isListTableCell = true
    var isListTableCell = true
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.third()
        //: self.setupSubViewsConstraint()
        self.addAcross()
        //: self.bindInteraction()
        self.duringTab()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelText.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var player: TalkingVideoPlayerManager = {
    lazy var player: DatePlayListener = {
        //: var  player: TalkingVideoPlayerManager
        var player: DatePlayListener
        //: if isListTableCell {
        if isListTableCell {
            //: player = TalkingVideoPlayerManager.shared
            player = DatePlayListener.shared
            //: }else {
        } else {
            //: player = TalkingVideoPlayerManager.init()
            player = DatePlayListener()
        }
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.pileEndowIcon(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: lazy var coverView: UIImageView = {
    lazy var coverView: UIImageView = {
        //: let  imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = .black
        imag.backgroundColor = .black
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: self.addSubview(imag)
        self.addSubview(imag)
        //: imag.snp.remakeConstraints { make in
        imag.snp.remakeConstraints { make in
            //: make.edges.equalTo(0)
            make.edges.equalTo(0)
        }
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.outsideText(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.outsideText(name: (String(str_indexName.prefix(5)) + str_countColorTextTitle.replacingOccurrences(of: "model", with: "i") + String(str_askSizeValue.suffix(5)) + "p_nor")))
        //: coverView.addSubview(imag)
        coverView.addSubview(imag)
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.outsideText(name: "icon_Topping_bg")
        img.image = UIImage.outsideText(name: (String(str_colorFileText) + String(str_sendData)))
        //: coverView.addSubview(img)
        coverView.addSubview(img)
        //: return img
        return img
        //: }()
    }()
}

//: extension TalkingMomentVideoCell {
extension NameVideoCell {
    //: @objc func enterBackgroundNotification() {
    @objc func tableOfTexts() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.dataApp()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func adoptNotification() {
        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
        if self.colorController()!.isKind(of: TitleNavigationDelegate.self) {
            //: self.player.resume()
            self.player.cry()
        }
    }

    //: func configModel(model: TalkingMomentVideoModel, isTop: Bool = false) {
    func removeBy(model: UpMeasurable, isTop: Bool = false) {
        //: videoUrl = model.videoUrl
        videoUrl = model.videoUrl
        //: self.coverView.backgroundColor = .white
        self.coverView.backgroundColor = .white
        //: self.coverView.setUrlImage(urlStr: model.imgUrl, placeImg: nil)
        self.coverView.recordFinish(urlStr: model.imgUrl, placeImg: nil)
        //: topImage.isHidden = !isTop
        topImage.isHidden = !isTop
    }

    //: func setupPlayer() {
    func beautyPush() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        //: self.player.playerWithUrlAndVideoView(url: videoUrl, view: self)
        self.player.catScan(url: videoUrl, view: self)
        //: self.player.setMute(bEnable: true)
        self.player.pileEndowIcon(bEnable: true)
        //: self.isPlaying = true
        self.isPlaying = true
        //: self.player.delegate = self
        self.player.delegate = self
        //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
        self.player.viewShow(renderMode: .FILL_SCREEN)
    }

    //: func stopPlay() {
    func garrison() {
        //: self.coverView.isHidden = false
        self.coverView.isHidden = false
        //: self.player.stopPlay()
        self.player.stopEqual()
        //: self.isPlaying = false
        self.isPlaying = false
        //: self.playimageView.isHidden = false
        self.playimageView.isHidden = false
        //: self.player.setMute(bEnable: true)
        self.player.pileEndowIcon(bEnable: true)
    }

    //: func pausePlay() {
    func play() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.dataApp()
        }
    }

    //: func resume() {
    func area() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        // 进入详情会改变播放模式会有声音
        //: self.player.setMute(bEnable: true)
        self.player.pileEndowIcon(bEnable: true)
        //: self.player.resume()
        self.player.cry()
    }
}

//: extension TalkingMomentVideoCell: TalkingVideoPlayerDelegate {
extension NameVideoCell: ValueObjectPlayerDelegate {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func subStatus(player _: DatePlayListener, status: PoolPlayerStatus) {
        //: if (status == .Playing) {
        if status == .Playing {
            //: if self.player.isMute == false {
            if self.player.isMute == false {
                //: self.player.setMute(bEnable: true)
                self.player.pileEndowIcon(bEnable: true)
            }
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
            self.player.viewShow(renderMode: .FILL_SCREEN)
            //: }else if (status == .Pausing) {
        } else if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func colorCase(player _: DatePlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func duringSizeLive(player _: DatePlayListener, progress _: CGFloat) {}
}

//: extension TalkingMomentVideoCell {
extension NameVideoCell {
    // 添加视图
    //: private func setupSubviews() {
    private func third() {
        //: self.backgroundColor = UIColor.init(hex: "#F5F5F5" )
        self.backgroundColor = UIColor(hex: (String(str_roomName.suffix(7))))
        //: self.layer.cornerRadius = 4
        self.layer.cornerRadius = 4
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func addAcross() {
        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: topImage.snp.remakeConstraints { make in
        topImage.snp.remakeConstraints { make in
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.size.equalTo(CGSize.init(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func duringTab() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(enterBackgroundNotification), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(tableOfTexts), name: UIApplication.willResignActiveNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterForegroundNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(adoptNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
}
