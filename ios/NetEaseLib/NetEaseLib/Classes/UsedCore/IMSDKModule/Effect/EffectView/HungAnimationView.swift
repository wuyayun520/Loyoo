
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_showTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "open_picture" :*/
fileprivate let str_valueContent:String = "open_picontent function block"
fileprivate let str_inputMTitle:String = "cturup"

/*: "%@.mp4" :*/
fileprivate let str_labData:[Character] = ["%","@",".","m","p","4"]

/*: "http" :*/
fileprivate let str_domainName:String = "himageimagep"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HungAnimationView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import QGVAPlayer
import QGVAPlayer
//: import UIKit
import UIKit

//: class TalkingVapAnimationView: TalkingGiftAnimatItemView {
class HungAnimationView: SocialGiftView {
	var callOffDoing: Bool = false
	var managerCount: Int = 90
	var blockMagnitude: Double = -64.5
	var toTitle: String = "value"
	var vanguardArray: [AnyHashable] = []
	var ofOff: Bool = false
	var viewCount: Int = 76
	var indexEqualTotal: Double = 51.7
	var bagName: String = "effect"
	var roomArray: [AnyHashable] = []
	var domainNameOff: Bool = false
	var startSum: Int = 23
	var categoryCount: Double = -54.7
	var roomContent: String = "block"
	var showArray: [AnyHashable] = []

    var videoAddImageView: UIImageView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_showTitle, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: public lazy var vapPlayerView: UIView? = {
    public lazy var vapPlayerView: UIView? = {
        //: let view = UIView.init(frame: self.bounds)
        let view = UIView(frame: self.bounds)
        //: view.center = self.center
        view.center = self.center
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.hwd_enterBackgroundOP = .stop
        view.hwd_enterBackgroundOP = .stop
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: view.hwd_enterBackgroundOP = .pauseAndResume
            view.hwd_enterBackgroundOP = .pauseAndResume
        }
        //: self.addSubview(view)
        self.addSubview(view)
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(onImageviewTap))
        let tap = UITapGestureRecognizer(target: self, action: #selector(cancelTap))
        //: view.addGestureRecognizer(tap)
        view.addGestureRecognizer(tap)
        //: return view
        return view
        //: }()
    }()

    //: override func startAnimating() {
    override func textColorGift() {
        //: super.startAnimating()
        super.textColorGift()

        //: let path = TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: self.giftEffectModel?.mainFile ?? "", model: self.effectMsgModel ?? TalkingAnimatMsgModel.init())
        let path = LabelAnimatTool.shared.elite(fileName: self.giftEffectModel?.mainFile ?? "", model: self.effectMsgModel ?? ConstraintMsgModel())
        videoAddImageView = UIImageView(frame: self.frame.intersection(CGRect(x: CGFloat(Double(self.frame.origin.x)), y: CGFloat(Int(self.bounds.size.width)), width: CGFloat(Double(self.bounds.origin.y)), height: CGFloat(0))))
        if let videoAddImageView = videoAddImageView {
            self.videoAddImageView?.image = UIImage(named: (String(str_valueContent.prefix(7)) + str_inputMTitle.replacingOccurrences(of: "up", with: "e")))
            if (videoAddImageView.intrinsicContentSize.height == 211.49) && (videoAddImageView.superview != nil && !videoAddImageView.isDescendant(of: videoAddImageView.superview!)) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(videoAddImageView)
            }
        }

        //: if  path.count > 0 {
        if path.count > 0 {
            //: let mp4Path = String.init(format: "%@.mp4", path)
            let mp4Path = String(format: (String(str_labData)), path)
            //: self.vapPlayerView?.playHWDMP4(mp4Path, repeatCount: 0, delegate: self)
            self.vapPlayerView?.playHWDMP4(mp4Path, repeatCount: 0, delegate: self)
            //: } else {
        } else {
            //: self.delegate?.didFinishAnimationOfGift(effectItemView: self)
            self.delegate?.upgradeView(effectItemView: self)
        }
    
