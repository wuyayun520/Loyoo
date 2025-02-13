
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_scaleData:[UInt8] = [0xc5,0xc2,0xc5,0xd8,0x84,0xcf,0xc3,0xc8,0xc9,0xde,0x96,0x85,0x8c,0xc4,0xcd,0xdf,0x8c,0xc2,0xc3,0xd8,0x8c,0xce,0xc9,0xc9,0xc2,0x8c,0xc5,0xc1,0xdc,0xc0,0xc9,0xc1,0xc9,0xc2,0xd8,0xc9,0xc8]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueViewReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class ValueViewReactiveCompatible: TalkingChatMsgBaseCellData {
@objcMembers public class ValueViewReactiveCompatible: AppCellData {
    //: public override var msgModel: ConfinementModel {
    override public var msgModel: ConfinementModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set { super.msgModel = newValue }
        set { super.msgModel = newValue }
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_scaleData.map{$0^172}, encoding: .utf8)!)
    }

    //: public override func contentSize() ->CGSize {
    override public func contentSize() -> CGSize {
        //: let audioWidth = Float(self.voiceModel.audioLength)*2.4 + 90
        let audioWidth = Float(self.voiceModel.audioLength) * 2.4 + 90
        //: return CGSize.init(width: Int(audioWidth), height: 42)
        return CGSize(width: Int(audioWidth), height: 42)
    }

    //: @objc public lazy var voiceModel: TalkingVoiceMsgPlayModel = {
    public lazy var voiceModel: FrameworkValueModelType = {
        //: var model = TalkingVoiceMsgPlayModel()
        var model = FrameworkValueModelType()
        //: return model
        return model
        //: }()
    }()
}
