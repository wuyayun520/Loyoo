
//: Declare String Begin

/*: "Free" :*/
fileprivate let str_leadingName:String = "Freelabel voice manager gift"

/*: " Free 1min" :*/
fileprivate let str_viewTitle:[Character] = [" ","F","r","e","e"," ","1","m","i","n"]

/*: "Video Call" :*/
fileprivate let str_numberTitle:[Character] = ["V","i","d","e","o"," ","C","a","l","l"]

/*: "icon_video_bd" :*/
fileprivate let str_modeText:String = "icon_vguard tool on return"
fileprivate let str_frameName:String = "popular hidden self app case_bd"

/*: "\n %@/min" :*/
fileprivate let str_sizeText:[Character] = ["\n"]
fileprivate let str_mValue:String = " %@/minlet corner object content"

/*: "icon_coin_pre" :*/
fileprivate let str_beginViewData:String = "image self wood block cellicon_coi"
fileprivate let str_refuseValueProceedTitle:[Character] = ["n","_","p","r","e"]

/*: "\n %@ %@/min" :*/
fileprivate let str_showName:[Character] = ["\n"]
fileprivate let str_toValue:[Character] = [" ","%","@"," ","%","@","/","m","i","n"]

/*: "%@/min" :*/
fileprivate let str_imageData:String = "manager"
fileprivate let str_transformTitle:String = "@/minposition gift app succeed"

/*: "#D8D8D8" :*/
fileprivate let str_indexName:[Character] = ["#","D","8","D","8"]
fileprivate let str_actualData:[Character] = ["D","8"]

/*: "Free 1 min" :*/
fileprivate let str_normalName:[Character] = ["F","r","e","e"," ","1"," ","m","i"]
fileprivate let str_titleBlockData:String = "lab"

/*: "%@ Coins/min" :*/
fileprivate let str_equalSubmitTitle:String = "background new menu medium to%@ Coins"
fileprivate let str_lastName:String = "live channel/min"

/*: "%@ Gold coins / Min" :*/
fileprivate let str_colorName:String = "%@ Gold cell equal show outside view"
fileprivate let str_blockText:String = "ckit"
fileprivate let str_rowValue:String = "text data color atins "

/*: "Video Call (%@ Coins/min)" :*/
fileprivate let str_positionTitle:String = "to direction backgroundVideo"
fileprivate let str_bullData:String = "l (%mode if as face var"
fileprivate let str_responseRankName:String = "in layer model index views/min)"

/*: "Voice Call" :*/
fileprivate let str_pointName:[Character] = ["V","o","i","c","e"," ","C","a","l","l"]

/*: "Voice Call (%@ Coins/min)" :*/
fileprivate let str_viewData:String = "Voicview return"
fileprivate let str_carryName:String = "view player%@ Coin"
fileprivate let str_frameValue:String = "return bombs/min)"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PriceStrExtension.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import Foundation
import Foundation

