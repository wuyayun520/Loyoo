
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_whiteName:[UInt8] = [0x24,0x23,0x24,0x39,0x65,0x2e,0x22,0x29,0x28,0x3f,0x77,0x64,0x6d,0x25,0x2c,0x3e,0x6d,0x23,0x22,0x39,0x6d,0x2f,0x28,0x28,0x23,0x6d,0x24,0x20,0x3d,0x21,0x28,0x20,0x28,0x23,0x39,0x28,0x29]

/*: "Welcome to my room" :*/
fileprivate let str_sizeData:[Character] = ["W","e","l","c","o","m","e"," ","t","o"," ","m","y"," ","r","o"]
fileprivate let str_behindName:[Character] = ["o","m"]

/*: "%@'s room" :*/
fileprivate let str_indexName:[Character] = ["%","@","\'"]
fileprivate let str_pageViewName:String = "s roomm text mask"

/*: "CCCCCC" :*/
fileprivate let str_belowTitle:[Character] = ["C"]
fileprivate let str_valueText:[Character] = ["C","C","C","C","C"]

/*: "#E1D0FC" :*/
fileprivate let str_blockValue:String = "top center view by#E1D0FC"

/*: "#FFE3E5" :*/
fileprivate let str_effectText:[Character] = ["#"]
fileprivate let str_liveNameText:String = "ffe3e5"

/*: "get json error" :*/
fileprivate let str_toAddData:String = "get json type let make video"
fileprivate let str_makeContent:String = "eviewviewoview"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfReactiveCompatible.swift
//  NetEaseLib
//
//  Created by Hemming on 2024/9/24.
//

//: import UIKit
import UIKit

//: class PartyListCell: UITableViewCell {
class OfReactiveCompatible: UITableViewCell {
	var holderTotal: Double = -68.9
	var jumpQuantity: Double = 84.3

    var mostValuablePlayerImageView: UIImageView?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        travelRapidlyRowSubviews()
        //: setupSubViewsConstraint()
        naturalEvent()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_whiteName.map{$0^77}, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    
            if (self.layer.shadowRadius == 1.81) && (self.layer.contentsRect.origin.x != 0) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let gesturePackage = TimePeriodView(frame: self.frame)


            gesturePackage.labCount = { [self] detailInterval in
            self.jumpQuantity = detailInterval
            
            return self.jumpQuantity
            }
                self.addSubview(gesturePackage)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    
	if let mostValuablePlayerImageView = mostValuablePlayerImageView {

            if (mostValuablePlayerImageView.layer.shadowRadius == 1.81) && (mostValuablePlayerImageView.layer.contentsRect.origin.x != 0) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let gesturePackage = TimePeriodView(frame: mostValuablePlayerImageView.frame)
            gesturePackage.bagOpen = animated

            gesturePackage.labCount = { [self] detailInterval in
            self.holderTotal = detailInterval
            
            return self.holderTotal
            }
                mostValuablePlayerImageView.addSubview(gesturePackage)
            }

	}

	}

    //: var listModel: PartyListModel? {
    var listModel: MediaTransformable? {
        //: didSet {
        didSet {
            //: guard let listModel else { return }
            guard let listModel else { return }

            //: if String(listModel.uid) == MeasurementAppManager.share.loginUid {
            if String(listModel.uid) == MeasurementAppManager.share.loginUid {
                //: bgvlayer.isHidden = false
                bgvlayer.isHidden = false
                //: countryImgView.isHidden = true
                countryImgView.isHidden = true
                //: countryLab.text = "Welcome to my room".localized
                countryLab.text = (String(str_sizeData) + String(str_behindName)).localized
                //: countryLab.textColor = .appValueColor()
                countryLab.textColor = .complexion()
                //: countryLab.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
                countryLab.font = UIFont.thoughtImage(type: .Medium, fontSize: 15)
                //: countryLab.snp.updateConstraints { make in
                countryLab.snp.updateConstraints { make in
                    //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
                    make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
                }
                //: }else{
            } else {
                //: bgvlayer.isHidden = true
                bgvlayer.isHidden = true
                //: countryImgView.isHidden = false
                countryImgView.isHidden = false
                //: countryLab.text = "\(listModel.country)"
                countryLab.text = "\(listModel.country)"
                //: countryLab.textColor = .appValueDetailColor()
                countryLab.textColor = .observerShared()
                //: countryLab.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
                countryLab.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
                //: countryLab.snp.updateConstraints { make in
                countryLab.snp.updateConstraints { make in
                    //: make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
                    make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
                }
            }
            //: headPicImgV.setUrlImage(urlStr: listModel.pic)
            headPicImgV.recordFinish(urlStr: listModel.pic)
            //: nameLab.text = "%@'s room".localizedArguments(listModel.name)
            nameLab.text = (String(str_indexName) + String(str_pageViewName.prefix(6))).random(listModel.name)
            //: countryImgView.setUrlImage(urlStr: listModel.flag)
            countryImgView.recordFinish(urlStr: listModel.flag)
            //: hotLab.text = "\(listModel.score)"
            hotLab.text = "\(listModel.score)"

            //: let hotWidth  = hotLab.sizeThatFits(CGSize(width: ScreenWidth, height: 20)).width
            let hotWidth = hotLab.sizeThatFits(CGSize(width: a_blockValue, height: 20)).width

            //: hotLab.snp.updateConstraints { make in
            hotLab.snp.updateConstraints { make in
                //: make.width.equalTo(hotWidth)
                make.width.equalTo(hotWidth)
            }
        }
    }

    // MARK: - Lazy load

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.white
        v.backgroundColor = UIColor.white
        //: v.layer.cornerRadius = 9
        v.layer.cornerRadius = 9
        //: v.layer.shadowColor = UIColor(hex: "CCCCCC")?.withAlphaComponent(0.5).cgColor
        v.layer.shadowColor = UIColor(hex: (String(str_belowTitle) + String(str_valueText)))?.withAlphaComponent(0.5).cgColor
        //: v.layer.shadowOffset = CGSize(width: 0, height: 1)
        v.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 4
        v.layer.shadowRadius = 4
        //: return v
        return v
        //: }()
    }()

    //: private lazy var bgvlayer: CAGradientLayer = {
    private lazy var bgvlayer: CAGradientLayer = {
        // 渐变色
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth - 24, height: 76)
        layer.frame = CGRect(x: 0, y: 0, width: a_blockValue - 24, height: 76)
        //: layer.startPoint = CGPoint(x: 0, y: 0)
        layer.startPoint = CGPoint(x: 0, y: 0)
        //: layer.endPoint = CGPoint(x: 1, y: 0.5)
        layer.endPoint = CGPoint(x: 1, y: 0.5)
        //: layer.colors = [UIColor(hex: "#E1D0FC")?.cgColor, UIColor(hex: "#FFE3E5")?.cgColor]
        layer.colors = [UIColor(hex: (String(str_blockValue.suffix(7))))?.cgColor, UIColor(hex: (String(str_effectText) + str_liveNameText.uppercased()))?.cgColor]
        //: layer.cornerRadius = 9
        layer.cornerRadius = 9
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var headPicImgV: UIImageView = {
    private lazy var headPicImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = 60/2
        img.layer.cornerRadius = 60 / 2
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.image = .placeImgSquare()
        img.image = .pineTreeStateSquare()
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .blockOf()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var countryImgView: UIImageView = {
    private lazy var countryImgView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var countryLab: UILabel = {
    private lazy var countryLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lab.font = UIFont.thoughtImage(type: .Regular, fontSize: 15)
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .observerShared()

        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var liveSvga: SVGAPlayer = {
    private lazy var liveSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Party_List)
            let url = MonochromeThen.default.telecasting(type: .Party_List)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_toAddData.prefix(9)) + str_makeContent.replacingOccurrences(of: "view", with: "r")))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var hotLab: UILabel = {
    private lazy var hotLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 13)
        lab.font = UIFont.thoughtImage(type: .Medium, fontSize: 13)
        //: lab.textColor = .appValueColor()
        lab.textColor = .complexion()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ConstraintLanguageManager.shared.direction == .rightToLeft {
            //: lab.textAlignment = .left
            lab.textAlignment = .left
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
            //: }else{
        } else {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
        }
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Layout

