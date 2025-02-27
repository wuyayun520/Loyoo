
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_nameValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "#EDEDED" :*/
fileprivate let str_appTitle:String = "button level size text create#E"
fileprivate let str_imageViewData:[Character] = ["D","E","D","E","D"]

/*: "Click for details" :*/
fileprivate let str_textData:[Character] = ["C","l","i","c","k"," ","f","o","r"," ","d","e","t","a","i","l","s"]

/*: "#128CFF" :*/
fileprivate let str_movieMessageValue:String = "section"
fileprivate let str_viewValue:[Character] = ["1","2","8","C","F","F"]

/*: "system_notif_click_go" :*/
fileprivate let str_spaceStandardData:String = "messymesste"
fileprivate let str_actionData:[Character] = ["i","f","_","c","l","i","c","k","_","g","o"]

/*: "img" :*/
fileprivate let str_totalName:[Character] = ["i","m","g"]

/*: "jumpKey" :*/
fileprivate let str_cellValue:String = "color makejumpKe"
fileprivate let str_giftData:[Character] = ["y"]

/*: "url" :*/
fileprivate let str_viewTitle:String = "utable"

/*: "mfChat" :*/
fileprivate let str_cancelValue:[UInt8] = [0x6d,0x66,0x43,0x68,0x61,0x74]

/*: "jumpUid" :*/
fileprivate let str_textName:[Character] = ["j","u","m","p","U","i","d"]

/*: "mfChatGift" :*/
fileprivate let str_contentData:[UInt8] = [0x74,0x66,0x69,0x47,0x74,0x61,0x68,0x43,0x66,0x6d]

/*: "user" :*/
fileprivate let str_componentValue:[UInt8] = [0x75,0x73,0x65,0x72]

/*: "outerUrl" :*/
fileprivate let str_guideViewValue:[UInt8] = [0x6f,0x75,0x74,0x65,0x72,0x55,0x72,0x6c]

/*: "系统通知跳转失败：不支持  :*/
fileprivate let str_timeModelData:[Character] = ["系","统","通","知","跳"]
fileprivate let str_makeValue:String = "转"
fileprivate let str_roomData:String = "失败\u{ff1a}不支持 "

