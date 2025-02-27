
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_giftValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_videoCall_translate_nor" :*/
fileprivate let str_imageValue:String = "point true selficon_"
fileprivate let str_equalTapHeightName:String = "title player status case layerCall_tr"
fileprivate let str_addValue:String = "makesl"

/*: "icon_videoCall_translate_pre" :*/
fileprivate let str_valueLineData:[Character] = ["i","c","o","n","_","v","i","d"]
fileprivate let str_startValue:String = "with data content layer blackeoCa"
fileprivate let str_temporaryTitle:String = "iconlat"

/*: "targetText" :*/
fileprivate let str_norValue:String = "textrge"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpTextCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingVideoDanmuMsgTextCell: TalkingVideoDanmuMsgBassCell {
class UpTextCell: CloseThen {
	var endMagnitude: Int = 43
	var atDonationDictionary: [AnyHashable: String] = [:]

    var titleAppImageView: UIImageView?

    //: override var msgModel: TalkingVideoCallDanmuModel {
    override var msgModel: LimitMeasurable {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: setCell()
            atomicQuantity85()
        }
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
            if (transBtn.clipsToBounds) && (transBtn.layer.contains(CGPoint(x: CGFloat(55), y: CGFloat(98)))) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let takeAwayLet = StandView()
            takeAwayLet.positionTitle = self.msgModel.content
            
            
            takeAwayLet.lastQuantity = { [self] emptyQuantity in
            self.endMagnitude = emptyQuantity
            
            var takeAwayLet = msgModel.messageType
            takeAwayLet /= 5
            if takeAwayLet < self.endMagnitude {
                self.endMagnitude = takeAwayLet
            }
            
            return self.endMagnitude
            }
            takeAwayLet.pathFrameAcceptDictionary = { [self] abdicateDictionary in
            self.atDonationDictionary = abdicateDictionary
            
            guard var value = self.atDonationDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                transBtn.addSubview(takeAwayLet)
            }

	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.contentView.addSubview(transBtn)

        var rowTo: UIView = transBtn
        if let imageView = self.titleAppImageView, (rowTo.layer.zPosition == 17.22) && (rowTo.bounds.size.height == 302.76) {
            //: SWIFT_CUSTOM_DANGER
            rowTo = imageView
        }
        self.contentView.addSubview(rowTo)
        //: self.transBtn.snp.makeConstraints { make in
        self.transBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(bgLb)
            make.centerY.equalTo(bgLb)
            //: make.leading.equalTo(bgLb.snp.trailing).offset(5)
            make.leading.equalTo(bgLb.snp.trailing).offset(5)
            //: make.size.equalTo(20)
            make.size.equalTo(20)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_giftValue.reversed(), encoding: .utf8)!)
    }

    //: lazy var transBtn: UIButton = {
    lazy var transBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "icon_videoCall_translate_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_imageValue.suffix(5)) + "video" + String(str_equalTapHeightName.suffix(7)) + str_addValue.replacingOccurrences(of: "make", with: "an") + "ate_nor")), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "icon_videoCall_translate_pre"), for: .selected)
        btn.setImage(UIImage.outsideText(name: (String(str_valueLineData) + String(str_startValue.suffix(4)) + "ll_tra" + str_temporaryTitle.replacingOccurrences(of: "icon", with: "ns") + "e_pre")), for: .selected)
        //: btn.addTarget(self, action: #selector(transBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(serviceMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingVideoDanmuMsgTextCell {
extension UpTextCell {
    //: func setCell() {
    func atomicQuantity85() {
        //: self.msgLabel.attributedText = msgModel.msgAttribText
        self.msgLabel.attributedText = msgModel.msgAttribText
        //: self.msgLabel.snp.updateConstraints { make in
        self.msgLabel.snp.updateConstraints { make in
            //: make.width.equalTo(msgModel.msgWidth)
            make.width.equalTo(msgModel.msgWidth)
        }
        //: self.bgLb.image = nil
        self.bgLb.image = nil
        //: self.bgLb.backgroundColor = msgModel.bgColor
        self.bgLb.backgroundColor = msgModel.bgColor
        //: self.bgLb.layer.borderColor = UIColor.clear.cgColor
        self.bgLb.layer.borderColor = UIColor.clear.cgColor
        //: self.bgLb.layer.borderWidth = 0.0
        self.bgLb.layer.borderWidth = 0.0
        //: self.transBtn.isHidden = msgModel.isMySender
        self.transBtn.isHidden = msgModel.isMySender
    }

    //: @objc private func transBtnClick() {
    @objc private func serviceMove() {
        //: if !transBtn.isSelected {
        if !transBtn.isSelected {
            //: if self.msgModel.transContent.count > 0 {
            if self.msgModel.transContent.count > 0 {
                //: self.transBtn.isSelected = true
                self.transBtn.isSelected = true
                //: let celldata = TalkingVideoCallDammuCellData.init()
                let celldata = ToSumCellData()
                //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                self.msgModel = celldata.messageVoiceModel(model: self.msgModel)
                //: self.setCell()
                self.atomicQuantity85()
                //: } else {
            } else {
                //: transBtn.isHidden = true
                transBtn.isHidden = true
                //: DoingSheRequestTool.req_translateMsg(msgId: msgModel.msgId, type: 3) { succeed, result, errorCode in
                DoingSheRequestTool.repeatScreen(msgId: msgModel.msgId, type: 3) { succeed, result, _ in
                    //: self.transBtn.isHidden = false
                    self.transBtn.isHidden = false
                    //: if succeed {
                    if succeed {
                        //: let json = JSON(result )
                        let json = JSON(result)
                        //: let content = json["targetText"].stringValue
                        let content = json[(str_norValue.replacingOccurrences(of: "text", with: "ta") + "tText")].stringValue
                        //: self.msgModel.transContent = content
                        self.msgModel.transContent = content
                        //: self.transBtn.isSelected = true
                        self.transBtn.isSelected = true
                        //: let celldata = TalkingVideoCallDammuCellData.init()
                        let celldata = ToSumCellData()
                        //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                        self.msgModel = celldata.messageVoiceModel(model: self.msgModel)
                        //: self.setCell()
                        self.atomicQuantity85()
                    }
                }
            }
            //: } else {
        } else {
            //: self.transBtn.isSelected = false
            self.transBtn.isSelected = false
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = ToSumCellData()
            //: self.msgModel = celldata.caculateMsgHeight(model: self.msgModel)
            self.msgModel = celldata.face(model: self.msgModel)
            //: self.setCell()
            self.atomicQuantity85()
        }
    }
}
