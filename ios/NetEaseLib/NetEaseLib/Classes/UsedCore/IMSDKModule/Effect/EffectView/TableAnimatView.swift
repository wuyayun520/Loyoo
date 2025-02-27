
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_broadMediumFrameTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "iosSvgaEffect" :*/
fileprivate let str_screenValue:[Character] = ["i","o","s","S","v","g"]
fileprivate let str_cellText:[Character] = ["a","E","f","f","e","c","t"]

/*: "iosEffect" :*/
fileprivate let str_bottomMethodValue:String = "iosEffecview share have view view"
fileprivate let str_listContent:[Character] = ["t"]

/*: "entityId" :*/
fileprivate let str_quoteTitle:String = "equaltit"
fileprivate let str_sessionName:String = "video whiteyId"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableAnimatView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: protocol AnimatViewStepProtocol: NSObject {
protocol PathThen: NSObject {
    //: func animatViewWithStartLoadingResource(effectView: TalkingGiftAnimatView, obj: TalkingAnimatMsgModel)
    func straddle(effectView: TableAnimatView, obj: ConstraintMsgModel)

    //: func animatViewWithDidEndLoadingResource(effectView: TalkingGiftAnimatView, obj: TalkingAnimatMsgModel, success: Bool)
    func blockSuccess(effectView: TableAnimatView, obj: ConstraintMsgModel, success: Bool)

    //: func animatViewWithStartAnimating(effectView: TalkingGiftAnimatView, obj: TalkingAnimatMsgModel, success: Bool)
    func viewApp(effectView: TableAnimatView, obj: ConstraintMsgModel, success: Bool)

    //: func animatViewWithDidFinishAnimating(effectView: TalkingGiftAnimatView, obj: TalkingAnimatMsgModel)
    func nameImage(effectView: TableAnimatView, obj: ConstraintMsgModel)
}

//: typealias AnimationFinishCallback = (_ obj: TalkingAnimatMsgModel) -> Void
typealias AnimationFinishCallback = (_ obj: ConstraintMsgModel) -> Void

/// success表示 YES：成功完成动画，NO：表示动画资源加载出问题导致终止。
//: typealias FinishAnimatBlock = (_ success: Bool) -> Void
typealias FinishAnimatBlock = (_ success: Bool) -> Void

/// 礼物动效
//: class TalkingGiftAnimatView: UIView {
class TableAnimatView: UIView {
    var isochronousImageView: UIImageView?

    //: var currentEffectMsgModel: TalkingAnimatMsgModel?
    var currentEffectMsgModel: ConstraintMsgModel?
    //: var effectMsgModelArray = NSMutableArray.init(capacity: 0)
    var effectMsgModelArray = NSMutableArray(capacity: 0)
    //: var paused = false
    var paused = false
    //: var needStopAll = false
    var needStopAll = false
    //: var animatedView: TalkingGiftAnimatItemView?
    var animatedView: SocialGiftView?

    //: open weak var delegate: AnimatViewStepProtocol?
    open weak var delegate: PathThen?
    //: var animationFinishCallback: AnimationFinishCallback?
    var animationFinishCallback: AnimationFinishCallback?
    //: var finishAnimBlock: FinishAnimatBlock?
    var finishAnimBlock: FinishAnimatBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_broadMediumFrameTitle, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: cleanData()
        onTo()
    }

    //: override class var requiresConstraintBasedLayout: Bool {
    override class var requiresConstraintBasedLayout: Bool {
        //: return true
        return true
    }

    // 懒加载初始化
}

///  - data

