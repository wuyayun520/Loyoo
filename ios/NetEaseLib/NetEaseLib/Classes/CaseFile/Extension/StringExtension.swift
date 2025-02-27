
//: Declare String Begin

/*: "ZUhWdWQzVnNiM1ps" :*/
fileprivate let str_endValue:String = "touch voice remove makeZUhWd"
fileprivate let str_exitTitle:String = "nNiMself frame lab"
fileprivate let str_singleValue:[Character] = ["1","p","s"]

/*: "OrKulDHBYyjUHZTy1sS7dw==" :*/
fileprivate let str_screenText:String = "OrKuheight video"
fileprivate let str_detailCellGiftName:[Character] = ["H","Z","T"]
fileprivate let str_leadingValueTitle:String = "y1sS7dw==center remove pro size name"

/*: "null" :*/
fileprivate let str_thoughtTapData:String = "nuframe"

/*: "(null)" :*/
fileprivate let str_toName:String = "(null)show gift size true true"

/*: "nil" :*/
fileprivate let str_collectionName:String = "nmakel"

/*: "<null>" :*/
fileprivate let str_viewData:String = "<null>white for extension"

/*: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMnopQRSTUVWXYZ0123456789" :*/
fileprivate let str_imageValue:[UInt8] = [0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x6a,0x6b,0x6c,0x6d,0x6e,0x6f,0x70,0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78,0x79,0x7a,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x6e,0x6f,0x70,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5a,0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39]

/*: "加密参数=  :*/
fileprivate let str_positionData:String = "加密参\u{6570}= "

/*: "解密结果=  :*/
fileprivate let str_searchText:[Character] = ["解","密","结","果","="," "]

/*: "<.*?>" :*/
fileprivate let str_throughTitle:String = "<.*bag>"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StringExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import Foundation
import Foundation

//: let UrlKey = "ZUhWdWQzVnNiM1ps"
let a_replaceValue = (String(str_endValue.suffix(5)) + "WQzV" + String(str_exitTitle.prefix(4)) + String(str_singleValue))

//: let UrlDomin = "OrKulDHBYyjUHZTy1sS7dw=="
let a_errBarName = (String(str_screenText.prefix(4)) + "lDHBYyjU" + String(str_detailCellGiftName) + String(str_leadingValueTitle.prefix(9)))

//: extension String {
extension String {
    //: var isEmptyString: Bool {
    var isEmptyString: Bool {
        //: guard !self.isEmpty else { return true }
        guard !self.isEmpty else { return true }
        //: guard self != "null" else { return true }
        guard self != (str_thoughtTapData.replacingOccurrences(of: "frame", with: "ll")) else { return true }
        //: guard self != "(null)" else { return true }
        guard self != (String(str_toName.prefix(6))) else { return true }
        //: guard self != "nil" else { return true }
        guard self != (str_collectionName.replacingOccurrences(of: "make", with: "i")) else { return true }
        //: guard self != "<null>" else { return true }
        guard self != (String(str_viewData.prefix(6))) else { return true }
        //: guard self != "" else { return true }
        guard self != "" else { return true }

        //: let trimmedStr = self.trimmingCharacters(in: .whitespacesAndNewlines)
        let trimmedStr = self.trimmingCharacters(in: .whitespacesAndNewlines)
        //: return trimmedStr.isEmpty
        return trimmedStr.isEmpty
    }

    //: var boolValue: Bool {
    var boolValue: Bool {
        //: return NSString(string: self).boolValue
        return NSString(string: self).boolValue
    }

    //: var intValue: Int {
    var intValue: Int {
        //: Int(self) ?? 0
        Int(self) ?? 0
    }

    /// 字符串的匹配范围
    //: func exMatchStrRange(_ matchStr: String) -> [NSRange] {
    func placeTip(_ matchStr: String) -> [NSRange] {
        //: var selfStr = self as NSString
        var selfStr = self as NSString
        //: var withStr = Array(repeating: "X", count: (matchStr as NSString).length).joined(separator: "") // 辅助字符串
        var withStr = Array(repeating: "X", count: (matchStr as NSString).length).joined(separator: "") // 辅助字符串
        //: if matchStr == withStr { withStr = withStr.lowercased() }
        if matchStr == withStr { withStr = withStr.lowercased() } // 临时处理辅助字符串差错
        //: var allRange = [NSRange]()
        var allRange = [NSRange]()
        //: while selfStr.range(of: matchStr).location != NSNotFound {
        while selfStr.range(of: matchStr).location != NSNotFound {
            //: let range = selfStr.range(of: matchStr)
            let range = selfStr.range(of: matchStr)
            //: allRange.append(NSRange(location: range.location, length: range.length))
            allRange.append(NSRange(location: range.location, length: range.length))
            //: selfStr = selfStr.replacingCharacters(in: NSRange(location: range.location, length: range.length), with: withStr) as NSString
            selfStr = selfStr.replacingCharacters(in: NSRange(location: range.location, length: range.length), with: withStr) as NSString
        }

        //: return allRange
        return allRange
    }

