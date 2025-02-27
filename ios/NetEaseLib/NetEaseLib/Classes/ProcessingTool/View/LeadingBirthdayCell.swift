
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_shTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Birthday" :*/
fileprivate let str_modelData:String = "aspect"
fileprivate let str_byText:String = "irthblockay"

/*: "btn_me_edit" :*/
fileprivate let str_modeName:[Character] = ["b","t","n","_","m","e"]
fileprivate let str_buttonText:String = "_editnor group self view share"

/*: - :*/
fileprivate let str_scanFadeLeadingName:[Character] = ["-"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LeadingBirthdayCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: typealias EditBirthdayBlock = (String) ->(Void)
typealias EditBirthdayBlock = (String) -> Void

//: class TalkingEditBirthdayCell: UITableViewCell, DateViewDelegate {
class LeadingBirthdayCell: UITableViewCell, ScienceLaboratoryObjectProtocol {
	var checkTotal: Int = 64
	var coverCount: Int = 89
	var marketResearchQuantity: Int = 13

    var lightColoredSharedImageView: UIImageView?

    //: var myDateView: TalkingDateView!
    var myDateView: CuttingEdgeReactiveCompatible!
    //: var birthdayBlock : EditBirthdayBlock!
    var birthdayBlock: EditBirthdayBlock!

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
		if var priorityValue = self.myDateView?.defaultDay { 
			if var modelValue = myDateView?.isShowDay { 
		            if (backView.forLastBaselineLayout.center.x == 43.47) && (backView.convert(CGPoint(x: CGFloat(0), y: 0), to: backView.superview).y == 44.54) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let sizeGold = PhoneRateView()
		            sizeGold.passAwayDoing = modelValue
	
		            sizeGold.shadowRoomQuantity = { [self] lodestarQuantity in
		            self.coverCount = lodestarQuantity
		            
		            var sizeGold = priorityValue
		            sizeGold -= 1
		            if sizeGold > self.coverCount {
		                self.coverCount = sizeGold
		            }
		            
		            return self.coverCount
		            }
		                backView.addSubview(sizeGold)
		            }
		
			}
		}
	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
		if var emptyValue = self.myDateView?.defaultDay { 
			if var toValue = self.myDateView?.isShowDay { 
		
		//: if_extract_code "styleGift" begin
		
		var styleGift = false
		if !styleGift {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = self.editingInteractionConfiguration == .none
		    }
		    styleGift = isValue
		}
		
		//: if_extract_code "styleGift" end
		
		            if (styleGift) && (self.clipsToBounds) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let messageTotalimate = PhoneRateView(frame: self.bounds.standardized)
		            messageTotalimate.passAwayDoing = toValue
	
		            messageTotalimate.shadowRoomQuantity = { [self] lodestarQuantity in
		            self.marketResearchQuantity = lodestarQuantity
		            
		            var messageTotalimate = emptyValue
		            messageTotalimate &= 9
		            if messageTotalimate < self.marketResearchQuantity {
		                self.marketResearchQuantity = messageTotalimate
		            }
		            
		            return self.marketResearchQuantity
		            }
		                self.addSubview(messageTotalimate)
		            }
		
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

        //: self.addSubview(backView)

        var voiceLabel: UIView = backView
        if let imageView = self.lightColoredSharedImageView, (voiceLabel.frame.origin.y == 77.63) && (voiceLabel.isExclusiveTouch) {
            //: SWIFT_CUSTOM_DANGER
            voiceLabel = imageView
        }
        self.addSubview(voiceLabel)
        //: backView.addSubview(titleLB)

        var logTo: UIView = titleLB
        if let imageView = self.lightColoredSharedImageView, (logTo.subviews.count == 182) && (logTo.tag == 4838) {
            //: SWIFT_CUSTOM_DANGER
            logTo = imageView
        }
        backView.addSubview(logTo)
        //: backView.addSubview(editImag)
        backView.addSubview(editImag)
        //: backView.addSubview(dataBtn)
        backView.addSubview(dataBtn)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_shTitle.reversed(), encoding: .utf8)!)
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
            //: make.top.equalTo(backView).offset(13)
            make.top.equalTo(backView).offset(13)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }
        //: editImag.snp.makeConstraints { make in
        editImag.snp.makeConstraints { make in
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.width.equalTo(8)
            make.width.equalTo(8)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }
        //: dataBtn.snp.makeConstraints { make in
        dataBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.trailing.equalTo(editImag.snp.leading).offset(-8)
            make.trailing.equalTo(editImag.snp.leading).offset(-8)
            //: make.height.equalTo(19)
            make.height.equalTo(19)
        }
    
		if var taproomValue = self.myDateView?.currentMonth { 
			if var addValue = myDateView?.isShowDay { 
			if let lightColoredSharedImageView = lightColoredSharedImageView {
		
		
		//: if_extract_code "modelAt" begin
		
		var modelAt = false
		if !modelAt {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = lightColoredSharedImageView.editingInteractionConfiguration == .none
		    }
		    modelAt = isValue
		}
		
		//: if_extract_code "modelAt" end
		
		            if (modelAt) && (lightColoredSharedImageView.clipsToBounds) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let messageTotalimate = PhoneRateView(frame: lightColoredSharedImageView.bounds.standardized)
		            messageTotalimate.passAwayDoing = addValue
	
		            messageTotalimate.shadowRoomQuantity = { [self] lodestarQuantity in
		            self.checkTotal = lodestarQuantity
		            
		            var messageTotalimate = taproomValue
		            messageTotalimate &= 9
		            if messageTotalimate < self.checkTotal {
		                self.checkTotal = messageTotalimate
		            }
		            
		            return self.checkTotal
		            }
		                lightColoredSharedImageView.addSubview(messageTotalimate)
		            }
		
			}
		
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
        //: lb.text = "Birthday".localized
        lb.text = (str_modelData.replacingOccurrences(of: "aspect", with: "B") + str_byText.replacingOccurrences(of: "block", with: "d")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var editImag: UIImageView = {
    lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.outsideText(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.outsideText(name: (String(str_modeName) + String(str_buttonText.prefix(5)))))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var dataBtn: UIButton = {
    lazy var dataBtn: UIButton = {
        //: let dataBtn = UIButton.init()
        let dataBtn = UIButton()
        //: dataBtn.setTitle(MeasurementAppManager.share.loginUserMode.birthday, for: .normal)
        dataBtn.setTitle(MeasurementAppManager.share.loginUserMode.birthday, for: .normal)
        //: dataBtn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        dataBtn.setTitleColor(UIColor.blockOf(), for: .normal)
        //: dataBtn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        dataBtn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: dataBtn.addTarget(self, action: #selector(dataBtnClick), for: .touchUpInside)
        dataBtn.addTarget(self, action: #selector(ofAppear), for: .touchUpInside)
        //: return dataBtn
        return dataBtn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditBirthdayCell {
extension LeadingBirthdayCell {
    //: @objc func dataBtnClick() {
    @objc func ofAppear() {
        //: LimitPushManager.share.func__getCurrentActivityVC()?.view.endEditing(true)
        LimitPushManager.share.beforeRoom()?.view.endEditing(true)
        //: myDateView = TalkingDateView.init()
        myDateView = CuttingEdgeReactiveCompatible()
        //: myDateView.delegate = self
        myDateView.delegate = self
        //: myDateView.showView()
        myDateView.mugShot()
        //: let parts = dataBtn.titleLabel?.text?.components(separatedBy: "-")
        let parts = dataBtn.titleLabel?.text?.components(separatedBy: "-")
        //: if parts?.count ?? 0 >= 3 {
        if parts?.count ?? 0 >= 3 {
            //: let day = Int(parts![1]) ?? 1
            let day = Int(parts![1]) ?? 1
            //: let month = Int(parts![0]) ?? 1
            let month = Int(parts![0]) ?? 1
            //: let year = Int(parts![2]) ?? 1
            let year = Int(parts![2]) ?? 1
            //: DispatchQueue.main.asyncAfter(deadline: .now()+0.8) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                //: self.myDateView.setDefaultDate(year: year, month: month, day: day)
                self.myDateView.randomShared(year: year, month: month, day: day)
            }
        }
    }

    //: func pickDateView(year: Int, month: Int, day: Int) {
    func dayPop(year: Int, month: Int, day: Int) {
        //: dataBtn.setTitle("\(month)-\(day)-\(year)", for: .normal)
        dataBtn.setTitle("\(month)-\(day)-\(year)", for: .normal)
        //: if self.birthdayBlock != nil {
        if self.birthdayBlock != nil {
            //: self.birthdayBlock("\(month)-\(day)-\(year)")
            self.birthdayBlock("\(month)-\(day)-\(year)")
        }
    }
}
