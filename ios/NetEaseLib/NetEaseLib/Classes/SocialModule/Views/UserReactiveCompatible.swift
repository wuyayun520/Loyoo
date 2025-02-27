
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_targetRenderText:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "bg_medals_podium" :*/
fileprivate let str_borderData:[Character] = ["b","g","_","m","e","d"]
fileprivate let str_onData:String = "als_pooutput mini"

/*: "icon_rank_first_bg" :*/
fileprivate let str_shareData:String = "pic playericon_"
fileprivate let str_appearanceValue:String = "irst_bgshow deadline to self first"

/*: "icon_rank_first" :*/
fileprivate let str_actionData:[Character] = ["i","c","o","n","_","r","a","n","k","_","f","i","r","s","t"]

/*: "icon_ammount_points" :*/
fileprivate let str_makeData:String = "ICON"
fileprivate let str_equalName:[Character] = ["n","t"]
fileprivate let str_thanName:String = "_pointsthan self title quote"

/*: "icon_lounge" :*/
fileprivate let str_arrayTitle:String = "icframen"

/*: "icon_rank_coin" :*/
fileprivate let str_scaleValue:String = "iimagen"
fileprivate let str_stopData:String = "any view_coin"

/*: "icon_rank_coin2" :*/
fileprivate let str_labRowValue:[Character] = ["i","c","o","n","_","r","a","n","k"]
fileprivate let str_countAcceptAName:String = "_coin2if count image"

/*: "icon_rank_second" :*/
fileprivate let str_imageViewName:[Character] = ["i","c","o","n","_","r","a","n","k","_","s"]
fileprivate let str_bottomTitle:[Character] = ["e","c","o","n","d"]

/*: "icon_rank_third" :*/
fileprivate let str_systemText:[Character] = ["i","c","o","n","_","r","a"]
fileprivate let str_leadingData:String = "nk_to self"
fileprivate let str_toData:[Character] = ["t","h","i","r","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankHeaderView: UIView {
class UserReactiveCompatible: UIView {
    var photoImageView: UIImageView?

    //: var  index = 0
    var index = 0

    // MARK: param

    //: var dataArray: [SocialRankItemModel] = [] {
    var dataArray: [DoingItemModel] = [] {
        //: didSet {
        didSet {
            //: self.updateSubviewsWithData()
            self.withLab()
        }
    }

    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.inputSubviewsCamera()
        //: self.setupSubViewsConstraint()
        self.subConstraint()
        //: self.bindInteraction()
        self.giveAndTakeSumeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_targetRenderText, encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var medalsView = UIImageView().then {
    lazy var medalsView = UIImageView().then {
        //: $0.image = UIImage.outsideText(name: "bg_medals_podium")
        $0.image = UIImage.outsideText(name: (String(str_borderData) + String(str_onData.prefix(6)) + "dium"))
    }

    //: lazy var firstView = SocialRankHeaderItemView.init(frame: .zero, rankType: .firstRankType).then {
    lazy var firstView = HeaderReactiveCompatible(frame: .zero, rankType: .firstRankType).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.tag = 0
        $0.tag = 0
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(registTapAction))
        let tap = UITapGestureRecognizer(target: self, action: #selector(imageGesture))
        //: $0.addGestureRecognizer(tap)
        $0.addGestureRecognizer(tap)
    }

    //: lazy var secondView = SocialRankHeaderItemView.init(frame: .zero, rankType: .secondRankType).then {
    lazy var secondView = HeaderReactiveCompatible(frame: .zero, rankType: .secondRankType).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.tag = 1
        $0.tag = 1
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(registTapAction))
        let tap = UITapGestureRecognizer(target: self, action: #selector(imageGesture))
        //: $0.addGestureRecognizer(tap)
        $0.addGestureRecognizer(tap)
    }

    //: lazy var thirdView = SocialRankHeaderItemView.init(frame: .zero, rankType: .thirdRankType).then {
    lazy var thirdView = HeaderReactiveCompatible(frame: .zero, rankType: .thirdRankType).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.tag = 2
        $0.tag = 2
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(registTapAction))
        let tap = UITapGestureRecognizer(target: self, action: #selector(imageGesture))
        //: $0.addGestureRecognizer(tap)
        $0.addGestureRecognizer(tap)
    }
}