//: extension TalkingGiftAnimatView {
extension TableAnimatView {
    //: func playAnimation(infoDic: Dictionary<String, Any>) {
    func reDic(infoDic: [String: Any]) {
        //: let dict = infoDic
        let dict = infoDic
        //: if dict.keys.isEmpty == false {
        if dict.keys.isEmpty == false {
            //: var iosEffect: String = dict["iosSvgaEffect"] as! String
            var iosEffect: String = dict[(String(str_screenValue) + String(str_cellText))] as! String
            //: if iosEffect.isEmptyString {
            if iosEffect.isEmptyString {
                //: iosEffect = dict["iosEffect"] as! String
                iosEffect = dict[(String(str_bottomMethodValue.prefix(8)) + String(str_listContent))] as! String
            }

            //: let entityId = dict["entityId"] as! Int
            let entityId = dict[(str_quoteTitle.replacingOccurrences(of: "equal", with: "en") + String(str_sessionName.suffix(3)))] as! Int

            //: if iosEffect.isEmptyString == false {
            if iosEffect.isEmptyString == false {
                //: var effectMsgModel = TalkingAnimatMsgModel.init()
                var effectMsgModel = ConstraintMsgModel()
                //: effectMsgModel.eid = entityId
                effectMsgModel.eid = entityId
                //: effectMsgModel.effectUrl = iosEffect
                effectMsgModel.effectUrl = iosEffect
                //: effectMsgModel.effectType = .Gift
                effectMsgModel.effectType = .Gift
                //: let successs = didReceiveMsgModel(msgModel: effectMsgModel)
                let successs = underIndexCell(msgModel: effectMsgModel)
            }
        }
    }

    // 收到数据，校验数据、判定类型->开始加载动画

