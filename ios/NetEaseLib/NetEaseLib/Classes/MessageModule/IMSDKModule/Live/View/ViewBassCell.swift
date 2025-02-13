
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_beginToTitleData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "MF:LiveChatWelMsg" :*/
fileprivate let str_messageValue:[Character] = ["M","F",":","L","i"]
fileprivate let str_equalData:String = "space"
fileprivate let str_listName:[Character] = ["e","C","h","a","t","W","e","l","M","s","g"]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_inputData:String = "case actual view mutualMF:Li"
fileprivate let str_originViewLastValue:String = "veChfirst task shared"
fileprivate let str_listenerName:String = "zeMsgavailable equal list corner"

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let str_viewValue:String = "read array manager textMF:Live"
fileprivate let str_equalActualTitle:[Character] = ["C","h","a","t","A","t"]
fileprivate let str_makeToContent:[Character] = ["t","e","n","t","i","o","n","M","s","g"]

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_fromValue:[Character] = ["M","F",":","P","a","r","t","y","C","h","a"]
fileprivate let str_effectData:[Character] = ["t","W","e","l","M","s","g"]

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let str_makeName:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t"]
fileprivate let str_viewName:String = "Prizself interval to self return"

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let str_textLiveData:String = "MF:Parimage add"
fileprivate let str_toTitle:String = "tAttenorigin content"
fileprivate let str_equalName:String = "game text voice colorMsg"

/*: _ :*/
fileprivate let str_outsideData:String = "_"

/*: "UITableViewCell" :*/
fileprivate let str_addValue:[Character] = ["U","I","T","a","b"]
fileprivate let str_atValue:String = "model object label file panleVi"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewBassCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgBassCell: UITableViewCell {
class ViewBassCell: UITableViewCell {
	var lifestyleMagnitude: Double = 1.7
	var visualisationDictionary: [AnyHashable: String] = [:]
	var redPriceSum: Double = 35.7
	var frameDictionary: [AnyHashable: String] = [:]

    var itemImageView: UIImageView?

    //: var msgModel = TalkingLiveRoomDanmuModel.init()
    var msgModel = AppModelType()

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
		if var queryFreeValue = msgModel.msgInfo?.mfBean { 
			if var nextValue = msgModel.user?.loungePlus { 
			if let itemImageView = itemImageView {
		
		            if (itemImageView.preservesSuperviewLayoutMargins) && (itemImageView.layer.mask != nil) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let resultModify = UpCommentView()
		            resultModify.beautyOpen = nextValue
		            resultModify.centralCityMagnitude = msgModel.msgWidth
		            
		            resultModify.requestTotal = { [self] cornerCount in
		            self.redPriceSum = cornerCount
		            
		            var resultModify = queryFreeValue
		                resultModify += 1
		                if resultModify != 27 {
		                    resultModify = resultModify - 1
		                }
		            if resultModify < self.redPriceSum {
		                self.redPriceSum = resultModify
		            }
		            
		            return self.redPriceSum
		            }
		            resultModify.viewDictionary = { [self] playerDictionary in
		            self.frameDictionary = playerDictionary
		            
		            guard var value = self.frameDictionary as? [String: String] else {
		                return nil
		            }
		            return value
		            }
		                itemImageView.addSubview(resultModify)
		            }
		
			}
		
			}
		}
	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    
            if (msgLabel.forFirstBaselineLayout.center.x == 96.01) && (msgLabel.gestureRecognizers != nil && msgLabel.gestureRecognizers!.count == 12) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let finishModel = UpCommentView(frame: msgLabel.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
            finishModel.beautyOpen = animated
            finishModel.centralCityMagnitude = msgModel.msgWidth
            
            finishModel.requestTotal = { [self] cornerCount in
            self.lifestyleMagnitude = cornerCount
            
            var finishModel = msgModel.msgWidth
                finishModel += 1
                if Int(finishModel) > -93 {
                    finishModel = finishModel - 1
                }
            if finishModel < self.lifestyleMagnitude {
                self.lifestyleMagnitude = finishModel
            }
            
            return self.lifestyleMagnitude
            }
            finishModel.viewDictionary = { [self] playerDictionary in
            self.visualisationDictionary = playerDictionary
            
            guard var value = self.visualisationDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                msgLabel.addSubview(finishModel)
            }

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

        var visibleView: UIView = bgLb
        if let imageView = self.itemImageView, (visibleView.mask != nil) && (visibleView.convert(visibleView.frame.offsetBy(dx: CGFloat(Int(visibleView.center.y)), dy: CGFloat(0)), to: visibleView.superview).origin.y == 45.29) {
            //: SWIFT_CUSTOM_DANGER
            visibleView = imageView
        }
        self.contentView.addSubview(visibleView)
        //: self.contentView.addSubview(msgLabel)
        self.contentView.addSubview(msgLabel)

        //: self.msgLabel.snp.makeConstraints { make in
        self.msgLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(cellLineSpeing+2)
            make.top.equalTo(a_dataName + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-6)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(cellLineSpeing)
            make.top.equalTo(a_dataName)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_beginToTitleData.reversed(), encoding: .utf8)!)
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