// MARK: - Bind && Event

//: extension SocialRankHeaderView {
extension UserReactiveCompatible {
    //: private func bindInteraction() {
    private func giveAndTakeSumeraction() {}

    //: private func updateSubviewsWithData() {
    private func withLab() {
        //: firstView.updateItemWithModel(model: dataArray[0], type: self.index)
        firstView.numbererpretation(model: dataArray[0], type: self.index)
        //: secondView.updateItemWithModel(model: dataArray.count>1 ? dataArray[1]: nil, type: self.index)
        secondView.numbererpretation(model: dataArray.count > 1 ? dataArray[1] : nil, type: self.index)
        //: thirdView.updateItemWithModel(model: dataArray.count>2 ? dataArray[2]: nil, type: self.index)
        thirdView.numbererpretation(model: dataArray.count > 2 ? dataArray[2] : nil, type: self.index)
    }

    //: @objc func registTapAction(tapGesture: UITapGestureRecognizer) {
    @objc func imageGesture(tapGesture: UITapGestureRecognizer) {
        //: let viewTag = tapGesture.view?.tag
        let viewTag = tapGesture.view?.tag
        //: let model = dataArray[viewTag ?? 0]
        let model = dataArray[viewTag ?? 0]
        //: guard model.uid != 0 else {
        guard model.uid != 0 else {
            //: return
            return
        }

        //: LimitPushManager.share.func__pushToUserDetailVC(uid: "\(model.uid)")
        LimitPushManager.share.funcToStuffDetailUtilizerUid(uid: "\(model.uid)")
    }
}

// MARK: Layout

//: extension SocialRankHeaderView {
extension UserReactiveCompatible {
    //: private func setupSubviews() {
    private func inputSubviewsCamera() {
        //: addSubview(medalsView)
        addSubview(medalsView)
        //: addSubview(firstView)
        addSubview(firstView)
        //: addSubview(secondView)
        addSubview(secondView)
        //: addSubview(thirdView)
        addSubview(thirdView)
    }

    //: private func setupSubViewsConstraint() {
    private func subConstraint() {
        //: let firstWidth = (ScreenWidth - actualWidth(w: 68)) / 3 + actualWidth(w: 10)
        let firstWidth = (a_blockValue - actualWidth(w: 68)) / 3 + actualWidth(w: 10)
        //: let itemWidth = (ScreenWidth - actualWidth(w: 68)) / 3 - actualWidth(w: 10)
        let itemWidth = (a_blockValue - actualWidth(w: 68)) / 3 - actualWidth(w: 10)
        //: let firstHeight = actualHeight(h: 140)
        let firstHeight = actualHeight(h: 140)
        //: let itemHeight = actualHeight(h: 120)
        let itemHeight = actualHeight(h: 120)

        //: secondView.snp.makeConstraints { make in
        secondView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 34+5))
            make.leading.equalTo(actualWidth(w: 34 + 5))
            //: make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -60))
            make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -60))
            //: make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
            make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
        }

        //: firstView.snp.makeConstraints { make in
        firstView.snp.makeConstraints { make in
            //: make.centerX.equalTo(medalsView.snp.centerX)
            make.centerX.equalTo(medalsView.snp.centerX)
            //: make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -94))
            make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -94))
            //: make.size.equalTo(CGSize(width: firstWidth, height: firstHeight))
            make.size.equalTo(CGSize(width: firstWidth, height: firstHeight))
        }

        //: thirdView.snp.makeConstraints { make in
        thirdView.snp.makeConstraints { make in
            //: make.trailing.equalTo(actualWidth(w: -34-5))
            make.trailing.equalTo(actualWidth(w: -34 - 5))
            //: make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -54))
            make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -54))
            //: make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
            make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
        }

        //: medalsView.snp.makeConstraints { make in
        medalsView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 34))
            make.leading.equalTo(actualWidth(w: 34))
            //: make.trailing.equalTo(actualWidth(w: -34))
            make.trailing.equalTo(actualWidth(w: -34))
            //: make.top.equalTo(actualHeight(h: 20))
            make.top.equalTo(actualHeight(h: 20))
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
}

