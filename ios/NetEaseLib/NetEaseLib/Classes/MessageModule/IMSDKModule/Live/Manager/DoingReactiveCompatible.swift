
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let str_kitIconData:[Character] = ["c","a","l","l","/","s","e","n","d","M","s"]
fileprivate let str_colorTitle:[Character] = ["g"]

/*: "logId" :*/
fileprivate let str_barText:[Character] = ["l","o","g","I","d"]

/*: "content" :*/
fileprivate let str_keyText:String = "CONTEN"
fileprivate let str_selectedBackText:String = "color"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol ImageManagerDelegate: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func frontMsg(Msg: LimitMeasurable)
}

//: class TalkingVideoDanmuManager: NSObject {
class DoingReactiveCompatible: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: DoingReactiveCompatible? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: ImageManagerDelegate?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func toolShared() -> DoingReactiveCompatible {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = DoingReactiveCompatible()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension DoingReactiveCompatible {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func tillExplain(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = LimitMeasurable.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = ToSumCellData()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.face(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.frontMsg(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func backBlock(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(str_kitIconData) + String(str_colorTitle))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict[(String(str_barText))] = logId
        //: dict["content"] = content
        dict[(str_keyText.lowercased() + str_selectedBackText.replacingOccurrences(of: "color", with: "t"))] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension DoingReactiveCompatible {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func resourceSquare() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if DoingReactiveCompatible._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            DoingReactiveCompatible._instance = nil
        }
    }
}
