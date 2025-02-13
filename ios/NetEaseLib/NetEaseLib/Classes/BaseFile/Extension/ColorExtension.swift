
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let str_matchValue:String = "return self to#8A79F9"

/*: "#E6BD8B" :*/
fileprivate let str_recordMakeData:[Character] = ["#"]
fileprivate let str_selectedContent:String = "E6toD8to"

/*: "#F5F5F8" :*/
fileprivate let str_photoData:String = "#F5F5F8view in"

/*: "333333" :*/
fileprivate let str_finishEventData:[Character] = ["3"]
fileprivate let str_bottomCenterName:[Character] = ["3","3","3","3","3"]

/*: "FF2348" :*/
fileprivate let str_playerValue:String = "observer2348"

/*: "666666" :*/
fileprivate let str_equalName:String = "valuevaluevaluevaluevaluevalue"

/*: "999999" :*/
fileprivate let str_executeValue:[Character] = ["9","9","9","9","9","9"]

/*: "7C74F4" :*/
fileprivate let str_normalData:String = "7C74F4collection bag room"

/*: "B97AF8" :*/
fileprivate let str_originMakeViewValue:[Character] = ["B","9","7","A","F","8"]

/*: "#FF5C9D" :*/
fileprivate let str_cellTitle:String = "to content manager#F"
fileprivate let str_contentData:[Character] = ["F","5","C","9","D"]

/*: "#EEEEEE" :*/
fileprivate let str_wrapName:[Character] = ["#"]
fileprivate let str_requestValue:String = "viewviewviewviewviewview"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func each(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func offt() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: (String(str_matchValue.suffix(7))))!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func withTime() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: (String(str_recordMakeData) + str_selectedContent.replacingOccurrences(of: "to", with: "B")))!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func playerEqual() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: (String(str_photoData.prefix(7))))!
    }

    //: @objc static func appTitleColor() ->UIColor {
    @objc static func blockOf() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: (String(str_finishEventData) + String(str_bottomCenterName)))!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func atAfterPosition() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: (str_playerValue.replacingOccurrences(of: "observer", with: "FF")))!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func complexion() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: (str_equalName.replacingOccurrences(of: "value", with: "6")))!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func observerShared() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: (String(str_executeValue)))!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func doRange() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: (String(str_normalData.prefix(6))))!.cgColor, UIColor(hex: (String(str_originMakeViewValue)))!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func lineModel() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: (String(str_cellTitle.suffix(2)) + String(str_contentData)))!.withAlphaComponent(0.4).cgColor, UIColor(hex: (String(str_cellTitle.suffix(2)) + String(str_contentData)))!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func firstColor() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: (String(str_wrapName) + str_requestValue.replacingOccurrences(of: "view", with: "E")))!
    }

    //: class func getRandomColor() -> UIColor {
    class func targetColor() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