    //: func didReceiveMsgModel(msgModel: Any?) ->Bool {
    func underIndexCell(msgModel: Any?) -> Bool {
        //: if (nil == msgModel) {return false}
        if msgModel == nil { return false }

        //: var effectMsgModel: TalkingAnimatMsgModel?
        var effectMsgModel: ConstraintMsgModel?
        //: var effectAnimationTimes = NSMutableArray.init()
        var effectAnimationTimes = NSMutableArray()

        //: if msgModel is TalkingAnimatMsgModel {
        if msgModel is ConstraintMsgModel {
            //: effectMsgModel = msgModel as? TalkingAnimatMsgModel
            effectMsgModel = msgModel as? ConstraintMsgModel
            //: } else if msgModel is TalkingGiftMsgAnimatModel {
        } else if msgModel is EventHandyJSON {
            //: let giftMsgModel = msgModel as! TalkingGiftMsgAnimatModel
            let giftMsgModel = msgModel as! EventHandyJSON
            //: var tempStr = giftMsgModel.iosEffect
            var tempStr = giftMsgModel.iosEffect
            //: if  tempStr.isEmptyString {
            if tempStr.isEmptyString {
                //: tempStr = giftMsgModel.iosVapEffect
                tempStr = giftMsgModel.iosVapEffect
            }
            //: if tempStr.isEmptyString {
            if tempStr.isEmptyString {
                //: return false
                return false
            }

            /*!
             * 情况：1、大额动效送多少个礼物播放多少遍动效；2、小额礼物送N个播放一遍动效
             * 逻辑：动效播放次数(animationTimes)与礼物个数(num)一致时即为大额礼物，
             *      需要播放animationTimes次动效，且每次UI显示送礼物个数为1
             *
             *  giftMsgModel 会被展示在公屏消息，所以内容不能修改，只能创建副本传递给动效的referObject
             *      例如：一次送N个大额礼物，
             *              公屏消息只显示一条“xx送了N个礼物名字”，
             *              礼物动效则播放N次动效，每次的标题为“xx送了1个礼物名字”
             */
            //: var tmpGiftMsgModel = giftMsgModel
            var tmpGiftMsgModel = giftMsgModel
            //: if (giftMsgModel.animationTimes > 1 ) {
            if giftMsgModel.animationTimes > 1 {
                // NOTE:创建副本
                //: tmpGiftMsgModel.setGiftNum(giftNum: 1)
                tmpGiftMsgModel.totaleraction(giftNum: 1) // 礼物个数设置为1，每次动效显示
                //: effectAnimationTimes = NSMutableArray.init(capacity: giftMsgModel.animationTimes-1)
                effectAnimationTimes = NSMutableArray(capacity: giftMsgModel.animationTimes - 1)

                //: var repeatEfftect = TalkingAnimatMsgModel.init()
                var repeatEfftect = ConstraintMsgModel()
                //: repeatEfftect.eid = giftMsgModel.pid ?? 0
                repeatEfftect.eid = giftMsgModel.pid ?? 0
                //: repeatEfftect.effectUrl = tempStr
                repeatEfftect.effectUrl = tempStr
                //: repeatEfftect.effectType = .Gift
                repeatEfftect.effectType = .Gift

                /// 记录动画次数 不再循环创建对象添加
                //: repeatEfftect.needAnimationTimes = giftMsgModel.animationTimes-1
                repeatEfftect.needAnimationTimes = giftMsgModel.animationTimes - 1
                //: effectAnimationTimes.add(repeatEfftect)
                effectAnimationTimes.add(repeatEfftect)
            }

            //: effectMsgModel = TalkingAnimatMsgModel.init()
            effectMsgModel = ConstraintMsgModel()
            //: effectMsgModel?.eid = giftMsgModel.pid ?? 0
            effectMsgModel?.eid = giftMsgModel.pid ?? 0
            //: effectMsgModel?.effectUrl = tempStr
            effectMsgModel?.effectUrl = tempStr
            //: effectMsgModel?.effectType = .Gift
            effectMsgModel?.effectType = .Gift
            //: effectMsgModel?.needAnimationTimes = giftMsgModel.animationTimes
            effectMsgModel?.needAnimationTimes = giftMsgModel.animationTimes
            // 盲盒礼物优先播放
            //: if (giftMsgModel.showType == ChatGiftAnimatType.myStery.rawValue || giftMsgModel.showType == ChatGiftAnimatType.king.rawValue) {
            if giftMsgModel.showType == UpAppSendable.myStery.rawValue || giftMsgModel.showType == UpAppSendable.king.rawValue {
                //: effectMsgModel?.top = true
                effectMsgModel?.top = true
            }
        }
        //: else {
        else {
            //: return false
            return false // 未知消息，丢弃
        }
        //: if (self.currentEffectMsgModel != nil || paused) {
        if self.currentEffectMsgModel != nil || paused {
            //: if (effectMsgModel?.top ?? false && self.effectMsgModelArray.count > 0) {
            if effectMsgModel?.top ?? false && self.effectMsgModelArray.count > 0 {
                /*!
                 * 排序，先来的top动效，优先播放
                 */
                //: var index = -1
                var index = -1

                //: for i in 0 ..< self.effectMsgModelArray.count {
                for i in 0 ..< self.effectMsgModelArray.count {
                    //: let aModel: TalkingAnimatMsgModel = self.effectMsgModelArray[i] as! TalkingAnimatMsgModel
                    let aModel: ConstraintMsgModel = self.effectMsgModelArray[i] as! ConstraintMsgModel
                    //: if aModel.top == false {
                    if aModel.top == false {
                        //: index = i
                        index = i
                        //: break
                        break
                    }
                }
                //: if (index == -1) {
                if index == -1 {
                    //: self.effectMsgModelArray.add(effectMsgModel ?? TalkingAnimatMsgModel.init())
                    self.effectMsgModelArray.add(effectMsgModel ?? ConstraintMsgModel())
                    //: } else {
                } else {
                    //: self.effectMsgModelArray.insert(effectMsgModel ?? TalkingAnimatMsgModel.init(), at: index)
                    self.effectMsgModelArray.insert(effectMsgModel ?? ConstraintMsgModel(), at: index)
                }

                //: } else {
            } else {
                //: self.effectMsgModelArray.add(effectMsgModel ?? TalkingAnimatMsgModel.init())
                self.effectMsgModelArray.add(effectMsgModel ?? ConstraintMsgModel())
                //: return true
                return true
            }

            //: } else {
        } else {
            //: firstShow(effectMsgModel: effectMsgModel!)
            thumbModel(effectMsgModel: effectMsgModel!)
        }

        //: if effectAnimationTimes.count > 0 {
        if effectAnimationTimes.count > 0 { // 重复播放
            //: self.effectMsgModelArray.addObjects(from: effectAnimationTimes as! [Any])
            self.effectMsgModelArray.addObjects(from: effectAnimationTimes as! [Any])
        }
        //: return true
        return true
    }
}

///  - control

//: extension TalkingGiftAnimatView {
extension TableAnimatView {
    //: func pause() {
    func voiceImage() {
        //: self.paused = true
        self.paused = true
        //: self.animatedView?.pauseAnimation()
        self.animatedView?.scene()
    }

