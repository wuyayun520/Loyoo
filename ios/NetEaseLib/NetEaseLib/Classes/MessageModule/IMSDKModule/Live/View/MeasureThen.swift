
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_editNameTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#F5F5F5" :*/
fileprivate let str_normalContent:[Character] = ["#","F","5","F","5"]
fileprivate let str_tagData:String = "f5"

/*: "level_ :*/
fileprivate let str_advertisingData:[Character] = ["l","e","v","e","l","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MeasureThen.swift
//  NetEaseLib
//
//  Created by Charlotte on 2024/8/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomOnlineListCell: UITableViewCell {
class MeasureThen: UITableViewCell {
	var lastSucceedTableDoing: Bool = false
	var assessmentCount: Int = 36
	var modelCount: Double = 39.4
	var nowTapArray: [AnyHashable] = []
	var welcomeOn: Bool = true
	var collectionQuantity: Int = 68
	var enableMagnitude: Double = 62.0
	var addressArray: [AnyHashable] = []
	var picDoing: Bool = false
	var taskShouldCount: Int = 49
	var imageCount: Double = -81.1
	var pinConstraintArray: [AnyHashable] = []

    var backImageView: UIImageView?

    //: var currenModel = TalkingLiveRoomOnlineListModel()
    var currenModel = ConstraintModelType()
    //: var index = 0
    var index = 0

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if (lineView.tag == 9794) && (lineView.frame.origin.x == 89.81) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let fileAllocationTable = RecordView(frame: lineView.bounds.standardized)

            fileAllocationTable.modelEnable = { [self] intervalClose in
            self.picDoing = intervalClose
            
            return self.picDoing
            }
            fileAllocationTable.successfullyNumber = { [self] tableNumber in
            self.taskShouldCount = tableNumber
            
            var fileAllocationTable = currenModel.uid
            fileAllocationTable &*= 7
            if fileAllocationTable > self.taskShouldCount {
                self.taskShouldCount = fileAllocationTable
            }
            
            return self.taskShouldCount
            }
            fileAllocationTable.frameInterval = { [self] textQuantity in
            self.imageCount = textQuantity
            
            return self.imageCount
            }
            fileAllocationTable.managerBackRoomArray = { [self] nidusDeckArray in
            self.pinConstraintArray = nidusDeckArray
            
            guard var value = self.pinConstraintArray as? [String] else {
                return nil
            }
            return value
            }
                lineView.addSubview(fileAllocationTable)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
            if (indexLB.tag == 9794) && (indexLB.frame.origin.x == 89.81) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let fileAllocationTable = RecordView(frame: indexLB.bounds.standardized)

            fileAllocationTable.modelEnable = { [self] intervalClose in
            self.welcomeOn = intervalClose
            
            var fileAllocationTable = animated
            fileAllocationTable = false
            if fileAllocationTable != self.welcomeOn {
                self.welcomeOn = fileAllocationTable
            }
            
            return self.welcomeOn
            }
            fileAllocationTable.successfullyNumber = { [self] tableNumber in
            self.collectionQuantity = tableNumber
            
            var fileAllocationTable = self.index
            fileAllocationTable &*= 7
            if fileAllocationTable > self.collectionQuantity {
                self.collectionQuantity = fileAllocationTable
            }
            
            return self.collectionQuantity
            }
            fileAllocationTable.frameInterval = { [self] textQuantity in
            self.enableMagnitude = textQuantity
            
            return self.enableMagnitude
            }
            fileAllocationTable.managerBackRoomArray = { [self] nidusDeckArray in
            self.addressArray = nidusDeckArray
            
            guard var value = self.addressArray as? [String] else {
                return nil
            }
            return value
            }
                indexLB.addSubview(fileAllocationTable)
            }

	}

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_editNameTitle.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    
	if let backImageView = backImageView {

            if (backImageView.tag == 9794) && (backImageView.frame.origin.x == 89.81) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let fileAllocationTable = RecordView(frame: backImageView.bounds.standardized)

            fileAllocationTable.modelEnable = { [self] intervalClose in
            self.lastSucceedTableDoing = intervalClose
            
            return self.lastSucceedTableDoing
            }
            fileAllocationTable.successfullyNumber = { [self] tableNumber in
            self.assessmentCount = tableNumber
            
            var fileAllocationTable = index
            fileAllocationTable &*= 7
            if fileAllocationTable > self.assessmentCount {
                self.assessmentCount = fileAllocationTable
            }
            
            return self.assessmentCount
            }
            fileAllocationTable.frameInterval = { [self] textQuantity in
            self.modelCount = textQuantity
            
            return self.modelCount
            }
            fileAllocationTable.managerBackRoomArray = { [self] nidusDeckArray in
            self.nowTapArray = nidusDeckArray
            
            guard var value = self.nowTapArray as? [String] else {
                return nil
            }
            return value
            }
                backImageView.addSubview(fileAllocationTable)
            }

	}

	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        noneTarget()
        //: setupSubViewsConstraint()
        afterWith()
    }

    // MARK: - Lazy load

    //: lazy var indexLB: UILabel = {
    lazy var indexLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 20)
        label.font = .thoughtImage(type: .Regular, fontSize: 20)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: return label
        return label
        //: }()
    }()

    //: lazy var IconImg: UIImageView = {
    lazy var IconImg: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.layer.cornerRadius = 25
        imag.layer.cornerRadius = 25
        //: imag.layer.masksToBounds = true
        imag.layer.masksToBounds = true
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var nameLabel: UILabel = {
    lazy var nameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 18)
        label.font = .thoughtImage(type: .Medium, fontSize: 18)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: return label
        return label
        //: }()
    }()

    //: lazy var levelIcon: UIImageView = {
    lazy var levelIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#F5F5F5")
        view.backgroundColor = UIColor(hex: (String(str_normalContent) + str_tagData.uppercased()))
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomOnlineListCell {
extension MeasureThen {
    //: func setCell(model: TalkingLiveRoomOnlineListModel, index: Int) {
    func sharedExit(model: ConstraintModelType, index: Int) {
        //: currenModel = model
        currenModel = model
        //: self.index = index
        self.index = index
        //: self.indexLB.text = "\(index + 1)"
        self.indexLB.text = "\(index + 1)"
        //: IconImg.setUrlImage(urlStr: model.headPic)
        IconImg.recordFinish(urlStr: model.headPic)
        //: nameLabel.text = model.nickname
        nameLabel.text = model.nickname
        //: levelIcon.image = UIImage.outsideText(name: "level_\(model.level )")
        levelIcon.image = UIImage.outsideText(name: (String(str_advertisingData)) + "\(model.level)")
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomOnlineListCell {
extension MeasureThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func noneTarget() {
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.contentView.addSubview(indexLB)
        self.contentView.addSubview(indexLB)
        //: self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(nameLabel)
        //: self.contentView.addSubview(IconImg)
        self.contentView.addSubview(IconImg)
        //: self.contentView.addSubview(levelIcon)
        self.contentView.addSubview(levelIcon)
        //: self.contentView.addSubview(lineView)
        self.contentView.addSubview(lineView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func afterWith() {
        //: indexLB.snp.makeConstraints { make in
        indexLB.snp.makeConstraints { make in
            //: make.leading.equalTo(19)
            make.leading.equalTo(19)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: IconImg.snp.makeConstraints { make in
        IconImg.snp.makeConstraints { make in
            //: make.leading.equalTo(indexLB.snp.trailing).offset(16)
            make.leading.equalTo(indexLB.snp.trailing).offset(16)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconImg.snp.trailing).offset(10)
            make.leading.equalTo(IconImg.snp.trailing).offset(10)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(a_blockValue / 2)
        }
        //: levelIcon.snp.makeConstraints { make in
        levelIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(5)
            make.leading.equalTo(nameLabel.snp.trailing).offset(5)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(37)
            make.width.equalTo(37)
        }
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.leading.equalTo(IconImg)
            make.leading.equalTo(IconImg)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.bottom.equalTo(-1)
            make.bottom.equalTo(-1)
            //: make.height.equalTo(1)
            make.height.equalTo(1)
        }
    }
}
