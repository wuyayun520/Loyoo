
//: Declare String Begin

/*: "MF:LiveChatWelMsg" :*/
fileprivate let str_noImageName:String = "MF:Limage make text"
fileprivate let str_pushIndexData:String = "content request if to labtWel"
fileprivate let str_toText:String = "Msgmodel var match"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_centerContent:String = "if var hiddenMF:P"
fileprivate let str_labValue:String = "ChatWepath block phone slide"

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_viewUpTodayData:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","P","r","i","z","e","M"]
fileprivate let str_hiddenContent:String = "stool"

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let str_sizeData:String = "manager view item pad equalMF:Par"
fileprivate let str_onValue:String = "tyChuser block time"
fileprivate let str_valueTitle:String = "izeMsgcolor guard in"

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let str_aspectData:[Character] = ["M","F",":","L","i","v","e","C","h","a","t"]
fileprivate let str_groupValue:String = "Attmodel exclusive"
fileprivate let str_behindContent:String = "entionMsgpro view to"

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let str_fromValue:[Character] = ["M","F",":","P","a"]
fileprivate let str_managerTitle:[Character] = ["r","t","y","C","h","a","t","A","t","t","e","n"]
fileprivate let str_mainData:[Character] = ["t","i","o","n","M","s","g"]

/*: ：" :*/
fileprivate let str_infoBuildText:String = "："

/*: "#BAFBFF" :*/
fileprivate let str_listName:String = "video skip to list to#BAFBFF"

/*: "uid" :*/
fileprivate let str_frameModelEmptyValue:[Character] = ["u","i","d"]

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let str_imageBackgroundData:[Character] = ["<","a","t",">","@","[","\\","S","\\"]
fileprivate let str_colorTitle:String = "s]mini invite let"
fileprivate let str_picLiveValue:String = "+?</at>by path selected add leading"

/*: "Sent " :*/
fileprivate let str_onlineData:[Character] = ["S","e","n","t"," "]

/*:  " :*/
fileprivate let str_rawName:[Character] = [" "]

/*: "#FFA4CF" :*/
fileprivate let str_modelText:String = "view pause model mode#FFA4"
fileprivate let str_viewData:[Character] = ["C","F"]

/*: "* :*/
fileprivate let str_menuData:String = "*"

/*: "Here comes " :*/
fileprivate let str_socialName:String = "Here cup return"
fileprivate let str_gestureValue:String = "true let social self addomes "

/*: "#FFE386" :*/
fileprivate let str_moreData:String = "#Ficon color view any"
fileprivate let str_nameSizeData:String = "style386"

/*:   :*/
fileprivate let str_countValue:[Character] = [" "]

/*: "followed the anchor" :*/
fileprivate let str_sessionRangeValue:[Character] = ["f","o","l","l","o","w","e","d"," ","t","h","e"," ","a"]
fileprivate let str_callPicName:String = "itemhor"

/*: "party_seat_host" :*/
fileprivate let str_fitAddData:String = "parbacky"
fileprivate let str_nearUserTitle:[Character] = ["h","o","s","t"]

/*: "level_ :*/
fileprivate let str_equalName:[Character] = ["l","e","v","e","l"]
fileprivate let str_interestedValue:String = "_"