    //: func resume() {
    func enableResume() {
        //: if self.currentEffectMsgModel == nil {
        if self.currentEffectMsgModel == nil {
            //: if self.effectMsgModelArray.count > 0 {
            if self.effectMsgModelArray.count > 0 {
                //: guard let removeModel = removeFirstMessageModel() else { return }
                guard let removeModel = amplitudeLevel() else { return }
                //: firstShow(effectMsgModel: removeModel)
                thumbModel(effectMsgModel: removeModel)
            }
            //: } else {
        } else {
            //: self.animatedView?.resumeAnimation()
            self.animatedView?.sound()
        }

        //: self.paused = false
        self.paused = false
    }

    //: func removeFirstMessageModel()-> TalkingAnimatMsgModel? {
    func amplitudeLevel() -> ConstraintMsgModel? {
        //: if (self.effectMsgModelArray.count == 0) {
        if self.effectMsgModelArray.count == 0 {
            //: return TalkingAnimatMsgModel.init()
            return ConstraintMsgModel()
        }
        //: let effectMsgModel = self.effectMsgModelArray.firstObject
        let effectMsgModel = self.effectMsgModelArray.firstObject
        //: self.effectMsgModelArray.removeObject(at: 0)
        self.effectMsgModelArray.removeObject(at: 0)

        //: if effectMsgModel is TalkingAnimatMsgModel {
        if effectMsgModel is ConstraintMsgModel {
            //: let lastEffectMsgModel = effectMsgModel as! TalkingAnimatMsgModel
            let lastEffectMsgModel = effectMsgModel as! ConstraintMsgModel
            //: if lastEffectMsgModel.needAnimationTimes > 1 {
            if lastEffectMsgModel.needAnimationTimes > 1 {
                //: var newModel =  lastEffectMsgModel
                var newModel = lastEffectMsgModel
                //: newModel.needAnimationTimes = lastEffectMsgModel.needAnimationTimes-1
                newModel.needAnimationTimes = lastEffectMsgModel.needAnimationTimes - 1
                //: self.effectMsgModelArray.insert(newModel, at: 0)
                self.effectMsgModelArray.insert(newModel, at: 0)
            }
        }
        //: return effectMsgModel as? TalkingAnimatMsgModel
        return effectMsgModel as? ConstraintMsgModel
    }
}

//: extension TalkingGiftAnimatView {
extension TableAnimatView {
    // 下载、播放动画
    //: func firstShow(effectMsgModel: TalkingAnimatMsgModel) {
    func thumbModel(effectMsgModel: ConstraintMsgModel) {
        //: self.currentEffectMsgModel = effectMsgModel
        self.currentEffectMsgModel = effectMsgModel

        //  开始下载资源
        //: self.delegate?.animatViewWithStartLoadingResource(effectView: self, obj: effectMsgModel)
        self.delegate?.straddle(effectView: self, obj: effectMsgModel)

        //: TalkingGiftAnimatTool.shared.loadEffectData(effectMsgModel: effectMsgModel, completion: { [weak self] success, giftModel in
        LabelAnimatTool.shared.mediumCompletion(effectMsgModel: effectMsgModel, completion: { [weak self] success, giftModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.handleDownloadedAnimationEffect(effectMsgModel: effectMsgModel, success: success, effectModel: giftModel ?? TalkingGiftAnimatModel.init())
            self.handleVoiceMTheoryTitle(effectMsgModel: effectMsgModel, success: success, effectModel: giftModel ?? ConstraintTransformable())
            //: })
        })
    }

    //: func handleDownloadedAnimationEffect(effectMsgModel: TalkingAnimatMsgModel, success: Bool, effectModel: TalkingGiftAnimatModel) {
    func handleVoiceMTheoryTitle(effectMsgModel: ConstraintMsgModel, success: Bool, effectModel: ConstraintTransformable) {
        // 资源下载完成
        //: self.delegate?.animatViewWithDidEndLoadingResource(effectView: self, obj: effectMsgModel, success: success)
        self.delegate?.blockSuccess(effectView: self, obj: effectMsgModel, success: success)

        //: if (success) {
        if success {
            //: if self.paused {
            if self.paused {
                //: self.currentEffectMsgModel = nil
                self.currentEffectMsgModel = nil
                //: self.effectMsgModelArray.insert(effectMsgModel, at: 0)
                self.effectMsgModelArray.insert(effectMsgModel, at: 0)
                //: } else {
            } else {
                /// self.currentEffectMsgModel的值可能在下载过程中，被清空或改变
                //: if self.currentEffectMsgModel?.eid == effectMsgModel.eid && self.currentEffectMsgModel?.effectUrl == effectMsgModel.effectUrl {
                if self.currentEffectMsgModel?.eid == effectMsgModel.eid, self.currentEffectMsgModel?.effectUrl == effectMsgModel.effectUrl {
                    //: playAnimationEffect(effectMsgModel: effectMsgModel, model: effectModel)
                    hypothesisMake(effectMsgModel: effectMsgModel, model: effectModel)
                    //: return
                    return
                }
            }
        }

        // 礼物的资源下载失败
        //: self.alpha = 0
        self.alpha = 0
        //: finishAnimation(success: false)
        nearTitle(success: false)
    }

