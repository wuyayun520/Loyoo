
//: Declare String Begin

/*: lproj" :*/
fileprivate let str_logTitle:[Character] = ["l","p","r","o","j"]

/*: "lproj" :*/
fileprivate let str_succeedText:String = "cameraroj"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConstraintLanguageManager.swift
//  Adjust
//
//  Created by DouXiu on 2024/6/17.
//

//: import UIKit
import UIKit

//: @objcMembers open class LanguageManager: NSObject {
@objcMembers open class ConstraintLanguageManager: NSObject {
    //: public static let shared = LanguageManager()
    public static let shared = ConstraintLanguageManager()
    //: private(set) var currLanguage: String = ImageMacroDefine.getSystemLangCode()
    private(set) var currLanguage: String = ImageMacroDefine.loadLang()
    //: public let direction = UIApplication.shared.userInterfaceLayoutDirection
    public let direction = UIApplication.shared.userInterfaceLayoutDirection

    /// 设置语言
    //: public func setLanguage(_ language: String) {
    public func flush(_ language: String) {
        //: currLanguage = language
        currLanguage = language
    }
}

//: public extension NSString {
public extension NSString {
    /// 字符串国际化
    //: @objc func localized() -> String {
    @objc func videoLabel() -> String {
        //: return (self as String).localized
        return (self as String).localized
    }
}

//: extension String {
extension String {
    /// 字符串国际化
    //: var localized: String {
    var localized: String {
        //: return NSLocalizedString(self, bundle: languageBundle, comment: "")
        return NSLocalizedString(self, bundle: languageBundle, comment: "")
    }

    /// 字符串国际化（任意参数类型都会转为string）
    /// - Parameter args: 传参，如.localizedWithArguments(123, "xxx")
    /// - Returns: 结果
    //: public func localizedArguments(_ args: CVarArg...) -> String {
    public func random(_ args: CVarArg...) -> String {
        //: let strArgs = args.map { String(describing: $0) }
        let strArgs = args.map { String(describing: $0) }
        //: return String(format: NSLocalizedString(self, bundle: languageBundle, comment: ""), arguments: strArgs)
        return String(format: NSLocalizedString(self, bundle: languageBundle, comment: ""), arguments: strArgs)
    }

    /// 国际化bundle
    //: private var languageBundle: Bundle {
    private var languageBundle: Bundle {
        //: let language = LanguageManager.shared.currLanguage
        let language = ConstraintLanguageManager.shared.currLanguage
        //: guard let languageFolder = PodspecBundle.bundle.path(forResource: "\(PodspecName)lproj", ofType: nil),
        guard let languageFolder = LimitPodspecBundle.bundle.path(forResource: "\(a_bottomName)" + (String(str_logTitle)), ofType: nil),
              //: let languageBundle = Bundle(path: languageFolder)?.path(forResource: language, ofType: "lproj"),
              let languageBundle = Bundle(path: languageFolder)?.path(forResource: language, ofType: (str_succeedText.replacingOccurrences(of: "camera", with: "lp"))),
              //: let bundle = Bundle(path: languageBundle)
              let bundle = Bundle(path: languageBundle)
        //: else {
        else {
            //: return Bundle.main
            return Bundle.main
        }
        //: return bundle
        return bundle
    }
}
