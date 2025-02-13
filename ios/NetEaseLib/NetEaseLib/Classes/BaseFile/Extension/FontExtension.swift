
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let str_progressName:String = "PingFaresult lab self"
fileprivate let str_gameText:String = "ULAR"

/*: "PingFangSC-Medium" :*/
fileprivate let str_toolValue:String = "PingFamodel model key editor true"
fileprivate let str_noContent:String = "text refuse if main layer-Medium"

/*: "PingFangSC-Semibold" :*/
fileprivate let str_toDataValue:String = "pan private make data letPing"
fileprivate let str_positionText:[Character] = ["S"]
fileprivate let str_requestRenderName:[Character] = ["e","m","i","b","o","l","d"]

/*: "PingFangSC-Thin" :*/
fileprivate let str_viewAddColorTitle:String = "PingFacolor register style on equal"
fileprivate let str_buttonHelpIconData:String = "Thinrow edit m"

/*: "PingFangSC-Light" :*/
fileprivate let str_ofValue:[Character] = ["P","i","n","g","F","a","n","g","S","C","-"]
fileprivate let str_shareData:String = "raw saveLight"

/*: "PingFangSC-Ultralight" :*/
fileprivate let str_modeBlockTitle:String = "return to window view giftPing"
fileprivate let str_firstHiddenData:String = "LTRA"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func thoughtImage(type: LabelFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(str_progressName.prefix(6)) + "ngSC-Reg" + str_gameText.lowercased()), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(str_toolValue.prefix(6)) + "ngSC" + String(str_noContent.suffix(7))), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(str_toDataValue.suffix(4)) + "FangSC-" + String(str_positionText) + String(str_requestRenderName)), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(str_viewAddColorTitle.prefix(6)) + "ngSC-" + String(str_buttonHelpIconData.prefix(4))), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(str_ofValue) + String(str_shareData.suffix(5))), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(str_modeBlockTitle.suffix(4)) + "FangSC-U" + str_firstHiddenData.lowercased() + "light"), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func drogueSize(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Regular, fontSize: fontSize)
        return UIFont.thoughtImage(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func methodPlay(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Medium, fontSize: fontSize)
        return UIFont.thoughtImage(type: .Medium, fontSize: fontSize)
    }
}