/*: "icon_lounge" :*/
fileprivate let str_minText:[Character] = ["i","c","o","n","_","l","o","u","n","g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrintMediaReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/11.
//

//: import UIKit
import UIKit

//: typealias ActionUserBlock = (_ atUid: String?) -> Void
typealias ActionUserBlock = (_ atUid: String?) -> Void

//: class TalkingLiveRoomDammuCellData: NSObject {
class PrintMediaReactiveCompatible: NSObject {
    //: var actionUserBlock: ActionUserBlock?
    var actionUserBlock: ActionUserBlock?
    //: var longUserBlock: ActionUserBlock?
    var longUserBlock: ActionUserBlock?

    //: var model = TalkingLiveRoomDanmuModel.init()
    var model = AppModelType()

    //: func caculateMsgHeight(model: TalkingLiveRoomDanmuModel) -> TalkingLiveRoomDanmuModel {
    func imageBeTip(model: AppModelType) -> AppModelType {
        //: self.model = model
        self.model = model
        /// 普通文本消息,礼物消息
        //: if self.model.msgInfo?.messageType == 1 || self.model.msgInfo?.messageType == 2 || self.model.msgInfo?.messageType == 3 {
        if self.model.msgInfo?.messageType == 1 || self.model.msgInfo?.messageType == 2 || self.model.msgInfo?.messageType == 3 {
            //: caculateComment()
            criticizeUp()
            /// 欢迎消息
            //: } else if self.model.MsgExtension == "MF:LiveChatWelMsg" || self.model.MsgExtension == "MF:PartyChatWelMsg" {
        } else if self.model.MsgExtension == (String(str_noImageName.prefix(4)) + "iveCha" + String(str_pushIndexData.suffix(4)) + String(str_toText.prefix(3))) || self.model.MsgExtension == (String(str_centerContent.suffix(4)) + "arty" + String(str_labValue.prefix(6)) + "lMsg") {
            //: caculateWelMsg()
            submit()
            /// 中奖消息
            //: } else if self.model.MsgExtension == "MF:LiveChatPrizeMsg" || self.model.MsgExtension == "MF:PartyChatPrizeMsg" {
        } else if self.model.MsgExtension == (String(str_viewUpTodayData) + str_hiddenContent.replacingOccurrences(of: "tool", with: "g")) || self.model.MsgExtension == (String(str_sizeData.suffix(6)) + String(str_onValue.prefix(4)) + "atPr" + String(str_valueTitle.prefix(6))) {
            //: self.model.bgColor = UIColor.init(rgb: 0x8C7BFD, alpha: 0.4)
            self.model.bgColor = UIColor(rgb: 0x8C7BFD, alpha: 0.4)
            //: caculatewinningMsg()
            equalToExecute()
            /// 关注消息
            //: } else if self.model.MsgExtension == "MF:LiveChatAttentionMsg" || self.model.MsgExtension == "MF:PartyChatAttentionMsg"  {
        } else if self.model.MsgExtension == (String(str_aspectData) + String(str_groupValue.prefix(3)) + String(str_behindContent.prefix(9))) || self.model.MsgExtension == (String(str_fromValue) + String(str_managerTitle) + String(str_mainData)) {
            //: caculAttionMsg()
            technicality()
        }
        //: return self.model
        return self.model
    }

    /// 弹幕消息
    //: func caculateComment() {
    func criticizeUp() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = clearStyle()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let totalAttr = getImagesAttributedString()
        let totalAttr = getAndText()
        // 名字
        //: let firstStr = "\(self.model.user?.nickname ?? "")："
        let firstStr = "\(self.model.user?.nickname ?? "")："
        //: let nameAttr = getAttributed(text: firstStr, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let nameAttr = statusUid(text: firstStr, font: UIFont.methodPlay(fontSize: 14), color: UIColor(hex: (String(str_listName.suffix(7))))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))

        //: if self.model.msgInfo?.messageType == 1 {
        if self.model.msgInfo?.messageType == 1 {
            // 内容
            //: let content = getAttributed(text: self.model.msgInfo?.content ?? "", font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            let content = statusUid(text: self.model.msgInfo?.content ?? "", font: UIFont.methodPlay(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            //: nameAttr.append(content)
            nameAttr.append(content)

            //: } else if self.model.msgInfo?.messageType == 2 {
        } else if self.model.msgInfo?.messageType == 2 {
            //: let jumps = self.model.msgInfo?.jumps.first
            let jumps = self.model.msgInfo?.jumps.first
            //: let atUid = jumps?["uid"] as? Int ?? 0
            let atUid = jumps?[(String(str_frameModelEmptyValue))] as? Int ?? 0
            //: let text = self.model.msgInfo?.content ?? ""
            let text = self.model.msgInfo?.content ?? ""
            //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
            let regex = try! NSRegularExpression(pattern: (String(str_imageBackgroundData) + String(str_colorTitle.prefix(2)) + String(str_picLiveValue.prefix(7))), options: [])
            //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            //: let matchRange =  result.first?.range
            let matchRange = result.first?.range
            //: if  matchRange?.length ?? 0 > 9 {
            if matchRange?.length ?? 0 > 9 {
                //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 4, to: (matchRange?.length ?? 0) - 5)
                let subStr = String.transmutationTo(str: text, from: (matchRange?.location ?? 0) + 4, to: (matchRange?.length ?? 0) - 5)
                //: let contentStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.length ?? 0), to: text.utf16.count )
                let contentStr = String.transmutationTo(str: text, from: (matchRange?.length ?? 0), to: text.utf16.count)
                //: let atName = getAttributed(text: subStr, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: "\(atUid)")
                let atName = statusUid(text: subStr, font: UIFont.methodPlay(fontSize: 14), color: UIColor(hex: (String(str_listName.suffix(7))))!, isTap: true, atUid: "\(atUid)")
                //: let content = getAttributed(text: contentStr, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
                let content = statusUid(text: contentStr, font: UIFont.methodPlay(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
                //: nameAttr.append(atName)
                nameAttr.append(atName)
                //: nameAttr.append(content)
                nameAttr.append(content)
            }

            //: } else if self.model.msgInfo?.messageType == 3 {
        } else if self.model.msgInfo?.messageType == 3 {
            //: guard self.model.gift != nil else { return }
            guard self.model.gift != nil else { return }
            //: let sentAttr = getAttributed(text:  "Sent ".localized, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            let sentAttr = statusUid(text: (String(str_onlineData)).localized, font: UIFont.methodPlay(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            //: nameAttr.append(sentAttr)
            nameAttr.append(sentAttr)
            //: if let toUser = self.model.toUser {
            if let toUser = self.model.toUser { // 送礼接收人
                //: let nickNameAttr = getAttributed(text: "\(toUser.nickname) ", font: UIFont.pingfangFont(type: .Medium, fontSize: 14), color: UIColor(hex: "#FFA4CF")!, isTap: true, atUid: String(toUser.uid))
                let nickNameAttr = statusUid(text: "\(toUser.nickname) ", font: UIFont.thoughtImage(type: .Medium, fontSize: 14), color: UIColor(hex: (String(str_modelText.suffix(5)) + String(str_viewData)))!, isTap: true, atUid: String(toUser.uid))
                //: nameAttr.append(nickNameAttr)
                nameAttr.append(nickNameAttr)
            }
            //: let giftnameStr = changeGiftName(giftmodel: self.model.gift!)
            let giftnameStr = nascence(giftmodel: self.model.gift!)
            //: let giftAttr = getAttributed(text: giftnameStr, font: UIFont.pingfangFont(type: .Medium, fontSize: 14), color: UIColor(hex: "#FFA4CF")!, isTap: false, atUid: nil)
            let giftAttr = statusUid(text: giftnameStr, font: UIFont.thoughtImage(type: .Medium, fontSize: 14), color: UIColor(hex: (String(str_modelText.suffix(5)) + String(str_viewData)))!, isTap: false, atUid: nil)
            //: nameAttr.append(giftAttr)
            nameAttr.append(giftAttr)

            //: let size = CGSize(width: 24, height: 24)
            let size = CGSize(width: 24, height: 24)
            //: let imag = self.model.gift?.giftImg?.resize(with: size)
            let imag = self.model.gift?.giftImg?.brandQuality(with: size)
            //: let giftIcon = NSMutableAttributedString.yy_attachmentString(withContent: imag, contentMode: .center, attachmentSize: size, alignTo: UIFont.pingfangMediumFont(fontSize: 14), alignment: .center)
            let giftIcon = NSMutableAttributedString.yy_attachmentString(withContent: imag, contentMode: .center, attachmentSize: size, alignTo: UIFont.methodPlay(fontSize: 14), alignment: .center)
            //: giftIcon.yy_paragraphStyle = paragraphStyle()
            giftIcon.yy_paragraphStyle = clearStyle()
            //: nameAttr.append(giftIcon)
            nameAttr.append(giftIcon)

            //: let numAttr = self.getAttributed(text: "*\(self.model.gift?.num ?? 0)", font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#FFA4CF")!, isTap: false, atUid: nil)
            let numAttr = self.statusUid(text: "*\(self.model.gift?.num ?? 0)", font: UIFont.methodPlay(fontSize: 14), color: UIColor(hex: (String(str_modelText.suffix(5)) + String(str_viewData)))!, isTap: false, atUid: nil)
            //: nameAttr.append(numAttr)
            nameAttr.append(numAttr)
        }

        //: totalAttr.append(nameAttr)
        totalAttr.append(nameAttr)
        //: nameAttr.yy_paragraphStyle = paraStyle
        nameAttr.yy_paragraphStyle = paraStyle
        //: self.model.msgAttribText = totalAttr
        self.model.msgAttribText = totalAttr
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        black(attribText: self.model.msgAttribText)
    }

    /// 公告富文本
    //: func showAnnouncementMsg(model: TalkingLiveRoomDanmuModel) -> TalkingLiveRoomDanmuModel {
    func toCell(model: AppModelType) -> AppModelType {
        //: self.model = model
        self.model = model
        // 内容
        //: let paraStyle = paragraphStyle()
        let paraStyle = clearStyle()
        //: let attachText = NSMutableAttributedString.init()
        let attachText = NSMutableAttributedString()
        //: let content = getAttributed(text: self.model.msgInfo?.content ?? "", font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: false, atUid: nil)
        let content = statusUid(text: self.model.msgInfo?.content ?? "", font: UIFont.methodPlay(fontSize: 14), color: UIColor(hex: (String(str_listName.suffix(7))))!, isTap: false, atUid: nil)
        //: attachText.append(content)
        attachText.append(content)

        //: attachText.yy_paragraphStyle = paraStyle
        attachText.yy_paragraphStyle = paraStyle

        //: self.model.msgAttribText = attachText
        self.model.msgAttribText = attachText

        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        black(attribText: self.model.msgAttribText)

        //: return self.model
        return self.model
    }

    /// 欢迎消息
    //: func caculateWelMsg() {
    func submit() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = clearStyle()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let textView = getImagesAttributedString()
        let textView = getAndText()
        //: let strnor = "Here comes ".localized
        let strnor = (String(str_socialName.prefix(6)) + String(str_gestureValue.suffix(5))).localized
        //: let strc =  "\(self.model.user?.nickname ?? "")"
        let strc = "\(self.model.user?.nickname ?? "")"
        //: let content = getAttributed(text: strnor, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#FFE386")!, isTap: false, atUid: nil)
        let content = statusUid(text: strnor, font: UIFont.methodPlay(fontSize: 14), color: UIColor(hex: (String(str_moreData.prefix(2)) + str_nameSizeData.replacingOccurrences(of: "style", with: "FE")))!, isTap: false, atUid: nil)
        //: let attachText = getAttributed(text: strc, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let attachText = statusUid(text: strc, font: UIFont.methodPlay(fontSize: 14), color: UIColor(hex: (String(str_listName.suffix(7))))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: textView.append(content)
        textView.append(content)
        //: textView.append(attachText)
        textView.append(attachText)
        //: self.model.msgAttribText = textView
        self.model.msgAttribText = textView
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        black(attribText: self.model.msgAttribText)
    }

    /// 中奖消息
    //: func caculatewinningMsg() {
    func equalToExecute() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = clearStyle()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let textView = getImagesAttributedString()
        let textView = getAndText()
        // 内容
        //: let firstStr = "\(self.model.user?.nickname ?? "") \(self.model.msgInfo?.content ?? "")"
        let firstStr = "\(self.model.user?.nickname ?? "") \(self.model.msgInfo?.content ?? "")"
        //: let content = getAttributed(text: firstStr, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.white, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let content = statusUid(text: firstStr, font: UIFont.methodPlay(fontSize: 14), color: UIColor.white, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: textView.append(content)
        textView.append(content)
        //: self.model.msgAttribText = textView
        self.model.msgAttribText = textView
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        black(attribText: self.model.msgAttribText)
    }

    /// 关注消息
    //: func caculAttionMsg() {
    func technicality() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = clearStyle()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let attachText = NSMutableAttributedString()
        let attachText = NSMutableAttributedString()
        // 内容
        //: let strnor = "followed the anchor".localized
        let strnor = (String(str_sessionRangeValue) + str_callPicName.replacingOccurrences(of: "item", with: "nc")).localized
        //: let strc =  "\(self.model.user?.nickname ?? "") "
        let strc = "\(self.model.user?.nickname ?? "") "
        //: let content = getAttributed(text: strnor, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
        let content = statusUid(text: strnor, font: UIFont.methodPlay(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
        //: let nameText = getAttributed(text: strc, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let nameText = statusUid(text: strc, font: UIFont.methodPlay(fontSize: 14), color: UIColor(hex: (String(str_listName.suffix(7))))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: attachText.append(nameText)
        attachText.append(nameText)
        //: attachText.append(content)
        attachText.append(content)
        //: self.model.msgAttribText = attachText
        self.model.msgAttribText = attachText
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        black(attribText: self.model.msgAttribText)
    }

    //: func paragraphStyle()-> NSMutableParagraphStyle {
    func clearStyle() -> NSMutableParagraphStyle {
        //: let paraStyle = NSMutableParagraphStyle.init()
        let paraStyle = NSMutableParagraphStyle()
        //: paraStyle.lineSpacing = 0.0
        paraStyle.lineSpacing = 0.0 // 行间距
        //: paraStyle.alignment = .left
        paraStyle.alignment = .left
        //: paraStyle.baseWritingDirection = .leftToRight
        paraStyle.baseWritingDirection = .leftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: paraStyle.baseWritingDirection = .rightToLeft
            paraStyle.baseWritingDirection = .rightToLeft
            //: paraStyle.alignment = .right
            paraStyle.alignment = .right
        }

        //: return paraStyle
        return paraStyle
    }

    /**
     字符串生成富文本
     @param isTap 是否添加点击事件
     */
    //: func getAttributed(text: String, font: UIFont, color: UIColor, isTap: Bool, atUid: String?) -> NSMutableAttributedString {
    func statusUid(text: String, font: UIFont, color: UIColor, isTap: Bool, atUid: String?) -> NSMutableAttributedString {
        //: let attribute = NSMutableAttributedString.init(string: text)
        let attribute = NSMutableAttributedString(string: text)
        //: attribute.yy_font = font
        attribute.yy_font = font
        //: attribute.yy_color = color
        attribute.yy_color = color
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
//            attribute.yy_writingDirection = [3]
            //: } else {
        } else {
            //: attribute.yy_baseWritingDirection = .leftToRight
            attribute.yy_baseWritingDirection = .leftToRight
        }
        //: attribute.yy_paragraphStyle = paragraphStyle()
        attribute.yy_paragraphStyle = clearStyle()

        //: if isTap == true {
        if isTap == true {
            //: guard text.count > 0 else {
            guard text.count > 0 else {
                //: return NSMutableAttributedString.init()
                return NSMutableAttributedString()
            }
            //: let range = NSRange(location: 0, length: text.count)
            let range = NSRange(location: 0, length: text.count)
            //: attribute.yy_setTextHighlight(range, color: color, backgroundColor: .clear, userInfo: nil) {  containerView, text, range, rect in
            attribute.yy_setTextHighlight(range, color: color, backgroundColor: .clear, userInfo: nil) { _, _, _, _ in
                //: if self.actionUserBlock != nil {
                if self.actionUserBlock != nil {
                    //: self.actionUserBlock!(atUid)
                    self.actionUserBlock!(atUid)
                }
                //: } longPressAction: { containerView, text, range, rect in
            } longPressAction: { _, _, _, _ in
                /// 不能@自己
                //: if atUid != MeasurementAppManager.share.loginUserMode.userID {
                if atUid != MeasurementAppManager.share.loginUserMode.userID {
                    //: if self.longUserBlock != nil {
                    if self.longUserBlock != nil {
                        //: self.longUserBlock!(atUid)
                        self.longUserBlock!(atUid)
                    }
                }
            }
        }

        //: return attribute
        return attribute
    }

    /// 获取cell高度
    //: func YYTextLayoutSize(attribText: NSMutableAttributedString) {
    func black(attribText: NSMutableAttributedString) {
        // 距离左边8  距离右边也为8
        //: let maxWidth = MsgTableViewWidth - 16
        let maxWidth = a_giftText - 16

        //: let layout = YYTextLayout.init(containerSize: CGSize(width: maxWidth, height: CGFloat(MAXFLOAT)), text: attribText)
        let layout = YYTextLayout(containerSize: CGSize(width: maxWidth, height: CGFloat(MAXFLOAT)), text: attribText)
        //: let layoutSize = layout?.textBoundingRect.size ?? .zero
        let layoutSize = layout?.textBoundingRect.size ?? .zero
        //: var size = CGSize(width: ceil(layoutSize.width), height: ceil(layoutSize.height))
        var size = CGSize(width: ceil(layoutSize.width), height: ceil(layoutSize.height))

        //: if  size.height < 28 {
        if size.height < 28 {
            //: size.height = 28
            size.height = 28
            //: } else {
        } else {
            // 再加上6=文字距离上下的间距
            //: size.height += 6
            size.height += 6
        }

        //: self.model.msgHeight = Double(size.height)
        self.model.msgHeight = Double(size.height)
        //: self.model.msgWidth = Double(size.width)
        self.model.msgWidth = Double(size.width)
    }

    //: private func changeGiftName(giftmodel: TalkingGiftMsgAnimatModel) -> String {
    private func nascence(giftmodel: EventHandyJSON) -> String {
        //: var gameName = giftmodel.pname
        var gameName = giftmodel.pname
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.en.rawValue {
        if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.en.rawValue {
            //: gameName = giftmodel.nameI18n.en
            gameName = giftmodel.nameI18n.en
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        } else if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.ar.rawValue {
            //: gameName = giftmodel.nameI18n.ar
            gameName = giftmodel.nameI18n.ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.es.rawValue {
            //: gameName = giftmodel.nameI18n.es
            gameName = giftmodel.nameI18n.es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.pt.rawValue {
            //: gameName = giftmodel.nameI18n.pt
            gameName = giftmodel.nameI18n.pt
        }
        //: return gameName
        return gameName
    }
}

// MARK: - 弹幕消息拼接图片

//: extension TalkingLiveRoomDammuCellData {
extension PrintMediaReactiveCompatible {
    /// 获取弹幕富文本图片
    //: func getImagesAttributedString() -> NSMutableAttributedString {
    func getAndText() -> NSMutableAttributedString {
        //: let mAttrStr = NSMutableAttributedString(string: "")
        let mAttrStr = NSMutableAttributedString(string: "")
        // 语聊房房主
        //: if TalkingVoiceRoomManager.shared().isParty, model.user?.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid {
        if ImageToThen.labelShared().isParty, model.user?.uid == ImageToThen.labelShared().partyModel.streamerInfo.uid {
            //: let hostImgV = UIImageView()
            let hostImgV = UIImageView()
            //: hostImgV.size = CGSize(width: 16, height: 16)
            hostImgV.size = CGSize(width: 16, height: 16)
            //: hostImgV.image = UIImage.outsideText(name: "party_seat_host")
            hostImgV.image = UIImage.outsideText(name: (str_fitAddData.replacingOccurrences(of: "back", with: "t") + "_seat_" + String(str_nearUserTitle)))
            //: let hostAttr = getAttachText(imageView: hostImgV)
            let hostAttr = beyondFile(imageView: hostImgV)
            //: mAttrStr.append(hostAttr)
            mAttrStr.append(hostAttr)
            //: mAttrStr.append(NSAttributedString.init(string: " "))
            mAttrStr.append(NSAttributedString(string: " "))
        }

        // 等级
        //: let levelImgV = UIImageView()
        let levelImgV = UIImageView()
        //: levelImgV.size = CGSize(width: 35, height: 16)
        levelImgV.size = CGSize(width: 35, height: 16)
        //: levelImgV.image = UIImage.outsideText(name: "level_\(self.model.user?.level ?? 1)")
        levelImgV.image = UIImage.outsideText(name: (String(str_equalName) + str_interestedValue.capitalized) + "\(self.model.user?.level ?? 1)")
        //: let levelAttr = getAttachText(imageView: levelImgV)
        let levelAttr = beyondFile(imageView: levelImgV)
        //: mAttrStr.append(levelAttr)
        mAttrStr.append(levelAttr)
        //: mAttrStr.append(NSAttributedString.init(string: " "))
        mAttrStr.append(NSAttributedString(string: " "))

        // 会员
        //: if self.model.user?.loungePlus == true {
        if self.model.user?.loungePlus == true {
            //: let vipImgV = UIImageView()
            let vipImgV = UIImageView()
            //: vipImgV.size = CGSize(width: 16, height: 16)
            vipImgV.size = CGSize(width: 16, height: 16)
            //: vipImgV.image = UIImage.outsideText(name: "icon_lounge")
            vipImgV.image = UIImage.outsideText(name: (String(str_minText)))
            //: let vipAttr = getAttachText(imageView: vipImgV)
            let vipAttr = beyondFile(imageView: vipImgV)
            //: mAttrStr.append(vipAttr)
            mAttrStr.append(vipAttr)
            //: mAttrStr.append(NSAttributedString.init(string: " "))
            mAttrStr.append(NSAttributedString(string: " "))
        }
        //: return mAttrStr
        return mAttrStr
    }

    // 图片、view生成富文本
    //: func getAttachText(imageView: UIImageView) -> NSMutableAttributedString {
    func beyondFile(imageView: UIImageView) -> NSMutableAttributedString {
        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView.image, contentMode: .scaleToFill, attachmentSize: imageView.size, alignTo: UIFont.pingfangRugularFont(fontSize: 12), alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView.image, contentMode: .scaleToFill, attachmentSize: imageView.size, alignTo: UIFont.drogueSize(fontSize: 12), alignment: .center)
        //: attachText.yy_paragraphStyle = paragraphStyle()
        attachText.yy_paragraphStyle = clearStyle()
        //: return attachText
        return attachText
    }
}
