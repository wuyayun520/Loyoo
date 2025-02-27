
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_addTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "btn_chat_send_nor" :*/
fileprivate let str_countryText:[Character] = ["b","t","n","_","c","h","a","t"]
fileprivate let str_textTitle:String = "range view case image_send_nor"

/*: "btn_chat_send_dis" :*/
fileprivate let str_fileTitle:String = "coin make userbtn_ch"
fileprivate let str_selectedKitTitle:[Character] = ["a"]
fileprivate let str_infoViewVarData:String = "add toward vart_send"

/*: "Send" :*/
fileprivate let str_photoValue:String = "Sendadd center equal model length"

/*: "Say something...     " :*/
fileprivate let str_viewData:[Character] = ["S","a","y"," ","s"]
fileprivate let str_blueName:[Character] = ["o","m","e","t","h","i","n","g",".",".","."," "," "," "," "," "]

/*: "Can't send blank message" :*/
fileprivate let str_colorValue:String = "Can\'"
fileprivate let str_inputPartyContent:[Character] = ["n","d"," ","b","l","a","n","k"," ","m","e","s","s","a","g","e"]

/*: "uid" :*/
fileprivate let str_seatText:[UInt8] = [0x75,0x69,0x64]

/*: "name" :*/
fileprivate let str_colorName:[Character] = ["n","a","m","e"]

/*: "@ :*/
fileprivate let str_pointContent:String = "need"

/*:  " :*/
fileprivate let str_succeedTitle:String = " "

/*: "length" :*/
fileprivate let str_managerRowValue:String = "lengtlab"

/*: "<at>@ :*/
fileprivate let str_failureTitle:[Character] = ["<","a","t",">","@"]

/*: </at> " :*/
fileprivate let str_videoSumeractionText:[Character] = ["<","/","a","t",">"]
fileprivate let str_lengthName:[Character] = [" "]

/*: "\n" :*/
fileprivate let str_firstName:String = "\n"

/*: "contentSize" :*/
fileprivate let str_videoName:String = "section rawcontentS"
fileprivate let str_closedText:[Character] = ["i","z","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SocialTitleViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingLiveRoomInputViewDelegate: NSObject {
protocol TenantThen: NSObject {
    //: func func__sendTextMsg(msgStr: String, atUid: String?)
    func choice(msgStr: String, atUid: String?)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func indexMain(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func inputSignal(height: CGFloat)
}

//: class TalkingLiveRoomInputView: UIView {
class SocialTitleViewDelegate: UIView {
    var randomMakeImageView: UIImageView?

    //: open weak var delegate: TalkingLiveRoomInputViewDelegate?
    open weak var delegate: TenantThen?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()
    //: private var atDic: [String: Any]?
    private var atDic: [String: Any]?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        mentalFaculty()
        //: setupSubViewsConstraint()
        charmFrameConstraint()
        //: bindInteraction()
        starMagnitudeeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_addTitle, encoding: .utf8)!)
    }

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.outsideText(name: "btn_chat_send_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.outsideText(name: (String(str_countryText) + String(str_textTitle.suffix(9)))), for: .normal)
        //: btn.setBackgroundImage(UIImage.outsideText(name: "btn_chat_send_nor"), for: .highlighted)
        btn.setBackgroundImage(UIImage.outsideText(name: (String(str_countryText) + String(str_textTitle.suffix(9)))), for: .highlighted)
        //: btn.setBackgroundImage(UIImage.outsideText(name: "btn_chat_send_dis"), for: .disabled)
        btn.setBackgroundImage(UIImage.outsideText(name: (String(str_fileTitle.suffix(6)) + String(str_selectedKitTitle) + String(str_infoViewVarData.suffix(6)) + "_dis")), for: .disabled)
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(numberimate), for: .touchUpInside)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_photoValue.prefix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
        btn.titleLabel?.font = UIFont.methodPlay(fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view

        //: }()
    }()

    //: lazy var inputTextView: InputTextView = {
    lazy var inputTextView: CommercialDocumentTextView = {
        //: let input = InputTextView()
        let input = CommercialDocumentTextView()
        //: input.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        input.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
        //: input.placeholderColor = UIColor.appValueDetailColor()
        input.placeholderColor = UIColor.observerShared()
        //: input.placeholder = "Say something...     ".localized
        input.placeholder = (String(str_viewData) + String(str_blueName)).localized
        //: input.returnKeyType = .send
        input.returnKeyType = .send
        //: input.scrollsToTop = false
        input.scrollsToTop = false
        //: input.delegate = self
        input.delegate = self
        //: input.backgroundColor = UIColor.white
        input.backgroundColor = UIColor.white
        //: input.textColor = UIColor.appTitleColor()
        input.textColor = UIColor.blockOf()
        //: self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 15)]
        self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.blockOf(), .font: UIFont.thoughtImage(type: .Regular, fontSize: 15)]
        //: input.typingAttributes = self.inputAttr
        input.typingAttributes = self.inputAttr
        //: input.layer.cornerRadius = 5
        input.layer.cornerRadius = 5
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()
}

