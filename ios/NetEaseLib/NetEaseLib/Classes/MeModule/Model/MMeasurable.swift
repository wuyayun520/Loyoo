// __DEBUG__
// __CLOSE_PRINT__
//
//  MMeasurable.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import UIKit
import UIKit

//: struct TalkingSettingModel: HandyJSON {
struct MMeasurable: HandyJSON {

    //: var isCupid: Int?                      
    var isCupid: Int?                      /// 是否接收系统匹配 -1 关闭 1开放
    //: var isSameGendered: Int?               
    var isSameGendered: Int?               /// 是否接收同性消息 -1 不接收 1接收
    //: var isLeaderboardAnonymous: Int?       
    var isLeaderboardAnonymous: Int?       /// 排行榜是否匿名 -1 不匿名 1 匿名
    //: var autoGreetAuth: Int?                
    var autoGreetAuth: Int?                /// 自动打招呼权限 -1 关闭 1开放  user/getSetting
    //: var authStatus: Int?                   
    var authStatus: Int?                   /// 自动打招呼权限 -1 关闭 1开放  greet/getSettings
  
    //: var textIsSet: Int?                    
    var textIsSet: Int?                    /// 自动打招呼文本设置，0：未设置；1：已设置
    //: var audioIsSet: Int?                   
    var audioIsSet: Int?                   /// 自动打招呼语音设置，0：未设置；1：已设置
    //: var intimatePhotoIsSet: Int?           
    var intimatePhotoIsSet: Int?           /// 是否设置了私密照片打招呼，1=已设置，0=未设置
  
}