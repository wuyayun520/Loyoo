
//: Declare String Begin

/*: "launchFromApns" :*/
fileprivate let str_leadingValue:String = "partneraunc"
fileprivate let str_dismissData:String = "hFview with return image label"
fileprivate let str_selectedValue:[Character] = ["r","o","m","A","p","n","s"]

/*: "type" :*/
fileprivate let str_makeValue:[Character] = ["t","y","p","e"]

/*: "fromUid" :*/
fileprivate let str_pageTitle:[Character] = ["f","r","o","m","U","i","d"]

/*: "roomId" :*/
fileprivate let str_imageTitle:String = "raw showroomId"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleTalkingManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/26.
//

//: import UIKit
import UIKit

// 推送跳转
//: enum ANPSPushType: String {
enum EnableOutputStream: String {
    //: case IM = "6"           // 私聊页
    case IM = "6" // 私聊页
    //: case Chat_Room = "7"    // 聊天室
    case Chat_Room = "7" // 聊天室
    //: case Calling = "11"     // 音视频通话
    case Calling = "11" // 音视频通话
    //: case User_Info = "12"   // 用户详情
    case User_Info = "12" // 用户详情
}

//: class TalkingAPNSManager: NSObject {
class TitleTalkingManager: NSObject {
    //: var APNSUserInfoStr = ""
    var APNSUserInfoStr = ""
    //: @objc dynamic var launchFromApns = false
    @objc dynamic var launchFromApns = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: @objc static let share = TalkingAPNSManager()
    @objc static let share = TitleTalkingManager()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func func__listenAPNSInit() {
    func imageRelease() {
        //: self.rx.observeWeakly(Bool.self, "launchFromApns")
        self.rx.observeWeakly(Bool.self, (str_leadingValue.replacingOccurrences(of: "partner", with: "l") + String(str_dismissData.prefix(2)) + String(str_selectedValue)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: self.func__actionWithPushInfo()
                    self.viewInfo()
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: func func__actionWithPushInfo() {
    func viewInfo() {
        //: if !APNSUserInfoStr.isEmptyString {
        if !APNSUserInfoStr.isEmptyString {
            //: let json = JSON(parseJSON: APNSUserInfoStr)
            let json = JSON(parseJSON: APNSUserInfoStr)
            //: let type = json["type"].stringValue
            let type = json[(String(str_makeValue))].stringValue
            //: let apnsType = ANPSPushType(rawValue: type)
            let apnsType = EnableOutputStream(rawValue: type)
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: switch(apnsType) {
                switch apnsType {
                //: case .IM:
                case .IM:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(str_pageTitle))].stringValue
                    //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: fromUid)
                    LimitPushManager.share.sharedMode(chatID: fromUid)

                //: case .Chat_Room:
                case .Chat_Room:
                    //: let roomId = json["roomId"].stringValue
                    let roomId = json[(String(str_imageTitle.suffix(6)))].stringValue
                    //: LimitPushManager.share.func__pushToGroupChat(groupId: roomId)
                    LimitPushManager.share.valueId(groupId: roomId)

                //: case .Calling:
                case .Calling:
                    //: break
                    break

                //: case .User_Info:
                case .User_Info:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(str_pageTitle))].stringValue
                    //: LimitPushManager.share.func__pushToUserDetailVC(uid: fromUid)
                    LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: fromUid)

                //: case .none:
                case .none:
                    //: break
                    break
                }

                // 跳转后还原数据
                //: TalkingAPNSManager.share.APNSUserInfoStr = ""
                TitleTalkingManager.share.APNSUserInfoStr = ""
                //: TalkingAPNSManager.share.launchFromApns = false
                TitleTalkingManager.share.launchFromApns = false
            }
        }
    }
}