// MARK: - HeaderReactiveCompatible

//: class SocialRankHeaderItemView: UIView {
class HeaderReactiveCompatible: UIView {
    var startImageView: UIImageView?
    //: enum SRankHeaderItemType: Int {
    enum LabType: Int {
        //: case firstRankType
        case firstRankType
        //: case secondRankType
        case secondRankType
        //: case thirdRankType
        case thirdRankType
    }

    // MARK: Life

    //: public init(frame: CGRect, rankType: SRankHeaderItemType) {
    public init(frame: CGRect, rankType: LabType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupItemViews(type: rankType)
        self.precedent(type: rankType)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_targetRenderText, encoding: .utf8)!)
    }

    //: lazy var headPicBgView = UIImageView().then {
    lazy var headPicBgView = UIImageView().then {
        //: $0.image = UIImage.outsideText(name: "icon_rank_first_bg")
        $0.image = UIImage.outsideText(name: (String(str_shareData.suffix(5)) + "rank_f" + String(str_appearanceValue.prefix(7))))
    }

    //: lazy var headPic = UIImageView().then {
    lazy var headPic = UIImageView().then {
        //: $0.contentMode = .scaleAspectFill
        $0.contentMode = .scaleAspectFill
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.borderWidth = 3
        $0.layer.borderWidth = 3
    }

    //: lazy var crownImgView = UIImageView().then {
    lazy var crownImgView = UIImageView().then {
        //: $0.image = UIImage.outsideText(name: "icon_rank_first")
        $0.image = UIImage.outsideText(name: (String(str_actionData)))
    }

    //: lazy var nickLabel = UILabel().then {
    lazy var nickLabel = UILabel().then {
        //: $0.textColor = .white
        $0.textColor = .white
        //: $0.font = .pingfangFont(type: .Medium, fontSize: 18)
        $0.font = .thoughtImage(type: .Medium, fontSize: 18)
        //: $0.textAlignment = .center
        $0.textAlignment = .center
    }

    //: lazy var coinButton = TalkingButton().then {
    lazy var coinButton = PathErrorTalkingButton().then {
        //: $0.isUserInteractionEnabled = false
        $0.isUserInteractionEnabled = false
        //: $0.setImage(UIImage.outsideText(name: "icon_ammount_points"), for: .normal)
        $0.setImage(UIImage.outsideText(name: (str_makeData.lowercased() + "_ammou" + String(str_equalName) + String(str_thanName.prefix(7)))), for: .normal)
        //: $0.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 13)
        $0.titleLabel?.font = .thoughtImage(type: .Regular, fontSize: 13)
        //: $0.setTitle("0", for: .normal)
        $0.setTitle("0", for: .normal)
        //: $0.imageView?.contentMode = .scaleAspectFill
        $0.imageView?.contentMode = .scaleAspectFill
        //: $0.imageAlignment = .left
        $0.imageAlignment = .left
        //: $0.spaceBetweenTitleAndImage = 2
        $0.spaceBetweenTitleAndImage = 2
    }

    //: lazy var loungeImgV = UIImageView().then {
    lazy var loungeImgV = UIImageView().then {
        //: $0.image = UIImage.outsideText(name: "icon_lounge")
        $0.image = UIImage.outsideText(name: (str_arrayTitle.replacingOccurrences(of: "frame", with: "o") + "_lounge"))
    }
}

// MARK: - Event

