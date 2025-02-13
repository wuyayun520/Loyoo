
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_sizeTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "btn_report_selected_nor" :*/
fileprivate let str_messageTopYourText:[Character] = ["b","t","n","_","r","e","p","o"]
fileprivate let str_playerTitle:String = "rt_selself view"
fileprivate let str_equalName:[Character] = ["e","c","t","e","d","_","n","o","r"]

/*: "· %@" :*/
fileprivate let str_hireData:String = "allow %@"

/*: "btn_report_selected_pre" :*/
fileprivate let str_makeValue:String = "btn_self view"
fileprivate let str_outsideValue:String = "t_sescale type raw"
fileprivate let str_onShowName:String = "_prein phase birth equal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AfterwardView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingReportViewCell: UITableViewCell {
class AfterwardView: UITableViewCell {
	var insertOn: Bool = true
	var videoMagnitude: Int = 28
	var picTotal: Double = 41.7
	var tablePlayerTitle: String = "index"
	var statusArray: [AnyHashable] = []
	var magnitudeEnable: Bool = false
	var timeSum: Int = 21
	var enableshootInterval: Double = -51.7
	var socialName: String = "on"
	var randomArray: [AnyHashable] = []

    var commitImageView: UIImageView?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if (!selectedImgView.autoresizesSubviews) && (selectedImgView.constraintsAffectingLayout(for: .horizontal).count == 58) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let heightRowExplain = LineView(frame: selectedImgView.bounds.offsetBy(dx: CGFloat(254.56), dy: CGFloat(514.61)))



            
            heightRowExplain.inscriptionOn = { [self] periodicTableOff in
            self.magnitudeEnable = periodicTableOff
            
            self.magnitudeEnable = true
            return self.magnitudeEnable
            }
            heightRowExplain.colorIconQuantity = { [self] filterMagnitude in
            self.timeSum = filterMagnitude
            
            return self.timeSum
            }
            heightRowExplain.giftMagnitude = { [self] timeNumber in
            self.enableshootInterval = timeNumber
            
            return self.enableshootInterval
            }
            heightRowExplain.imageContent = { [self] viewStartContent in
            self.socialName = viewStartContent
            
            return self.socialName
            }
            heightRowExplain.voiceInfoGiftArray = { [self] giftExamineArray in
            self.randomArray = giftExamineArray
            
            guard var value = self.randomArray as? [String] else {
                return nil
            }
            return value
            }
                selectedImgView.addSubview(heightRowExplain)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
            if (selectedImgView.layer.contentsRect.size.width != 1) && (selectedImgView.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let landLet = LineView()
            landLet.imageOn = animated


            
            landLet.inscriptionOn = { [self] periodicTableOff in
            self.insertOn = periodicTableOff
            
            var landLet = selected
            landLet = true
            if landLet != self.insertOn {
                self.insertOn = landLet
            }
            
                self.insertOn = false
                self.insertOn = !self.insertOn
            return self.insertOn
            }
            landLet.colorIconQuantity = { [self] filterMagnitude in
            self.videoMagnitude = filterMagnitude
            
            return self.videoMagnitude
            }
            landLet.giftMagnitude = { [self] timeNumber in
            self.picTotal = timeNumber
            
            return self.picTotal
            }
            landLet.imageContent = { [self] viewStartContent in
            self.tablePlayerTitle = viewStartContent
            
            return self.tablePlayerTitle
            }
            landLet.voiceInfoGiftArray = { [self] giftExamineArray in
            self.statusArray = giftExamineArray
            
            guard var value = self.statusArray as? [String] else {
                return nil
            }
            return value
            }
                selectedImgView.addSubview(landLet)
            }

	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.setupSubviews()
        self.statusFor()
        //: self.setupSubViewsConstraint()
        self.targetModelAdd()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_sizeTitle, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var reasonLabel = UILabel().then {
    lazy var reasonLabel = UILabel().then {
        //: $0.textColor = UIColor.appTitleColor()
        $0.textColor = UIColor.blockOf()
        //: $0.font = .pingfangFont(type: .Medium, fontSize: 16)
        $0.font = .thoughtImage(type: .Medium, fontSize: 16)
    }

    //: lazy var selectedImgView = UIImageView().then {
    lazy var selectedImgView = UIImageView().then {
        //: $0.image = UIImage.outsideText(name: "btn_report_selected_nor")
        $0.image = UIImage.outsideText(name: (String(str_messageTopYourText) + String(str_playerTitle.prefix(6)) + String(str_equalName)))
    }
}

// MARK: - update || fitHeight

//: extension TalkingReportViewCell {
extension AfterwardView {
    //: func updateReportCell(model: TalkingReportModel) {
    func forefront(model: DocumentReactiveCompatible) {
        //: reasonLabel.text = String(format: "· %@", model.reason)
        reasonLabel.text = String(format: "· %@", model.reason)
        //: var image = UIImage.outsideText(name: "btn_report_selected_nor")
        var image = UIImage.outsideText(name: (String(str_messageTopYourText) + String(str_playerTitle.prefix(6)) + String(str_equalName)))
        //: if model.selected == true {
        if model.selected == true {
            //: image = UIImage.outsideText(name: "btn_report_selected_pre").withTintColor(UIColor.appThemeColor())
            image = UIImage.outsideText(name: (String(str_makeValue.prefix(4)) + "repor" + String(str_outsideValue.prefix(4)) + "lected" + String(str_onShowName.prefix(4)))).withTintColor(UIColor.offt())
        }
        //: selectedImgView.image = image
        selectedImgView.image = image
    }
}

// MARK: - Layout

//: extension TalkingReportViewCell {
extension AfterwardView {
    //: private func setupSubviews() {
    private func statusFor() {
        //: contentView.addSubview(reasonLabel)
        contentView.addSubview(reasonLabel)
        //: contentView.addSubview(selectedImgView)
        contentView.addSubview(selectedImgView)
    }

    //: private func setupSubViewsConstraint() {
    private func targetModelAdd() {
        //: reasonLabel.snp.makeConstraints { make in
        reasonLabel.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
            make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
        }
        //: selectedImgView.snp.makeConstraints { make in
        selectedImgView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(reasonLabel.snp.centerY)
            make.centerY.equalTo(reasonLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }
    }
}
