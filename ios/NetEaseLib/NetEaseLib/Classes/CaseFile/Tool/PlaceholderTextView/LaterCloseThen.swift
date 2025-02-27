
//: Declare String Begin

/*: / :*/
fileprivate let str_someoneName:String = "/"

/*: "\n" :*/
fileprivate let str_labelValue:[Character] = ["\n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LaterCloseThen.swift
//  LaterCloseThen

//: import UIKit
import UIKit

// plaleLabel 的位置
//: struct PlaceholderLabelOrigin {
struct PropertyLabelOrigin {
    //: let x =  5.0
    let x = 5.0
    //: let y =  5.0
    let y = 5.0
}

// 内边距
//: struct TextContainerInset {
struct VideoContainerInset {
    //: let top: CGFloat = 5.0
    let top: CGFloat = 5.0
    //: let left: CGFloat =  5.0
    let left: CGFloat = 5.0
    //: let bottom: CGFloat = 0.0
    let bottom: CGFloat = 0.0
    //: let right: CGFloat =  0.0
    let right: CGFloat = 0.0
}

//: class PlaceholderTextView: UIView {
class LaterCloseThen: UIView {
    var allImageView: UIImageView?

    // MARK: - 懒加载属性

    //: lazy var plaleLabel = UILabel()
    lazy var plaleLabel = UILabel()
    //: lazy var countLabel = UILabel()
    lazy var countLabel = UILabel()
    //: lazy var placeholdertextView = UITextView()
    lazy var placeholdertextView = UITextView()

    // 储存属性
    //: @objc var placeholderGlobal: String? {
    @objc var placeholderGlobal: String? { // 提示文字
        //: didSet {
        didSet {
            //: plaleLabel.text = placeholderGlobal
            plaleLabel.text = placeholderGlobal
            //: plaleLabel.sizeToFit()
            plaleLabel.sizeToFit()
        }
    }

    //: @objc var placeholderColorGlobal: UIColor? {
    @objc var placeholderColorGlobal: UIColor? {
        //: didSet {
        didSet {
            //: plaleLabel.textColor = placeholderColorGlobal
            plaleLabel.textColor = placeholderColorGlobal
        }
    }

    //: @objc var isReturnHidden: Bool = false
    @objc var isReturnHidden: Bool = false // 是否点击返回失去响应
    //: @objc var isShowCountLabel: Bool = false {
    @objc var isShowCountLabel: Bool = false { // 是否显示计算个数的Label
        //: didSet {
        didSet {
            //: countLabel.isHidden = !isShowCountLabel
            countLabel.isHidden = !isShowCountLabel
        }
    }

    //: @objc var limitWords: UInt = 1000
    @objc var limitWords: UInt = 1000 // 限制输入个数   默认为999999，不限制输入

    // MARK: - 系统方法

    /// PlaceholerTextView 唯一初始化方法
    //: convenience init(placeholder: String?, placeholderColor: UIColor?, frame: CGRect) {
    convenience init(placeholder: String?, placeholderColor: UIColor?, frame: CGRect) {
        //: self.init(frame: frame)
        self.init(frame: frame)
        //: setup(placeholder: placeholder, placeholderColor: placeholderColor)
        lessColor(placeholder: placeholder, placeholderColor: placeholderColor)
        //: placeholderGlobal = placeholder
        placeholderGlobal = placeholder
        //: placeholderColorGlobal = placeholderColor
        placeholderColorGlobal = placeholderColor
    }

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    // XIB 调用
    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder aDecoder: NSCoder) {
        //: super.init(coder: aDecoder)
        super.init(coder: aDecoder)
        //: setup(placeholder: nil, placeholderColor: nil)
        lessColor(placeholder: nil, placeholderColor: nil)
    }
}

// MARK: - 自定义UI

