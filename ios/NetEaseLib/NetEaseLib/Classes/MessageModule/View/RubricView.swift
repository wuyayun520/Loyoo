
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_statusValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "#30D00B" :*/
fileprivate let str_timeTitle:[Character] = ["#","3"]
fileprivate let str_toValue:String = "lab target0D00B"

/*: "icon_receivedcalls" :*/
fileprivate let str_giftData:[Character] = ["i","c","o","n","_","r","e","c","e","i","v","e","d","c","a","l"]
fileprivate let str_modelText:[Character] = ["l","s"]

/*: "Received calls" :*/
fileprivate let str_commitUserData:String = "Receivedmap image succeed"
fileprivate let str_messageContent:[Character] = [" ","c","a","l","l","s"]

/*: "icon_dialedcalls" :*/
fileprivate let str_lineValue:String = "icon_dclass across view"
fileprivate let str_alwaysName:String = "dcacount"
fileprivate let str_buttonName:[Character] = ["l","s"]

/*: "Dialed calls" :*/
fileprivate let str_behaviorValue:[Character] = ["D","i","a","l","e","d"," ","c","a","l","l"]
fileprivate let str_textName:[Character] = ["s"]

/*: "%02i:%02i" :*/
fileprivate let str_equalData:[Character] = ["%","0","2","i"]
fileprivate let str_progressName:[Character] = [":","%","0","2","i"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RubricView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallTableCell: UITableViewCell {
class RubricView: UITableViewCell {
	var contentDoing: Bool = true
	var livingRoomQuantity: Int = 69
	var addDoing: Bool = true
	var moreSum: Int = 42
	var tableRowOff: Bool = true
	var withoutQuantity: Int = 69

    var blockImageView: UIImageView?

    //: var currenModel = TalkingVideoCallRecordModel()
    var currenModel = EnableTransformable()
    //: var seleteIndex: IndexPath?
    var seleteIndex: IndexPath?
    //: open weak var delegate: WhoLikeDelegate?
    open weak var delegate: EqualLikeDelegate?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    
            if (durationLB.convert(CGRect.zero, from: durationLB.superview).size.height == 20.74) && (!durationLB.autoresizesSubviews) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let subLet = PackageView(frame: durationLB.frame.offsetBy(dx: CGFloat(0), dy: CGFloat(81)))


            subLet.formatText = currenModel.nickname
            
            subLet.tableOpen = { [self] headOpen in
            self.addDoing = headOpen
            
            return self.addDoing
            }
            subLet.needQuantity = { [self] enableLineQuantity in
            self.moreSum = enableLineQuantity
            
            var subLet = currenModel.onlineStatus
            subLet += 1
            if subLet > self.moreSum {
                self.moreSum = subLet
            }
            
            return self.moreSum
            }
                durationLB.addSubview(subLet)
            }

	}

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    
            if (backView.convert(CGRect.zero, from: backView.superview).size.height == 20.74) && (!backView.autoresizesSubviews) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let subLet = PackageView(frame: backView.frame.offsetBy(dx: CGFloat(0), dy: CGFloat(81)))
            subLet.policyJoinClose = selected

            subLet.formatText = self.currenModel.nickname
            
            subLet.tableOpen = { [self] headOpen in
            self.tableRowOff = headOpen
            
            var subLet = selected
                subLet = false
                subLet = !subLet
            if subLet != self.tableRowOff {
                self.tableRowOff = subLet
            }
            
            return self.tableRowOff
            }
            subLet.needQuantity = { [self] enableLineQuantity in
            self.withoutQuantity = enableLineQuantity
            
            var subLet = currenModel.uid
            subLet += 1
            if subLet > self.withoutQuantity {
                self.withoutQuantity = subLet
            }
            
            return self.withoutQuantity
            }
                backView.addSubview(subLet)
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
        //: self.setupSubviews()
        self.bindAdd()
        //: self.setupSubViewsConstraint()
        self.windowFailure()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_statusValue, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    
            if (rcordImg.isExclusiveTouch) && (rcordImg.backgroundColor != nil && rcordImg.backgroundColor!.cgColor == UIColor.cyan.cgColor) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let mentalImage = PackageView()


            mentalImage.formatText = currenModel.headPicFrame
            
            mentalImage.tableOpen = { [self] headOpen in
            self.contentDoing = headOpen
            
            return self.contentDoing
            }
            mentalImage.needQuantity = { [self] enableLineQuantity in
            self.livingRoomQuantity = enableLineQuantity
            
            var mentalImage = currenModel.uid
            mentalImage &>>= 1
            if mentalImage > self.livingRoomQuantity {
                self.livingRoomQuantity = mentalImage
            }
            
            return self.livingRoomQuantity
            }
                rcordImg.addSubview(mentalImage)
            }

	}

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 40/2
        btn.layer.cornerRadius = 40 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(buttonBy), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var iconBorderBtn: UIButton = {
    lazy var iconBorderBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var rcordLB: UILabel = {
    lazy var rcordLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .thoughtImage(type: .Medium, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .blockOf()
        //: return label
        return label
        //: }()
    }()

    //: lazy var nameLB: UILabel = {
    lazy var nameLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 14)
        label.font = .thoughtImage(type: .Regular, fontSize: 14)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: return label
        return label
        //: }()
    }()

    //: lazy var rcordImg: UIImageView = {
    lazy var rcordImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: return img
        return img
        //: }()
    }()

    //: lazy var timeLB: UILabel = {
    lazy var timeLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 12)
        label.font = .thoughtImage(type: .Regular, fontSize: 12)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: return label
        return label
        //: }()
    }()

    //: lazy var durationLB: UILabel = {
    lazy var durationLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 10)
        label.font = .thoughtImage(type: .Medium, fontSize: 10)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .observerShared()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var onlineView: UIView = {
    lazy var onlineView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#30D00B")
        view.backgroundColor = UIColor(hex: (String(str_timeTitle) + String(str_toValue.suffix(5))))
        //: view.layer.cornerRadius = 5
        view.layer.cornerRadius = 5
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoCallTableCell {
extension RubricView {
    //: func setVideoCallCell(model: TalkingVideoCallRecordModel) {
    func televisionSub(model: EnableTransformable) {
        //: currenModel = model
        currenModel = model

        //: iconBtn.setUrlImage(urlStr: model.headPic)
        iconBtn.fulfill(urlStr: model.headPic)
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: iconBorderBtn.isHidden = false
            iconBorderBtn.isHidden = false
            //: iconBorderBtn.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorderBtn.fileStr(urlStr: model.headPicFrame)
            //: } else {
        } else {
            //: iconBorderBtn.isHidden = true
            iconBorderBtn.isHidden = true
        }
        //: if model.callStatus == 0 {
        if model.callStatus == 0 {
            //: rcordImg.image = UIImage.outsideText(name: "icon_receivedcalls")
            rcordImg.image = UIImage.outsideText(name: (String(str_giftData) + String(str_modelText)))
            //: rcordLB.text = "Received calls".localized
            rcordLB.text = (String(str_commitUserData.prefix(8)) + String(str_messageContent)).localized
            //: } else {
        } else {
            //: rcordImg.image = UIImage.outsideText(name: "icon_dialedcalls")
            rcordImg.image = UIImage.outsideText(name: (String(str_lineValue.prefix(6)) + "iale" + str_alwaysName.replacingOccurrences(of: "count", with: "l") + String(str_buttonName)))
            //: rcordLB.text = "Dialed calls".localized
            rcordLB.text = (String(str_behaviorValue) + String(str_textName)).localized
        }
        //: let ductaion = Double(model.duration)
        let ductaion = Double(model.duration)
        //: let min = floor(ductaion / 60)
        let min = floor(ductaion / 60)
        //: let sec = floor(ductaion.truncatingRemainder(dividingBy: 60))
        let sec = floor(ductaion.truncatingRemainder(dividingBy: 60))
        //: durationLB.text = String(format: "%02i:%02i", Int(min), Int(sec))
        durationLB.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: nameLB.text = model.nickname
        nameLB.text = model.nickname
        //: timeLB.text = model.startTime
        timeLB.text = model.startTime
        //: onlineView.isHidden = model.onlineStatus == 0
        onlineView.isHidden = model.onlineStatus == 0
    }

    /// 用户详情
    //: @objc func iconBtnClick() {
    @objc func buttonBy() {
        //: LimitPushManager.share.func__pushToUserDetailVC(uid: "\(currenModel.uid)")
        LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: "\(currenModel.uid)")
    }
}

