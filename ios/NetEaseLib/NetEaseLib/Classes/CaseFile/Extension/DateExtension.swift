
//: Declare String Begin

/*: "%zd:%02zd:%02zd" :*/
fileprivate let str_sendHiddenValue:String = "self table height var cell%zd:%02z"
fileprivate let str_reasonValue:[Character] = ["d",":","%","0","2","z","d"]

/*: "%02zd:%02zd" :*/
fileprivate let str_toModeValueData:[Character] = ["%","0","2","z","d",":","%","0","2","z","d"]

/*: "MM-dd-YYYY HH:mm" :*/
fileprivate let str_popName:[UInt8] = [0x4d,0x4d,0x2d,0x64,0x64,0x2d,0x59,0x59,0x59,0x59,0x20,0x48,0x48,0x3a,0x6d,0x6d]

/*: "MM-dd-YYYY" :*/
fileprivate let str_randomText:[Character] = ["M","M","-","d"]
fileprivate let str_equalTitle:String = "d-YYYYvar height"

/*: "HH:mm" :*/
fileprivate let str_fieldValue:String = "HH:mmmodel track"

/*: "MM-dd HH:mm" :*/
fileprivate let str_kitTitle:[UInt8] = [0x4d,0x4d,0x2d,0x64,0x64,0x20,0x48,0x48,0x3a,0x6d,0x6d]

/*: "MM-dd" :*/
fileprivate let str_currentData:String = "type do let view superMM-dd"

/*: "Yesterday" :*/
fileprivate let str_phoneValue:String = "self gift in error effectYesterda"
fileprivate let str_hiddenValue:[Character] = ["y"]

/*: "  :*/
fileprivate let str_toTapReleaseData:[Character] = [" "]

/*: "America/New_York" :*/
fileprivate let str_editSharedData:[Character] = ["A","m","e","r","i","c","a","/","N"]
fileprivate let str_equalName:[Character] = ["e","w","_","Y","o","r","k"]

/*: "en_US" :*/
fileprivate let str_tapContent:[Character] = ["e","n","_","U","S"]