//: extension PartyListCell {
extension OfReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func travelRapidlyRowSubviews() {
        //: self.contentView .addSubview(bgView)
        self.contentView.addSubview(bgView)
        //: bgView.layer.addSublayer(bgvlayer)
        bgView.layer.addSublayer(bgvlayer)
        //: bgView.addSubview(headPicImgV)
        bgView.addSubview(headPicImgV)
        //: bgView.addSubview(nameLab)
        bgView.addSubview(nameLab)
        //: bgView.addSubview(countryImgView)
        bgView.addSubview(countryImgView)
        //: bgView.addSubview(countryLab)
        bgView.addSubview(countryLab)
        //: bgView.addSubview(hotLab)
        bgView.addSubview(hotLab)
        //: bgView.addSubview(liveSvga)
        bgView.addSubview(liveSvga)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func naturalEvent() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview().inset(12)
            make.leading.trailing.equalToSuperview().inset(12)
            //: make.bottom.top.equalToSuperview().inset(6)
            make.bottom.top.equalToSuperview().inset(6)
        }
        //: headPicImgV.snp.makeConstraints { make in
        headPicImgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.top.bottom.equalToSuperview().inset(8)
            make.leading.top.bottom.equalToSuperview().inset(8)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            //: make.top.equalTo(headPicImgV.snp.top).offset(6)
            make.top.equalTo(headPicImgV.snp.top).offset(6)
            //: make.trailing.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
        }
        //: countryImgView.snp.makeConstraints { make in
        countryImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            //: make.top.equalTo(nameLab.snp.bottom).offset(8)
            make.top.equalTo(nameLab.snp.bottom).offset(8)
            //: make.width.height.equalTo(18)
            make.width.height.equalTo(18)
        }
        //: countryLab.snp.makeConstraints { make in
        countryLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(countryImgView)
            make.centerY.equalTo(countryImgView)
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
            //: make.trailing.equalTo(liveSvga.snp.leading).offset(-5)
            make.trailing.equalTo(liveSvga.snp.leading).offset(-5)
        }
        //: hotLab.snp.makeConstraints { make in
        hotLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(countryImgView).offset(2)
            make.centerY.equalTo(countryImgView).offset(2)
            //: make.trailing.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
        }

        //: liveSvga.snp.makeConstraints { make in
        liveSvga.snp.makeConstraints { make in
            //: make.centerY.equalTo(countryImgView)
            make.centerY.equalTo(countryImgView)
            //: make.trailing.equalTo(hotLab.snp.leading).offset(-4)
            make.trailing.equalTo(hotLab.snp.leading).offset(-4)
            //: make.width.equalTo(17)
            make.width.equalTo(17)
            //: make.height.equalTo(15)
            make.height.equalTo(15)
        }
    }
}
