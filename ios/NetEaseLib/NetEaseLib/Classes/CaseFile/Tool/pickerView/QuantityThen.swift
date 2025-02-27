
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_countTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "mount_img" :*/
fileprivate let str_customValue:String = "modeun"

/*: "Any" :*/
fileprivate let str_iconText:String = "video cell corner center trueAny"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuantityThen.swift
//  AbroadTalking
//
//  Created by young on 2023/5/16.
//

//: import UIKit
import UIKit

//: typealias TalkingNormalPickerViewHandle = (String) -> Void
typealias TalkingNormalPickerViewHandle = (String) -> Void

//: class TalkingNormalPickerView: TalkingBasePickView {
class QuantityThen: EqualPickView {
	var buttonCount: Double = 57.6
	var headMagnitude: Double = -54.4

    var timeUnitModeImageView: UIImageView?

    //: private var dataArr = [String]()
    private var dataArr = [String]() // picker数据
    //: private var selectedValue = ""                          // 选中数据
    private var selectedValue = "" // 选中数据
    //: var completionHandle: TalkingNormalPickerViewHandle?
    var completionHandle: TalkingNormalPickerViewHandle? // 选中回调

    //: init(frame: CGRect, data: [String]) {
    init(frame _: CGRect, data: [String]) {
        //: super.init()
        super.init()
        //: dataArr = data
        dataArr = data
        //: pickView.reloadAllComponents()
        pickView.reloadAllComponents()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_countTitle, encoding: .utf8)!)
    }

    //: override func initPickView() {
    override func giftSub() {
        //: super.initPickView()
        super.giftSub()

        //: pickView.delegate = self
        pickView.delegate = self
        timeUnitModeImageView = UIImageView(frame: self.frame.standardized)
        if let timeUnitModeImageView = timeUnitModeImageView {
            self.timeUnitModeImageView?.image = UIImage(named: (str_customValue.replacingOccurrences(of: "mode", with: "mo") + "t_img"))
            if (timeUnitModeImageView.isUserInteractionEnabled == true) && (timeUnitModeImageView.canBecomeFirstResponder) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(timeUnitModeImageView)
            }
        }

        //: pickView.dataSource = self
        pickView.dataSource = self
    
	if let timeUnitModeImageView = timeUnitModeImageView {

            if (timeUnitModeImageView.layer.shadowRadius == 1.81) && (timeUnitModeImageView.layer.contentsRect.origin.x != 0) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let gesturePackage = TimePeriodView(frame: timeUnitModeImageView.frame)


            gesturePackage.labCount = { [self] detailInterval in
            self.buttonCount = detailInterval
            
            return self.buttonCount
            }
                timeUnitModeImageView.addSubview(gesturePackage)
            }

	}

	}

    //: override func confirmClick(button: UIButton) {
    override func dismissEnableAdd(button: UIButton) {
        //: super.confirmClick(button: button)
        super.dismissEnableAdd(button: button)

        //: guard completionHandle != nil else { return }
        guard completionHandle != nil else { return }
        //: if selectedValue.count <= 0 {
        if selectedValue.count <= 0 {
            //: selectedValue = dataArr.first ?? "Any"
            selectedValue = dataArr.first ?? (String(str_iconText.suffix(3)))
        }
        //: completionHandle!(selectedValue)
        completionHandle!(selectedValue)
    
	if let timeUnitModeImageView = timeUnitModeImageView {

            if (timeUnitModeImageView.layer.shadowRadius == 1.81) && (timeUnitModeImageView.layer.contentsRect.origin.x != 0) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let gesturePackage = TimePeriodView(frame: timeUnitModeImageView.frame)


            gesturePackage.labCount = { [self] detailInterval in
            self.headMagnitude = detailInterval
            
            return self.headMagnitude
            }
                timeUnitModeImageView.addSubview(gesturePackage)
            }

	}

	}
}

// MARK: - Event

//: extension TalkingNormalPickerView {
extension QuantityThen {
    /// 默认选中
    //: func normalSelectedComponent(value: String) {
    func elect(value: String) {
        //: if let index = dataArr.firstIndex(of: value) {
        if let index = dataArr.firstIndex(of: value) {
            //: selectedValue = value
            selectedValue = value
            //: pickView.selectRow(index, inComponent: 0, animated: false)
            pickView.selectRow(index, inComponent: 0, animated: false)
        }
    }
}

// MARK: - UIPickerViewDelegate, UIPickerViewDataSource

//: extension TalkingNormalPickerView: UIPickerViewDelegate, UIPickerViewDataSource {
extension QuantityThen: UIPickerViewDelegate, UIPickerViewDataSource {
    //: func numberOfComponents(in pickerView: UIPickerView) -> Int {
    func numberOfComponents(in _: UIPickerView) -> Int {
        //: return 1
        return 1
    }

    //: func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    func pickerView(_: UIPickerView, numberOfRowsInComponent _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    func pickerView(_: UIPickerView, titleForRow row: Int, forComponent _: Int) -> String? {
        //: return dataArr[row]
        return dataArr[row]
    }

    //: func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
    func pickerView(_: UIPickerView, rowHeightForComponent _: Int) -> CGFloat {
        //: return 40
        return 40
    }

    //: func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    func pickerView(_: UIPickerView, didSelectRow row: Int, inComponent _: Int) {
        //: selectedValue = dataArr[row]
        selectedValue = dataArr[row]
    }
}