//: extension TalkingDanmuMsgBassCell {
extension ViewBassCell {
    //: class func initTableView(tableView: UITableView, msg: TalkingLiveRoomDanmuModel, indexPath: IndexPath ) -> TalkingDanmuMsgBassCell {
    class func term(tableView: UITableView, msg: AppModelType, indexPath _: IndexPath) -> ViewBassCell {
        //: var cell: TalkingDanmuMsgBassCell?
        var cell: ViewBassCell?

        //: if msg.msgInfo?.messageType == 1 ||
        if msg.msgInfo?.messageType == 1 ||
            //: msg.msgInfo?.messageType == 2 ||
            msg.msgInfo?.messageType == 2 ||
            //: msg.msgInfo?.messageType == 3 ||
            msg.msgInfo?.messageType == 3 ||
            //: msg.MsgExtension == "MF:LiveChatWelMsg" ||
            msg.MsgExtension == (String(str_messageValue) + str_equalData.replacingOccurrences(of: "space", with: "v") + String(str_listName)) ||
            //: msg.MsgExtension == "MF:LiveChatPrizeMsg" ||
            msg.MsgExtension == (String(str_inputData.suffix(5)) + String(str_originViewLastValue.prefix(4)) + "atPri" + String(str_listenerName.prefix(5))) ||
            //: msg.MsgExtension == "MF:LiveChatAttentionMsg" ||
            msg.MsgExtension == (String(str_viewValue.suffix(7)) + String(str_equalActualTitle) + String(str_makeToContent)) ||
            //: msg.MsgExtension == "MF:PartyChatWelMsg" ||
            msg.MsgExtension == (String(str_fromValue) + String(str_effectData)) ||
            //: msg.MsgExtension == "MF:PartyChatPrizeMsg" ||
            msg.MsgExtension == (String(str_makeName) + String(str_viewName.prefix(4)) + "eMsg") ||
            //: msg.MsgExtension == "MF:PartyChatAttentionMsg" {
            msg.MsgExtension == (String(str_textLiveData.prefix(6)) + "tyCha" + String(str_toTitle.prefix(6)) + "tion" + String(str_equalName.suffix(3)))
        {
            //: let identifier = "\(TalkingDanmuMsgTextCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            let identifier = "\(FilmToCompartmentThen.className())_\(msg.msgInfo?.messageType ?? 0)"
            //: tableView.register(TalkingDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(FilmToCompartmentThen.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? FilmToCompartmentThen
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = FilmToCompartmentThen(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(str_addValue) + String(str_atValue.suffix(4)) + "ewCell")
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = ViewBassCell(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingDanmuMsgBassCell
            return cell as! ViewBassCell
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