//: extension SocialRankHeaderItemView {
extension HeaderReactiveCompatible {
    //: func updateItemWithModel(model: SocialRankItemModel?, type: Int) {
    func numbererpretation(model: DoingItemModel?, type: Int) {
        //: guard model != nil && model?.isEmpty == false else {
        guard model != nil, model?.isEmpty == false else {
            //: self.isHidden = true
            self.isHidden = true
            //: return
            return
        }
        //: headPic.setUrlImage(urlStr: model!.headPic, placeImg: UIImage.placeHolderImage(sex: model!.sex))
        headPic.posit(urlStr: model!.headPic, placeImg: UIImage.tempWithGift(sex: model!.sex))
        //: nickLabel.text = model!.nickname
        nickLabel.text = model!.nickname
        //: coinButton.setTitle("\(model!.value)", for: .normal)
        coinButton.setTitle("\(model!.value)", for: .normal)

        //: loungeImgV.isHidden = !model!.loungePlus
        loungeImgV.isHidden = !model!.loungePlus
        //: if loungeImgV.isHidden == false {
        if loungeImgV.isHidden == false {
            //: nickLabel.snp.remakeConstraints({ make in
            nickLabel.snp.remakeConstraints { make in
                //: make.top.equalTo(headPic.snp.bottom).offset(actualHeight(h: 6))
                make.top.equalTo(headPic.snp.bottom).offset(actualHeight(h: 6))
                //: make.height.equalTo(actualHeight(h: 18))
                make.height.equalTo(actualHeight(h: 18))
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: })
            }
            //: loungeImgV.snp.remakeConstraints { make in
            loungeImgV.snp.remakeConstraints { make in
                //: make.leading.equalTo(nickLabel.snp.trailing).offset(2)
                make.leading.equalTo(nickLabel.snp.trailing).offset(2)
                //: make.centerY.equalTo(nickLabel)
                make.centerY.equalTo(nickLabel)
                //: make.size.equalTo(CGSize(width: 20, height: 20))
                make.size.equalTo(CGSize(width: 20, height: 20))
                //: make.trailing.lessThanOrEqualToSuperview().offset(-2)
                make.trailing.lessThanOrEqualToSuperview().offset(-2)
            }
            //: } else {
        } else {
            //: nickLabel.snp.remakeConstraints { make in
            nickLabel.snp.remakeConstraints { make in
                //: make.leading.equalTo(2)
                make.leading.equalTo(2)
                //: make.trailing.equalTo(-2)
                make.trailing.equalTo(-2)
                //: make.top.equalTo(headPic.snp.bottom).offset(actualHeight(h: 6))
                make.top.equalTo(headPic.snp.bottom).offset(actualHeight(h: 6))
                //: make.height.equalTo(actualHeight(h: 18))
                make.height.equalTo(actualHeight(h: 18))
            }
        }

        //: if type == 0 {
        if type == 0 {
            //: coinButton.setImage(UIImage.outsideText(name: "icon_rank_coin"), for: .normal)
            coinButton.setImage(UIImage.outsideText(name: (str_scaleValue.replacingOccurrences(of: "image", with: "co") + "_rank" + String(str_stopData.suffix(5)))), for: .normal)
            //: } else {
        } else {
            //: coinButton.setImage(UIImage.outsideText(name: "icon_rank_coin2"), for: .normal)
            coinButton.setImage(UIImage.outsideText(name: (String(str_labRowValue) + String(str_countAcceptAName.prefix(6)))), for: .normal)
        }
    }
}