/*: "Asia/Shanghai" :*/
fileprivate let str_tagRecordValue:String = "return user collectionAsia/"
fileprivate let str_agentPushText:[Character] = ["g","h","a","i"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation

//: let dateformatter = DateFormatter()
let a_changeData = DateFormatter()

//: extension NSDate {
extension NSDate {
    // override 继承
    // class、static 类方法
    // 当前的时间戳字符串 用static关键字指定的类方法是不能被子类重写的,

    /// 展示当前日期
    /// - Returns: 返回日期格式（包含年、月、日、时、分、秒、星期几）
    //: static func getCurrentDateComponents() -> DateComponents {
    static func adminDate() -> DateComponents {
        //: let calendar = NSCalendar.current
        let calendar = NSCalendar.current
        //: let components = calendar.dateComponents(
        let components = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day, .hour, .minute, .second, .weekday]), from: Date())
            Set<Calendar.Component>([.year, .month, .day, .hour, .minute, .second, .weekday]), from: Date()
        )
        //: return components
        return components
    }

    /// 返回当前的时间戳
    /// - Returns: 当前的时间戳字符串
    //: static func getCurrentTimeStamp() ->String {
    static func timeStamp() -> String {
        //: let nowDate = Date.init()
        let nowDate = Date()
        //: let interval = Int(nowDate.timeIntervalSince1970)
        let interval = Int(nowDate.timeIntervalSince1970)
        //: return "\(interval)"
        return "\(interval)"
    }

    /// 时间字符串转换成对应格式的时间字符串【以美东时间为标准】
    /// - Parameters:
    ///   - timeString: 时间字符串，如：“2022-10-22”
    ///   - currDateFormat: 当前时间格式，如：“yyyy-MM-dd”
    ///   - newDateFormat: 新时间格式，如：”MMMM yyyy“
    /// - Returns: 格式化后的日期字符串
    //: static func getDateStringFromTimeString(_ timeString: String, currDateFormat: String, newDateFormat: String) -> String {
    static func crisp(_ timeString: String, currDateFormat: String, newDateFormat: String) -> String {
        //: let date = getDateFromTimeString(timeString, dateFormat: currDateFormat)
        let date = streetSmartQuery(timeString, dateFormat: currDateFormat)
        //: return getTimeString(date: date, dateFormat: newDateFormat)
        return barValue(date: date, dateFormat: newDateFormat)
    }

    /// 根据秒转换视频播放时间
    /// - Parameter totalTime: 总时间【秒】
    /// - Returns: 视频播放时间字符串
    //: @objc static public func videoTimeFormat(totalTime: NSInteger) -> String {
    @objc public static func exampleConstraint(totalTime: NSInteger) -> String {
        //: if totalTime < 0 {
        if totalTime < 0 {
            //: return ""
            return ""
        }
        //: let durHour = totalTime / 3600
        let durHour = totalTime / 3600
        //: let durMin = (totalTime / 60) % 60
        let durMin = (totalTime / 60) % 60
        //: let durSec = totalTime % 60
        let durSec = totalTime % 60

        //: if durHour > 0 {
        if durHour > 0 {
            //: return  String(format: "%zd:%02zd:%02zd", durHour, durMin, durSec)
            return String(format: (String(str_sendHiddenValue.suffix(8)) + String(str_reasonValue)), durHour, durMin, durSec)
            //: } else {
        } else {
            //: return  String(format: "%02zd:%02zd", durMin, durSec)
            return String(format: "%02zd:%02zd", durMin, durSec)
        }
    }

    //: @objc static public func tx_messageTimeString(showDetail: Bool, date: Date) -> String {
    @objc public static func clickDate(showDetail: Bool, date: Date) -> String {
        //: let calendar = NSCalendar.current
        let calendar = NSCalendar.current
        //: let components = calendar.dateComponents(
        let components = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day]), from: date )
            Set<Calendar.Component>([.year, .month, .day]), from: date
        )
        //: let nowComponents = calendar.dateComponents(
        let nowComponents = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day]), from: Date())
            Set<Calendar.Component>([.year, .month, .day]), from: Date()
        )
        //: var  isYesterday = false
        var isYesterday = false

        //: let dateformatter = DateFormatter()
        let dateformatter = DateFormatter()
        //: if components.year != nowComponents.year {
        if components.year != nowComponents.year {
            //: dateformatter.dateFormat = showDetail ? "MM-dd-YYYY HH:mm" : "MM-dd-YYYY"
            dateformatter.dateFormat = showDetail ? String(bytes: str_popName, encoding: .utf8)! : (String(str_randomText) + String(str_equalTitle.prefix(6)))
            //: } else {
        } else {
            //: let tempDay: Int = nowComponents.day!-components.day!
            let tempDay: Int = nowComponents.day! - components.day!

            //: if tempDay == 0 {
            if tempDay == 0 {
                //: dateformatter.dateFormat = "HH:mm"
                dateformatter.dateFormat = (String(str_fieldValue.prefix(5)))
                //: } else if(tempDay == 1) {
            } else if tempDay == 1 {
                //: isYesterday = true
                isYesterday = true
                //: dateformatter.dateFormat = "HH:mm"
                dateformatter.dateFormat = (String(str_fieldValue.prefix(5)))
                //: } else {
            } else {
                //: dateformatter.dateFormat = showDetail ? "MM-dd HH:mm" : "MM-dd"
                dateformatter.dateFormat = showDetail ? String(bytes: str_kitTitle, encoding: .utf8)! : (String(str_currentData.suffix(5)))
            }
        }

        //: var str = dateformatter.string(from: date)
        var str = dateformatter.string(from: date)
        //: if isYesterday {
        if isYesterday {
            //: if showDetail {
            if showDetail {
                //: str = "Yesterday".localized + " \(str)"
                str = (String(str_phoneValue.suffix(8)) + String(str_hiddenValue)).localized + " \(str)"
                //: } else {
            } else {
                //: str = "Yesterday".localized
                str = (String(str_phoneValue.suffix(8)) + String(str_hiddenValue)).localized
            }
        }

        //: return str
        return str
    }
}

// MARK: - 以美东时间为标准

//: extension NSDate {
extension NSDate {
    /// 根据时间字符串获取date【以美东时间为标准】
    /// - Parameters:
    ///   - timeString: 时间字符串，如：“2022-10-22”
    ///   - dateFormat: 时间格式，如：“yyyy-MM-dd”
    /// - Returns: date
    //: static func getDateFromTimeString(_ timeString: String, dateFormat: String) -> Date {
    static func streetSmartQuery(_ timeString: String, dateFormat: String) -> Date {
        //: dateformatter.timeZone = TimeZone(identifier: "America/New_York")
        a_changeData.timeZone = TimeZone(identifier: (String(str_editSharedData) + String(str_equalName)))
        //: dateformatter.dateFormat = dateFormat
        a_changeData.dateFormat = dateFormat
        //: return dateformatter.date(from: timeString) ?? Date()
        return a_changeData.date(from: timeString) ?? Date()
    }

    /// 根据date获取时间字符串
    /// - Parameters:
    ///   - date: date
    ///   - dateFormat: 时间格式，如：“yyyy-MM-dd”
    /// - Returns: 时间字符串
    //: static func getTimeString(date: Date, dateFormat: String) -> String {
    static func barValue(date: Date, dateFormat: String) -> String {
        //: dateformatter.timeZone = TimeZone(identifier: "America/New_York")
        a_changeData.timeZone = TimeZone(identifier: (String(str_editSharedData) + String(str_equalName)))
        //: dateformatter.dateFormat = dateFormat
        a_changeData.dateFormat = dateFormat
        //: dateformatter.locale = Locale(identifier: "en_US")
        a_changeData.locale = Locale(identifier: (String(str_tapContent)))
        //: return dateformatter.string(from: date)
        return a_changeData.string(from: date)
    }
}

