
//: Declare String Begin

/*: "plist" :*/
fileprivate let str_minByValue:String = "PLIST"

/*: "In app purchase" :*/
fileprivate let str_modelText:String = "In appsuper block input view in"
fileprivate let str_videoMethodValue:String = "clengthase"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegularAdjustManager.swift
//  AbroadTalking
//
//  Created by young on 2022/10/17.
//

//: import Adjust
import Adjust
//: import UIKit
import UIKit

//: class TalkingAdjustManager: NSObject {
class RegularAdjustManager: NSObject {
    //: static let share = TalkingAdjustManager()
    static let share = RegularAdjustManager()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // MARK: - Lazy load

    //: private lazy var adjustDict: [String: String] = {
    private lazy var adjustDict: [String: String] = {
        //: guard let url = PodspecBundle.bundle.url(forResource: PodspecName, withExtension: "plist") else {
        guard let url = LimitPodspecBundle.bundle.url(forResource: a_bottomName, withExtension: (str_minByValue.lowercased())) else {
            //: return [String: String]()
            return [String: String]()
        }
        //: guard let data = try? Data(contentsOf: url) else {
        guard let data = try? Data(contentsOf: url) else {
            //: return [String: String]()
            return [String: String]()
        }
        //: let dict = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil)
        let dict = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil)
        //: return dict as! [String: String]
        return dict as! [String: String]
        //: }()
    }()
}

//: extension TalkingAdjustManager {
extension RegularAdjustManager {
    /// 添加内购埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addPurchasedEvent(price: Double, currency: String) {
    func whenEffect(price: Double, currency: String) {
        //: guard let token = adjustDict["In app purchase"] else {
        guard let token = adjustDict[(String(str_modelText.prefix(6)) + " pur" + str_videoMethodValue.replacingOccurrences(of: "length", with: "h"))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加埋点事件
    /// - Parameter key: 事件名
    //: func addEvent(key: String) {
    func windowKey(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加去重事件【只记录一次】
    /// - Parameter key: 事件名
    //: func addOnceEvent(key: String) {
    func beatBack(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setTransactionId(token)
        event?.setTransactionId(token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }
}
