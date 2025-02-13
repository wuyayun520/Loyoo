
//: Declare String Begin

/*: "party/enter" :*/
fileprivate let str_infoText:String = "ptextrt"

/*: "roomId" :*/
fileprivate let str_soundName:[UInt8] = [0xc,0x11,0x11,0x13,0x37,0x1a]

/*: "party/start" :*/
fileprivate let str_managerValue:[Character] = ["p","a","r","t","y"]
fileprivate let str_centerValue:[Character] = ["/","s","t","a","r","t"]

/*: "party/close" :*/
fileprivate let str_infoData:[Character] = ["p","a"]
fileprivate let str_leadingValue:String = "rty/cimport back model let"

/*: "party/changeRoom" :*/
fileprivate let str_userColorName:[Character] = ["p","a","r","t","y","/"]
fileprivate let str_imageValue:String = "chatopg"

/*: "beforeRoomId" :*/
fileprivate let str_limitedTargetHeightValue:[UInt8] = [0x62,0x65,0x66,0x6f,0x72,0x65,0x52,0x6f,0x6f,0x6d,0x49,0x64]

/*: "party/mikeList" :*/
fileprivate let str_mName:String = "pacellt"
fileprivate let str_ofContent:[Character] = ["k","e","L","i","s","t"]

/*: "uid" :*/
fileprivate let str_coinName:[UInt8] = [0x75,0x69,0x64]

/*: "type" :*/
fileprivate let str_textTitle:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "pos" :*/
fileprivate let str_normalToText:[UInt8] = [0x70,0x6f,0x73]

/*: "toPos" :*/
fileprivate let str_tagData:[Character] = ["t","o","P","o","s"]

/*: "party/mike" :*/
fileprivate let str_totalRankTitle:String = "tabarty"
fileprivate let str_backData:[Character] = ["/","m","i","k","e"]

/*: "party/adminMike" :*/
fileprivate let str_signalEqualData:String = "data"
fileprivate let str_colorObjectSelectedData:String = "self skin equal false makearty/"
fileprivate let str_leadingName:String = "title self gender viewnMike"

/*: "party/list" :*/
fileprivate let str_recordData:String = "partable"
fileprivate let str_valueData:String = "button"

/*: "party/onlineNum" :*/
fileprivate let str_cookieTitle:[Character] = ["p","a","r","t","y","/","o","n","l"]
fileprivate let str_viewName:[Character] = ["i","n","e","N","u","m"]

/*: "party/onlineList" :*/
fileprivate let str_originTitle:[Character] = ["p","a","r","t","y","/","o","n","l","i","n","e","L","i","s","t"]

/*: "party/mute" :*/
fileprivate let str_inviteText:String = "parscale"
fileprivate let str_textName:[Character] = ["t","e"]

/*: "targetUid" :*/
fileprivate let str_tableName:[UInt8] = [0x74,0x61,0x72,0x67,0x65,0x74,0x55,0x69,0x64]

/*: "duration" :*/
fileprivate let str_blueData:[UInt8] = [0x6e,0x6f,0x69,0x74,0x61,0x72,0x75,0x64]

/*: "party/unmute" :*/
fileprivate let str_timeName:[Character] = ["p","a","r","t","y","/","u","n","m","u","t","e"]

/*: "party/kickout" :*/
fileprivate let str_infoName:[Character] = ["p","a","r"]
fileprivate let str_userName:String = "view let inputty/kic"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SprechstimmeEventReqTool.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/9/19.
//

