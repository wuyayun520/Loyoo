
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_methodName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "mic_image" :*/
fileprivate let str_imageData:String = "layer any height remove viewmic_im"
fileprivate let str_endValue:String = "aaspecte"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabToItemView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: class TalkingSGVAAnimationView: TalkingGiftAnimatItemView {
class LabToItemView: SocialGiftView {
	var currentOn: Bool = true
	var errorCount: Int = 20
	var buttonSum: Double = -90.7
	var directArray: [AnyHashable] = []
	var kindEnable: Bool = false
	var towardMagnitude: Int = 71
	var belowLastNumber: Double = 70.1
	var addArray: [AnyHashable] = []
	var meDoing: Bool = true
	var recommendTotal: Int = 24
	var pageMagnitude: Double = 73.9
	var downArray: [AnyHashable] = []

    var aspectImageView: UIImageView?

    //: var parser: SVGAParser?
    var parser: SVGAParser?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: super.contentMode = .scaleToFill
        super.contentMode = .scaleToFill
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_methodName, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: aPlayer.stopAnimation()
        aPlayer.stopAnimation()
        //: aPlayer.clear()
        aPlayer.clear()
        //: aPlayer.videoItem = nil
        aPlayer.videoItem = nil
        //: aPlayer.removeFromSuperview()
        aPlayer.removeFromSuperview()
        //: aPlayer = SVGAPlayer.init()
        aPlayer = SVGAPlayer()
    }

    //: lazy var aPlayer: SVGAPlayer = {
    lazy var aPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init(frame: self.bounds)
        let player = SVGAPlayer(frame: self.bounds)
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = self.contentMode
        player.contentMode = self.contentMode
        //: player.delegate = self
        player.delegate = self
        //: self.addSubview(player)
        self.addSubview(player)
        //: return player
        return player
        //: }()
    }()

    //: override func startAnimating() {
    override func textColorGift() {
        //: let filePath = TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: (self.giftEffectModel?.mainFile)!, model: self.effectMsgModel!)
        let filePath = LabelAnimatTool.shared.elite(fileName: (self.giftEffectModel?.mainFile)!, model: self.effectMsgModel!)
        //: let data = NSData.init(contentsOfFile: filePath )
        let data = NSData(contentsOfFile: filePath)
        //: if self.parser == nil {
        if self.parser == nil {
            //: self.parser = SVGAParser.init()
            self.parser = SVGAParser()
            aspectImageView = UIImageView(frame: self.frame.standardized)
            if let aspectImageView = aspectImageView {
                self.aspectImageView?.image = UIImage(named: (String(str_imageData.suffix(6)) + str_endValue.replacingOccurrences(of: "aspect", with: "g")))
                if (aspectImageView.layer.contentsRect.origin.x != 0) && (aspectImageView.frame.size.height == 299.18) {
                    //: SWIFT_CUSTOM_DANGER
                    self.addSubview(aspectImageView)
                }
            }

            //: self.parser?.enabledMemoryCache = false
            self.parser?.enabledMemoryCache = false
        }

        //: let key = filePath
        let key = filePath

        //: parser?.parse(with: data! as Data, cacheKey: key, completionBlock: {[weak self] videoItem in
        parser?.parse(with: data! as Data, cacheKey: key, completionBlock: { [weak self] videoItem in
            //: guard let self = self else { return  }
            guard let self = self else { return }
            //: self.aPlayer.videoItem = videoItem
            self.aPlayer.videoItem = videoItem
            //: self.aPlayer.startAnimation()
            self.aPlayer.startAnimation()
            //: self.delegate?.giftEffectItemView(effectItemView: self, success: true)
            self.delegate?.playerCell(effectItemView: self, success: true)

            //: })
        })
    
		if var changeTextValue = self.effectMsgModel?.needAnimationTimes { 
			if var collectionLikeValue = self.effectMsgModel?.top { 
			if let aspectImageView = aspectImageView {
		
		            if (aspectImageView.layoutMargins.left == 1.86) && (aspectImageView.layer.position.y == 9.19) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let quantityryRank = RecordView()
		
		            quantityryRank.modelEnable = { [self] intervalClose in
		            self.currentOn = intervalClose
		            
		            var quantityryRank = collectionLikeValue
		            quantityryRank = false
		            if quantityryRank != self.currentOn {
		                self.currentOn = quantityryRank
		            }
		            
		            return self.currentOn
		            }
		            quantityryRank.successfullyNumber = { [self] tableNumber in
		            self.errorCount = tableNumber
		            
		            var quantityryRank = changeTextValue
		                quantityryRank -= 1
		                if Int(quantityryRank) > -29 {
		                    quantityryRank = quantityryRank + 1
		                }
		            if quantityryRank < self.errorCount {
		                self.errorCount = quantityryRank
		            }
		            
		            return self.errorCount
		            }
		            quantityryRank.frameInterval = { [self] textQuantity in
		            self.buttonSum = textQuantity
		            
		            return self.buttonSum
		            }
		            quantityryRank.managerBackRoomArray = { [self] nidusDeckArray in
		            self.directArray = nidusDeckArray
		            
		            guard var value = self.directArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		                aspectImageView.addSubview(quantityryRank)
		            }
		
			}
		
			}
		}
	}

    //: override func stopAnimating() {
    override func scopeData() {
        //: aPlayer.stopAnimation()
        aPlayer.stopAnimation()
    }

    //: override func cleanAnimating() {
    override func cleanUponPresent() {
        //: aPlayer.clear()
        aPlayer.clear()
    
		if var successRowAtValue = self.effectMsgModel?.eid { 
			if var wrapValue = self.effectMsgModel?.top { 
		            if (self.layoutMargins.left == 1.86) && (self.layer.position.y == 9.19) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let quantityryRank = RecordView()
		
		            quantityryRank.modelEnable = { [self] intervalClose in
		            self.kindEnable = intervalClose
		            
		            var quantityryRank = wrapValue
		            quantityryRank = false
		            if quantityryRank != self.kindEnable {
		                self.kindEnable = quantityryRank
		            }
		            
		            return self.kindEnable
		            }
		            quantityryRank.successfullyNumber = { [self] tableNumber in
		            self.towardMagnitude = tableNumber
		            
		            var quantityryRank = successRowAtValue
		                quantityryRank -= 1
		                if Int(quantityryRank) > -29 {
		                    quantityryRank = quantityryRank + 1
		                }
		            if quantityryRank < self.towardMagnitude {
		                self.towardMagnitude = quantityryRank
		            }
		            
		            return self.towardMagnitude
		            }
		            quantityryRank.frameInterval = { [self] textQuantity in
		            self.belowLastNumber = textQuantity
		            
		            return self.belowLastNumber
		            }
		            quantityryRank.managerBackRoomArray = { [self] nidusDeckArray in
		            self.addArray = nidusDeckArray
		            
		            guard var value = self.addArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		                self.addSubview(quantityryRank)
		            }
		
			}
		}
	}

    //: override func pauseAnimation() {
    override func scene() {
        //: aPlayer.pauseAnimation()
        aPlayer.pauseAnimation()
    }

    //: override func resumeAnimation() -> Bool {
    override func sound() -> Bool {
        //: return true
        
		if var overloadValue = self.effectMsgModel?.needAnimationTimes { 
			if var videoTopValue = self.effectMsgModel?.top { 
		            if (self.tag == 9794) && (self.frame.origin.x == 89.81) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let fileAllocationTable = RecordView(frame: self.bounds.standardized)
		
		            fileAllocationTable.modelEnable = { [self] intervalClose in
		            self.meDoing = intervalClose
		            
		            var fileAllocationTable = videoTopValue
		            fileAllocationTable = false
		            if fileAllocationTable != self.meDoing {
		                self.meDoing = fileAllocationTable
		            }
		            
		            return self.meDoing
		            }
		            fileAllocationTable.successfullyNumber = { [self] tableNumber in
		            self.recommendTotal = tableNumber
		            
		            var fileAllocationTable = overloadValue
		            fileAllocationTable &*= 7
		            if fileAllocationTable > self.recommendTotal {
		                self.recommendTotal = fileAllocationTable
		            }
		            
		            return self.recommendTotal
		            }
		            fileAllocationTable.frameInterval = { [self] textQuantity in
		            self.pageMagnitude = textQuantity
		            
		            return self.pageMagnitude
		            }
		            fileAllocationTable.managerBackRoomArray = { [self] nidusDeckArray in
		            self.downArray = nidusDeckArray
		            
		            guard var value = self.downArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		                self.addSubview(fileAllocationTable)
		            }
		
			}
		}
		return true
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: super.contentMode = contentMode
            super.contentMode = contentMode
            //: aPlayer.contentMode = contentMode
            aPlayer.contentMode = contentMode
        }
    }
}

//: extension TalkingSGVAAnimationView: SVGAPlayerDelegate {
extension LabToItemView: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.delegate?.didFinishAnimationOfGift(effectItemView: self)
        self.delegate?.upgradeView(effectItemView: self)
    }
}