//: extension String {
extension String {
    //: static func setPriceStr(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0)-> NSMutableAttributedString {
    static func makeFee(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0) -> NSMutableAttributedString {
        //: if MeasurementAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if MeasurementAppManager.share.appStatus == LabCustomReflectable.special.rawValue {
            //: return NSMutableAttributedString.init(string: "Free".localized)
            return NSMutableAttributedString(string: (String(str_leadingName.prefix(4))).localized)
            //: } else if freeCallTimes > 0 || fee == 0 {
        } else if freeCallTimes > 0 || fee == 0 {
            //: var text = ""
            var text = ""
            //: if fee == 0 {
            if fee == 0 {
                //: text = "Free".localized
                text = (String(str_leadingName.prefix(4))).localized
                //: } else {
            } else {
                //: if callBtnStyle == 1 {
                if callBtnStyle == 1 {
                    //: text = " Free 1min".localized
                    text = (String(str_viewTitle)).localized
                    //: } else {
                } else {
                    //: text = "Video Call".localized
                    text = (String(str_numberTitle)).localized
                }
            }
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.thoughtImage(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.outsideText(name: "icon_video_bd")
            attach.image = UIImage.outsideText(name: (String(str_modeText.prefix(6)) + "ideo" + String(str_frameName.suffix(3))))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)
            //: return attrS
            return attrS

            //: } else if fee != 0 || originalFee != 0 {
        } else if fee != 0 || originalFee != 0 {
            //: let text = "Video Call".localized
            let text = (String(str_numberTitle)).localized
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.thoughtImage(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.outsideText(name: "icon_video_bd")
            attach.image = UIImage.outsideText(name: (String(str_modeText.prefix(6)) + "ideo" + String(str_frameName.suffix(3))))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)

            //: if fee == originalFee {
            if fee == originalFee {
                //: let feetext = "\n %@/min".localizedArguments(fee)
                let feetext = (String(str_sizeText) + String(str_mValue.prefix(7))).random(fee)
                //: let feetattrS = NSMutableAttributedString(string: feetext)
                let feetattrS = NSMutableAttributedString(string: feetext)
                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.outsideText(name: "icon_coin_pre")
                attach2.image = UIImage.outsideText(name: (String(str_beginViewData.suffix(8)) + String(str_refuseValueProceedTitle)))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: feetattrS.insert(attachImage2, at: 1)
                feetattrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.thoughtImage(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count-1))
                feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count - 1))
                //: attrS.insert(feetattrS, at: text.count+1)
                attrS.insert(feetattrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                //: return attrS
                return attrS
                //: } else {
            } else {
                //: let ptext = "\n %@ %@/min".localizedArguments(fee, originalFee)
                let ptext = (String(str_showName) + String(str_toValue)).random(fee, originalFee)
                //: let newAttrS = NSMutableAttributedString(string: ptext)
                let newAttrS = NSMutableAttributedString(string: ptext)

                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.outsideText(name: "icon_coin_pre")
                attach2.image = UIImage.outsideText(name: (String(str_beginViewData.suffix(8)) + String(str_refuseValueProceedTitle)))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: newAttrS.insert(attachImage2, at: 1)
                newAttrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.thoughtImage(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count-1))
                newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count - 1))
                //: let originalFeemin = "%@/min".localizedArguments(originalFee)
                let originalFeemin = (str_imageData.replacingOccurrences(of: "manager", with: "%") + String(str_transformTitle.prefix(5))).random(originalFee)
                //: let range: Range = ptext.range(of: originalFeemin)!
                let range: Range = ptext.range(of: originalFeemin)!
                //: let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound )
                let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound)
                //: let attributes2 = [.foregroundColor: UIColor.init(hex: "#D8D8D8")!, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes2 = [.foregroundColor: UIColor(hex: (String(str_indexName) + String(str_actualData)))!, .font: UIFont.thoughtImage(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes2, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttributes(attributes2, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: attrS.insert(newAttrS, at: text.count+1)
                attrS.insert(newAttrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                //: return attrS
                return attrS
            }
        }
        //: return NSMutableAttributedString.init()
        return NSMutableAttributedString()
    }

    /// 免费1分钟通话结束弹窗
    /// - Parameters:
    ///   - originalFee: 原价
    ///   - vipFee: VIP价格（0：执行原价逻辑）
    /// - Returns: string
    //: static func setFreeStopPriceStr(originalFee: Int, vipFee: Int = 0) -> String {
    static func nowadaysCenter(originalFee: Int, vipFee: Int = 0) -> String {
        //: guard MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue else {
            //: return "Video Call".localized
            return (String(str_numberTitle)).localized
        }
        //: if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 {
        if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 {
            //: if MeasurementAppManager.share.appUserConfigMode.callBtnStyle == 1 {
            if MeasurementAppManager.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(str_normalName) + str_titleBlockData.replacingOccurrences(of: "lab", with: "n")).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(str_numberTitle)).localized
            }
            //: } else {
        } else {
            //: if vipFee > 0 {
            if vipFee > 0 {
                //: return "%@ Coins/min".localizedArguments(vipFee)
                return (String(str_equalSubmitTitle.suffix(8)) + String(str_lastName.suffix(4))).random(vipFee)
                //: } else {
            } else {
                //: return  "%@ Gold coins / Min".localizedArguments(originalFee)
                return (String(str_colorName.prefix(8)) + str_blockText.replacingOccurrences(of: "kit", with: "o") + String(str_rowValue.suffix(4)) + "/ Min").random(originalFee)
            }
        }
    }

    /// 视频通话价格
    //: static func setVideoPriceStr(VideoPrice: Int) -> NSMutableAttributedString {
    static func scanPrice(VideoPrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = UpMarkContentConvertible.nor
        //: if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 && MeasurementAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 && MeasurementAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if MeasurementAppManager.share.appUserConfigMode.callBtnStyle == 1 {
            if MeasurementAppManager.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(str_normalName) + str_titleBlockData.replacingOccurrences(of: "lab", with: "n")).localized
                //: } else {
            } else {
                //: text = "Video Call".localized
                text = (String(str_numberTitle)).localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.blockOf(), .font: UIFont.thoughtImage(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VideoCall = "Video Call".localized
            let VideoCall = (String(str_numberTitle)).localized
            //: let videoStr = "Video Call (%@ Coins/min)".localizedArguments(VideoPrice)
            let videoStr = (String(str_positionTitle.suffix(5)) + " Cal" + String(str_bullData.prefix(4)) + "@ Coin" + String(str_responseRankName.suffix(6))).random(VideoPrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.blockOf(), .font: UIFont.thoughtImage(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.offt(), .font: UIFont.thoughtImage(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length-VideoCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length - VideoCall.count))
            //: return attrString
            return attrString
        }
    }

    /// 音频通话价格
    //: static func setVoicePriceStr(VoicePrice: Int)-> NSMutableAttributedString {
    static func atContentPrice(VoicePrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = UpMarkContentConvertible.nor
        //: if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 && MeasurementAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 && MeasurementAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if MeasurementAppManager.share.appUserConfigMode.callBtnStyle == 1 {
            if MeasurementAppManager.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(str_normalName) + str_titleBlockData.replacingOccurrences(of: "lab", with: "n")).localized
                //: } else {
            } else {
                //: text = "Voice Call".localized
                text = (String(str_pointName)).localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.blockOf(), .font: UIFont.thoughtImage(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VoiceCall = "Voice Call".localized
            let VoiceCall = (String(str_pointName)).localized
            //: let videoStr = "Voice Call (%@ Coins/min)".localizedArguments(VoicePrice)
            let videoStr = (String(str_viewData.prefix(4)) + "e Call (" + String(str_carryName.suffix(7)) + String(str_frameValue.suffix(6))).random(VoicePrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.blockOf(), .font: UIFont.thoughtImage(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.offt(), .font: UIFont.thoughtImage(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length-VoiceCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length - VoiceCall.count))
            //: return attrString
            return attrString
        }
    }
}

