
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_underData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "[未知消息]" :*/
fileprivate let str_addData:String = "[未知消info"
fileprivate let str_tableContent:String = "make"

/*: "extra" :*/
fileprivate let str_viewValue:[Character] = ["e","x","t","r","a"]

/*: "rYMsgType" :*/
fileprivate let str_downTagName:String = "rYMsgTyimage type"
fileprivate let str_makeTipName:String = "PE"

/*: "GJ:CallCustom" :*/
fileprivate let str_plusEqualName:String = "GJ:Calmodel view business model"
fileprivate let str_analyzeText:[Character] = ["t","o","m"]

/*: "stopCall" :*/
fileprivate let str_signatureContent:[Character] = ["s","t","o","p","C"]
fileprivate let str_firstValue:String = "arawraw"

/*: "#FF5A4D" :*/
fileprivate let str_toolValue:String = "#FF5A4Dstring array background let to"

/*: "msgInfo" :*/
fileprivate let str_attributeFrameHiddenValue:[Character] = ["m","s","g","I","n","f","o"]

/*: "logType" :*/
fileprivate let str_targetValue:String = "case data info bottom viewlogType"

/*: "  " :*/
fileprivate let str_giftValue:String = "  "

/*: "jumps" :*/
fileprivate let str_picUpArrayData:[Character] = ["j","u","m","p","s"]

/*: "jumpKey" :*/
fileprivate let str_renderImageValue:[Character] = ["j","u","m","p","K","e","y"]

/*: "chat_video_me" :*/
fileprivate let str_closeTitle:[UInt8] = [0x63,0x68,0x61,0x74,0x5f,0x76,0x69,0x64,0x65,0x6f,0x5f,0x6d,0x65]

/*: "chat_voice_me" :*/
fileprivate let str_targetName:String = "chamessage"
fileprivate let str_minValue:String = "image ofe_me"

/*: "chat_video_call" :*/
fileprivate let str_afterName:[UInt8] = [0x63,0x68,0x61,0x74,0x5f,0x76,0x69,0x64,0x65,0x6f,0x5f,0x63,0x61,0x6c,0x6c]

/*: "chat_voice_call" :*/
fileprivate let str_imageName:String = "chat_vlist make"
fileprivate let str_cellRoomCallValue:String = "transaction"

/*: "chat_video_cancel" :*/
fileprivate let str_voiceErrorTitle:[UInt8] = [0x63,0x68,0x61,0x74,0x5f,0x76,0x69,0x64,0x65,0x6f,0x5f,0x63,0x61,0x6e,0x63,0x65,0x6c]

/*: "chat_voice_cancel" :*/
fileprivate let str_lockPhotoValue:String = "chat_let path"
fileprivate let str_dataFullTitle:String = "_canavailable equal in greet class"
fileprivate let str_barData:[Character] = ["c","e","l"]

/*: "#16D073" :*/
fileprivate let str_bottomTableMarkContent:String = "data manager to for video#16D073"