		if var tableValue = self.effectMsgModel?.eid { 
			if var levelValue = self.effectMsgModel?.top { 
				if var raseValue = self.giftEffectModel?.mainFile { 
					if var mortalValue = self.effectMsgModel?.top { 
				            if (self.layer.contentsRect.size.width != 1) && (self.mask != nil) {
				                //: SWIFT_CUSTOM_DANGER_File_Call
				                let landLet = LineView()
				            landLet.imageOn = mortalValue
			
				            landLet.resultText = raseValue
				            
				            landLet.inscriptionOn = { [self] periodicTableOff in
				            self.ofOff = periodicTableOff
				            
				            var landLet = levelValue
				            landLet = true
				            if landLet != self.ofOff {
				                self.ofOff = landLet
				            }
				            
				                self.ofOff = false
				                self.ofOff = !self.ofOff
				            return self.ofOff
				            }
				            landLet.colorIconQuantity = { [self] filterMagnitude in
				            self.viewCount = filterMagnitude
				            
				            var landLet = tableValue
				            landLet >>= 1
				            if landLet > self.viewCount {
				                self.viewCount = landLet
				            }
				            
				            return self.viewCount
				            }
				            landLet.giftMagnitude = { [self] timeNumber in
				            self.indexEqualTotal = timeNumber
				            
				            return self.indexEqualTotal
				            }
				            landLet.imageContent = { [self] viewStartContent in
				            self.bagName = viewStartContent
				            
				            var landLet = path
				            landLet = landLet.lowercased() + "message"
				            if landLet.contains(self.bagName) {
				                self.bagName = landLet
				            }
				            
				            return self.bagName
				            }
				            landLet.voiceInfoGiftArray = { [self] giftExamineArray in
				            self.roomArray = giftExamineArray
				            
				            guard var value = self.roomArray as? [String] else {
				                return nil
				            }
				            return value
				            }
				                self.addSubview(landLet)
				            }
				
					}
				}
			}
		}
	}

    //: override func stopAnimating() {
    override func scopeData() {
        //: self.vapPlayerView?.stopHWDMP4()
        self.vapPlayerView?.stopHWDMP4()
    }

    //: override func cleanAnimating() {
    override func cleanUponPresent() {
        //: self.vapPlayerView?.removeFromSuperview()
        self.vapPlayerView?.removeFromSuperview()
        //: self.vapPlayerView = nil
        self.vapPlayerView = nil
    
		if var drawValue = self.effectMsgModel?.effectUrl { 
			if var viewValue = self.effectMsgModel?.eid { 
				if var modelValue = self.effectMsgModel?.top { 
					if var videoValue = self.effectMsgModel?.effectUrl { 
						if var cellValue = self.effectMsgModel?.top { 
							if var somebodyValue = self.vapPlayerView { 
						            if (!somebodyValue.autoresizesSubviews) && (somebodyValue.constraintsAffectingLayout(for: .horizontal).count == 58) {
						                //: SWIFT_CUSTOM_DANGER_File_Call
						                let heightRowExplain = LineView(frame: somebodyValue.bounds.offsetBy(dx: CGFloat(254.56), dy: CGFloat(514.61)))
						            heightRowExplain.imageOn = cellValue
				
						            heightRowExplain.resultText = videoValue
						            
						            heightRowExplain.inscriptionOn = { [self] periodicTableOff in
						            self.callOffDoing = periodicTableOff
						            
						            var heightRowExplain = modelValue
						            heightRowExplain = false
						            if heightRowExplain != self.callOffDoing {
						                self.callOffDoing = heightRowExplain
						            }
						            
						            self.callOffDoing = true
						            return self.callOffDoing
						            }
						            heightRowExplain.colorIconQuantity = { [self] filterMagnitude in
						            self.managerCount = filterMagnitude
						            
						            var heightRowExplain = viewValue
						            heightRowExplain += 1
						            if heightRowExplain > self.managerCount {
						                self.managerCount = heightRowExplain
						            }
						            
						            return self.managerCount
						            }
						            heightRowExplain.giftMagnitude = { [self] timeNumber in
						            self.blockMagnitude = timeNumber
						            
						            return self.blockMagnitude
						            }
						            heightRowExplain.imageContent = { [self] viewStartContent in
						            self.toTitle = viewStartContent
						            
						            var heightRowExplain = drawValue
						            heightRowExplain = String(heightRowExplain.lowercased() + "load")
						            if heightRowExplain.contains(self.toTitle) {
						                self.toTitle = heightRowExplain
						            }
						            
						            return self.toTitle
						            }
						            heightRowExplain.voiceInfoGiftArray = { [self] giftExamineArray in
						            self.vanguardArray = giftExamineArray
						            
						            guard var value = self.vanguardArray as? [String] else {
						                return nil
						            }
						            return value
						            }
						                somebodyValue.addSubview(heightRowExplain)
						            }
						
							}
						}
					}
				}
			}
		}
	}

    //: @objc func onImageviewTap() {
    @objc func cancelTap() {}
}

