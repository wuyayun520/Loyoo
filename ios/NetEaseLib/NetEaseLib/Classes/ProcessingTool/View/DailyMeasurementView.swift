
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_informationResultFrameText:[UInt8] = [0xc2,0xc5,0xc2,0xdf,0x83,0xc8,0xc4,0xcf,0xce,0xd9,0x91,0x82,0x8b,0xc3,0xca,0xd8,0x8b,0xc5,0xc4,0xdf,0x8b,0xc9,0xce,0xce,0xc5,0x8b,0xc2,0xc6,0xdb,0xc7,0xce,0xc6,0xce,0xc5,0xdf,0xce,0xcf]

/*: "Sun" :*/
fileprivate let str_sizeTitle:String = "Sunmake let false string"

/*: "Mon" :*/
fileprivate let str_clearLiveTitle:String = "begin imageMon"

/*: "Tue" :*/
fileprivate let str_languageMakeSumData:String = "Tueelse of push free"

/*: "Wed" :*/
fileprivate let str_modelPathToTitle:[Character] = ["W","e","d"]

/*: "Thu" :*/
fileprivate let str_toData:[Character] = ["T","h","u"]

/*: "Fri" :*/
fileprivate let str_targetName:[Character] = ["F","r","i"]

/*: "Sat" :*/
fileprivate let str_quoteMakeData:String = "Satlet share target var"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DailyMeasurementView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: let TalkingDailyHeaderView_H = actualWidth(w: 96)
let a_maxText = actualWidth(w: 96)

//: class TalkingDailyHeaderView: UICollectionReusableView {
class DailyMeasurementView: UICollectionReusableView {
    var iconActualImageImageView: UIImageView?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_informationResultFrameText.map{$0^171}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.viewSubviews()
        //: self.setupSubViewsConstraint()
        self.colouredTotaleraction()
    }

    // MARK: - Lazy Laod

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 18)
        lab.font = UIFont.methodPlay(fontSize: 18)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.blockOf()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var weekArr: [String] = {
    private lazy var weekArr: [String] = //: return ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        [(String(str_sizeTitle.prefix(3))), (String(str_clearLiveTitle.suffix(3))), (String(str_languageMakeSumData.prefix(3))), (String(str_modelPathToTitle)), (String(str_toData)), (String(str_targetName)), (String(str_quoteMakeData.prefix(3)))]
    //: }()
}

// MARK: - Layout

//: extension TalkingDailyHeaderView {
extension DailyMeasurementView {
    // 添加视图
    //: private func setupSubviews() {
    private func viewSubviews() {
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.Corner(width: ScreenWidth, height: TalkingDailyHeaderView_H, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))
        self.barRadii(width: a_blockValue, height: a_maxText, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))

        //: self.addSubview(titleLab)
        self.addSubview(titleLab)

        //: var lastLab: UILabel?
        var lastLab: UILabel?
        //: for (index, title) in weekArr.enumerated() {
        for (index, title) in weekArr.enumerated() {
            //: let lab = UILabel()
            let lab = UILabel()
            //: lab.text = title.localized
            lab.text = title.localized
            //: lab.textColor = UIColor.appTitleColor()
            lab.textColor = UIColor.blockOf()
            //: lab.textAlignment = .center
            lab.textAlignment = .center
            //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
            lab.font = UIFont.drogueSize(fontSize: 16)
            //: self.addSubview(lab)
            self.addSubview(lab)

            //: let width = ScreenWidth/CGFloat(weekArr.count)
            let width = a_blockValue / CGFloat(weekArr.count)
            //: if index == 0 {
            if index == 0 { // 首个
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(0)
                    make.leading.equalTo(0)
                    //: make.top.equalTo(actualWidth(w: 66))
                    make.top.equalTo(actualWidth(w: 66))
                    //: make.width.equalTo(width)
                    make.width.equalTo(width)
                    //: make.bottom.equalToSuperview()
                    make.bottom.equalToSuperview()
                }
                //: } else {
            } else {
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(lastLab!.snp.trailing)
                    make.leading.equalTo(lastLab!.snp.trailing)
                    //: make.top.width.bottom.equalTo(lastLab!)
                    make.top.width.bottom.equalTo(lastLab!)
                }
            }
            //: lastLab = lab
            lastLab = lab
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func colouredTotaleraction() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 16))
            make.top.equalTo(actualWidth(w: 16))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
