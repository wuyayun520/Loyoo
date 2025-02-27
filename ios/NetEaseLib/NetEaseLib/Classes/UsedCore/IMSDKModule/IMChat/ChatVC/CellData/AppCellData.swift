
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let str_detailInsertText:String = "bg_tframe top"
fileprivate let str_colorName:String = "emodel"

/*: "bg_talk_me" :*/
fileprivate let str_imageEditText:[Character] = ["b","g"]
fileprivate let str_kindData:String = "will self activity_talk_me"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_userValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: TUIMessageCellData {
@objcMembers public class AppCellData: TUIMessageCellData {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.equivalence(name: (String(str_detailInsertText.prefix(4)) + "alk_oth" + str_colorName.replacingOccurrences(of: "model", with: "r")))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.equivalence(name: (String(str_imageEditText) + String(str_kindData.suffix(8))))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_userValue, encoding: .utf8)!)
    }
}