///  --- HWDMP4PlayDelegate

//: extension TalkingVapAnimationView: HWDMP4PlayDelegate {
extension HungAnimationView: HWDMP4PlayDelegate {
    //: func shouldStartPlayMP4(_ container: UIView!, config: QGVAPConfigModel!) -> Bool {
    func shouldStartPlayMP4(_: UIView!, config _: QGVAPConfigModel!) -> Bool {
        //: return true
        return true
    }

    //: func viewDidStartPlayMP4(_ container: UIView!) {
    func viewDidStartPlayMP4(_: UIView!) {}

    //: func viewDidFinishPlayMP4(_ totalFrameCount: Int, view container: UIView!) {
    func viewDidFinishPlayMP4(_: Int, view _: UIView!) {}

    //: func viewDidPlayMP4(at frame: QGMP4AnimatedImageFrame!, view container: UIView!) {
    func viewDidPlayMP4(at _: QGMP4AnimatedImageFrame!, view _: UIView!) {}

    //: func viewDidStopPlayMP4(_ lastFrameIndex: Int, view container: UIView!) {
    func viewDidStopPlayMP4(_: Int, view container: UIView!) {
        // note:在子线程被调用
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: container.removeFromSuperview()
            container.removeFromSuperview()
            //: self.delegate?.didFinishAnimationOfGift(effectItemView: self)
            self.delegate?.upgradeView(effectItemView: self)
        }
    }

    //: func viewDidFailPlayMP4(_ error: Error!) {
    func viewDidFailPlayMP4(_: Error!) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.delegate?.didFinishAnimationOfGift(effectItemView: self)
            self.delegate?.upgradeView(effectItemView: self)
        }
    }

    /// 替换配置中的资源占位符（不处理直接返回tag）
    //: func content(forVapTag tag: String!, resource info: QGVAPSourceInfo!) -> String! {
    func content(forVapTag tag: String!, resource _: QGVAPSourceInfo!) -> String! {
        //: return tag
        return tag
    }

    // 由于组件内不包含网络图片加载的模块，因此需要外部支持图片加载。
    //: func loadVapImage(withURL urlStr: String!, context: [AnyHashable: Any]!, completion completionBlock: VAPImageCompletionBlock!) {
    func loadVapImage(withURL urlStr: String!, context _: [AnyHashable: Any]!, completion completionBlock: VAPImageCompletionBlock!) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if urlStr.hasPrefix("http") {
            if urlStr.hasPrefix((str_domainName.replacingOccurrences(of: "image", with: "t"))) {
                //: let data = NSData.init(contentsOf: NSURL.init(string: urlStr)! as URL)
                let data = NSData(contentsOf: NSURL(string: urlStr)! as URL)
                //: let image = UIImage.init(data: data! as Data)
                let image = UIImage(data: data! as Data)
                //: completionBlock(image, nil, urlStr)
                completionBlock(image, nil, urlStr)
                //: } else {
            } else {
                //: completionBlock(nil, nil, urlStr)
                completionBlock(nil, nil, urlStr)
            }
        }
    }
}
