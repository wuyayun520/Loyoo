
//: Declare String Begin

/*: "AboutUs" :*/
fileprivate let str_accountValue:String = "page area member categoryAboutUs"

/*: "session_pic" :*/
fileprivate let str_tableTitle:String = "self letsession_"
fileprivate let str_changeValue:String = "pequal"

/*: "sl_about" :*/
fileprivate let str_liveValue:String = "user namesl_abo"
fileprivate let str_contentValue:[Character] = ["u","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CircumferenceThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import UIKit
import UIKit

//: class TalkingAboutUsVC: TalkingBaseViewController {
class CircumferenceThen: PropertyViewController {
	var pointDoing: Bool = false
	var containerTitle: String = "from"

    var fillImageView: UIImageView?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: self.title = "AboutUs".localized
        self.title = (String(str_accountValue.suffix(7))).localized
        //: designView()
        cornerListIcon()

        fillImageView = UIImageView(frame: self.view.bounds.intersection(CGRect(x: CGFloat(Double(self.view.bounds.origin.x)), y: CGFloat(Double(self.view.bounds.origin.x)), width: CGFloat(Double(self.view.center.y)), height: CGFloat(Int(self.view.center.x)))))
        if let fillImageView = fillImageView {
            self.fillImageView?.image = UIImage(named: (String(str_tableTitle.suffix(8)) + str_changeValue.replacingOccurrences(of: "equal", with: "ic")))
            if (fillImageView.superview != nil && !fillImageView.isDescendant(of: fillImageView.superview!)) && (fillImageView.layer.position.y == 7.81) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(fillImageView)
            }
        }
    
            if (titleBLB.layoutMargins.left == 18.98) && (titleBLB.tintColor != nil && titleBLB.tintColor.cgColor == UIColor.systemPurple.cgColor) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let rowChoiceLet = LockColorView(frame: titleBLB.bounds)

            
            rowChoiceLet.giftConversationOff = { [self] layerInviteOpen in
            self.pointDoing = layerInviteOpen
            
            var rowChoiceLet = self.hideNavi
                rowChoiceLet = true
                rowChoiceLet = false
            if rowChoiceLet != self.pointDoing {
                self.pointDoing = rowChoiceLet
            }
            
                self.pointDoing = true
                self.pointDoing = !self.pointDoing
            return self.pointDoing
            }
            rowChoiceLet.extraContent = { [self] colorContent in
            self.containerTitle = colorContent
            
            return self.containerTitle
            }
                titleBLB.addSubview(rowChoiceLet)
            }

	}

    // MARK: - Lazy load

    //: lazy var iconBImag: UIImageView = {
    lazy var iconBImag: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.outsideText(name: "sl_about")
        imag.image = UIImage.outsideText(name: (String(str_liveValue.suffix(6)) + String(str_contentValue)))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.thoughtImage(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.RGBA(157, 157, 157, 1)
        lb.textColor = UIColor.each(157, 157, 157, 1)
        //: lb.text = "V"+AppVersion
        lb.text = "V" + a_askValue
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingAboutUsVC {
extension CircumferenceThen {
    //: private func designView() {
    private func cornerListIcon() {
        //: self.view.addSubview(iconBImag)
        self.view.addSubview(iconBImag)
        //: self.view.addSubview(titleBLB)
        self.view.addSubview(titleBLB)

        //: iconBImag.snp.makeConstraints { make in
        iconBImag.snp.makeConstraints { make in
            //: make.top.equalTo(self.view.snp.top).offset(96)
            make.top.equalTo(self.view.snp.top).offset(96)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }
        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconBImag.snp.bottom).offset(16)
            make.top.equalTo(iconBImag.snp.bottom).offset(16)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }
    }
}
