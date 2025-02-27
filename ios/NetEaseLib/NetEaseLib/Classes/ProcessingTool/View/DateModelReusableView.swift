
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labName:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let str_translateTitle:[UInt8] = [0x59,0x6f,0x75,0x20,0x63,0x61,0x6e,0x20,0x72,0x65,0x63,0x65,0x69,0x76,0x65,0x20,0x61,0x20,0x67,0x6f,0x6c,0x64,0x20,0x63,0x6f,0x69,0x6e,0x73,0x20,0x62,0x6f,0x6e,0x75,0x73,0x20,0x6f,0x6e,0x63,0x65,0x20,0x61,0x20,0x64,0x61,0x79,0x20,0x77,0x68,0x69,0x6c,0x65,0x20,0x74,0x68,0x65,0x20,0x22,0x4c,0x6f,0x75,0x6e,0x67,0x65,0x20,0x70,0x6c,0x75,0x73,0x22,0x20,0x73,0x75,0x62,0x73,0x63,0x72,0x69,0x70,0x74,0x69,0x6f,0x6e,0x20,0x73,0x65,0x72,0x76,0x69,0x63,0x65,0x20,0x69,0x73,0x20,0x61,0x63,0x74,0x69,0x76,0x65,0x2e,0x54,0x68,0x65,0x20,0x74,0x69,0x6d,0x65,0x20,0x6f,0x66,0x20,0x74,0x68,0x65,0x20,0x64,0x61,0x69,0x6c,0x79,0x20,0x67,0x6f,0x6c,0x64,0x20,0x63,0x6f,0x69,0x6e,0x73,0x20,0x77,0x69,0x6c,0x6c,0x20,0x62,0x65,0x20,0x62,0x61,0x73,0x65,0x64,0x20,0x6f,0x6e,0x20,0x74,0x68,0x65,0x20,0x55,0x53,0x20,0x45,0x61,0x73,0x74,0x65,0x72,0x6e,0x20,0x54,0x69,0x6d,0x65,0x20,0x5a,0x6f,0x6e,0x65,0x2e]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateModelReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class DateModelReusableView: UICollectionReusableView {
    var rawBelowImageView: UIImageView?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labName, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.my()
        //: self.setupSubViewsConstraint()
        self.corrupt()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: a_blockValue - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.barRadii(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = String(bytes: str_translateTitle, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.drogueSize(fontSize: 14)
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.observerShared()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension DateModelReusableView {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func mutual() -> CGFloat {
        //: if MeasurementAppManager.share.loginUserMode.isSignIn {
        if MeasurementAppManager.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension DateModelReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func my() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func corrupt() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