// MARK: - 以设备所在时区为标准

//: extension NSDate {
extension NSDate {
    /// 将东八区时间字符串转换成设备所在时区的字符串
    /// - Parameters:
    ///   - dateFormat: 时间格式（默认："HH:mm"）
    ///   - shDateStr: 【东八区】时间字符串
    /// - Returns: 【设备所在时区】时间字符串
    //: static func getCurrentZoneDateString(dateFormat: String = "HH:mm", shDateStr: String) -> String {
    static func zoneName(dateFormat _: String = (String(str_fieldValue.prefix(5))), shDateStr: String) -> String {
        // 计算GMT时差（小时）
        //: let shTimeZone = TimeZone(identifier: "Asia/Shanghai")!
        let shTimeZone = TimeZone(identifier: (String(str_tagRecordValue.suffix(5)) + "Shan" + String(str_agentPushText)))!
        //: let shTimeOffset = shTimeZone.secondsFromGMT()
        let shTimeOffset = shTimeZone.secondsFromGMT()
        //: let currentTimeOffset = TimeZone.autoupdatingCurrent.secondsFromGMT()
        let currentTimeOffset = TimeZone.autoupdatingCurrent.secondsFromGMT()
        //: let timeOffsetDiff = (currentTimeOffset - shTimeOffset)
        let timeOffsetDiff = (currentTimeOffset - shTimeOffset)

        // 获取东八区时间
        //: dateformatter.dateFormat = "HH:mm"
        a_changeData.dateFormat = (String(str_fieldValue.prefix(5)))
        //: dateformatter.timeZone = shTimeZone
        a_changeData.timeZone = shTimeZone
        //: if let shDate = dateformatter.date(from: shDateStr) {
        if let shDate = a_changeData.date(from: shDateStr) {
            // 东八区加上GMT时差，计算出当地时间
            //: let opFormatter = DateFormatter()
            let opFormatter = DateFormatter()
            //: opFormatter.dateFormat = "HH:mm"
            opFormatter.dateFormat = (String(str_fieldValue.prefix(5)))
            //: opFormatter.timeZone = shTimeZone
            opFormatter.timeZone = shTimeZone
            //: let localDate = shDate.addingTimeInterval(TimeInterval(timeOffsetDiff))
            let localDate = shDate.addingTimeInterval(TimeInterval(timeOffsetDiff))
            //: let opStr = opFormatter.string(from: localDate)
            let opStr = opFormatter.string(from: localDate)

            //: return opStr
            return opStr
        }

        //: return ""
        return ""
    }

    /// 比较当前时间是否在时间段内
    /// - Parameters:
    ///   - startTime: 开始时间（如："09:30"）
    ///   - endTime: 结束时间（如："18:30"）
    /// - Returns: 比较结果
    //: static func compareCurrentTimeIsIncluded(startTime: String, endTime: String) -> Bool {
    static func sizeUser(startTime: String, endTime: String) -> Bool {
        //: let now = Date()
        let now = Date()
        //: let nowFormatter = DateFormatter()
        let nowFormatter = DateFormatter()
        //: nowFormatter.dateFormat = "HH:mm"
        nowFormatter.dateFormat = (String(str_fieldValue.prefix(5)))
        //: nowFormatter.timeZone = TimeZone.autoupdatingCurrent
        nowFormatter.timeZone = TimeZone.autoupdatingCurrent
        //: let nowTime = nowFormatter.string(from: now)
        let nowTime = nowFormatter.string(from: now)
        //: let nowTimeInt = Int(nowTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let nowTimeInt = Int(nowTime.replacingOccurrences(of: ":", with: "")) ?? 0
        //: let startTimeInt = Int(startTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let startTimeInt = Int(startTime.replacingOccurrences(of: ":", with: "")) ?? 0
        //: let endTimeInt = Int(endTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let endTimeInt = Int(endTime.replacingOccurrences(of: ":", with: "")) ?? 0

        //: if startTimeInt > endTimeInt {
        if startTimeInt > endTimeInt { // 跨天
            //: if nowTimeInt >= startTimeInt || nowTimeInt <= endTimeInt {
            if nowTimeInt >= startTimeInt || nowTimeInt <= endTimeInt {
                //: return true
                return true
                //: } else {
            } else {
                //: return false
                return false
            }

            //: } else {
        } else {
            //: if nowTimeInt >= startTimeInt && nowTimeInt <= endTimeInt {
            if nowTimeInt >= startTimeInt && nowTimeInt <= endTimeInt {
                //: return true
                return true
                //: } else {
            } else {
                //: return false
                return false
            }
        }
    }
}
