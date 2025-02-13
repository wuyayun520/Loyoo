
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let str_subValue:String = "height imageJDStatu"
fileprivate let str_sharedValue:String = "sBarStstatus kit"
fileprivate let str_norData:String = "fauvoice"

/*: "JDStatusBarStyleError" :*/
fileprivate let str_liveEnableText:[Character] = ["J","D","S","t","a","t","u","s","B","a","r","S"]
fileprivate let str_numberName:String = "to view bottom styletyleError"

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let str_hiddenData:String = "JDStaeffect for list view"
fileprivate let str_imageValue:String = "arStylpath class self if tab"
fileprivate let str_frameData:[Character] = ["e","S","u","c","c","e","s","s"]

/*: "2AB572" :*/
fileprivate let str_infoMediumResultData:String = "change"
fileprivate let str_makeData:[Character] = ["A","B","5","7","2"]

/*: "F05E5E" :*/
fileprivate let str_gapData:String = "f05e5"
fileprivate let str_matchName:String = "intimate"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import JDStatusBarNotification
import JDStatusBarNotification
//: import UIKit
import UIKit

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func showMake(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.golf(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_subValue.suffix(7)) + String(str_sharedValue.prefix(6)) + "yleDe" + str_norData.replacingOccurrences(of: "voice", with: "lt")))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func episode(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.golf(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_liveEnableText) + String(str_numberName.suffix(9))))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func afterTitle(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.golf(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_hiddenData.prefix(5)) + "tusB" + String(str_imageValue.prefix(6)) + String(str_frameData)))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func golf(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.argumentBlock(token: a_showName, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (str_infoMediumResultData.replacingOccurrences(of: "change", with: "2") + String(str_makeData)))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.thoughtImage(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(str_liveEnableText) + String(str_numberName.suffix(9))) {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (str_gapData.uppercased() + str_matchName.replacingOccurrences(of: "intimate", with: "E")))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (str_infoMediumResultData.replacingOccurrences(of: "change", with: "2") + String(str_makeData)))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
