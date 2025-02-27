//
//  MessageCellLayout.swift
//  NetEaseLib
//
//  Created by Hemming on 2024/8/14.
//

import UIKit

@objcMembers public class MessageCellLayout: NSObject {


    public var messageInsets:UIEdgeInsets = UIEdgeInsets(top: 12, left: 10, bottom: 12, right: 10) /// 消息边距
        
    public var bubbleInsets:UIEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)  ///  气泡内部内容边距

    public var avatarInsets:UIEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)  ///  头像边距

    public var avatarSize = CGSize(width: 45, height: 45)

    
    public init(isIncomming: Bool) {
        super.init()
    }
    
    
    /// 获取文本消息（接收）布局
    class func incommingTextMessageLayout() -> MessageCellLayout {
        let layout = MessageCellLayout.init(isIncomming: true)
        return layout
    }
    
 
    
    /// 获取文本消息（发送）布局
    class func outgoingTextMessageLayout() -> MessageCellLayout {
        let layout = MessageCellLayout.init(isIncomming: false)
        return layout
    }
    
    
    /// 获取文本消息（发送）布局
    class func systemMessageLayout() -> MessageCellLayout {
        let layout = MessageCellLayout.init(isIncomming: false)
        layout.bubbleInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return layout
    }
    
    /// 获取接收消息布局
    class func incommingMessageLayout() -> MessageCellLayout {
        let layout = MessageCellLayout.init(isIncomming: true)
        return layout

    }
    
    /// 获取发送消息布局
    class func outgoingMessageLayout() -> MessageCellLayout {
        let layout = MessageCellLayout.init(isIncomming: false)
        return layout
    }

}