//: extension TalkingLiveRoomInputView {
extension SocialTitleViewDelegate {
    /// 拉起输入框
    //: func updatePlaceholder() {
    func soupUpBlock() {
        //: self.isHidden = false
        self.isHidden = false
        //: inputTextView.becomeFirstResponder()
        inputTextView.becomeFirstResponder()
    }

    //: @objc func commentBtnClick() {
    @objc func numberimate() {
        //: let textstr = self.handleSendText(text: inputTextView.attributedText)
        let textstr = self.coordinateModel(text: inputTextView.attributedText)
        //: let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        //: if temStr.count == 0 {
        if temStr.count == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "Can't send blank message".localized)
            episode(showMsg: (str_colorValue + "t se" + String(str_inputPartyContent)).localized)
            //: return
            return
        }
        //: let atStr: String = atDic?["uid"] as? String ?? ""
        let atStr: String = atDic?[String(bytes: str_seatText, encoding: .utf8)!] as? String ?? ""
        //: self.delegate?.func__sendTextMsg(msgStr: textstr, atUid: atStr)
        self.delegate?.choice(msgStr: textstr, atUid: atStr)
        //: atDic = nil
        atDic = nil
        //: sendBtn.isEnabled = false
        sendBtn.isEnabled = false
        //: resignkeyBoard()
        equalContent()
    }

    //: func resignkeyBoard() {
    func equalContent() {
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: if (inputTextView.text.count == 0) {
        if inputTextView.text.count == 0 {
            //: inputTextView.placeholder = "Say something...     ".localized
            inputTextView.placeholder = (String(str_viewData) + String(str_blueName)).localized
        }
    }

    //: func func__updateInputContentView() {
    func span() {
        //: let textSize = inputTextView.contentSize
        let textSize = inputTextView.contentSize
        //: let textHeight = max(30, min(100, textSize.height))
        let textHeight = max(30, min(100, textSize.height))
        //: inputTextView.snp.updateConstraints { make in
        inputTextView.snp.updateConstraints { make in
            //: make.height.equalTo(textHeight)
            make.height.equalTo(textHeight)
        }
        //: self.delegate?.inputViewHeightChanged(height: textHeight+16)
        self.delegate?.inputSignal(height: textHeight + 16)
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func indexForNotification(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)
        //: let height = kbRect.size.height
        let height = kbRect.size.height
        //: self.delegate?.heightToBottomChanged(heightToBottom: height)
        self.delegate?.indexMain(heightToBottom: height)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func hold(notification _: NSNotification) {
        //: self.isHidden = true
        self.isHidden = true
        //: atDic = nil
        atDic = nil
        //: inputTextView.attributedText = nil
        inputTextView.attributedText = nil
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.indexMain(heightToBottom: 0)
    }

    //: func callUserText(toUid: String, nickName: String) {
    func makeContent(toUid: String, nickName: String) {
        //: updatePlaceholder()
        soupUpBlock()
        //: atDic = ["uid": toUid, "name": nickName]
        atDic = [String(bytes: str_seatText, encoding: .utf8)!: toUid, (String(str_colorName)): nickName]
        //: self.receiveAtInfotoUser(range: nil, dict: atDic!)
        self.mainGesture(range: nil, dict: atDic!)
    }
}

//: extension TalkingLiveRoomInputView {
extension SocialTitleViewDelegate {
    /// 替换@ 消息为富文本
    //: func receiveAtInfotoUser(range: NSRange?, dict: [String: Any]) {
    func mainGesture(range: NSRange?, dict: [String: Any]) {
        //: var atRange = range
        var atRange = range
        //: if atRange != nil {
        if atRange != nil { // 输入框@
            //: if atRange!.location > 0 && (atRange!.length + atRange!.location > self.inputTextView.text.count) {
            if atRange!.location > 0, atRange!.length + atRange!.location > self.inputTextView.text.count {
                //: atRange!.location -= 1
                atRange!.location -= 1
            }
            //: } else {
        } else { // 操作面板@ Ta
            //: atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
            atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
        }

        //: let atStr: String = "@\(dict["name"] ?? "") "
        let atStr = "@\(dict[(String(str_colorName))] ?? "") "
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = UIColor.RGBA(0, 132, 255, 1)
        label.textColor = UIColor.each(0, 132, 255, 1)
        //: label.font = UIFont.systemFont(ofSize: 16)
        label.font = UIFont.systemFont(ofSize: 16)
        //: label.text = atStr
        label.text = atStr
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.sizeToFit()
        label.sizeToFit()
        //: let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        //: let image = renderer.image { context in
        let image = renderer.image { context in
            //: label.layer.render(in: context.cgContext)
            label.layer.render(in: context.cgContext)
        }

        //: let textAtta = TalkingTextAttachment()
        let textAtta = AppEqualThen()
        //: textAtta.bounds = CGRect(x: 0, y: label.font.descender,
        textAtta.bounds = CGRect(x: 0, y: label.font.descender,
                                 //: width: image.size.width,
                                 width: image.size.width,
                                 //: height: image.size.height)
                                 height: image.size.height)
        //: textAtta.image = image
        textAtta.image = image
        //: var atInfo = dict
        var atInfo = dict
        //: atInfo["length"] = atStr.count
        atInfo[(str_managerRowValue.replacingOccurrences(of: "lab", with: "h"))] = atStr.count
        //: textAtta.atInfo = atInfo
        textAtta.atInfo = atInfo

        //: let attaImage = NSAttributedString(attachment: textAtta)
        let attaImage = NSAttributedString(attachment: textAtta)
        //: let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        //: attrText.replaceCharacters(in: atRange!, with: attaImage)
        attrText.replaceCharacters(in: atRange!, with: attaImage)
        //: self.inputTextView.attributedText = attrText
        self.inputTextView.attributedText = attrText
    }

    /// 发送消息处理富文本
    //: private func handleSendText(text: NSAttributedString?) -> String {
    private func coordinateModel(text: NSAttributedString?) -> String {
        //: var mText: NSMutableAttributedString!
        var mText: NSMutableAttributedString!
        //: if text == nil {
        if text == nil {
            //: mText = NSMutableAttributedString(string: "")
            mText = NSMutableAttributedString(string: "")
            //: } else {
        } else {
            //: mText = NSMutableAttributedString(attributedString: text!)
            mText = NSMutableAttributedString(attributedString: text!)
        }

        //: var string = String()
        var string = String()
        //: mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, stop in
        mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, _ in
            //: let atta = attrs[NSAttributedString.Key.attachment] as? TalkingTextAttachment
            let atta = attrs[NSAttributedString.Key.attachment] as? AppEqualThen
            //: if atta != nil && range.length == 1 {
            if atta != nil && range.length == 1 {
                //: if let name = atta!.atInfo["name"] {
                if let name = atta!.atInfo[(String(str_colorName))] {
                    //: let str = "<at>@\(name)</at> "
                    let str = "<at>@\(name)</at> "
                    //: string.append(str)
                    string.append(str)
                }
                //: } else {
            } else {
                //: let str = mText.attributedSubstring(from: range).string
                let str = mText.attributedSubstring(from: range).string
                //: string.append(str)
                string.append(str)
            }
        }

        //: return string
        return string
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingLiveRoomInputView: UITextViewDelegate {
extension SocialTitleViewDelegate: UITextViewDelegate {
    //: func textViewDidEndEditing(_ textView: UITextView) {
    func textViewDidEndEditing(_: UITextView) {}

    //: func textViewDidChange(_ textView: UITextView) {
    func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count>0 {
        if textView.text.count > 0 {
            //: sendBtn.isEnabled = true
            sendBtn.isEnabled = true
            //: } else {
        } else {
            //: sendBtn.isEnabled = false
            sendBtn.isEnabled = false
        }
    }

    //: func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.text.count == 0 {
        if textView.text.count == 0 {
            //: atDic = nil
            atDic = nil
        }
        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: if (text == "\n") {
        if text == "\n" {
            //: commentBtnClick()
            numberimate()
            //: textView.resignFirstResponder()
            textView.resignFirstResponder()
        }
        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension TalkingLiveRoomInputView {
extension SocialTitleViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func mentalFaculty() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(sendBtn)
        contentView.addSubview(sendBtn)
        //: contentView.addSubview(inputTextView)
        contentView.addSubview(inputTextView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func charmFrameConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-8)
            make.trailing.equalTo(-8)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: inputTextView.snp.makeConstraints { make in
        inputTextView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(contentView.snp.leading).offset(15)
            make.leading.equalTo(contentView.snp.leading).offset(15)
            //: make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func starMagnitudeeraction() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(indexForNotification(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(hold(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (String(str_videoName.suffix(8)) + String(str_closedText))).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.span()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