/// 语聊房相关接口
//: class TalkingVoiceRoomReqTool {
class SprechstimmeEventReqTool {
    /// 开启语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    ///   - completion: 回调
    //: class func req_voiceRoomCheck(roomId: String? = nil, completion: @escaping FinishBlock) {
    class func sunParlorTime(roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: if let roomId = roomId {
        if let roomId = roomId { // 进入房间
            //: reqModel.requestPath = "party/enter"
            reqModel.requestPath = (str_infoText.replacingOccurrences(of: "text", with: "a") + "y/enter")
            //: reqModel.params = ["roomId": roomId]
            reqModel.params = [String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomId]
            //: } else {
        } else { // 创建房间
            //: reqModel.requestPath = "party/start"
            reqModel.requestPath = (String(str_managerValue) + String(str_centerValue))
        }
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主销毁语聊房
    //: class func req_voiceRoomClose(roomId: String, completion: FinishBlock? = nil) {
    class func context(roomId: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "party/close"
        reqModel.requestPath = (String(str_infoData) + String(str_leadingValue.prefix(5)) + "lose")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 切房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    ///   - completion: 回调
    //: class func req_voiceRoomSwitch(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
    class func cleanRoom(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/changeRoom"
        reqModel.requestPath = (String(str_userColorName) + str_imageValue.replacingOccurrences(of: "top", with: "n") + "eRoom")
        //: reqModel.params = ["roomId": roomId, "beforeRoomId": beforeRoomId]
        reqModel.params = [String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomId, String(bytes: str_limitedTargetHeightValue, encoding: .utf8)!: beforeRoomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取语聊房麦位列表
    //: class func req_getMikeList(roomId: String, completion: @escaping (_ data: [TalkingMikeListItemModel]) -> Void) {
    class func afterFlooring(roomId: String, completion: @escaping (_ data: [WithDoingHandyJSON]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "party/mikeList"
        reqModel.requestPath = (str_mName.replacingOccurrences(of: "cell", with: "r") + "y/mi" + String(str_ofContent))
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomId]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { _, result, _ in
        a_tabData.blackFor(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingMikeListItemModel] = []
            var dataArr: [WithDoingHandyJSON] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingMikeListItemModel>.deserialize(from: arr as? Array) as? [TalkingMikeListItemModel] {
            if let datas = Array<WithDoingHandyJSON>.deserialize(from: arr as? Array) as? [WithDoingHandyJSON] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// 房主/观众 语音房操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 当前麦位
    ///   - toPos: 目标麦位（切麦传值）
    ///   - completion: 回调
    //: class func req_changeMike(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
    class func userServer(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
        //: var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        var params: [String: Any] = [String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomId, String(bytes: str_coinName, encoding: .utf8)!: uid, String(bytes: str_textTitle.reversed(), encoding: .utf8)!: type, String(bytes: str_normalToText, encoding: .utf8)!: position]
        //: if type == 3 {
        if type == 3 {
            //: params["toPos"] = toPos
            params[(String(str_tagData))] = toPos
        }
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "party/mike"
        reqModel.requestPath = (str_totalRankTitle.replacingOccurrences(of: "tab", with: "p") + String(str_backData))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - completion: 回调
    //: class func req_adminChangeMike(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
    class func stateNow(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "party/adminMike"
        reqModel.requestPath = (str_signalEqualData.replacingOccurrences(of: "data", with: "p") + String(str_colorObjectSelectedData.suffix(5)) + "admi" + String(str_leadingName.suffix(5)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        reqModel.params = [String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomId, String(bytes: str_coinName, encoding: .utf8)!: uid, String(bytes: str_textTitle.reversed(), encoding: .utf8)!: type, String(bytes: str_normalToText, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// Party 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_partyList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func imbecilityWith(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/list"
        reqModel.requestPath = (str_recordData.replacingOccurrences(of: "table", with: "t") + "y/lis" + str_valueData.replacingOccurrences(of: "button", with: "t"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线人数
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineNum(roomId: String, completion: @escaping FinishBlock) {
    class func perspective(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "party/onlineNum"
        reqModel.requestPath = (String(str_cookieTitle) + String(str_viewName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomId]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线用户列表
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineList(roomId: String, completion: @escaping FinishBlock) {
    class func red(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "party/onlineList"
        reqModel.requestPath = (String(str_originTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: class func req_VoiceRoomMute(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
    class func singingVoiceHide(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "party/mute"
        reqModel.requestPath = (str_inviteText.replacingOccurrences(of: "scale", with: "t") + "y/mu" + String(str_textName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID, "duration": duration]
        reqModel.params = [String(bytes: str_tableName, encoding: .utf8)!: targetUid, String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomID, String(bytes: str_blueData.reversed(), encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: class func req_VoiceRoomUnMute(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
    class func voiceTo(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "party/unmute"
        reqModel.requestPath = (String(str_timeName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID]
        reqModel.params = [String(bytes: str_tableName, encoding: .utf8)!: targetUid, String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomID]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 踢出房间
    //: class func req_VoiceRoomKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
    class func requestTheme(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = TitleTheoryThen()
        //: reqModel.requestPath = "party/kickout"
        reqModel.requestPath = (String(str_infoName) + String(str_userName.suffix(6)) + "kout")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomId]
        reqModel.params = [String(bytes: str_tableName, encoding: .utf8)!: targetUid, String(bytes: str_soundName.map{$0^126}, encoding: .utf8)!: roomId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
