
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let str_liveGiftValue:[UInt8] = [0x74,0x69,0x6e,0x49,0x72,0x61,0x42,0x73,0x75,0x74,0x61,0x74,0x53,0x5f,0x6e,0x65,0x6b,0x6f,0x54,0x65,0x75,0x65,0x75,0x51,0x68,0x63,0x74,0x61,0x70,0x73,0x69,0x44]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let a_showName = String(bytes: str_liveGiftValue.reversed(), encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func argumentBlock(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}