    /// 从String中截取出参数
    //: var urlParameters: [String: AnyObject]? {
    var urlParameters: [String: AnyObject]? {
        // 截取是否有参数
        //: guard let urlComponents = NSURLComponents(string: self), let queryItems = urlComponents.queryItems else {
        guard let urlComponents = NSURLComponents(string: self), let queryItems = urlComponents.queryItems else {
            //: return nil
            return nil
        }
        // 参数字典
        //: var parameters = [String: AnyObject]()
        var parameters = [String: AnyObject]()

        // 遍历参数
        //: queryItems.forEach({ (item) in
        queryItems.forEach { item in
            // 判断参数是否是数组
            //: if let existValue = parameters[item.name], let value = item.value {
            if let existValue = parameters[item.name], let value = item.value {
                // 已存在的值，生成数组
                //: if var existValue = existValue as? [AnyObject] {
                if var existValue = existValue as? [AnyObject] {
                    //: existValue.append(value as AnyObject)
                    existValue.append(value as AnyObject)
                    //: } else {
                } else {
                    //: parameters[item.name] = [existValue, value] as AnyObject
                    parameters[item.name] = [existValue, value] as AnyObject
                }

                //: } else {
            } else {
                //: parameters[item.name] = item.value as AnyObject
                parameters[item.name] = item.value as AnyObject
            }
            //: })
        }

        //: return parameters
        return parameters
    }
}

// MARK: String Encrypt

//: extension String {
extension String {
    /// 随机字符串
    /// - Parameters:
    ///   - length: 长度
    //: static func randomString(length: Int) -> String {
    static func encephalon(length: Int) -> String {
        //: let letters: NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMnopQRSTUVWXYZ0123456789"
        let letters: NSString = String(bytes: str_imageValue, encoding: .utf8)! as NSString
        //: let len = UInt32(letters.length)
        let len = UInt32(letters.length)
        //: var randomString = ""
        var randomString = ""
        //: for _ in 0 ..< length {
        for _ in 0 ..< length {
            //: let rand = arc4random_uniform(len)
            let rand = arc4random_uniform(len)
            //: var nextChar = letters.character(at: Int(rand))
            var nextChar = letters.character(at: Int(rand))
            //: randomString += NSString(characters: &nextChar,length: 1) as String
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        //: return randomString
        return randomString
    }

    //: func aes256Encrypt(key: String) -> String? {
    func computerFileNameTap(key: String) -> String? {
        //: printLog(message: "加密参数= \(self)")
        printLog(message: (str_positionData) + "\(self)")
        //: guard let inputData: Data = data(using: .utf8) else { return nil }
        guard let inputData: Data = data(using: .utf8) else { return nil }
        //: let EncryptData = (inputData as NSData).aes256Encrypt(withKey: key)
        let EncryptData = (inputData as NSData).path(byLength: key)
        //: return NSData.base64String(from: EncryptData, length: UInt((EncryptData as NSData).length))
        return NSData.burn(EncryptData, column: UInt((EncryptData as NSData).length))
    }

    //: func aes256Decrypt(key: String) -> String? {
    func tableShared(key: String) -> String? {
        //: let encryData = NSData.base64Data(from: self)
        let encryData = NSData.custom(self)
        //: let decryData = (encryData as NSData).aes256Decrypt(withKey: key)
        let decryData = (encryData as NSData).age(key)
        //: let decryStr = String(data: decryData, encoding: .utf8)
        let decryStr = String(data: decryData, encoding: .utf8)
        //: printLog(message: "解密结果= \(decryStr)")
        printLog(message: (String(str_searchText)) + "\(decryStr)")
        //: return decryStr
        return decryStr
    }

    //: func urlAes256Encrypt() -> String? {
    func dower6encrypt() -> String? {
        //: printLog(message: "加密参数= \(self)")
        printLog(message: (str_positionData) + "\(self)")
        //: guard let inputData: Data = data(using: .utf8) else { return nil }
        guard let inputData: Data = data(using: .utf8) else { return nil }
        //: let EncryptData = (inputData as NSData).aes256Encrypt(withKey: UrlKey)
        let EncryptData = (inputData as NSData).path(byLength: a_replaceValue)
        //: return NSData.base64String(from: EncryptData, length: UInt((EncryptData as NSData).length))
        return NSData.burn(EncryptData, column: UInt((EncryptData as NSData).length))
    }

    //: func urlAes256Decrypt() -> String {
    func upward6decrypt() -> String {
        //: let encryData = NSData.base64Data(from: self)
        let encryData = NSData.custom(self)
        //: let decryData = (encryData as NSData).aes256Decrypt(withKey: UrlKey)
        let decryData = (encryData as NSData).age(a_replaceValue)
        //: let decryStr = String(data: decryData, encoding: .utf8)
        let decryStr = String(data: decryData, encoding: .utf8)
        //: return decryStr ?? ""
        return decryStr ?? ""
    }

    /// 字符串截取，表情乱码（表情长度不对问题）
    //: static func substringByUnicodeIndex(str: String, from: Int, to: Int) -> String {
    static func transmutationTo(str: String, from: Int, to: Int) -> String {
        //: let begem = from < 0 ? 0: from
        let begem = from < 0 ? 0 : from
        //: let to = to >= str.unicodeScalars.count ?  str.unicodeScalars.count : to
        let to = to >= str.unicodeScalars.count ? str.unicodeScalars.count : to
        //: guard to >= from else {
        guard to >= from else {
            //: return str
            return str
        }
        //: let startIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: from)
        let startIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: from)
        //: let endIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: to)
        let endIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: to)
        //: return String(str.unicodeScalars[startIndex..<endIndex])
        return String(str.unicodeScalars[startIndex ..< endIndex])
    }

    /// 删除html标签
    //: func deleteHtmlTips() -> String {
    func fromError() -> String {
        //: let htmlPattern = "<.*?>"
        let htmlPattern = "<.*?>"
        //: return self.replacingOccurrences(of: htmlPattern, with: "", options: .regularExpression, range: nil)
        return self.replacingOccurrences(of: htmlPattern, with: "", options: .regularExpression, range: nil)
    }
}

//: extension Int {
extension Int {
    //: var boolValue: Bool {
    var boolValue: Bool {
        //: self != 0
        self != 0
    }

    //: var stringValue: String {
    var stringValue: String {
        //: String(self)
        String(self)
    }
}
