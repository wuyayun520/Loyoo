// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelOn.swift
//  Pods-DropMenuDemo
//
//  Created by song on 2020/8/4.
//

//: import Foundation
import Foundation
//: public enum DropMenuStyle {
public enum NameMenuStyle {
  //: case MenuDarkStyle 
  case MenuDarkStyle // 黑底白字
  //: case MenuLightStyle 
  case MenuLightStyle // 白底黑字
  //: case MenuCustStyle 
  case MenuCustStyle //
}

//: public struct Config {
public struct Config {
    //: public static var menuContentMargin: CGFloat = 15.0 
    public static var menuContentMargin: CGFloat = 15.0 // 默认文本图片边距
    //: public static var menuImageWidth: CGFloat = 15.0 
    public static var menuImageWidth: CGFloat = 15.0 // 默认图片最小尺寸
    //: public static var menuBorderMinMargin: CGFloat = 15.0 
    public static var menuBorderMinMargin: CGFloat = 15.0 // 默认下拉框边界围栏
    //: public static var menuTitleFontSize: CGFloat = 13.0 
    public static var menuTitleFontSize: CGFloat = 13.0 // 默认文本字体大小
    
    //: public static var initialMenuStyle: DropMenuStyle?
    public static var initialMenuStyle: NameMenuStyle?

    
    //: public struct MenuCellConfig {        
    public struct ErrorConfig {        
        //: public static var lineColor = UIColor.lightGray
        public static var lineColor = UIColor.lightGray
        //: public static var menuCellHeight: CGFloat = 50.0
        public static var menuCellHeight: CGFloat = 50.0
        //: public static var menuMaxHeight: CGFloat = 5 * 50.0
        public static var menuMaxHeight: CGFloat = 5 * 50.0
    }
    
    //: public struct DropMenuConfig {
    public struct ModelOn {
        //: public static var menuBgColor = UIColor.yellow
        public static var menuBgColor = UIColor.yellow
        //: public static var coverBgColor = UIColor.clear
        public static var coverBgColor = UIColor.clear
        //: public static var triangleHeight: CGFloat = 8.0
        public static var triangleHeight: CGFloat = 8.0
        //: public static var adjustPullDown = true
        public static var adjustPullDown = true

    }
}