/*:  跳转类型。" :*/
fileprivate let str_plusText:String = " 跳\u{8f6c}类型。"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellView.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingChatSystemNotifJumpMsgCell: TalkingChatBaseMsgCell {
class CellView: ComparableViewCell {
    var appImageView: UIImageView?

    //: var textData: TalkingChatSystemNotifJumpMsgCellData?
    var textData: SpringCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        underModel()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_nameValue, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bannerImgV: UIImageView = {
    private lazy var bannerImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: self.bubbleImgView.addSubview(img)
        self.bubbleImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleLab: YYLabel = {
    private lazy var titleLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: YYLabel = {
    private lazy var contentLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var jumpBtn: UIButton = {
    private lazy var jumpBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(jumpToDetailsButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(infoBy), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: self.bubbleImgView.addSubview(btn)
        self.bubbleImgView.addSubview(btn)
        //: let line = UIView()
        let line = UIView()
        //: line.backgroundColor = UIColor(hex: "#EDEDED")
        line.backgroundColor = UIColor(hex: (String(str_appTitle.suffix(2)) + String(str_imageViewData)))
        //: btn.addSubview(line)
        btn.addSubview(line)
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(0.5)
            make.height.equalTo(0.5)
        }
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Click for details".localized
        lab.text = (String(str_textData)).localized
        //: lab.textColor = UIColor(hex: "#128CFF")
        lab.textColor = UIColor(hex: (str_movieMessageValue.replacingOccurrences(of: "section", with: "#") + String(str_viewValue)))
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lab.font = UIFont.thoughtImage(type: .Regular, fontSize: 14)
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.outsideText(name: "system_notif_click_go")
        imgV.image = UIImage.outsideText(name: (str_spaceStandardData.replacingOccurrences(of: "mess", with: "s") + "m_not" + String(str_actionData)))
        //: btn.addSubview(imgV)
        btn.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatSystemNotifJumpMsgCell {
extension CellView {
    /// 刷新视图
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: bannerImgV.isHidden = true
        bannerImgV.isHidden = true
        //: titleLab.isHidden = true
        titleLab.isHidden = true
        //: contentLab.isHidden = true
        contentLab.isHidden = true
        //: jumpBtn.isHidden = true
        jumpBtn.isHidden = true
        //: textData = data as? TalkingChatSystemNotifJumpMsgCellData
        textData = data as? SpringCellData
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: if textData.hasBanner {
        if textData.hasBanner {
            //: bannerImgV.setUrlImage(urlStr: textData.extraJson["img"].stringValue)
            bannerImgV.recordFinish(urlStr: textData.extraJson[(String(str_totalName))].stringValue)
            //: bannerImgV.isHidden = false
            bannerImgV.isHidden = false
            //: bannerImgV.Corner(width: textData.bannerSize.width,
            bannerImgV.barRadii(width: textData.bannerSize.width,
                                //: height: textData.bannerSize.height,
                                height: textData.bannerSize.height,
                                //: corners: [ .topRight],
                                corners: [.topRight],
                                //: cornerRadii: CGSize(width: 12, height: 12))
                                cornerRadii: CGSize(width: 12, height: 12))
        }
        //: if textData.titleHeight > 0 {
        if textData.titleHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            //: titleLab.textLayout = yyLayout
            titleLab.textLayout = yyLayout
            //: titleLab.isHidden = false
            titleLab.isHidden = false
        }
        //: if textData.contentHeight > 0 {
        if textData.contentHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            //: contentLab.textLayout = yyLayout
            contentLab.textLayout = yyLayout
            //: contentLab.isHidden = false
            contentLab.isHidden = false
        }

        //: jumpBtn.isHidden = (textData.jumpHeight == 0)
        jumpBtn.isHidden = (textData.jumpHeight == 0)
    }

    /// 跳转事件
    //: @objc private func jumpToDetailsButtonEvent() {
    @objc private func infoBy() {
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: guard textData.jumpHeight > 0 else { return }
        guard textData.jumpHeight > 0 else { return }
        //: let jumpKey = textData.extraJson["jumpKey"].stringValue
        let jumpKey = textData.extraJson[(String(str_cellValue.suffix(6)) + String(str_giftData))].stringValue
        //: switch (jumpKey) {
        switch jumpKey {
        //: case "url": // 网页
        case (str_viewTitle.replacingOccurrences(of: "table", with: "rl")): // 网页
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(str_viewTitle.replacingOccurrences(of: "table", with: "rl"))].stringValue
            //: LimitPushManager.share.func__pushToWebVC(urlStr: url)
            LimitPushManager.share.comb(urlStr: url)

        //: case "mfChat":  // 私聊
        case String(bytes: str_cancelValue, encoding: .utf8)!: // 私聊
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(str_textName))].stringValue
            //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: jumpUid)
            LimitPushManager.share.sharedMode(chatID: jumpUid)

        //: case "mfChatGift":  // 私聊打开礼物面板
        case String(bytes: str_contentData.reversed(), encoding: .utf8)!: // 私聊打开礼物面板
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(str_textName))].stringValue
            //: LimitPushManager.share.func__pushToPriveteChatVC(chatID: jumpUid) { vc in
            LimitPushManager.share.sharedMode(chatID: jumpUid) { vc in
                //: vc.msgInputView.clickgiftBtn()
                vc.msgInputView.areaBtn()
            }
        //: case "user": // 用户详情
        case String(bytes: str_componentValue, encoding: .utf8)!: // 用户详情
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(str_textName))].stringValue
            //: LimitPushManager.share.func__pushToUserDetailVC(uid: jumpUid)
            LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: jumpUid)

        //: case "outerUrl": // 外链
        case String(bytes: str_guideViewValue, encoding: .utf8)!: // 外链
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(str_viewTitle.replacingOccurrences(of: "table", with: "rl"))].stringValue
            //: if let url = URL(string: url) {
            if let url = URL(string: url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        //: default:
        default:
            //: printLog(message: "系统通知跳转失败：不支持 \(jumpKey) 跳转类型。")
            printLog(message: (String(str_timeModelData) + str_makeValue.capitalized + str_roomData) + "\(jumpKey)" + (str_plusText))
        }
    }
}

// MARK: - Layout

//: extension TalkingChatSystemNotifJumpMsgCell {
extension CellView {
    /// 初始化视图
    //: private func setupSubviews() {
    private func underModel() {
        //: self.bubbleImgView.layer.cornerRadius = 2
        self.bubbleImgView.layer.cornerRadius = 2
        //: self.bubbleImgView.layer.masksToBounds = true
        self.bubbleImgView.layer.masksToBounds = true
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }

    /// 自动更新布局
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: let bannerH = textData.hasBanner ? textData.bannerSize.height:0
        let bannerH = textData.hasBanner ? textData.bannerSize.height : 0
        //: self.bannerImgV.snp.makeConstraints { make in
        self.bannerImgV.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
            //: make.width.equalTo(textData.bannerSize.width)
            make.width.equalTo(textData.bannerSize.width)
            //: make.height.equalTo(bannerH)
            make.height.equalTo(bannerH)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(textData.titleHeight)
            make.height.equalTo(textData.titleHeight)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
            //: make.height.equalTo(textData.contentHeight)
            make.height.equalTo(textData.contentHeight)
        }

        //: jumpBtn.snp.makeConstraints { make in
        jumpBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(10)
            make.top.equalTo(contentLab.snp.bottom).offset(10)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(bannerImgV)
            make.width.equalTo(bannerImgV)
            //: make.height.equalTo(textData.jumpHeight)
            make.height.equalTo(textData.jumpHeight)
        }
    }
}
