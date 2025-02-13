
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_collectionData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "mount_img" :*/
fileprivate let str_makeToImageContent:String = "can info modelmount_"
fileprivate let str_frameData:String = "systemg"

/*: "Edit" :*/
fileprivate let str_indexWhiteTitle:String = "equal block thought section selfEdit"

/*: "btn_me_edit_add" :*/
fileprivate let str_revenueYouTitle:String = "to return coverbtn_"
fileprivate let str_offName:String = "background to init_ad"
fileprivate let str_cornerText:[Character] = ["d"]

/*: "About me" :*/
fileprivate let str_selectedText:String = "About if border text"
fileprivate let str_insideData:[Character] = ["m","e"]

/*: "My interests" :*/
fileprivate let str_leadingTitle:String = "My ivar make height to"
fileprivate let str_mediumMakeTitle:String = "ecells"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VisualImageView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: enum TagType: Int {
enum ManagerTransformable: Int {
    //: case AboutMe = 0
    case AboutMe = 0
    //: case Interests
    case Interests
}

//: typealias EditAboutBtnBlock = () -> Void
typealias EditAboutBtnBlock = () -> Void
//: typealias EditdeleteTagBlock = (UserSeleteTagModel) -> Void
typealias EditdeleteTagBlock = (OneTransformable) -> Void

//: class TalkingEditAboutMeCell: UITableViewCell {
class VisualImageView: UITableViewCell {
	var contentText: String = "image"
	var atArray: [AnyHashable] = []

    var scaleImageView: UIImageView?

    //: var tagtype: TagType = .AboutMe
    var tagtype: ManagerTransformable = .AboutMe
    //: var editBtnBlock: EditAboutBtnBlock!
    var editBtnBlock: EditAboutBtnBlock!
    //: var deleteBlock: EditdeleteTagBlock!
    var deleteBlock: EditdeleteTagBlock!

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if (tagview.forLastBaselineLayout.center.y == 76.77) && (tagview.convert(CGPoint(), from: tagview.superview).x == 22.39) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let roomWith = EqualFromView(frame: tagview.bounds.standardized)
            
            roomWith.effectContent = { [self] columnName in
            self.contentText = columnName
            
            if let listen = self.contentText.first(where: { $0.isNewline }) {
                self.contentText.insert(listen, at: self.contentText.startIndex)
            }
            return self.contentText
            }
            roomWith.textArray = { [self] phoneArray in
            self.atArray = phoneArray
            
            guard var value = self.atArray as? [String] else {
                return nil
            }
            return value
            }
                tagview.addSubview(roomWith)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
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
        //: self.addSubview(backView)

        var topView: UIView = backView
        if let imageView = self.scaleImageView, (self.superview != nil && !self.isDescendant(of: self.superview!)) && (self.autoresizingMask == .flexibleRightMargin) {
            //: SWIFT_CUSTOM_DANGER
            topView = imageView
        }
        self.addSubview(topView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(addBtn)
        backView.addSubview(addBtn)
        //: backView.addSubview(tagview)

        var equalCell: UIView = tagview
        if let imageView = self.scaleImageView, (backView.frame.origin.y == 50.36) && (backView.tintColor != nil && backView.tintColor.cgColor == UIColor.gray.cgColor) {
            //: SWIFT_CUSTOM_DANGER
            equalCell = imageView
        }
        backView.addSubview(equalCell)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_collectionData, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self).offset(-15)
            make.bottom.equalTo(self).offset(-15)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView.snp.top)
            make.top.equalTo(backView.snp.top)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }
        //: addBtn.snp.makeConstraints { make in
        addBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
            //: make.centerY.equalTo(titleLB)
            make.centerY.equalTo(titleLB)
        }
        //: tagview.snp.makeConstraints { make in
        tagview.snp.makeConstraints { make in
            //: make.leading.equalTo(backView)
            make.leading.equalTo(backView)
            //: make.trailing.equalTo(backView)
            make.trailing.equalTo(backView)
            //: make.top.equalTo(titleLB.snp.bottom)
            make.top.equalTo(titleLB.snp.bottom)
            //: make.bottom.equalTo(backView).offset(-8)
            make.bottom.equalTo(backView).offset(-8)
        }
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: tagview.setframe(frame: tagview.frame)
        tagview.smart(frame: tagview.frame)
        //: tagview.tagContentAlignment = .left
        tagview.tagContentAlignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: tagview.tagContentAlignment = .right
            tagview.tagContentAlignment = .right
        }
        //: tagview.backgroundColor = .white
        tagview.backgroundColor = .white
        scaleImageView = UIImageView(frame: self.frame.offsetBy(dx: CGFloat(Double(self.bounds.size.height)), dy: CGFloat(Int(self.frame.origin.y))))
        if let scaleImageView = scaleImageView {
            self.scaleImageView?.image = UIImage(named: (String(str_makeToImageContent.suffix(6)) + str_frameData.replacingOccurrences(of: "system", with: "im")))
            if (scaleImageView.clipsToBounds) && (scaleImageView.frame.size.height == 179.24) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(scaleImageView)
            }
        }
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
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

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lb.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.blockOf()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var addBtn: TalkingButton = {
    lazy var addBtn: PathErrorTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = PathErrorTalkingButton()
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitle("Edit".localized, for: .normal)
        btn.setTitle((String(str_indexWhiteTitle.suffix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.blockOf(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 16)
        //: btn.setImage(UIImage.outsideText(name: "btn_me_edit_add"), for: .normal)
        btn.setImage(UIImage.outsideText(name: (String(str_revenueYouTitle.suffix(4)) + "me_ed" + String(str_offName.suffix(5)) + String(str_cornerText))), for: .normal)
        //: btn.addTarget(self, action: #selector(addBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(itemClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var tagview: TalkingTagView = {
    lazy var tagview: BestirSwitcheselfDataSource = {
        //: let tag = TalkingTagView.init()
        let tag = BestirSwitcheselfDataSource()
        //: return tag
        return tag
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditAboutMeCell {
extension VisualImageView {
    //: func setTitle() {
    func sizeTitle() {
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: titleLB.text = "About me".localized
            titleLB.text = (String(str_selectedText.prefix(6)) + String(str_insideData)).localized
        //: break
        //: case .Interests:
        case .Interests:
            //: titleLB.text = "My interests".localized
            titleLB.text = (String(str_leadingTitle.prefix(4)) + "nter" + str_mediumMakeTitle.replacingOccurrences(of: "cell", with: "st")).localized
            //: break
        }
    }

    //: func setMessage(_ messarray: [UserSeleteTagModel]) {
    func outline(_ messarray: [OneTransformable]) {
        //: tagview.titles = messarray
        tagview.titles = messarray
        //: tagview.freshView()
        tagview.ofBring()
        //: tagview.deleteBlock = { tag in
        tagview.deleteBlock = { tag in
            //: if self.deleteBlock != nil {
            if self.deleteBlock != nil {
                //: self.deleteBlock(tag)
                self.deleteBlock(tag)
            }
        }
    }

    //: @objc func addBtnClick() {
    @objc func itemClick() {
        //: if editBtnBlock != nil {
        if editBtnBlock != nil {
            //: editBtnBlock()
            editBtnBlock()
        }
    }
}
