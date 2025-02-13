
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewReplyData:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "+ :*/
fileprivate let str_keyTitle:[Character] = ["+"]

/*: "area_icon_ :*/
fileprivate let str_requestData:String = "usere"
fileprivate let str_logManagerTitle:String = "status bottom make var resigna_icon_"

/*: @2x" :*/
fileprivate let str_messageData:[Character] = ["@","2","x"]

/*: "get img error" :*/
fileprivate let str_blockTitle:String = "of stageget "
fileprivate let str_pleaseName:String = "eshadowor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateView.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingAreaCodeChoiceCell: UITableViewCell {
class DateView: UITableViewCell {
	var cellTotal: Double = -78.8
	var itemText: String = "area"

    var blockImageView: UIImageView?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
            if (areaImgView.layer.anchorPoint.y != 0.5) && (areaImgView.motionEffects.count == 12) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let successNumber = TalkView(frame: areaImgView.frame.union(CGRect(x: CGFloat(457.47), y: CGFloat(384.65), width: CGFloat(0), height: CGFloat(103.50))))


            
            successNumber.blockDataNumber = { [self] imaginationImageTotal in
            self.cellTotal = imaginationImageTotal
            
                self.cellTotal += 1
                if self.cellTotal < 39 {
                    self.cellTotal = self.cellTotal - 1
                }
            return self.cellTotal
            }
            successNumber.commentGiftName = { [self] dataServiceContent in
            self.itemText = dataServiceContent
            
            if let margin = self.itemText.last {
                if self.itemText.dropFirst(5).contains(margin) {
                    NotificationCenter.default.post(name: NSNotification.Name("choice"), object: self, userInfo: [2: self.itemText.hasPrefix(self.itemText.lowercased() + "position")])
                }
            }
            return self.itemText
            }
                areaImgView.addSubview(successNumber)
            }

	}

    //: required init?(coder: NSCoder) {
    required init?(coder: NSCoder) {
        //: super.init(coder: coder)
        super.init(coder: coder)
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewReplyData, encoding: .utf8)!)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = .none
        selectionStyle = .none
        //: self.setupSubviews()
        self.positionSubviews()
        //: self.setupSubViewsConstraint()
        self.swaddlingClothesWithConstraint()
        //: self.bindInteraction()
        self.room()
    }

    //: lazy var areaImgView: UIImageView = {
    lazy var areaImgView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.layer.cornerRadius = 11
        imageView.layer.cornerRadius = 11
        //: imageView.clipsToBounds = true
        imageView.clipsToBounds = true
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var areaNameLabel: UILabel = {
    lazy var areaNameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: return label
        return label
        //: }()
    }()

    //: lazy var areaCodeLabel: UILabel = {
    lazy var areaCodeLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .thoughtImage(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: label.textAlignment = .right
        label.textAlignment = .right
        //: return label
        return label
        //: }()
    }()

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }
}

// MARK: - Public Event

//: extension TalkingAreaCodeChoiceCell {
extension DateView {
    //: public func func__updateUIWithModel(areaModel: TalkingAreaModel) {
    public func back(areaModel: PropertyModelType) {
        //: areaNameLabel.text = areaModel.areaName
        areaNameLabel.text = areaModel.areaName
        //: areaCodeLabel.text = "+\(areaModel.areaCode)"
        areaCodeLabel.text = "+\(areaModel.areaCode)"

        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (str_requestData.replacingOccurrences(of: "user", with: "ar") + String(str_logManagerTitle.suffix(7))) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = MonochromeThen.default.nearKey(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: areaImgView.image = UIImage(data: data)
                areaImgView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: areaImgView.image = UIImage.placeImgSquare()
                areaImgView.image = UIImage.pineTreeStateSquare()
                //: printLog(message: "get img error")
                printLog(message: (String(str_blockTitle.suffix(4)) + "img " + str_pleaseName.replacingOccurrences(of: "shadow", with: "rr")))
            }
            //: }else {
        } else {
            //: areaImgView.setUrlImage(urlStr: areaModel.url)
            areaImgView.recordFinish(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingAreaCodeChoiceCell {
extension DateView {
    // 添加视图
    //: private func setupSubviews() {
    private func positionSubviews() {
        //: contentView.backgroundColor = .white
        contentView.backgroundColor = .white
        //: contentView.addSubview(areaImgView)
        contentView.addSubview(areaImgView)
        //: contentView.addSubview(areaNameLabel)
        contentView.addSubview(areaNameLabel)
        //: contentView.addSubview(areaCodeLabel)
        contentView.addSubview(areaCodeLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func swaddlingClothesWithConstraint() {
        //: areaImgView.snp.makeConstraints { make in
        areaImgView.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.height.equalTo(22)
            make.width.height.equalTo(22)
        }
        //: areaNameLabel.snp.makeConstraints { make in
        areaNameLabel.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(areaImgView.snp.trailing).offset(8)
            make.leading.equalTo(areaImgView.snp.trailing).offset(8)
        }
        //: areaCodeLabel.snp.makeConstraints { make in
        areaCodeLabel.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(areaNameLabel.snp.trailing).offset(8)
            make.leading.equalTo(areaNameLabel.snp.trailing).offset(8)
            //: make.trailing.equalToSuperview().offset(-13)
            make.trailing.equalToSuperview().offset(-13)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func room() {}
}
