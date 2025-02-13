
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_removeText:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DigitizerView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import UIKit
import UIKit

//: class TalkingMomentTextContentView: UIView {
class DigitizerView: UIView {
	var glassesOpen: Bool = true
	var goName: String = "make"
	var signatureArray: [AnyHashable] = []
	var userDictionary: [AnyHashable: String] = [:]

    var labelImageView: UIImageView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: customUI()
        tillViewTime()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_removeText, encoding: .utf8)!)
    }

    //: func customUI() {
    func tillViewTime() {
        //: contentLabel.snp.makeConstraints { make in
        contentLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.equalTo(self.snp.bottom)
            make.bottom.equalTo(self.snp.bottom)
        }
    
	if let labelImageView = labelImageView {

            if (labelImageView.backgroundColor != nil && labelImageView.backgroundColor!.cgColor == UIColor.systemTeal.cgColor) && (labelImageView.motionEffects.count == 20) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let submitWith = LeapOutView()
            
            submitWith.falloutDoing = { [self] editOn in
            self.glassesOpen = editOn
            
            return self.glassesOpen
            }
            submitWith.priceText = { [self] imageSystemName in
            self.goName = imageSystemName
            
            return self.goName
            }
            submitWith.dataArray = { [self] halogenArray in
            self.signatureArray = halogenArray
            
            guard var value = self.signatureArray as? [String] else {
                return nil
            }
            return value
            }
            submitWith.sizeSinceDictionary = { [self] gestureDictionary in
            self.userDictionary = gestureDictionary
            
            guard var value = self.userDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                labelImageView.addSubview(submitWith)
            }

	}

	}

    //: lazy var contentLabel: UILabel = {
    lazy var contentLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 17)
        label.font = .thoughtImage(type: .Regular, fontSize: 17)
        //: label.textColor = .appValueColor()
        label.textColor = .complexion()
        //: label.numberOfLines = 3
        label.numberOfLines = 3
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()
}

//: extension TalkingMomentTextContentView {
extension DigitizerView {
    //: func configText(text: String, isMomentDetail: Bool) {
    func preface(text: String, isMomentDetail _: Bool) {
        //: contentLabel.text = text
        contentLabel.text = text
        //: contentLabel.numberOfLines = 0
        contentLabel.numberOfLines = 0
    }
}
