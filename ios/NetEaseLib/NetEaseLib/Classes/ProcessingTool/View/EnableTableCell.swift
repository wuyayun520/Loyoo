
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_arrayValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "Gifts required for the photo" :*/
fileprivate let str_behindKeyPresentValue:String = "Gifts show var session make"
fileprivate let str_colorReportData:String = "REQU"
fileprivate let str_whiteValue:String = "message center matchfor "
fileprivate let str_iconActualValue:String = "cellhoto"

/*: "Choose a gift" :*/
fileprivate let str_frameContent:String = "Chooseremark value true import"
fileprivate let str_endName:String = " a giftview let min"

/*: "#7189F7" :*/
fileprivate let str_pathMakeData:String = "view let#7189F"
fileprivate let str_cellValue:String = "data"

/*: "giftName" :*/
fileprivate let str_labelModelValue:String = "giftNamemake self make manager"

/*: "giftPrice" :*/
fileprivate let str_logValue:String = "itemif"
fileprivate let str_fatalTitle:[Character] = ["t","P","r","i","c","e"]

/*: "  %@(%@ Gold coins)" :*/
fileprivate let str_managerName:String = "  %@"
fileprivate let str_roomText:[Character] = ["G","o","l","d"," ","c","o","i","n","s",")"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableTableCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: typealias SeleteGiftBlock = (_ giftId: String) -> Void
typealias SeleteGiftBlock = (_ giftId: String) -> Void

//: class TalkingGreetPhotoTableCell: UITableViewCell {
class EnableTableCell: UITableViewCell {
	var fromQuantity: Int = 95
	var showTitle: String = "section"
	var userArray: [AnyHashable] = []

    var equalImageView: UIImageView?

    //: var seleteGiftBlock: SeleteGiftBlock?
    var seleteGiftBlock: SeleteGiftBlock?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
		if var startValue = giftView.chatRoomgiftSelectedMemberModel?.familyFrame { 
	            if (self.backGiftView.convert(CGRect(x: 0, y: CGFloat(62), width: 0, height: 0), to: self.backGiftView.superview).origin.x == 66.69) && (self.backGiftView.convert(CGRect(x: CGFloat(0), y: CGFloat(248.97), width: CGFloat(0), height: CGFloat(87)), to: self.backGiftView.superview).size.height == 34.89) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let listName = ViewBarView()
	            listName.genreDestroySwitch = selected
	            listName.voiceMagnitude = giftView.contentHeight
	            
	            listName.premiumInterval = { [self] rowNumber in
	            self.fromQuantity = rowNumber
	            
	            var listName = giftView.keyborHeight
	            listName &*= 9
	            if listName < self.fromQuantity {
	                self.fromQuantity = listName
	            }
	            
	            return self.fromQuantity
	            }
	            listName.indexText = { [self] writeText in
	            self.showTitle = writeText
	            
	            var listName = startValue
	            listName.append("^")
	            if listName.hasSuffix(self.showTitle) {
	                self.showTitle = listName
	            }
	            
	            let atStar = self.showTitle.prefix(through: self.showTitle.index(self.showTitle.startIndex, offsetBy: self.showTitle.lowercased().count)).isEmpty
	            self.showTitle.removeAll(keepingCapacity: atStar)
	            return self.showTitle
	            }
	            listName.progressArray = { [self] reArray in
	            self.userArray = reArray
	            
	            guard var value = self.userArray as? [String] else {
	                return nil
	            }
	            return value
	            }
	                self.backGiftView.addSubview(listName)
	            }
	
		}
	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: setupSubviews()
        refuseSubviews()
        //: setupSubViewsConstraint()
        slue()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_arrayValue, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backGiftView: UIView = {
    lazy var backGiftView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var giftLaB: UILabel = {
    lazy var giftLaB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.appTitleColor()
        LB.textColor = UIColor.blockOf()
        //: LB.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        LB.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: LB.text = "Gifts required for the photo".localized
        LB.text = (String(str_behindKeyPresentValue.prefix(6)) + str_colorReportData.lowercased() + "ired " + String(str_whiteValue.suffix(4)) + "the " + str_iconActualValue.replacingOccurrences(of: "cell", with: "p")).localized
        //: LB.numberOfLines = 0
        LB.numberOfLines = 0
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var giftMsgBtn: UIButton = {
    lazy var giftMsgBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(.appTitleColor(), for: .normal)
        btn.setTitleColor(.blockOf(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: btn.setBackgroundColor(color: UIColor.appBgColor(), forState: .normal)
        btn.achromaticColour(color: UIColor.playerEqual(), forState: .normal)
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(chooseGiftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(textIn), for: .touchUpInside)
        //: btn.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        btn.contentHorizontalAlignment = ConstraintLanguageManager.shared.direction == .rightToLeft ? .right : .left
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chooseGiftBtn: UIButton = {
    private lazy var chooseGiftBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(chooseGiftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(textIn), for: .touchUpInside)
        //: let str = "Choose a gift".localized
        let str = (String(str_frameContent.prefix(6)) + String(str_endName.prefix(7))).localized
        //: let attributes = [.foregroundColor: UIColor(hex: "#7189F7")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 15), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (String(str_pathMakeData.suffix(6)) + str_cellValue.replacingOccurrences(of: "data", with: "7")))!, .font: UIFont.thoughtImage(type: .Regular, fontSize: 15), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attrS = NSAttributedString(string: str, attributes: attributes)
        let attrS = NSAttributedString(string: str, attributes: attributes)
        //: btn.setAttributedTitle(attrS, for: .normal)
        btn.setAttributedTitle(attrS, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: DocumentViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .intimatePhoto, titlesArr: [.Hot])
        let giftV = DocumentViewDelegate(style: .intimatePhoto, titlesArr: [.Hot])
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingGreetPhotoTableCell {
extension EnableTableCell {
    //: @objc func chooseGiftBtnClick() {
    @objc func textIn() {
        //: func__chooseGift()
        changeShow()
    }

    //: func setGiftMsgLab(dic: Dictionary<String, Any>) {
    func pathTo(dic: [String: Any]) {
        //: let giftName = dic["giftName"] as? String ?? ""
        let giftName = dic[(String(str_labelModelValue.prefix(8)))] as? String ?? ""
        //: let giftPrice = dic["giftPrice"] as? Int ?? 0
        let giftPrice = dic[(str_logValue.replacingOccurrences(of: "item", with: "g") + String(str_fatalTitle))] as? Int ?? 0
        //: self.giftMsgBtn.setTitle("  %@(%@ Gold coins)".localizedArguments(giftName, giftPrice), for: .normal)
        self.giftMsgBtn.setTitle((str_managerName.capitalized + "(%@ " + String(str_roomText)).random(giftName, giftPrice), for: .normal)
    }
}

//: extension TalkingGreetPhotoTableCell {
extension EnableTableCell {
    //: func func__chooseGift() {
    func changeShow() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .intimatePhoto, completion: {
        GestureReactiveCompatible.share.barrel(type: .intimatePhoto, completion: {
            //: self.func__showGiftChoiceView()
            self.funcViewAwardPickPresent()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func funcViewAwardPickPresent() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: MeasurementAppManager.share.loginUserMode.mf_coin)
        giftView.titleCoin(needReload: true, mf_coin: MeasurementAppManager.share.loginUserMode.mf_coin)
        //: self.window?.addSubview(giftView)
        self.window?.addSubview(giftView)
        //: giftView.showView()
        giftView.maxView()
        //: giftView.okActionBlock = { [weak self] giftModel in
        giftView.okActionBlock = { [weak self] giftModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.giftMsgBtn.setTitle("  %@(%@ Gold coins)".localizedArguments(giftModel.name, giftModel.price), for: .normal)
            self.giftMsgBtn.setTitle((str_managerName.capitalized + "(%@ " + String(str_roomText)).random(giftModel.name, giftModel.price), for: .normal)
            //: if self.seleteGiftBlock != nil {
            if self.seleteGiftBlock != nil {
                //: self.seleteGiftBlock!(giftModel.gid)
                self.seleteGiftBlock!(giftModel.gid)
            }
        }
    }
}

//: extension TalkingGreetPhotoTableCell {
extension EnableTableCell {
    // 添加视图
    //: private func setupSubviews() {
    private func refuseSubviews() {
        //: self.contentView.addSubview(backGiftView)
        self.contentView.addSubview(backGiftView)
        //: backGiftView.addSubview(giftLaB)
        backGiftView.addSubview(giftLaB)
        //: backGiftView.addSubview(giftMsgBtn)
        backGiftView.addSubview(giftMsgBtn)
        //: backGiftView.addSubview(chooseGiftBtn)
        backGiftView.addSubview(chooseGiftBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func slue() {
        //: backGiftView.snp.makeConstraints { make in
        backGiftView.snp.makeConstraints { make in
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: giftLaB.snp.makeConstraints { make in
        giftLaB.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
        }
        //: giftMsgBtn.snp.makeConstraints { make in
        giftMsgBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(giftLaB.snp.bottom).offset(15)
            make.top.equalTo(giftLaB.snp.bottom).offset(15)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }
        //: chooseGiftBtn.snp.makeConstraints { make in
        chooseGiftBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(giftMsgBtn.snp.bottom).offset(6)
            make.top.equalTo(giftMsgBtn.snp.bottom).offset(6)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
    }
}