// MARK: - UI

//: extension TalkingVideoCallTableCell {
extension RubricView {
    //: private func setupSubviews() {
    private func bindAdd() {
        //: contentView.addSubview(backView)
        contentView.addSubview(backView)
        //: backView.addSubview(iconBtn)
        backView.addSubview(iconBtn)
        //: backView.addSubview(iconBorderBtn)
        backView.addSubview(iconBorderBtn)
        //: backView.addSubview(nameLB)
        backView.addSubview(nameLB)
        //: backView.addSubview(rcordImg)
        backView.addSubview(rcordImg)
        //: backView.addSubview(durationLB)
        backView.addSubview(durationLB)
        //: backView.addSubview(rcordLB)
        backView.addSubview(rcordLB)
        //: backView.addSubview(timeLB)
        backView.addSubview(timeLB)
        //: iconBtn.addSubview(onlineView)
        iconBtn.addSubview(onlineView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func windowFailure() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: rcordImg.snp.makeConstraints { make in
        rcordImg.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.width.height.equalTo(16)
            make.width.height.equalTo(16)
        }
        //: durationLB.snp.makeConstraints { make in
        durationLB.snp.makeConstraints { make in
            //: make.centerX.equalTo(rcordImg)
            make.centerX.equalTo(rcordImg)
            //: make.top.equalTo(rcordImg.snp.bottom).offset(2)
            make.top.equalTo(rcordImg.snp.bottom).offset(2)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLB.snp.trailing).offset(10)
            make.leading.equalTo(durationLB.snp.trailing).offset(10)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.size.equalTo(40)
            make.size.equalTo(40)
        }
        //: iconBorderBtn.snp.makeConstraints { make in
        iconBorderBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLB.snp.trailing).offset(7)
            make.leading.equalTo(durationLB.snp.trailing).offset(7)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(46)
            make.size.equalTo(46)
        }
        //: rcordLB.snp.makeConstraints { make in
        rcordLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.trailing).offset(8)
            make.leading.equalTo(iconBtn.snp.trailing).offset(8)
            //: make.top.equalTo(iconBtn)
            make.top.equalTo(iconBtn)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(rcordLB)
            make.leading.equalTo(rcordLB)
            //: make.top.equalTo(rcordLB.snp.bottom).offset(2)
            make.top.equalTo(rcordLB.snp.bottom).offset(2)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }

        //: timeLB.snp.makeConstraints { make in
        timeLB.snp.makeConstraints { make in
            //: make.top.equalTo(14)
            make.top.equalTo(14)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: onlineView.snp.makeConstraints { make in
        onlineView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.size.equalTo(10)
            make.size.equalTo(10)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func callView() {}
}
