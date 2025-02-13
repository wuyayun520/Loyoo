
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_indexContent:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "#222222" :*/
fileprivate let str_colorText:[Character] = ["#","2","2","2","2"]
fileprivate let str_normalValueName:String = "titletitle"

/*: "#EAE8FE" :*/
fileprivate let str_lineName:String = "to video in normal#EAE8F"
fileprivate let str_withData:[Character] = ["E"]

/*: "#D0D0D0" :*/
fileprivate let str_shareData:String = "raw manager let#D0D0D"
fileprivate let str_callFromTitle:[Character] = ["0"]

/*: "btn_me_edit_option_delete" :*/
fileprivate let str_talkTitle:String = "btn_image effect button edit"
fileprivate let str_nameTitle:String = "view object of outside labelit_op"
fileprivate let str_observerTitle:String = "container calendar string_delete"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LaterThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingTagCell: UICollectionViewCell {
class LaterThen: UICollectionViewCell {
    var cellQuantityeractionImageView: UIImageView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: TagBtn.frame = self.bounds
        TagBtn.frame = self.bounds
        //: self.addSubview(TagBtn)

        var labelManager: UIView = TagBtn
        if let imageView = self.cellQuantityeractionImageView, (self.convert(self.bounds.standardized, from: self.superview).origin.x == 69.48) && (self.frame.origin.y == 15.85) {
            //: SWIFT_CUSTOM_DANGER
            labelManager = imageView
        }
        self.addSubview(labelManager)
        //: TagBtn.snp.makeConstraints { make in
        TagBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_indexContent, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var TagBtn: UIButton = {
    private lazy var TagBtn: UIButton = {
        //: let temp = UIButton()
        let temp = UIButton()
        //: temp.setTitle("", for: .normal)
        temp.setTitle("", for: .normal)
        //: temp.isUserInteractionEnabled = false
        temp.isUserInteractionEnabled = false
        //: temp.setTitleColor(UIColor.init(hex: "#222222"), for: .normal)
        temp.setTitleColor(UIColor(hex: (String(str_colorText) + str_normalValueName.replacingOccurrences(of: "title", with: "2"))), for: .normal)
        //: temp.setTitleColor(UIColor.appThemeColor(), for: .selected)
        temp.setTitleColor(UIColor.offt(), for: .selected)
        //: temp.titleLabel?.font  = .pingfangFont(type: .Regular, fontSize: 15)
        temp.titleLabel?.font = .thoughtImage(type: .Regular, fontSize: 15)
        //: temp.setBackgroundColor(color: UIColor.white, forState: .normal)
        temp.achromaticColour(color: UIColor.white, forState: .normal)
        //: temp.setBackgroundColor(color: UIColor.init(hex: "#EAE8FE")!, forState: .selected)
        temp.achromaticColour(color: UIColor(hex: (String(str_lineName.suffix(6)) + String(str_withData)))!, forState: .selected)
        //: temp.layer.masksToBounds = true
        temp.layer.masksToBounds = true
        //: temp.layer.cornerRadius = 15
        temp.layer.cornerRadius = 15
        //: temp.clipsToBounds  = true
        temp.clipsToBounds = true
        //: temp.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        temp.layer.borderColor = UIColor(hex: (String(str_shareData.suffix(6)) + String(str_callFromTitle)))?.cgColor
        //: temp.layer.borderWidth = 1
        temp.layer.borderWidth = 1

        //: return temp
        return temp
        //: }()
    }()

    //: private lazy var DeleteImag: UIImageView = {
    private lazy var DeleteImag: UIImageView = {
        //: let temp = UIImageView()
        let temp = UIImageView()
        //: temp.isHidden = true
        temp.isHidden = true
        //: temp.image = UIImage.outsideText(name: "btn_me_edit_option_delete")
        temp.image = UIImage.outsideText(name: (String(str_talkTitle.prefix(4)) + "me_ed" + String(str_nameTitle.suffix(5)) + "tion" + String(str_observerTitle.suffix(7))))
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTagCell {
extension LaterThen {
    //: func fill(title: String)  {
    func clutterUp(title: String) {
        //: self.TagBtn.setTitle(title, for: .normal)
        self.TagBtn.setTitle(title, for: .normal)
    }

    //: func tagBtnClick(isSelete: Bool) {
    func receive(isSelete: Bool) {
        //: TagBtn.isSelected = isSelete
        TagBtn.isSelected = isSelete
        //: changeTagBtnLayer(btn: TagBtn)
        permissionBtn(btn: TagBtn)
    }

    //: func tagBtnClick() {
    func tagWithTap() {
        //: TagBtn.isSelected = !TagBtn.isSelected
        TagBtn.isSelected = !TagBtn.isSelected
        //: changeTagBtnLayer(btn: TagBtn)
        permissionBtn(btn: TagBtn)
    }

    //: func tagBtnselete() {
    func info() {
        //: TagBtn.isSelected = true
        TagBtn.isSelected = true
        //: changeTagBtnLayer(btn: TagBtn)
        permissionBtn(btn: TagBtn)
    }

    //: func changeTagBtnLayer(btn: UIButton) {
    func permissionBtn(btn: UIButton) {
        //: if btn.isSelected {
        if btn.isSelected {
            //: btn.layer.borderColor = UIColor.clear.cgColor
            btn.layer.borderColor = UIColor.clear.cgColor
            //: } else {
        } else {
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(str_shareData.suffix(6)) + String(str_callFromTitle)))?.cgColor
        }
    }

    //: func DeleteBtnSelete() {
    func equalSelete() {
        //: DeleteImag.isHidden = false
        DeleteImag.isHidden = false
        //: TagBtn.layer.borderColor = UIColor.white.cgColor
        TagBtn.layer.borderColor = UIColor.white.cgColor
        //: DeleteImag.isUserInteractionEnabled = false
        DeleteImag.isUserInteractionEnabled = false
    }
}