    //: func playAnimationEffect(effectMsgModel: TalkingAnimatMsgModel, model: TalkingGiftAnimatModel) {
    func hypothesisMake(effectMsgModel: ConstraintMsgModel, model: ConstraintTransformable) {
        //: self.alpha = 1
        self.alpha = 1
        //: self.needStopAll = false
        self.needStopAll = false
        //: buildAnimationViewWithEffectModel(effectMsgModel: effectMsgModel, effectModel: model)
        halogenModel(effectMsgModel: effectMsgModel, effectModel: model)
        // show animation；开始动画；GJGiftEffectItemView的子类实现
        //: self.animatedView?.startAnimating()
        self.animatedView?.textColorGift()
    }

    /*!
           * 构造视图。 GJGiftEffectItemView的子类，根据数据模型动态加载，（添加视图，视图添加约束，根据类型加载动画（放射变换动画，序列帧动画，AE动画，gif动画））
           * @see TalkingGiftEffectType
     */
    //: func buildAnimationViewWithEffectModel(effectMsgModel: TalkingAnimatMsgModel, effectModel: TalkingGiftAnimatModel) {
    func halogenModel(effectMsgModel: ConstraintMsgModel, effectModel: ConstraintTransformable) {
        //: if self.animatedView != nil {
        if self.animatedView != nil {
            //: self.animatedView?.stopAnimating()
            self.animatedView?.scopeData()
            //: self.animatedView?.cleanAnimating()
            self.animatedView?.cleanUponPresent()
            //: self.animatedView?.removeFromSuperview()
            self.animatedView?.removeFromSuperview()
            //: self.animatedView = nil
            self.animatedView = nil
        }

        // 根据礼物信息数据，动态生成加载的class
        //: var className: String? = effectModel.className
        var className: String? = effectModel.className
        //: if className?.count == 0 || className == nil {
        if className?.count == 0 || className == nil { // 3.2.5以后使用nativeClassName
            //: if effectModel.nativeClassName.count>0 {
            if effectModel.nativeClassName.count > 0 {
                //: className = effectModel.nativeClassName
                className = effectModel.nativeClassName
            }
        }

        //: className = TalkingGiftAnimatTool.shared.getNewAnimatClassName(oldName: className ?? "")
        className = LabelAnimatTool.shared.mediumGetAvailable(oldName: className ?? "")
        //: let clsName = PodspecName + "." + className!
        let clsName = a_bottomName + "." + className!
        //: let AnimatedViewClass: AnyClass? = NSClassFromString(clsName)
        let AnimatedViewClass: AnyClass? = NSClassFromString(clsName)
        //: let realClass = AnimatedViewClass as! TalkingGiftAnimatItemView.Type
        let realClass = AnimatedViewClass as! SocialGiftView.Type

        // 生成具体的视图类
        //: self.animatedView                    = realClass.init()
        self.animatedView = realClass.init()
        //: self.animatedView?.frame = self.frame
        self.animatedView?.frame = self.frame
        //: self.animatedView?.delegate          = self
        self.animatedView?.delegate = self
        //: self.animatedView?.effectMsgModel    = effectMsgModel
        self.animatedView?.effectMsgModel = effectMsgModel
        //: self.animatedView?.giftEffectModel   = effectModel
        self.animatedView?.giftEffectModel = effectModel
        //: self.animatedView?.contentMode        = .scaleAspectFill
        self.animatedView?.contentMode = .scaleAspectFill
        //: self.addSubview(self.animatedView!)
        self.addSubview(self.animatedView!)
//        self.sendSubviewToBack(self.animatedView!)

        //: self.animatedView?.snp.makeConstraints { make in
        self.animatedView?.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
    }
}