/*: "#F95644" :*/
fileprivate let str_modelValue:String = "key type let row#F9564"
fileprivate let str_makeTitle:String = "4"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class OfCellData: TalkingChatMsgBaseCellData {
@objcMembers public class OfCellData: AppCellData {
	var viewMobileSum: Double = 56.2
	var moreDictionary: [AnyHashable: String] = [:]

    //: var textColor: UIColor?
    var textColor: UIColor?
    //: let textFont = UIFont.pingfangRugularFont(fontSize: 16)
    let textFont = UIFont.drogueSize(fontSize: 16)
    //: var textSize = CGSize.zero
    var textSize = CGSize.zero
    //: var textOrigin = CGPoint.zero
    var textOrigin = CGPoint.zero
    //: var quoteSize = CGSize.zero
    var quoteSize = CGSize.zero

    //: var transTextSize = CGSize.zero
    var transTextSize = CGSize.zero
    //: var isVoiceVideo = false
    var isVoiceVideo = false
    /// 获取翻译内容富文本（get）
    //: var transAttrString: NSMutableAttributedString {
    var transAttrString: NSMutableAttributedString {
        //: let attr = formatTextTransMsgString()
        let attr = opticalSphere()
        //: return attr
        return attr
    }

    //: @objc public var hasJump = false
    public var hasJump = false
    //: @objc public var contentStr: String?
    public var contentStr: String?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: textColor = UIColor.appTitleColor()
            textColor = UIColor.blockOf()
            //: } else {
        } else {
            //: textColor = UIColor.white
            textColor = UIColor.white
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_underData, encoding: .utf8)!)
    }

    //: public override var msgModel: ConfinementModel {
    override public var msgModel: ConfinementModel {
        //: get {
        get {
            //: return super.msgModel
            return super.msgModel
        }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: if newValue.msgInfo.content.isEmptyString {
            if newValue.msgInfo.content.isEmptyString {
                //: contentStr = "[未知消息]"
                contentStr = (str_addData.replacingOccurrences(of: "info", with: "息") + str_tableContent.replacingOccurrences(of: "make", with: "]"))
                //: } else {
            } else {
                //: contentStr = newValue.msgInfo.content
                contentStr = newValue.msgInfo.content
            }
        }
    }

    //: public override func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: let maxWidth = ScreenWidth - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        let maxWidth = a_blockValue - (25 + self.cellLayout.avatarSize.width) * 2 - 44

        //: if self.msgModel.quoteMsgInfo.isQuoteMsg() {
        if self.msgModel.quoteMsgInfo.originMsg() {
            //: self.quoteSize = self.msgModel.quoteMsgInfo.quoteSize(Int(maxWidth - 20))
            self.quoteSize = self.msgModel.quoteMsgInfo.object(Int(maxWidth - 20))
        }

        //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        //: let yySize = yyLayout?.textBoundingSize ?? .zero
        let yySize = yyLayout?.textBoundingSize ?? .zero
        //: var temTextSize = CGSize(width:  ceil(yySize.width), height: ceil(yySize.height))
        var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        //: self.textSize = temTextSize
        self.textSize = temTextSize

        //: self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6:0))
        self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0))

        //: if self.translateStatus != .MsgTranslate_init {
        if self.translateStatus != .MsgTranslate_init {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth-20, height: CGFLOAT_MAX), text: self.transAttrString)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.transAttrString)
            //: let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            //: self.transTextSize = transTextSize
            self.transTextSize = transTextSize
        }

        //: temTextSize.width = max(temTextSize.width, self.quoteSize.width)
        temTextSize.width = max(temTextSize.width, self.quoteSize.width)

        //: temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height +  (self.quoteSize.height > 0 ? 6:0)
        temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0)
        //: temTextSize.width += self.cellLayout.bubbleInsets.left+self.cellLayout.bubbleInsets.right
        temTextSize.width += self.cellLayout.bubbleInsets.left + self.cellLayout.bubbleInsets.right

        //: return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
        return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
    }

    //: public override func height(ofWidth width: CGFloat) -> CGFloat {
    override public func height(ofWidth _: CGFloat) -> CGFloat {
        //: var cellHeight = self.cellLayout.messageInsets.top
        var cellHeight = self.cellLayout.messageInsets.top // 气泡与顶部的距离

        //: let containerSize = self.contentSize()
        let containerSize = self.contentSize() // 实际气泡的高度
        //: cellHeight += containerSize.height
        cellHeight += containerSize.height
        //: cellHeight += self.cellLayout.messageInsets.bottom
        cellHeight += self.cellLayout.messageInsets.bottom // 气泡与底部的距离

        //: if self.transTextSize.height > 0 {
        if self.transTextSize.height > 0 {
            //: cellHeight += (self.transTextSize.height + 10)
            cellHeight += (self.transTextSize.height + 10)
        }

        //: if self.msgIncome > 0 {
        if self.msgIncome > 0 { // 有收益
            //: cellHeight += 15
            cellHeight += 15
        }
        // 判断是否展示未回复付费消息提示
        //: if TalkingPrivateChatManager.needShowReplyTipsMessage(self.direction,
        if PrivateThen.allView(self.direction,
                                             //: msgType: self.messageType,
                                             msgType: self.messageType,
                                             //: msgTime: self.innerMessage.timestamp) {
                                             msgTime: self.innerMessage.timestamp)
        {
            //: cellHeight += 20
            cellHeight += 20
        }

        //: return max(65, cellHeight)
        return max(65, cellHeight)
    }

    //: public lazy var contentAttrString: NSMutableAttributedString = {
    public lazy var contentAttrString: NSMutableAttributedString = {
        //: let attr = formatTextMsgString(msgInfoModel: self.msgModel.msgInfo)
        let attr = toText(msgInfoModel: self.msgModel.msgInfo)
        //: return attr
        return attr
        //: }()
    }()

    //: func formatTextMsgString(msgInfoModel: AbTalkingChatMsgInfoModel) -> NSMutableAttributedString {
    func toText(msgInfoModel: FactJsonModel) -> NSMutableAttributedString {
        //: if msgInfoModel.content.isEmptyString {
        if msgInfoModel.content.isEmptyString {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        //: let dic = TUIMsgChatManager.parseTXMessageData(data: self.innerMessage.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: self.innerMessage.customElem.data)
        //: guard let extraDic = dic["extra"] as? Dictionary<String, Any> else {
        guard let extraDic = dic[(String(str_viewValue))] as? [String: Any] else {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        // 创建富文本
        //: let attributes: [NSAttributedString.Key: Any] = [
        let attributes: [NSAttributedString.Key: Any] = [
            //: .font: UIFont.pingfangRugularFont(fontSize: 16),
            .font: UIFont.drogueSize(fontSize: 16),
            //: .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.appTitleColor() : UIColor.white
            .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.blockOf() : UIColor.white,
        ]
        //: let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)
        let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)

        // 音视频通话更改颜色
        //: if self.direction == .MsgDirectionIncoming &&
        if self.direction == .MsgDirectionIncoming &&
            //: dic["rYMsgType"] as? String == "GJ:CallCustom" &&
            dic[(String(str_downTagName.prefix(7)) + str_makeTipName.lowercased())] as? String == (String(str_plusEqualName.prefix(6)) + "lCus" + String(str_analyzeText)) &&
            //: msgInfoModel.callCmd != "stopCall" {
            msgInfoModel.callCmd != (String(str_signatureContent) + str_firstValue.replacingOccurrences(of: "raw", with: "l"))
        {
            //: attr.addAttribute(.foregroundColor, value: UIColor(hex: "#FF5A4D")!, range: NSRange(location: 0, length: attr.length))
            attr.addAttribute(.foregroundColor, value: UIColor(hex: (String(str_toolValue.prefix(7))))!, range: NSRange(location: 0, length: attr.length))
        }

        // 音视频通话添加icon
        //: if  dic["rYMsgType"] as? String == "GJ:CallCustom" {
        if dic[(String(str_downTagName.prefix(7)) + str_makeTipName.lowercased())] as? String == (String(str_plusEqualName.prefix(6)) + "lCus" + String(str_analyzeText)) {
            //: isVoiceVideo = true
            isVoiceVideo = true
            //: var isVideoChat = true
            var isVideoChat = true
            //: let extraDic = dic["extra"] as? Dictionary<String, Any> ??  Dictionary<String, Any>.init()
            let extraDic = dic[(String(str_viewValue))] as? [String: Any] ?? Dictionary<String, Any>.init()
            //: let extraJson = JSON(extraDic)
            let extraJson = JSON(extraDic)
            //: if extraJson["msgInfo"]["logType"].intValue == 1 {
            if extraJson[(String(str_attributeFrameHiddenValue))][(String(str_targetValue.suffix(7)))].intValue == 1 {
                //: isVideoChat = false
                isVideoChat = false
            }
            //: let callImgAttr = self.getCallImageAttributedString(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            let callImgAttr = self.beakChat(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            //: let spaceAttr = NSMutableAttributedString.init(string: "  ")
            let spaceAttr = NSMutableAttributedString(string: "  ")
            //: attr.insert(spaceAttr, at: 0)
            attr.insert(spaceAttr, at: 0)
            //: attr.insert(callImgAttr, at: 0)
            attr.insert(callImgAttr, at: 0)
        }

        //: if extraDic.keys.contains("jumps") {
        if extraDic.keys.contains((String(str_picUpArrayData))) {
            //: hasJump = true
            hasJump = true
        }
        //: if extraDic.keys.contains("jumpKey") {
        if extraDic.keys.contains((String(str_renderImageValue))) {
            //: hasJump = true
            hasJump = true
        }

        //: return attr
        return attr
    }

    //: func getCallImageAttributedString(msgInfoModel: AbTalkingChatMsgInfoModel, isVideoChat: Bool) -> NSMutableAttributedString {
    func beakChat(msgInfoModel: FactJsonModel, isVideoChat: Bool) -> NSMutableAttributedString {
        //: let callImgView = UIImageView.init()
        let callImgView = UIImageView()
        //: callImgView.size = CGSize(width: 22, height: 17)
        callImgView.size = CGSize(width: 22, height: 17)
        //: callImgView.contentMode = .scaleAspectFit
        callImgView.contentMode = .scaleAspectFit
        //: var imgStr = isVideoChat ? "chat_video_me" : "chat_voice_me"
        var imgStr = isVideoChat ? String(bytes: str_closeTitle, encoding: .utf8)! : (str_targetName.replacingOccurrences(of: "message", with: "t") + "_voic" + String(str_minValue.suffix(4)))

        //: if self.direction == .MsgDirectionIncoming {
        if self.direction == .MsgDirectionIncoming {
            //: if msgInfoModel.callCmd == "stopCall" {
            if msgInfoModel.callCmd == (String(str_signatureContent) + str_firstValue.replacingOccurrences(of: "raw", with: "l")) {
                //: imgStr = isVideoChat ?"chat_video_call":"chat_voice_call"
                imgStr = isVideoChat ?String(bytes: str_afterName, encoding: .utf8)! : (String(str_imageName.prefix(6)) + "oice_ca" + str_cellRoomCallValue.replacingOccurrences(of: "transaction", with: "ll"))
                //: } else {
            } else {
                //: imgStr = isVideoChat ?"chat_video_cancel":"chat_voice_cancel"
                imgStr = isVideoChat ?String(bytes: str_voiceErrorTitle, encoding: .utf8)! : (String(str_lockPhotoValue.prefix(5)) + "voice" + String(str_dataFullTitle.prefix(4)) + String(str_barData))
            }
        }
        //: callImgView.image = UIImage.outsideText(name: imgStr)
        callImgView.image = UIImage.outsideText(name: imgStr)

        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.pingfangRugularFont(fontSize: 17), alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.drogueSize(fontSize: 17), alignment: .center)

        //: return attachText
        
            if (callImgView.preservesSuperviewLayoutMargins) && (callImgView.layer.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let resultModify = UpCommentView()
            resultModify.beautyOpen = hasJump

            
            resultModify.requestTotal = { [self] cornerCount in
            self.viewMobileSum = cornerCount
            
            return self.viewMobileSum
            }
            resultModify.viewDictionary = { [self] playerDictionary in
            self.moreDictionary = playerDictionary
            
            guard var value = self.moreDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                callImgView.addSubview(resultModify)
            }

		return attachText
    }

    //: func formatTextTransMsgString() -> NSMutableAttributedString {
    func opticalSphere() -> NSMutableAttributedString {
        //: let tempText = self.translatedContent
        let tempText = self.translatedContent
        //: let transAttrStr = NSMutableAttributedString.init(string: tempText)
        let transAttrStr = NSMutableAttributedString(string: tempText)

        //: let paragraphStyle = NSMutableParagraphStyle.init()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment = .left
        paragraphStyle.alignment = .left

        //: var color = UIColor(hex: "#16D073")!
        var color = UIColor(hex: (String(str_bottomTableMarkContent.suffix(7))))!
        //: if self.translateStatus == .MsgTranslate_fail {
        if self.translateStatus == .MsgTranslate_fail {
            //: color = UIColor(hex: "#F95644")!
            color = UIColor(hex: (String(str_modelValue.suffix(6)) + str_makeTitle.capitalized))!
        }
        //: transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.pingfangRugularFont(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.drogueSize(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        //: return transAttrStr
        return transAttrStr
    }
}
