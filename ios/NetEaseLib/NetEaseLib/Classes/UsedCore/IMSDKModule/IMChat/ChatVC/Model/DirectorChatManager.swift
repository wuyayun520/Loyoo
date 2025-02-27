
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let str_addText:String = "point"
fileprivate let str_makeText:String = "title with height view errorsgInfo"

/*: "jumps" :*/
fileprivate let str_recommendValue:[Character] = ["j","u","m","p","s"]

/*: "uid" :*/
fileprivate let str_viewValue:String = "uthumbd"

/*: "roomId" :*/
fileprivate let str_episodeTitle:[UInt8] = [0x64,0x49,0x6d,0x6f,0x6f,0x72]

/*: "msgId" :*/
fileprivate let str_rowTitle:[UInt8] = [0x6d,0x73,0x67,0x49,0x64]

/*: "time" :*/
fileprivate let str_meetingValue:[UInt8] = [0x74,0x69,0x6d,0x65]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DirectorChatManager.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class DirectorChatManager: NSObject {
	var screenNumber: Double = -24.6
	var alongGiftArray: [AnyHashable] = []
	var noticeDictionary: [AnyHashable: String] = [:]
	var dataTitle: String = "fill"
	var pushListTotal: Double = 16.3
	var dayArray: [AnyHashable] = []
	var imageDictionary: [AnyHashable: String] = [:]
	var itemTitle: String = "image"

    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: DocumentControllerDelegate?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = DirectorChatManager()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { 
		if var facultyFemaleValue = chatRoomVC?.infoModel.identity { 
		if let chatRoomVC = chatRoomVC {
	
	            if (chatRoomVC.preferredStatusBarStyle == .lightContent) && (chatRoomVC.childForStatusBarHidden != nil && chatRoomVC.childForStatusBarHidden!.edgesForExtendedLayout == .right) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let keyStatusHeightLet = LockColorController()
	            keyStatusHeightLet.contentTotal = facultyFemaleValue
	            
	            keyStatusHeightLet.labCount = { [self] fillMagnitude in
	            self.screenNumber = fillMagnitude
	            
	                self.screenNumber += 1
	                if self.screenNumber != 65 {
	                    self.screenNumber = self.screenNumber - 1
	                }
	            return self.screenNumber
	            }
	            keyStatusHeightLet.endArray = { [self] aspectAddArray in
	            self.alongGiftArray = aspectAddArray
	            
	            guard var value = self.alongGiftArray as? [String] else {
	                return nil
	            }
	            return value
	            }
	            keyStatusHeightLet.textEveryDictionary = { [self] bagCommentDictionary in
	            self.noticeDictionary = bagCommentDictionary
	            
	            guard var value = self.noticeDictionary as? [String: String] else {
	                return nil
	            }
	            return value
	            }
	                chatRoomVC.navigationController?.present(keyStatusHeightLet.self, animated: false) { [self] in
	            self.dataTitle = "video"
	                }
	            }
	
		}
	
		}
		return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { 
		if var deadlineValue = chatRoomVC?.infoModel.identity { 
			if var queryValue = self.chatRoomVC { 
		            if (queryValue.preferredStatusBarStyle == .lightContent) && (queryValue.childForStatusBarHidden != nil && queryValue.childForStatusBarHidden!.edgesForExtendedLayout == .right) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let keyStatusHeightLet = LockColorController()
		            keyStatusHeightLet.contentTotal = deadlineValue
		            
		            keyStatusHeightLet.labCount = { [self] fillMagnitude in
		            self.pushListTotal = fillMagnitude
		            
		                self.pushListTotal += 1
		                if self.pushListTotal != 65 {
		                    self.pushListTotal = self.pushListTotal - 1
		                }
		            return self.pushListTotal
		            }
		            keyStatusHeightLet.endArray = { [self] aspectAddArray in
		            self.dayArray = aspectAddArray
		            
		            guard var value = self.dayArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		            keyStatusHeightLet.textEveryDictionary = { [self] bagCommentDictionary in
		            self.imageDictionary = bagCommentDictionary
		            
		            guard var value = self.imageDictionary as? [String: String] else {
		                return nil
		            }
		            return value
		            }
		                queryValue.navigationController?.present(keyStatusHeightLet.self, animated: false) { [self] in
		            self.itemTitle = "video"
		                }
		            }
		
			}
		}
		return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension DirectorChatManager {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func mention(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(str_addText.replacingOccurrences(of: "point", with: "m") + String(str_makeText.suffix(6)))][(String(str_recommendValue))].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == MeasurementAppManager.share.loginUid {
            if dict[(str_viewValue.replacingOccurrences(of: "thumb", with: "i"))].stringValue == MeasurementAppManager.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if ImageMacroDefine.isGroupChat(msg.groupID) {
        if ImageMacroDefine.subject(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: str_episodeTitle.reversed(), encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       String(bytes: str_rowTitle, encoding: .utf8)!: msg.msgID ?? "",
                                       //: "time": sendTime]
                                       String(bytes: str_meetingValue, encoding: .utf8)!: sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.shadowInfo(info: dict)
        }
    }
}
