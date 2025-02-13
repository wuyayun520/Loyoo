
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_enableName:[UInt8] = [0x1c,0x1b,0x1c,0x1,0x5d,0x16,0x1a,0x11,0x10,0x7,0x4f,0x5c,0x55,0x1d,0x14,0x6,0x55,0x1b,0x1a,0x1,0x55,0x17,0x10,0x10,0x1b,0x55,0x1c,0x18,0x5,0x19,0x10,0x18,0x10,0x1b,0x1,0x10,0x11]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FilmToCompartmentThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgTextCell: TalkingDanmuMsgBassCell {
class FilmToCompartmentThen: ViewBassCell {
	var saveCount: Int = 82
	var errorTitle: String = "window"
	var componentArray: [AnyHashable] = []

    var viewImageView: UIImageView?

    //: override var msgModel: TalkingLiveRoomDanmuModel {
    override var msgModel: AppModelType {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: setCell()
            colorApp()
        }
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
		if var waitHeadValue = msgModel.toUser?.uid { 
			if var listValue = msgModel.toUser?.loungePlus { 
			if let viewImageView = viewImageView {
		
		            if (viewImageView.convert(CGRect(x: 0, y: CGFloat(62), width: 0, height: 0), to: viewImageView.superview).origin.x == 66.69) && (viewImageView.convert(CGRect(x: CGFloat(0), y: CGFloat(248.97), width: CGFloat(0), height: CGFloat(87)), to: viewImageView.superview).size.height == 34.89) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let listName = ViewBarView()
		            listName.genreDestroySwitch = listValue
		            listName.voiceMagnitude = msgModel.msgHeight
		            
		            listName.premiumInterval = { [self] rowNumber in
		            self.saveCount = rowNumber
		            
		            var listName = waitHeadValue
		            listName &*= 9
		            if listName < self.saveCount {
		                self.saveCount = listName
		            }
		            
		            return self.saveCount
		            }
		            listName.indexText = { [self] writeText in
		            self.errorTitle = writeText
		            
		            var listName = self.msgModel.MsgExtension
		            listName.append("^")
		            if listName.hasSuffix(self.errorTitle) {
		                self.errorTitle = listName
		            }
		            
		            let atStar = self.errorTitle.prefix(through: self.errorTitle.index(self.errorTitle.startIndex, offsetBy: self.errorTitle.lowercased().count)).isEmpty
		            self.errorTitle.removeAll(keepingCapacity: atStar)
		            return self.errorTitle
		            }
		            listName.progressArray = { [self] reArray in
		            self.componentArray = reArray
		            
		            guard var value = self.componentArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		                viewImageView.addSubview(listName)
		            }
		
			}
		
			}
		}
	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_enableName.map{$0^117}, encoding: .utf8)!)
    }
}

//: extension TalkingDanmuMsgTextCell {
extension FilmToCompartmentThen {
    //: func setCell() {
    func colorApp() {
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
    }
}
