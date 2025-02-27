
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_managerTopValue:[UInt8] = [0x4d,0x4a,0x4d,0x50,0xc,0x47,0x4b,0x40,0x41,0x56,0x1e,0xd,0x4,0x4c,0x45,0x57,0x4,0x4a,0x4b,0x50,0x4,0x46,0x41,0x41,0x4a,0x4,0x4d,0x49,0x54,0x48,0x41,0x49,0x41,0x4a,0x50,0x41,0x40]

/*: _ :*/
fileprivate let str_containerText:String = "_"

/*: "UITableViewCell" :*/
fileprivate let str_tingName:[Character] = ["U","I","T","a","b","l","e","V","i","e","w","C","e","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CloseThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingVideoDanmuMsgBassCell: UITableViewCell {
class CloseThen: UITableViewCell {
	var phoneOpen: Bool = true
	var itemMagnitude: Int = 79
	var manualInterval: Double = -74.0
	var selectedName: String = "lab"
	var startArray: [AnyHashable] = []

    var endImageView: UIImageView?

    //: var msgModel = TalkingVideoCallDanmuModel.init()
    var msgModel = LimitMeasurable()

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
            if (bgLb.layer.contentsRect.size.width != 1) && (bgLb.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let landLet = LineView()
            landLet.imageOn = self.msgModel.isMySender
            landLet.cubeNumber = self.msgModel.msgHeight
            landLet.resultText = self.msgModel.nickname
            
            landLet.inscriptionOn = { [self] periodicTableOff in
            self.phoneOpen = periodicTableOff
            
            var landLet = msgModel.isMySender
            landLet = true
            if landLet != self.phoneOpen {
                self.phoneOpen = landLet
            }
            
                self.phoneOpen = false
                self.phoneOpen = !self.phoneOpen
            return self.phoneOpen
            }
            landLet.colorIconQuantity = { [self] filterMagnitude in
            self.itemMagnitude = filterMagnitude
            
            var landLet = self.msgModel.messageType
            landLet >>= 1
            if landLet > self.itemMagnitude {
                self.itemMagnitude = landLet
            }
            
            return self.itemMagnitude
            }
            landLet.giftMagnitude = { [self] timeNumber in
            self.manualInterval = timeNumber
            
            var landLet = msgModel.msgWidth
                landLet -= 1
                if landLet != 94 {
                    landLet = landLet + 1
                }
            if landLet < self.manualInterval {
                self.manualInterval = landLet
            }
            
            return self.manualInterval
            }
            landLet.imageContent = { [self] viewStartContent in
            self.selectedName = viewStartContent
            
            var landLet = msgModel.nickname
            landLet = landLet.lowercased() + "message"
            if landLet.contains(self.selectedName) {
                self.selectedName = landLet
            }
            
            return self.selectedName
            }
            landLet.voiceInfoGiftArray = { [self] giftExamineArray in
            self.startArray = giftExamineArray
            
            guard var value = self.startArray as? [String] else {
                return nil
            }
            return value
            }
                bgLb.addSubview(landLet)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.accessoryType = .none
        self.accessoryType = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle  = .none
        self.selectionStyle = .none

        //: self.contentView.addSubview(bgLb)
        self.contentView.addSubview(bgLb)
        //: self.contentView.addSubview(msgLabel)

        var biologyLab: UIView = msgLabel
        if let imageView = self.endImageView, (self.contentView.viewWithTag(2651) != nil) && (self.contentView.canBecomeFirstResponder) {
            //: SWIFT_CUSTOM_DANGER
            biologyLab = imageView
        }
        self.contentView.addSubview(biologyLab)

        //: self.msgLabel.snp.makeConstraints { make in
        self.msgLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(VideocellLineSpeing+2)
            make.top.equalTo(a_intervalData + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-32)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(VideocellLineSpeing)
            make.top.equalTo(a_intervalData)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_managerTopValue.map{$0^36}, encoding: .utf8)!)
    }

    //: lazy var bgLb: UIImageView = {
    lazy var bgLb: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.layer.cornerRadius = 13
        view.layer.cornerRadius = 13
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var msgLabel: YYLabel = {
    lazy var msgLabel: YYLabel = {
        //: let lb = YYLabel.init()
        let lb = YYLabel()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.clipsToBounds = true
        lb.clipsToBounds = true
        //: lb.textVerticalAlignment = .center
        lb.textVerticalAlignment = .center
        //: lb.isUserInteractionEnabled = true
        lb.isUserInteractionEnabled = true
        // 强制排版(从左到右)
        //: lb.semanticContentAttribute = .forceLeftToRight
        lb.semanticContentAttribute = .forceLeftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: lb.semanticContentAttribute = .forceRightToLeft
            lb.semanticContentAttribute = .forceRightToLeft
        }
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingVideoDanmuMsgBassCell {
extension CloseThen {
    //: class func initTableView(tableView: UITableView, msg: TalkingVideoCallDanmuModel, indexPath: IndexPath ) -> TalkingVideoDanmuMsgBassCell {
    class func actionPath(tableView: UITableView, msg: LimitMeasurable, indexPath _: IndexPath) -> CloseThen {
        //: var cell: TalkingVideoDanmuMsgBassCell?
        var cell: CloseThen?

        //: if msg.messageType == 1 {
        if msg.messageType == 1 {
            //: let identifier = "\(TalkingVideoDanmuMsgTextCell.className())_\(msg.messageType)"
            let identifier = "\(UpTextCell.className())_\(msg.messageType)"
            //: tableView.register(TalkingVideoDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(UpTextCell.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingVideoDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? UpTextCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingVideoDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = UpTextCell(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(str_tingName))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingVideoDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = CloseThen(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingVideoDanmuMsgBassCell
            return cell as! CloseThen
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