/// - GJGiftEffectItemViewDelegate protocol

//: extension TalkingGiftAnimatView: GiftAnimatItemViewDelegate {
extension TableAnimatView: ErrorMediaViewDelegate {
    //: func giftEffectItemView(effectItemView: TalkingGiftAnimatItemView, success: Bool) {
    func playerCell(effectItemView: SocialGiftView, success: Bool) {
        //: if (!success) {
        if !success {
            //: self.alpha = 0
            self.alpha = 0
            //: finishAnimation(success: success)
            nearTitle(success: success)
        }

        //: self.delegate?.animatViewWithStartAnimating(effectView: self, obj: effectItemView.effectMsgModel ?? TalkingAnimatMsgModel.init(), success: success)
        self.delegate?.viewApp(effectView: self, obj: effectItemView.effectMsgModel ?? ConstraintMsgModel(), success: success)
    }

    //: func didFinishAnimationOfGift(effectItemView: TalkingGiftAnimatItemView) {
    func upgradeView(effectItemView: SocialGiftView) {
        //: if (effectItemView == self.animatedView) {
        if effectItemView == self.animatedView {
            //: if (!self.needStopAll) {
            if !self.needStopAll {
                //: finishAnimation(success: true)
                nearTitle(success: true)
            }
        }

        //: let effectMsgModel = effectItemView.effectMsgModel
        let effectMsgModel = effectItemView.effectMsgModel

        /* 5.2.6 新增 播放完毕回调 */

        //: if self.animationFinishCallback != nil {
        if self.animationFinishCallback != nil {
            //: self.animationFinishCallback!(effectMsgModel!)
            self.animationFinishCallback!(effectMsgModel!)
        }
        //: self.delegate?.animatViewWithDidFinishAnimating(effectView: self, obj: effectMsgModel!)
        self.delegate?.nameImage(effectView: self, obj: effectMsgModel!)
    }
}

/// - Animation Tool

//: extension TalkingGiftAnimatView {
extension TableAnimatView {
    // 结束所有动画，清空队列
    //: func func__endAnimation() {
    func tillDismiss() {
        //: self.needStopAll = true
        self.needStopAll = true
        //: effectMsgModelArray.removeAllObjects()
        effectMsgModelArray.removeAllObjects()
        //: cleanData()
        onTo()
    }

    // clean
    //: func cleanData() {
    func onTo() {
        //: if animatedView != nil {
        if animatedView != nil {
            //: self.animatedView?.stopAnimating()
            self.animatedView?.scopeData() // stop animation
            //: self.animatedView?.cleanAnimating()
            self.animatedView?.cleanUponPresent() // clean animation data
            //: self.animatedView?.subviews.forEach { $0.removeFromSuperview() }
            self.animatedView?.subviews.forEach { $0.removeFromSuperview() }
            //: self.animatedView?.removeFromSuperview()
            self.animatedView?.removeFromSuperview()
            //: self.animatedView = nil
            self.animatedView = nil
        }
        //: currentEffectMsgModel = nil
        currentEffectMsgModel = nil
    }

    // 结束正在播放的动画；如果队列中还有 并且 needStopAll == NO，就继续播放下一个；否则，结束全部
    //: func finishAnimation(success: Bool) {
    func nearTitle(success: Bool) {
        //: cleanData()
        onTo()

        //: if paused {
        if paused {
            //: return
            return
        }

        //: if (self.effectMsgModelArray.count > 0 && self.needStopAll == false) {
        if self.effectMsgModelArray.count > 0, self.needStopAll == false {
            //: let effectMsgModel = removeFirstMessageModel()
            let effectMsgModel = amplitudeLevel()

            //: if effectMsgModel != nil {
            if effectMsgModel != nil {
                //: firstShow(effectMsgModel: effectMsgModel!)
                thumbModel(effectMsgModel: effectMsgModel!)
                //: return
                return
            }
        }

        //: effectMsgModelArray = NSMutableArray.init(capacity: 0)
        effectMsgModelArray = NSMutableArray(capacity: 0)
        //: if self.finishAnimBlock != nil {
        if self.finishAnimBlock != nil {
            //: self.finishAnimBlock!(success)
            self.finishAnimBlock!(success)
        }
    }
}
