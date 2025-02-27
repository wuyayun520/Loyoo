
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_arrayEqualData:[UInt8] = [0xc0,0xc7,0xc0,0xdd,0x81,0xca,0xc6,0xcd,0xcc,0xdb,0x93,0x80,0x89,0xc1,0xc8,0xda,0x89,0xc7,0xc6,0xdd,0x89,0xcb,0xcc,0xcc,0xc7,0x89,0xc0,0xc4,0xd9,0xc5,0xcc,0xc4,0xcc,0xc7,0xdd,0xcc,0xcd]

/*: "icon_translation" :*/
fileprivate let str_frameTitle:[Character] = ["i","c","o","n","_"]
fileprivate let str_cornerShowName:String = "model"
fileprivate let str_sizeData:[Character] = ["r","a","n","s","l","a","t","i","o","n"]

/*: "English" :*/
fileprivate let str_videoValue:String = "event infoEnglish"

/*: "icon_translation_go" :*/
fileprivate let str_transformTitle:String = "push resulticon_"
fileprivate let str_smallValue:[Character] = ["l","a","t","i","o","n","_","g","o"]

/*: "Trans" :*/
fileprivate let str_toModelData:String = "Transimage view center"

/*: "targetText" :*/
fileprivate let str_styleTitle:String = "TARGE"
fileprivate let str_barViewTitle:[Character] = ["t","T","e","x","t"]

/*: "en" :*/
fileprivate let str_levelContent:[Character] = ["e","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import NaturalLanguage
import NaturalLanguage
//: import UIKit
import UIKit

//: class TalkingSelectTranslationView: UIView {
class TextReactiveCompatible: UIView {
    var livePlayerImageView: UIImageView?

    //: var transBlock: ((_ succeed: Bool, _ text: String) -> Void)?
    var transBlock: ((_ succeed: Bool, _ text: String) -> Void)? // 翻译结果Block
    //: private var checkTransStr = ""                                // 需要翻译的文本
    private var checkTransStr = "" // 需要翻译的文本

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        sizeInput()
        //: setupSubViewsConstraint()
        userColor()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_arrayEqualData.map{$0^169}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var leftBtn: TalkingButton = {
    private lazy var leftBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton()
        let btn = PathErrorTalkingButton()
        //: btn.setImage(UIImage.outsideText(name: "icon_translation"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_frameTitle) + str_cornerShowName.replacingOccurrences(of: "model", with: "t") + String(str_sizeData))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .thoughtImage(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.complexion(), for: .normal)
        //: btn.setTitle("English".localized, for: .normal)
        btn.setTitle((String(str_videoValue.suffix(7))).localized, for: .normal)
        //: btn.imageAlignment = .left
        btn.imageAlignment = .left
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: TalkingButton = {
    private lazy var rightBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton()
        let btn = PathErrorTalkingButton()
        //: let image = UIImage.outsideText(name: "icon_translation_go").withTintColor(.appThemeColor())
        let image = UIImage.outsideText(name: (String(str_transformTitle.suffix(5)) + "trans" + String(str_smallValue))).withTintColor(.offt())
        //: btn.setImage(image, for: .normal)
        btn.setImage(image, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 14)
        btn.titleLabel?.font = .thoughtImage(type: .Medium, fontSize: 14)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.offt(), for: .normal)
        //: btn.setTitle("Trans".localized, for: .normal)
        btn.setTitle((String(str_toModelData.prefix(5))).localized, for: .normal)
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 3
        btn.spaceBetweenTitleAndImage = 3
        //: btn.addTarget(self, action: #selector(transButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nameUp), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 请求数据

//: extension TalkingSelectTranslationView {
extension TextReactiveCompatible {
    /// 翻译文本内容
    //: private func req_translateText() {
    private func board() {
        //: DoingSheRequestTool.req_translateText(text: checkTransStr) { succeed, result, errorModel in
        DoingSheRequestTool.itemCompletion(text: checkTransStr) { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.transBlock?(succeed, "")
                self.transBlock?(succeed, "")
                //: return
                return
            }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let content = json["targetText"].stringValue
            let content = json[(str_styleTitle.lowercased() + String(str_barViewTitle))].stringValue
            //: self.transBlock?(succeed, content)
            self.transBlock?(succeed, content)
        }
    }
}

// MARK: - Event

//: extension TalkingSelectTranslationView {
extension TextReactiveCompatible {
    /// 检测输入内容是否为英文
    /// - Parameter inputText: 输入内容
    /// - Returns: 结果
    //: func checkInputLanguage(_ inputText: String) -> Bool {
    func sample(_ inputText: String) -> Bool {
        //: checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        //: guard checkTransStr.count > 0 else {
        guard checkTransStr.count > 0 else {
            //: return true
            return true
        }
        //: let languageRecognizer = NLLanguageRecognizer()
        let languageRecognizer = NLLanguageRecognizer()
        //: languageRecognizer.processString(inputText)
        languageRecognizer.processString(inputText)
        //: let language = languageRecognizer.dominantLanguage?.rawValue
        let language = languageRecognizer.dominantLanguage?.rawValue
        //: return language == "en"
        return language == "en"
    }

    /// 翻译按钮点击事件
    //: @objc private func transButtonClick() {
    @objc private func nameUp() {
        //: self.req_translateText()
        self.board()
    }
}

// MARK: - Layout

//: extension TalkingSelectTranslationView {
extension TextReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func sizeInput() {
        //: self.addSubview(leftBtn)
        self.addSubview(leftBtn)
        //: self.addSubview(rightBtn)
        self.addSubview(rightBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func userColor() {
        //: leftBtn.snp.makeConstraints { make in
        leftBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(9)
            make.top.equalTo(9)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(70)
            make.width.equalTo(70)
        }
        //: rightBtn.snp.makeConstraints { make in
        rightBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.centerY.height.equalTo(leftBtn)
            make.centerY.height.equalTo(leftBtn)
        }
    }
}
