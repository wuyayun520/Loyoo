
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_userValue:String = "if send var menu sizebtn_d"
fileprivate let str_remarkSizeSuperText:String = "_stop_novar class path capable"
fileprivate let str_afterLayerTitle:String = "R"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataPlayerDelegate.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TUserDetailHeaderItemCell: UICollectionViewCell {
class DataPlayerDelegate: UICollectionViewCell {
    var addStopImageView: UIImageView?

    //: var playFinishBlock: (() -> Void)?
    var playFinishBlock: (() -> Void)? // 视频是否播放完毕
    //: private var videoUrl = ""            // 视频地址
    private var videoUrl = "" // 视频地址

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var bgImgView: UIImageView = {
    lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.placeSquareBigImgBanner()
        imgV.image = UIImage.project()
        //: imgV.layer.masksToBounds = true
        imgV.layer.masksToBounds = true
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: DatePlayListener = {
        //: var player = TalkingVideoPlayerManager()
        var player = DatePlayListener()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.pileEndowIcon(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var coverView: UIImageView = {
    private lazy var coverView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.backgroundColor = .black
        imag.backgroundColor = .black
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var playimageView: UIImageView = {
    private lazy var playimageView: UIImageView = {
        //: let imag = UIImageView(image: UIImage.outsideText(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.outsideText(name: (String(str_userValue.suffix(5)) + "ynamic" + String(str_remarkSizeSuperText.prefix(8)) + str_afterLayerTitle.lowercased())))
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension TUserDetailHeaderItemCell {
extension DataPlayerDelegate {
    //: func configModel(videoUrl: String, imgUrl: String ) {
    func confabulation(videoUrl: String, imgUrl: String) {
        //: self.videoUrl = videoUrl
        self.videoUrl = videoUrl
        //: self.coverView.setUrlImage(urlStr: imgUrl)
        self.coverView.recordFinish(urlStr: imgUrl)
    }

    /// 开始播放视频
    //: func setupPlayer() {
    func playerBy() {
        //: self.playimageView.isHidden = true
        self.playimageView.isHidden = true
        //: self.player.playerWithUrlAndVideoView(url: videoUrl, view: self.coverView)
        self.player.catScan(url: videoUrl, view: self.coverView)
        //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
        self.player.viewShow(renderMode: .FILL_SCREEN)
    }
}

// MARK: - ValueObjectPlayerDelegate

//: extension TUserDetailHeaderItemCell: TalkingVideoPlayerDelegate {
extension DataPlayerDelegate: ValueObjectPlayerDelegate {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func subStatus(player _: DatePlayListener, status: PoolPlayerStatus) {
        //: if (status == .Pausing) {
        if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
            //: } else if (status == .Finished) {
        } else if status == .Finished {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
            //: self.player.stopPlay()
            self.player.stopEqual()
            // 视频播放完毕回调block
            //: if playFinishBlock != nil {
            if playFinishBlock != nil {
                //: playFinishBlock!()
                playFinishBlock!()
            }
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {}
    func colorCase(player _: DatePlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {}
    func duringSizeLive(player _: DatePlayListener, progress _: CGFloat) {}
}

// MARK: - Layout

//: extension TUserDetailHeaderItemCell {
extension DataPlayerDelegate {
    /// 图片
    //: func setImageView() {
    func edit() {
        //: contentView.addSubview(bgImgView)
        contentView.addSubview(bgImgView)
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 视频
    //: func setVideoView() {
    func randomView() {
        //: contentView.addSubview(coverView)
        contentView.addSubview(coverView)
        //: coverView.snp.remakeConstraints { make in
        coverView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: coverView.addSubview(playimageView)
        coverView.addSubview(playimageView)
        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 63, height: 63))
            make.size.equalTo(CGSize(width: 63, height: 63))
        }
    }
}