//: extension SocialRankHeaderItemView {
extension HeaderReactiveCompatible {
    //: func setupItemViews(type: SRankHeaderItemType) {
    func precedent(type: LabType) {
        //: addSubview(headPicBgView)
        addSubview(headPicBgView)
        //: addSubview(crownImgView)
        addSubview(crownImgView)
        //: addSubview(headPic)
        addSubview(headPic)
        //: addSubview(nickLabel)
        addSubview(nickLabel)
        //: addSubview(coinButton)
        addSubview(coinButton)
        //: addSubview(loungeImgV)
        addSubview(loungeImgV)

        //: var size = CGSize(width: actualWidth(w: 35), height: actualWidth(w: 29))
        var size = CGSize(width: actualWidth(w: 35), height: actualWidth(w: 29))
        //: var headWidth = actualWidth(w: 62)
        var headWidth = actualWidth(w: 62)
        //: var topMargin = actualHeight(h: 6)
        var topMargin = actualHeight(h: 6)
//        var topCrownMargin = actualHeight(h: 4)

        //: switch type {
        switch type {
        //: case .firstRankType:
        case .firstRankType:
            //: headPicBgView.isHidden = false
            headPicBgView.isHidden = false
            //: crownImgView.image = UIImage.outsideText(name: "icon_rank_first")
            crownImgView.image = UIImage.outsideText(name: (String(str_actionData)))
            //: headPic.layer.borderColor = UIColor.RGBA(255, 224, 58, 1).cgColor
            headPic.layer.borderColor = UIColor.each(255, 224, 58, 1).cgColor
            //: headPic.layer.cornerRadius = actualWidth(w: 40)
            headPic.layer.cornerRadius = actualWidth(w: 40)
            //: size = CGSize(width: actualWidth(w: 43), height: actualWidth(w: 36))
            size = CGSize(width: actualWidth(w: 43), height: actualWidth(w: 36))
            //: headWidth = actualWidth(w: 80)
            headWidth = actualWidth(w: 80)
            //: topMargin = actualHeight(h: 6)
            topMargin = actualHeight(h: 6)
//            topCrownMargin = actualHeight(h: 10)
        //: break
        //: case .secondRankType:
        case .secondRankType:
            //: headPicBgView.isHidden = true
            headPicBgView.isHidden = true
            //: crownImgView.image = UIImage.outsideText(name: "icon_rank_second")
            crownImgView.image = UIImage.outsideText(name: (String(str_imageViewName) + String(str_bottomTitle)))
            //: headPic.layer.borderColor = UIColor.RGBA(182, 199, 254, 1).cgColor
            headPic.layer.borderColor = UIColor.each(182, 199, 254, 1).cgColor
            //: headPic.layer.cornerRadius = actualWidth(w: 31)
            headPic.layer.cornerRadius = actualWidth(w: 31)
        //: break
        //: case .thirdRankType:
        case .thirdRankType:
            //: headPicBgView.isHidden = true
            headPicBgView.isHidden = true
            //: crownImgView.image = UIImage.outsideText(name: "icon_rank_third")
            crownImgView.image = UIImage.outsideText(name: (String(str_systemText) + String(str_leadingData.prefix(3)) + String(str_toData)))
            //: headPic.layer.borderColor = UIColor.RGBA(251, 166, 109, 1).cgColor
            headPic.layer.borderColor = UIColor.each(251, 166, 109, 1).cgColor
            //: headPic.layer.cornerRadius = actualWidth(w: 31)
            headPic.layer.cornerRadius = actualWidth(w: 31)
            //: break
        }

        //: headPicBgView.snp.makeConstraints { make in
        headPicBgView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self.snp.centerX)
            make.centerX.equalTo(self.snp.centerX)
            //: make.centerY.equalTo(headPic.snp.centerY).offset(7)
            make.centerY.equalTo(headPic.snp.centerY).offset(7)
            //: make.width.height.equalTo(headWidth+28)
            make.width.height.equalTo(headWidth + 28)
        }
        //: headPic.snp.makeConstraints { make in
        headPic.snp.makeConstraints { make in
            //: make.centerX.equalTo(self.snp.centerX)
            make.centerX.equalTo(self.snp.centerX)
            //: make.top.equalTo(size.height*0.8)
            make.top.equalTo(size.height * 0.8)
            //: make.width.height.equalTo(headWidth)
            make.width.height.equalTo(headWidth)
        }
        //: crownImgView.snp.makeConstraints { make in
        crownImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(headPic.snp.leading).offset(1)
            make.leading.equalTo(headPic.snp.leading).offset(1)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.size.equalTo(size)
            make.size.equalTo(size)
        }
        //: nickLabel.snp.makeConstraints { make in
        nickLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(2)
            make.leading.equalTo(2)
            //: make.trailing.equalTo(-2)
            make.trailing.equalTo(-2)
            //: make.top.equalTo(headPic.snp.bottom).offset(topMargin)
            make.top.equalTo(headPic.snp.bottom).offset(topMargin)
            //: make.height.equalTo(actualHeight(h: 18))
            make.height.equalTo(actualHeight(h: 18))
        }
        //: coinButton.snp.makeConstraints { make in
        coinButton.snp.makeConstraints { make in
            //: make.leading.equalTo(2)
            make.leading.equalTo(2)
            //: make.trailing.equalTo(-2)
            make.trailing.equalTo(-2)
            //: make.top.equalTo(nickLabel.snp.bottom).offset(2)
            make.top.equalTo(nickLabel.snp.bottom).offset(2)
            //: make.height.equalTo(actualHeight(h: 21))
            make.height.equalTo(actualHeight(h: 21))
        }
    }
}