//: extension PlaceholderTextView {
extension LaterCloseThen {
    /// placeholder Label Setup
    //: private func setup(placeholder: String?, placeholderColor: UIColor?) {
    private func lessColor(placeholder: String?, placeholderColor: UIColor?) {
        //: placeholdertextView.delegate = self
        placeholdertextView.delegate = self
        //: placeholdertextView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        placeholdertextView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        //: self.addSubview(placeholdertextView)
        self.addSubview(placeholdertextView)
        //: if placeholdertextView.font==nil {
        if placeholdertextView.font == nil {
            //: placeholdertextView.font = UIFont.systemFont(ofSize: 14)
            placeholdertextView.font = UIFont.systemFont(ofSize: 14)
        }

        //: plaleLabel.textColor = placeholderColor
        plaleLabel.textColor = placeholderColor
        //: plaleLabel.numberOfLines = 0
        plaleLabel.numberOfLines = 0
        //: plaleLabel.font = placeholdertextView.font
        plaleLabel.font = placeholdertextView.font
        //: plaleLabel.text = placeholder
        plaleLabel.text = placeholder
        //: addSubview(plaleLabel)
        addSubview(plaleLabel)
        //: plaleLabel.snp.remakeConstraints { make in
        plaleLabel.snp.remakeConstraints { make in
            //: make.leading.equalTo(PlaceholderLabelOrigin().x)
            make.leading.equalTo(PropertyLabelOrigin().x)
            //: make.top.equalTo(PlaceholderLabelOrigin().y)
            make.top.equalTo(PropertyLabelOrigin().y)
            //: make.trailing.equalTo(-PlaceholderLabelOrigin().x)
            make.trailing.equalTo(-PropertyLabelOrigin().x)
        }
        //: placeholdertextView.textContainerInset = UIEdgeInsets(top: TextContainerInset().top, left: TextContainerInset().left, bottom: TextContainerInset().bottom, right: TextContainerInset().right)
        placeholdertextView.textContainerInset = UIEdgeInsets(top: VideoContainerInset().top, left: VideoContainerInset().left, bottom: VideoContainerInset().bottom, right: VideoContainerInset().right)
        //: countLabel.font = placeholdertextView.font
        countLabel.font = placeholdertextView.font
        //: addSubview(countLabel)
        addSubview(countLabel)
    }
}

// MARK: - UITextViewDelegate代理方法

//: extension PlaceholderTextView: UITextViewDelegate {
extension LaterCloseThen: UITextViewDelegate {
    //: func textViewDidChange(_ textView: UITextView) {
    func textViewDidChange(_ textView: UITextView) {
        //: checkShowHiddenPlaceholder()
        sizeDismiss()
        //: countLabel.text = "\(textView.text.count)/\(limitWords)"
        countLabel.text = "\(textView.text.count)/\(limitWords)"
        //: countLabel.sizeToFit()
        countLabel.sizeToFit()
        //: countLabel.frame.origin = CGPoint(x: frame.width-countLabel.frame.width-10, y: frame.height-countLabel.frame.height-5)
        countLabel.frame.origin = CGPoint(x: frame.width - countLabel.frame.width - 10, y: frame.height - countLabel.frame.height - 5)
    }

    //: func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        //: if text=="\n"&&isReturnHidden==true {
        if text == "\n" && isReturnHidden == true {
            //: textView.resignFirstResponder()
            textView.resignFirstResponder()
        }

        // 大于等于限制字数，而且不是删除键的时候不可以输入。
        // 考虑复制粘贴和光标不在最后得情况
        //: if textView.text.count + range.length + text.count >= limitWords && !(text as NSString).isEqual(to: "") {
        if textView.text.count + range.length + text.count >= limitWords && !(text as NSString).isEqual(to: "") {
            //: return false
            return false
        }

        //: return true
        return true
    }
}

// MARK: - 工具方法

//: extension PlaceholderTextView {
extension LaterCloseThen {
    /// 根据textView是否有内容显示placeholder
    //: private func checkShowHiddenPlaceholder() {
    private func sizeDismiss() {
        //: if self.placeholdertextView.hasText {
        if self.placeholdertextView.hasText {
            //: plaleLabel.text = nil
            plaleLabel.text = nil
//            countLabel.isHidden = false
            //: } else {
        } else {
            //: plaleLabel.text = placeholderGlobal
            plaleLabel.text = placeholderGlobal
//            countLabel.isHidden = true
        }
    }
}