// MARK: - 男性VIP价格

//: extension String {
extension String {
    /// 获取男性侧视频通话VIP展示字符串
    /// - Parameters: videoPrice: 视频通话价格
    /// - Returns: 字符串
    //: static func getMaleVIPVideoPriceString(videoPrice: String) -> String {
    static func stopPrice(videoPrice: String) -> String {
        //: guard MeasurementAppManager.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard MeasurementAppManager.share.appStatus == LabCustomReflectable.normal.rawValue else {
            //: return "Video Call".localized
            return (String(str_numberTitle)).localized
        }
        //: let index = EnableFreeCallType.nor
        let index = UpMarkContentConvertible.nor
        //: if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 && MeasurementAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if MeasurementAppManager.share.loginUserMode.freeCallTimes > 0 && MeasurementAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: if MeasurementAppManager.share.appUserConfigMode.callBtnStyle == 1 {
            if MeasurementAppManager.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(str_normalName) + str_titleBlockData.replacingOccurrences(of: "lab", with: "n")).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(str_numberTitle)).localized
            }
            //: } else {
        } else {
            //: return "%@ Coins/min".localizedArguments(videoPrice)
            return (String(str_equalSubmitTitle.suffix(8)) + String(str_lastName.suffix(4))).random(videoPrice)
        }
    }
}
