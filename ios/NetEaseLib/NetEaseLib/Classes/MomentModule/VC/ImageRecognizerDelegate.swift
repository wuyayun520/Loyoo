
//: Declare String Begin

/*: "mount_img" :*/
fileprivate let str_showTitle:String = "mequalun"
fileprivate let str_normalTitle:String = "t_imgchange color"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: enum MomentPhotoType {
enum BeginPhotoType {
    //: case normal
    case normal // 列表（带心动按钮 + 保存按钮）
    //: case publish
    case publish // 动态发布
    //: case sendIntimatePhoto
    case sendIntimatePhoto // 私聊->发送私密图片
}

//: typealias SendIntimatePhotoBlock = (_ isBurn: String, _ giftId: String) -> Void
typealias SendIntimatePhotoBlock = (_ isBurn: String, _ giftId: String) -> Void

//: class TalkingMomentFullScreenVC: TalkingBaseViewController {
class ImageRecognizerDelegate: PropertyViewController {
	var giftIconOn: Bool = true
	var shippingRoomText: String = "every"

    var nameImageView: UIImageView?

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var momentModel = TalkingMomentModel()
    var momentModel = CustomMeasurable()
    //: var myType: MomentPhotoType?
    var myType: BeginPhotoType?
    //: var sendIntimatePhotoBlock: SendIntimatePhotoBlock?
    var sendIntimatePhotoBlock: SendIntimatePhotoBlock?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        every()
        //: setupSubViewsConstraint()
        sex()
        //: bindInteraction()
        cohereCounteraction()

        nameImageView = UIImageView(frame: self.view.frame.union(CGRect(x: CGFloat(Double(self.view.frame.size.height)), y: CGFloat(0), width: CGFloat(Int(self.view.bounds.size.width)), height: CGFloat(Double(self.view.frame.size.width)))))
        if let nameImageView = nameImageView {
            self.nameImageView?.image = UIImage(named: (str_showTitle.replacingOccurrences(of: "equal", with: "o") + String(str_normalTitle.prefix(5))))
            if (nameImageView.animationImages?.count == Int(nameImageView.contentScaleFactor)) && (nameImageView.layer.sublayers?.count == Int(nameImageView.bounds.origin.y)) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(nameImageView)
            }
        }
    
	if let nameImageView = nameImageView {

            if (nameImageView.layoutMargins.left == 18.98) && (nameImageView.tintColor != nil && nameImageView.tintColor.cgColor == UIColor.systemPurple.cgColor) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let rowChoiceLet = LockColorView(frame: nameImageView.bounds)
            rowChoiceLet.placeName = bottomView.modelUid
            
            rowChoiceLet.giftConversationOff = { [self] layerInviteOpen in
            self.giftIconOn = layerInviteOpen
            
            var rowChoiceLet = self.momentModel.loungePlus
                rowChoiceLet = true
                rowChoiceLet = false
            if rowChoiceLet != self.giftIconOn {
                self.giftIconOn = rowChoiceLet
            }
            
                self.giftIconOn = true
                self.giftIconOn = !self.giftIconOn
            return self.giftIconOn
            }
            rowChoiceLet.extraContent = { [self] colorContent in
            self.shippingRoomText = colorContent
            
            var rowChoiceLet = bottomView.modelUid
            if let simulation = rowChoiceLet.lastIndex(of: "P") {
                rowChoiceLet.remove(at: simulation)
            }
            if rowChoiceLet.contains(self.shippingRoomText) {
                self.shippingRoomText = rowChoiceLet
            }
            
            return self.shippingRoomText
            }
                nameImageView.addSubview(rowChoiceLet)
            }

	}

	}

    /// 父类删除方法，子类可重写
    //: func publishDeleteButtonClick() {}
    func equalPush() {}

    //: lazy var topView: TalkingMomentPhotosTopView = {
    lazy var topView: MReactiveCompatible = {
        //: let view = TalkingMomentPhotosTopView(frame: CGRect.zero, type: myType ?? .normal)
        let view = MReactiveCompatible(frame: CGRect.zero, type: myType ?? .normal)
        //: return view
        return view
        //: }()
    }()

    //: lazy var bottomView: TalkingMomentPhotosBottomView = {
    lazy var bottomView: StandardView = {
        //: let view = TalkingMomentPhotosBottomView.init()
        let view = StandardView()
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var usePhotoView: TalkingSendIntimateInfoView = {
    lazy var usePhotoView: MediumReactiveCompatible = {
        //: let v = TalkingSendIntimateInfoView(frame: CGRect.zero, type: .intimatePhoto)
        let v = MediumReactiveCompatible(frame: CGRect.zero, type: .intimatePhoto)
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingMomentFullScreenVC {
extension ImageRecognizerDelegate {
    //: func crushBtnTool(modle: TalkingMomentModel) {
    func modle(modle: CustomMeasurable) {
        //: guard self.myType == .normal else { return }
        guard self.myType == .normal else { return }

        //: momentModel = modle
        momentModel = modle

        //: if modle.sex == nil {
        if modle.sex == nil {
            //: bottomView.isHidden = true
            bottomView.isHidden = true
            //: }else {
        } else {
            //: bottomView.isHidden = modle.sex==MeasurementAppManager.share.loginUserMode.sex
            bottomView.isHidden = modle.sex == MeasurementAppManager.share.loginUserMode.sex
        }
        //: bottomView.crushBtn.isHidden = bottomView.isHidden
        bottomView.crushBtn.isHidden = bottomView.isHidden
        //: if momentModel.uid?.count ?? 0 > 1 {
        if momentModel.uid?.count ?? 0 > 1 {
            //: bottomView.modelUid = momentModel.uid ?? ""
            bottomView.modelUid = momentModel.uid ?? ""
        }
    }
}

// MARK: - LayoutUI

//: extension TalkingMomentFullScreenVC {
extension ImageRecognizerDelegate {
    //: private func setupSubviews() {
    private func every() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)

        //: if self.myType == .sendIntimatePhoto {
        if self.myType == .sendIntimatePhoto {
            //: view.addSubview(usePhotoView)
            view.addSubview(usePhotoView)
        }
    }

    //: private func setupSubViewsConstraint() {
    private func sex() {
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.top.leading.trailing.equalTo(self.view)
            make.top.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(StatusBarNavigationBarHeight+30)
            make.height.equalTo(a_itemTitle + 30)
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.leading.trailing.equalTo(self.view)
            make.bottom.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(kDeviceSafeBottomHeight+64)
            make.height.equalTo(a_agentData + 64)
        }

        //: switch(self.myType) {
        switch self.myType {
        //: case .publish:
        case .publish:
            //: topView.snp.updateConstraints { make in
            topView.snp.updateConstraints { make in
                //: make.height.equalTo(StatusBarNavigationBarHeight)
                make.height.equalTo(a_itemTitle)
            }

        //: default:
        default:
            //: break
            break
        }
    }

    //: private func bindInteraction() {
    private func cohereCounteraction() {
        //: topView.backBtn.rx.tap.subscribe(onNext: { [weak self] in
        topView.backBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: self?.navigationController?.popViewController(animated: true)
            self?.navigationController?.popViewController(animated: true)
            //: self?.dismiss(animated: true)
            self?.dismiss(animated: true)
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: switch(self.myType) {
        switch self.myType {
        //: case .publish:
        case .publish:
            //: topView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            topView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.publishDeleteButtonClick()
                self.equalPush()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        //: case .sendIntimatePhoto:
        case .sendIntimatePhoto:
            //: topView.rightTitleBtn.rx.tap.subscribe(onNext: { [weak self] in
            topView.rightTitleBtn.rx.tap.subscribe(onNext: { [weak self] in
                //: self?.navigationController?.popViewController(animated: true)
                self?.navigationController?.popViewController(animated: true)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

            //: usePhotoView.block = {[weak self] isBurn, giftId in
            usePhotoView.block = { [weak self] isBurn, giftId in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard let block = self.sendIntimatePhotoBlock else { return }
                guard let block = self.sendIntimatePhotoBlock else { return }
                //: block(isBurn, giftId)
                block(isBurn, giftId)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }

        //: default:
        default:
            //: break
            break
        }
    }
}
