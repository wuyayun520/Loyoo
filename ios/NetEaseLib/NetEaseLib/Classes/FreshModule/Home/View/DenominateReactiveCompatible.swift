
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_eachValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "pic" :*/
fileprivate let str_imageText:String = "piavailable"

/*: "url" :*/
fileprivate let str_atData:String = "urmale"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DenominateReactiveCompatible.swift
//  NetEaseLib
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class DenominateReactiveCompatible: UICollectionReusableView {
    var makeColorImageView: UIImageView?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, a_blockValue, DenominateReactiveCompatible.showHeight())
        //: basicUI()
        writeActivity()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_eachValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = MeasurementAppManager.share.appConfigMode.homeOpAds.first
        let dic = MeasurementAppManager.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.fulfill(urlStr: dic?[(str_imageText.replacingOccurrences(of: "available", with: "c"))] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(barTotalClick), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = MeasurementAppManager.share.appConfigMode.homeOpAds.last
        let dic = MeasurementAppManager.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.fulfill(urlStr: dic?[(str_imageText.replacingOccurrences(of: "available", with: "c"))] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(windowPath), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension DenominateReactiveCompatible {
    //: @objc private func hostBtnClick() {
    @objc private func barTotalClick() {
        //: let dic = MeasurementAppManager.share.appConfigMode.homeOpAds.first
        let dic = MeasurementAppManager.share.appConfigMode.homeOpAds.first
        //: LimitPushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        LimitPushManager.share.comb(urlStr: dic?[(str_atData.replacingOccurrences(of: "male", with: "l"))] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func windowPath() {
        //: let dic = MeasurementAppManager.share.appConfigMode.homeOpAds.last
        let dic = MeasurementAppManager.share.appConfigMode.homeOpAds.last
        //: LimitPushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        LimitPushManager.share.comb(urlStr: dic?[(str_atData.replacingOccurrences(of: "male", with: "l"))] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension DenominateReactiveCompatible {
    //: class func getSelfHeight() -> CGFloat {
    class func showHeight() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue && MeasurementAppManager.share.appConfigMode.homeOpAds.count > 1 {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue && MeasurementAppManager.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func writeActivity() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue, MeasurementAppManager.share.appConfigMode.homeOpAds.count > 0 {
        if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue, MeasurementAppManager.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}
