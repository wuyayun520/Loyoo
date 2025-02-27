// __DEBUG__
// __CLOSE_PRINT__
//
//  MeasurementSegmentStyle.swift
//  ZEScollViewPage
//
//  Created by Apple on 2017/12/19.
//  Copyright © 2017年 com.dome. All rights reserved.
//

//: import UIKit
import UIKit
/// Segment样式
//: public struct SegmentStyle {
public struct MeasurementSegmentStyle {
    /// 是否显示遮盖
    //: public var showCover = false
    public var showCover = false
    /// 是否显示下划线
    //: public var showLine = false
    public var showLine = false
    /// 是否缩放文字
    //: public var scaleTitle = false
    public var scaleTitle = false
    /// 是否可以滚动标题
    //: public var scrollTitle = false
    public var scrollTitle = false
    /// 下面的滚动条的高度 默认3
    //: public var scrollLineHeight: CGFloat = 3
    public var scrollLineHeight: CGFloat = 3
    /// 下面的滚动条的颜色
    //: public var scrollLineColor = UIColor.brown
    public var scrollLineColor = UIColor.brown
    /// 遮盖的背景颜色
    //: public var coverBackgroundColor = UIColor.lightGray
    public var coverBackgroundColor = UIColor.lightGray
    /// 遮盖圆角
    //: public var coverCornerRadius: CGFloat = 14.0
    public var coverCornerRadius: CGFloat = 14.0
    /// cover的高度 默认28
    //: public var coverHeight: CGFloat = 28.0
    public var coverHeight: CGFloat = 28.0
    /// 文字间的间隔 默认15
    //: public var titleMargin: CGFloat = 9
    public var titleMargin: CGFloat = 9
    /// 文字 字体 默认14.0
    //: public var titleFont = UIFont.pingfangFont(type: .Regular, fontSize: 16)
    public var titleFont = UIFont.thoughtImage(type: .Regular, fontSize: 16)
    /// 放大倍数 默认1.3
    //: public var titleBigScale: CGFloat = 1.1
    public var titleBigScale: CGFloat = 1.1
    /// 默认倍数 不可修改
    //: let titleOriginalScale: CGFloat = 1.0
    let titleOriginalScale: CGFloat = 1.0
    
    /// 文字正常状态颜色 请使用RGB空间的颜色值!! 如果提供的不是RGB空间的颜色值就可能crash
    //: public var normalTitleColor = UIColor.white.withAlphaComponent(0.6)
    public var normalTitleColor = UIColor.white.withAlphaComponent(0.6)
    /// 文字选中状态颜色 请使用RGB空间的颜色值!! 如果提供的不是RGB空间的颜色值就可能crash
    //: public var selectedTitleColor = UIColor.white
    public var selectedTitleColor = UIColor.white
    //: public init() {
    public init() {
        
    }
}