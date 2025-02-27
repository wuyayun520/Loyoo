
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OverhangThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/15.
//

//: import Then
import Then
//: import UIKit
import UIKit

// MARK: - 圆角cell

//: class TalkingRoundedCell: UITableViewCell {
class OverhangThen: UITableViewCell {
	var willText: String = "item"
	var satisfyPhoneDictionary: [AnyHashable: String] = [:]
	var disappearTitle: String = "stall"
	var whiteDictionary: [AnyHashable: String] = [:]

    var imageSuccessfulImageView: UIImageView?

    //: let cellHeight = actualHeight(h: 14)
    let cellHeight = actualHeight(h: 14)

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if (self.userActivity != nil) && (self.bounds.size.width == 286.95) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let processRefuse = EndTapView()

            processRefuse.indexClickName = { [self] popName in
            self.disappearTitle = popName
            
            return self.disappearTitle
            }
            processRefuse.sexAtDictionary = { [self] moveDictionary in
            self.whiteDictionary = moveDictionary
            
            guard var value = self.whiteDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                self.addSubview(processRefuse)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
            if (roundView.userActivity != nil) && (roundView.bounds.size.width == 286.95) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let processRefuse = EndTapView()

            processRefuse.indexClickName = { [self] popName in
            self.willText = popName
            
            return self.willText
            }
            processRefuse.sexAtDictionary = { [self] moveDictionary in
            self.satisfyPhoneDictionary = moveDictionary
            
            guard var value = self.satisfyPhoneDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                roundView.addSubview(processRefuse)
            }

	}

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.contentView.layer.masksToBounds = true
        self.contentView.layer.masksToBounds = true
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: self.setupSubviews()
        self.statusView()
        //: self.setupSubViewsConstraint()
        self.no()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorName, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var roundView = UIView().then {
    lazy var roundView = UIView().then {
        //: $0.backgroundColor = .white
        $0.backgroundColor = .white
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.cornerRadius = 15
        $0.layer.cornerRadius = 15
    }
}

// MARK: Layout

//: extension TalkingRoundedCell {
extension OverhangThen {
    //: private func setupSubviews() {
    private func statusView() {
        //: contentView.addSubview(roundView)
        contentView.addSubview(roundView)
    }

    //: private func setupSubViewsConstraint() {
    private func no() {
        //: roundView.snp.makeConstraints { make in
        roundView.snp.makeConstraints { make in
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }
    }
}
