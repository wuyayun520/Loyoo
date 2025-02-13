
//: Declare String Begin

/*: "btn_show_alertBackground" :*/
fileprivate let str_imageName:String = "event shared call leading filebtn_"
fileprivate let str_actualAddColorContent:String = "_alerback image equal text"
fileprivate let str_tableName:String = "ginfou"
fileprivate let str_itemOutsideReturnValue:String = "nview"

/*: "btn_alertBackground_false" :*/
fileprivate let str_limitVideoModelName:String = "btn_alerselected permission"
fileprivate let str_micContent:String = "tBacklet bottom return accept lock"
fileprivate let str_titleData:[Character] = ["g","r","o","u","n","d","_","f","a","l","s","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleAlertShow.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/1.
//

//: import UIKit
import UIKit

//: public enum MaskType {
public enum GestureMaskType {
    //: case color
    case color
    //: case effect
    case effect
}

//: public class TalkingAlertShow: NSObject {
public class TitleAlertShow: NSObject {
    /// 通用回调
    //: public typealias CallBack = () -> Void
    public typealias CallBack = () -> Void

    //: private static var showCoverCallBack: CallBack?
    private static var showCoverCallBack: CallBack?
    //: private static var hideCoverCallBack: CallBack?
    private static var hideCoverCallBack: CallBack?
    //: private static var willShowCoverCallBack: CallBack?
    private static var willShowCoverCallBack: CallBack?
    //: private static var willHideCoverCallBack: CallBack?
    private static var willHideCoverCallBack: CallBack?

    //: private static var showPopCallBack: CallBack?
    private static var showPopCallBack: CallBack?
    //: private static var hidePopCallBack: CallBack?
    private static var hidePopCallBack: CallBack?
}

//: extension TalkingAlertShow {
public extension TitleAlertShow {
    /// 适配器回调,用于给适配器参数赋值
    //: public typealias ConfigAlert = ((_ config: ShowAlertConfig) -> Void)
    typealias ConfigAlert = (_ config: MarkAlertConfig) -> Void

    /// 默认样式Alert
    /// - Parameters:
    ///   - title: 标题
    ///   - message: 信息
    ///   - leftBtnTitle: 左侧按钮标题
    ///   - rightBtnTitle: 右侧按钮标题
    ///   - leftBlock: 左侧按钮回调
    ///   - rightBlock: 右侧按钮回调
    //: class func alert(title: String? = nil,
    internal class func admittance(title: String? = nil,
                                   //: message: String?  = nil,
                                   message: String? = nil,
                                   //: leftBtnTitle: String? = nil,
                                   leftBtnTitle: String? = nil,
                                   //: rightBtnTitle: String? = nil,
                                   rightBtnTitle: String? = nil,
                                   //: leftBlock: LeftCallBack? = nil,
                                   leftBlock: LeftCallBack? = nil,
                                   //: rightBlock: RightCallback? = nil,
                                   rightBlock: RightCallback? = nil,
                                   //: config: ShowAlertConfig? = nil) {
                                   config: MarkAlertConfig? = nil)
    {
        //: customAlert(title: title,
        appearAll(title: title,
                  //: message: message,
                  message: message,
                  //: leftBtnTitle: leftBtnTitle,
                  leftBtnTitle: leftBtnTitle,
                  //: rightBtnTitle: rightBtnTitle,
                  rightBtnTitle: rightBtnTitle,
                  //: leftBlock: leftBlock,
                  leftBlock: leftBlock,
                  //: rightBlock: rightBlock,
                  rightBlock: rightBlock,
                  //: config: config)
                  config: config)
    }

    //: @objc class func attribAlert(title: String? = nil,
    @objc internal class func outsideWill(title: String? = nil,
                                          //: attributedMessage: NSAttributedString? = nil,
                                          attributedMessage: NSAttributedString? = nil,
                                          //: leftBtnTitle: String? = nil,
                                          leftBtnTitle: String? = nil,
                                          //: rightBtnTitle: String? = nil,
                                          rightBtnTitle: String? = nil,
                                          //: leftBlock: LeftCallBack? = nil,
                                          leftBlock: LeftCallBack? = nil,
                                          //: rightBlock: RightCallback? = nil) {
                                          rightBlock: RightCallback? = nil)
    {
        //: customAlert(title: title,
        appearAll(title: title,
                  //: attributedMessage: attributedMessage,
                  attributedMessage: attributedMessage,
                  //: leftBtnTitle: leftBtnTitle,
                  leftBtnTitle: leftBtnTitle,
                  //: rightBtnTitle: rightBtnTitle,
                  rightBtnTitle: rightBtnTitle,
                  //: leftBlock: leftBlock,
                  leftBlock: leftBlock,
                  //: rightBlock: rightBlock)
                  rightBlock: rightBlock)
    }

    /// 自定义Alert
    /// - Parameters:
    ///   - title: 标题
    ///   - attributedTitle: 富文本标题
    ///   - titleImage: 顶图
    ///   - message: 信息
    ///   - attributedMessage: 富文本信息
    ///   - leftBtnTitle: 左侧按钮标题
    ///   - leftBtnAttributedTitle: 富文本左侧按钮标题
    ///   - rightBtnTitle: 右侧按钮标题
    ///   - rightBtnAttributedTitle: 富文本右侧按钮标题
    ///   - leftBlock:  左侧按钮回调
    ///   - rightBlock: 右侧按钮回调
    ///   - config: Alert适配器，不传为默认样式
    //: public class func customAlert(title: String? = nil,
    class func appearAll(title: String? = nil,
                         //: attributedTitle: NSAttributedString? = nil,
                         attributedTitle: NSAttributedString? = nil,
                         //: image: UIImage? = nil,
                         image: UIImage? = nil,
                         //: message: String?  = nil,
                         message: String? = nil,
                         //: attributedMessage: NSAttributedString? = nil,
                         attributedMessage: NSAttributedString? = nil,
                         //: leftBtnTitle: String? = nil,
                         leftBtnTitle: String? = nil,
                         //: leftBtnAttributedTitle: NSAttributedString? = nil,
                         leftBtnAttributedTitle: NSAttributedString? = nil,
                         //: rightBtnTitle: String? = nil,
                         rightBtnTitle: String? = nil,
                         //: rightBtnAttributedTitle: NSAttributedString? = nil,
                         rightBtnAttributedTitle: NSAttributedString? = nil,
                         //: leftBlock: LeftCallBack? = nil,
                         leftBlock: LeftCallBack? = nil,
                         //: rightBlock: RightCallback? = nil,
                         rightBlock: RightCallback? = nil,
                         //: config: ShowAlertConfig? = nil) {
                         config: MarkAlertConfig? = nil)
    {
        //: hideAlert()
        lastAlert()

        //: let model = config ?? ShowAlertConfig.init()
        let model = config ?? MarkAlertConfig()

        //: let alertView = TalkingAlertView(title: title,
        let alertView = LabCellThen(title: title,
                                         //: attributedTitle: attributedTitle,
                                         attributedTitle: attributedTitle,
                                         //: image: image,
                                         image: image,
                                         //: message: message,
                                         message: message,
                                         //: attributedMessage: attributedMessage,
                                         attributedMessage: attributedMessage,
                                         //: leftBtnTitle: leftBtnTitle,
                                         leftBtnTitle: leftBtnTitle,
                                         //: leftBtnAttributedTitle: leftBtnAttributedTitle,
                                         leftBtnAttributedTitle: leftBtnAttributedTitle,
                                         //: rightBtnTitle: rightBtnTitle,
                                         rightBtnTitle: rightBtnTitle,
                                         //: rightBtnAttributedTitle: rightBtnAttributedTitle,
                                         rightBtnAttributedTitle: rightBtnAttributedTitle,
                                         //: config: model)
                                         config: model)
        //: alertView.leftBlock = leftBlock
        alertView.leftBlock = leftBlock
        //: alertView.rightBlock = rightBlock
        alertView.rightBlock = rightBlock
        //: alertView.dismissBlock = {
        alertView.dismissBlock = {
            //: hideAlert()
            lastAlert()
        }
        //: ImageMacroDefine.getWindow().addSubview(alertView)
        ImageMacroDefine.sumHungWindowObject().addSubview(alertView)
        //: alertView.snp.makeConstraints { (make) in
        alertView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 手动隐藏Alert
    //: public class func hideAlert() {
    class func lastAlert() {
        //: ImageMacroDefine.getWindow().subviews.forEach { (view) in
        ImageMacroDefine.sumHungWindowObject().subviews.forEach { view in
            //: if view.isKind(of: TalkingAlertView.self) {
            if view.isKind(of: LabCellThen.self) {
                //: UIView.animate(withDuration: 0.3) {
                UIView.animate(withDuration: 0.3) {
                    //: view.alpha = 0
                    view.alpha = 0
                    //: } completion: { _ in
                } completion: { _ in
                    //: view.removeFromSuperview()
                    view.removeFromSuperview()
                }
            }
        }
    }

    /// 修改rightBtn
    //: public class func changeRightBtn(title: String, isTouch: Bool) {
    class func contentTouch(title: String, isTouch: Bool) {
        //: ImageMacroDefine.getWindow().subviews.forEach { (view) in
        ImageMacroDefine.sumHungWindowObject().subviews.forEach { view in
            //: if view.isKind(of: TalkingAlertView.self) {
            if view.isKind(of: LabCellThen.self) {
                //: let cunrenView: TalkingAlertView = view as! TalkingAlertView
                let cunrenView: LabCellThen = view as! LabCellThen
                //: cunrenView.changeRightBtn(title: title, isTouch: isTouch)
                cunrenView.nameTouch(title: title, isTouch: isTouch)
            }
        }
    }
}

//: public class ShowAlertConfig {
public class MarkAlertConfig {
    /// 执行动画时间
    //: public var animateDuration = 0.3
    public var animateDuration = 0.3
    /// 背景蒙版 毛玻璃
    //: public var effectStyle = UIBlurEffect.Style.light
    public var effectStyle = UIBlurEffect.Style.light

    /// alert宽度
    //: public var width: Float = 297
    public var width: Float = 297
    /// alert最大高度
    //: public var maxHeight: Float = 500
    public var maxHeight: Float = 500
    /// alert按钮高度
    //: public var buttonHeight: Float = 50
    public var buttonHeight: Float = 50
    /// alert按钮圆角
    //: public var BtncornerRadius: CGFloat = 25
    public var BtncornerRadius: CGFloat = 25
    /// alert圆角
    //: public var cornerRadius: CGFloat = 15
    public var cornerRadius: CGFloat = 15
    /// alert图文间距
    //: public var space: Float = 5
    public var space: Float = 5

    /// alert主体颜色 默认
    //: public var tintColor: UIColor = .white
    public var tintColor: UIColor = .white
    /// alert背景颜色
    //: public var bgColor: UIColor = UIColor.black.withAlphaComponent(0.6)
    public var bgColor: UIColor = UIColor.black.withAlphaComponent(0.6)

    /// 默认蒙版类型
    //: public var maskType: MaskType = .color
    public var maskType: GestureMaskType = .color
    /// 阴影
    //: public var shadowColor: CGColor = UIColor.clear.cgColor
    public var shadowColor: CGColor = UIColor.clear.cgColor
    //: public var shadowOpacity: Float = 0.5
    public var shadowOpacity: Float = 0.5
    //: public var shadowRadius: CGFloat = 5
    public var shadowRadius: CGFloat = 5

    /// alert标题字体
    //: public var titleFont: UIFont = .pingfangFont(type: .Medium, fontSize: 18)
    public var titleFont: UIFont = .thoughtImage(type: .Medium, fontSize: 18)
    /// alert标题字体颜色
    //: public var titleColor  = UIColor.appTitleColor()
    public var titleColor = UIColor.blockOf()
    /// alert信息字体
    //: public var textFont: UIFont = .pingfangFont(type: .Medium, fontSize: 16)
    public var textFont: UIFont = .thoughtImage(type: .Medium, fontSize: 16)
    //: public var textColor  = UIColor.appTitleColor()
    public var textColor = UIColor.blockOf()
    //: public var textlineBreakMode = NSLineBreakMode.byWordWrapping
    public var textlineBreakMode = NSLineBreakMode.byWordWrapping

    /// alert按钮字体
    //: public var buttonFont: UIFont = .pingfangFont(type: .Medium, fontSize: 16)
    public var buttonFont: UIFont = .thoughtImage(type: .Medium, fontSize: 16)
    /// alert按钮字体颜色
    //: public var leftColor  = UIColor.appThemeColor()
    public var leftColor = UIColor.offt()
    //: public var rightColor = UIColor.white
    public var rightColor = UIColor.white
    //: public var rightBackgroundImage = "btn_show_alertBackground"
    public var rightBackgroundImage = (String(str_imageName.suffix(4)) + "show" + String(str_actualAddColorContent.prefix(5)) + "tBack" + str_tableName.replacingOccurrences(of: "info", with: "ro") + str_itemOutsideReturnValue.replacingOccurrences(of: "view", with: "d"))

    //: public var rightBackgroundImagefalse = "btn_alertBackground_false"
    public var rightBackgroundImagefalse = (String(str_limitVideoModelName.prefix(8)) + String(str_micContent.prefix(5)) + String(str_titleData))
    //: public var rightFont: UIFont = .pingfangFont(type: .Medium, fontSize: 16)
    public var rightFont: UIFont = .thoughtImage(type: .Medium, fontSize: 16)

    /// alert背景与内容之间的上下边距 默认10
    //: public var verticalPadding: Float = 18
    public var verticalPadding: Float = 18
    /// alert背景与内容之间的左右边距 默认12
    //: public var horizontalPadding: Float = 12
    public var horizontalPadding: Float = 12

    //: public var alignment: NSTextAlignment = .left
    public var alignment: NSTextAlignment = .left

    /// 输入最大文本
    //: public var lengthLimit: Int = 10
    public var lengthLimit: Int = 10
}
