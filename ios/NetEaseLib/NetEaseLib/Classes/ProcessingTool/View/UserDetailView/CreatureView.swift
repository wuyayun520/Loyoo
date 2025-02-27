
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_wrapText:[UInt8] = [0xa7,0xa0,0xa7,0xba,0xe6,0xad,0xa1,0xaa,0xab,0xbc,0xf4,0xe7,0xee,0xa6,0xaf,0xbd,0xee,0xa0,0xa1,0xba,0xee,0xac,0xab,0xab,0xa0,0xee,0xa7,0xa3,0xbe,0xa2,0xab,0xa3,0xab,0xa0,0xba,0xab,0xaa]

/*: "Not reaching the required level" :*/
fileprivate let str_followFatalValue:[UInt8] = [0x6c,0x65,0x76,0x65,0x6c,0x20,0x64,0x65,0x72,0x69,0x75,0x71,0x65,0x72,0x20,0x65,0x68,0x74,0x20,0x67,0x6e,0x69,0x68,0x63,0x61,0x65,0x72,0x20,0x74,0x6f,0x4e]

/*: "text_fee" :*/
fileprivate let str_observerPostPlayerValue:String = "path collection videotext_f"
fileprivate let str_managerValue:String = "share"

/*: "video_fee" :*/
fileprivate let str_awakeRequestContent:String = "error"
fileprivate let str_touchValue:String = "tool image colorideo_fee"

/*: "voice_fee" :*/
fileprivate let str_addData:String = "volayer"
fileprivate let str_titleName:[Character] = ["c","e","_","f","e","e"]

/*: "value" :*/
fileprivate let str_detailValue:String = "VALUE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CreatureView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemaleChatSetView: UIView {
class CreatureView: UIView {
    var equalValueImageView: UIImageView?

    //: lazy var dataArray: [ChatPriceModel] = []
    lazy var dataArray: [ImagePriceModel] = []
    //: var price: Int = -1
    var price: Int = -1
    //: var popView = MeasurementThen()
    var popView = MeasurementThen()
    //: var contentHeight = kDeviceSafeBottomHeight
    var contentHeight = a_agentData
    //: var showType: Int = -1
    var showType: Int = -1

    //: var seletePriceBlock: ((_ model: ChatPriceModel) -> Void)?
    var seletePriceBlock: ((_ model: ImagePriceModel) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.workroom()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_wrapText.map{$0^206}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.playerEqual()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemaleChatSetCell.self, forCellReuseIdentifier: TalkingFemaleChatSetCell.className())
        $0.register(EqualLayerReactiveCompatible.self, forCellReuseIdentifier: EqualLayerReactiveCompatible.className())
        //: self.addSubview($0)
        self.addSubview($0)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemaleChatSetView: UITableViewDelegate, UITableViewDataSource {
extension CreatureView: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 54
        return 54
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemaleChatSetCell.className(), for: indexPath) as! TalkingFemaleChatSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: EqualLayerReactiveCompatible.className(), for: indexPath) as! EqualLayerReactiveCompatible
        //: let model: ChatPriceModel = self.dataArray[indexPath.row]
        let model: ImagePriceModel = self.dataArray[indexPath.row]
        //: cell.updateCellModel(cellModel: model, index: self.showType)
        cell.restorePathIndex(cellModel: model, index: self.showType)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let curModel: ChatPriceModel = self.dataArray[indexPath.row]
        let curModel: ImagePriceModel = self.dataArray[indexPath.row]
        //: if curModel.levelLimit > (Int(MeasurementAppManager.share.loginUserMode.level) ?? 1) {
        if curModel.levelLimit > (Int(MeasurementAppManager.share.loginUserMode.level) ?? 1) {
            //: self.func__showStatusBarErrorMsg(showMsg: "Not reaching the required level".localized)
            self.episode(showMsg: String(bytes: str_followFatalValue.reversed(), encoding: .utf8)!.localized)
            //: return
            return
        }
        //: EditPrice(model: curModel)
        bindView(model: curModel)
    }

    //: func  EditPrice(model: ChatPriceModel) {
    func bindView(model: ImagePriceModel) {
        //: if price == model.price {
        if price == model.price {
            //: return
            return
        }
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: switch self.showType {
        switch self.showType {
        //: case 0:
        case 0:
            //: dict["key"] = "text_fee"
            dict["key"] = (String(str_observerPostPlayerValue.suffix(6)) + str_managerValue.replacingOccurrences(of: "share", with: "ee"))
        //: break
        //: case 1:
        case 1:
            //: dict["key"] = "video_fee"
            dict["key"] = (str_awakeRequestContent.replacingOccurrences(of: "error", with: "v") + String(str_touchValue.suffix(8)))
        //: break
        //: case 2:
        case 2:
            //: dict["key"] = "voice_fee"
            dict["key"] = (str_addData.replacingOccurrences(of: "layer", with: "i") + String(str_titleName))
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: dict["value"] = model.price
        dict[(str_detailValue.lowercased())] = model.price

        //: TalkingMeRequestTool.req_EditInfo(params: dict) { succeed, result, errorModel in
        ConstraintRequestTool.nextConstraint(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()

            //: if succeed {
            if succeed {
                //: for model in self.dataArray {
                for model in self.dataArray {
                    //: model.isSelected = false
                    model.isSelected = false
                }
                //: model.isSelected = true
                model.isSelected = true
                //: self.price = model.price
                self.price = model.price
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: if self.seletePriceBlock != nil {
                if self.seletePriceBlock != nil {
                    //: self.seletePriceBlock!(model)
                    self.seletePriceBlock!(model)
                }
                //: self.dismissView()
                self.totalelligence()

                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.episode(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

//: extension TalkingFemaleChatSetView {
extension CreatureView {
    // 添加视图
    //: private func setupSubviews() {
    private func workroom() {
        //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
        self.mainTableView.frame = CGRect(x: 0, y: a_formalValue, width: a_blockValue, height: self.contentHeight)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            //: self.mainTableView.layer.cornerRadius = 15
            self.mainTableView.layer.cornerRadius = 15
            //: } else {
        } else {
            // Fallback on earlier versions
        }

        //: popView.frame = UIScreen.main.bounds
        popView.frame = UIScreen.main.bounds
        //: popView.initWithView(view: self)
        popView.anInit(view: self)
        //: popView.showInView(view: ImageMacroDefine.getWindow())
        popView.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
    }

    //: @objc func dismissView() {
    @objc func totalelligence() {
        //: UIView.animate(withDuration: 0.3) {[weak self ] in
        UIView.animate(withDuration: 0.3) { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 0
            self.alpha = 0
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: a_formalValue, width: a_blockValue, height: self.contentHeight)
            //: } completion: { _ in
        } completion: { _ in

            //: self.removeFromSuperview()
            self.removeFromSuperview()
            //: self.popView.dismissView()
            self.popView.makeBy()
        }
    }

    //: func showView() {
    func locating() {
        //: UIView.animate(withDuration: 0.3, animations: { [weak self ] in
        UIView.animate(withDuration: 0.3, animations: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 1.0
            self.alpha = 1.0
            //: switch self.showType {
            switch self.showType {
            //: case 0:
            case 0:
                //: self.contentHeight += actualHeight(h: 500)
                self.contentHeight += actualHeight(h: 500)
            //: break
            //: case 1, 2:
            case 1, 2:
                //: self.contentHeight += actualHeight(h: 350)
                self.contentHeight += actualHeight(h: 350)
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight-self.contentHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: a_formalValue - self.contentHeight, width: a_blockValue, height: self.contentHeight)

            //: }, completion: nil)
        }, completion: nil)
    }
}
