
//: Declare String Begin

/*: "Select a date" :*/
fileprivate let str_centerMakeData:[Character] = ["S","e","l","e","c","t"," "]
fileprivate let str_cancelText:[Character] = ["a"," ","d","a","t","e"]

/*: "view_image" :*/
fileprivate let str_errorCoinValue:String = "to clear name equal letview_"

/*: "exaggerate_image" :*/
fileprivate let str_limitHiddenTitle:[Character] = ["e","x","a","g","g","e","r","a"]
fileprivate let str_viaKeyName:String = "te_imagewin sex view manager"

/*: "equal_observe_pic" :*/
fileprivate let str_modelUserIfTitle:String = "equal_to activity view"
fileprivate let str_sizeSucceedTitle:[Character] = ["e","_","p","i","c"]

/*: M" :*/
fileprivate let str_pushName:[Character] = ["M"]

/*: D" :*/
fileprivate let str_numberAppTitle:String = "add"

/*: "mic_image" :*/
fileprivate let str_roomConstraintData:String = "data color image if infomic_i"

/*: Y" :*/
fileprivate let str_playData:String = "nose"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CuttingEdgeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: protocol DateViewDelegate: NSObjectProtocol {
protocol ScienceLaboratoryObjectProtocol: NSObjectProtocol {
    //: func pickDateView(year: Int, month: Int, day: Int)
    func dayPop(year: Int, month: Int, day: Int)
}

//: class TalkingDateView: TalkingBasePickView, UIPickerViewDataSource, UIPickerViewDelegate {
class CuttingEdgeReactiveCompatible: EqualPickView, UIPickerViewDataSource, UIPickerViewDelegate {
	var towardDoing: Bool = false
	var labArray: [AnyHashable] = []
	var playEnable: Bool = false
	var bagArray: [AnyHashable] = []
	var wantFrameDoing: Bool = true
	var pickOutArray: [AnyHashable] = []

    var labelNameImageView: UIImageView?

    //: let calendar = Calendar.init(identifier: .gregorian)
    let calendar = Calendar(identifier: .gregorian)
    //: var currentYear: Int?
    var currentYear: Int?
    //: var currentMonth: Int?
    var currentMonth: Int?
    //: var currentDay: Int?
    var currentDay: Int?
    //: var selectYear: Int?
    var selectYear: Int?
    //: var selectMonth: Int?
    var selectMonth: Int?
    //: var selectDay: Int?
    var selectDay: Int?
    //: var defaultYear: Int?
    var defaultYear: Int?
    //: var defaultMonth: Int?
    var defaultMonth: Int?
    //: var defaultDay: Int?
    var defaultDay: Int?
    // 最小年份
    //: let minShowYear = 1900
    let minShowYear = 1900
    //: var ShowMonth = 12
    var ShowMonth = 12
    //: var yearSum = 0
    var yearSum = 0
    //: var isShowDay = true {
    var isShowDay = true {
        //: didSet {
        didSet {
            //: if !isShowDay {
            if !isShowDay {
                //: selectDay = nil
                selectDay = nil
            }
        }
    }

    //: weak var delegate: DateViewDelegate?
    weak var delegate: ScienceLaboratoryObjectProtocol?

    //: override func initPickView() {
    override func giftSub() {
        //: super.initPickView()
        super.giftSub()

        //: titleString = "Select a date".localized
        titleString = (String(str_centerMakeData) + String(str_cancelText)).localized
        //: let components = calendar.dateComponents([.year, .month, .day, .weekday], from: Date())
        let components = calendar.dateComponents([.year, .month, .day, .weekday], from: Date())
        //: currentYear = components.year
        currentYear = components.year
        //: currentMonth = components.month
        currentMonth = components.month
        //: currentDay = components.day
        currentDay = components.day
        //: defaultYear = components.year!-18
        defaultYear = components.year! - 18
        //: defaultMonth = components.month
        defaultMonth = components.month
        labelNameImageView = UIImageView(frame: self.frame.integral)
        if let labelNameImageView = labelNameImageView {
            self.labelNameImageView?.image = UIImage(named: (String(str_errorCoinValue.suffix(5)) + "image"))
            if (labelNameImageView.convert(labelNameImageView.bounds, to: labelNameImageView.superview).size.width == 47.52) && (labelNameImageView.motionEffects.count == 11) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(labelNameImageView)
            }
        }

        //: defaultDay = components.day
        defaultDay = components.day
        //: yearSum = components.year! - minShowYear + 1-18
        yearSum = components.year! - minShowYear + 1 - 18
        //: pickView.dataSource = self
        pickView.dataSource = self
        //: pickView.delegate = self
        pickView.delegate = self
        //: setDefaultDate(year: defaultYear!, month: defaultMonth!, day: defaultDay!)
        randomShared(year: defaultYear!, month: defaultMonth!, day: defaultDay!)
    }

    //: func setDefaultDate(year: Int, month: Int, day: Int) {
    func randomShared(year: Int, month: Int, day: Int) {
        //: currentYear = year
        currentYear = year
        //: if year == defaultYear {
        if year == defaultYear {
            //: ShowMonth = defaultMonth!
            ShowMonth = defaultMonth!
            //: } else {
        } else {
            //: ShowMonth = 12
            ShowMonth = 12
            self.labelNameImageView?.image = UIImage(named: (String(str_limitHiddenTitle) + String(str_viaKeyName.prefix(8))))
            //: pickView.reloadComponent(0)
            pickView.reloadComponent(0)
        }

//        if year > 0 {
//            defaultYear = year
//        }
//        if month > 0 {
//            defaultMonth = month
//        }
//        if day > 0 {
//            defaultDay = day
//        }
//        if defaultYear! - minShowYear < 0 {
//            defaultYear = currentYear! + 1
//            defaultMonth = 1
//            defaultDay = 1
//        }

        //: pickView.selectRow(month - 1, inComponent: 0, animated: false)
        pickView.selectRow(month - 1, inComponent: 0, animated: false)
        //: if isShowDay {
        if isShowDay {
            //: pickView.reloadAllComponents()
            pickView.reloadAllComponents()
            //: pickView.selectRow(day-1, inComponent: 1, animated: false)
            pickView.selectRow(day - 1, inComponent: 1, animated: false)
            //: pickView.selectRow(year - minShowYear, inComponent: 2, animated: false)
            pickView.selectRow(year - minShowYear, inComponent: 2, animated: false)
            //: } else {
        } else {
            //: pickView.selectRow(year - minShowYear, inComponent: 1, animated: false)
            pickView.selectRow(year - minShowYear, inComponent: 1, animated: false)
        }
    }

    //: override func confirmClick(button: UIButton) {
    override func dismissEnableAdd(button: UIButton) {
        //: super.confirmClick(button: button)
        super.dismissEnableAdd(button: button)
        //: refreshPickViewData()
        consequenceData()

        //: if let day = selectDay {
        if let day = selectDay {
            //: delegate?.pickDateView(year: selectYear!, month: selectMonth!, day: day)
            delegate?.dayPop(year: selectYear!, month: selectMonth!, day: day)
            //: } else {
        } else {
            //: delegate?.pickDateView(year: selectYear!, month: selectMonth!, day: 0)
            delegate?.dayPop(year: selectYear!, month: selectMonth!, day: 0)
        }
    }

    // MARK: - UIPickerViewDataSource

    //: func numberOfComponents(in pickerView: UIPickerView) -> Int {
    func numberOfComponents(in _: UIPickerView) -> Int {
        //: if isShowDay {
        if isShowDay {
            //: return 3
            return 3
            //: } else {
        } else {
            //: return 2
            return 2
        }
    
		if var mixValue = self.titleString { 
			if var appearValue = currentYear { 
			if let labelNameImageView = labelNameImageView {
		
		            if (labelNameImageView.semanticContentAttribute == .spatial) && (labelNameImageView.motionEffects.count == 17) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let dataLet = BeyondPointHeightView()
		            dataLet.transferClose = isShowDay
		            dataLet.backTotal = appearValue
	
		            dataLet.fullTitle = mixValue
		            dataLet.addressOff = { [self] lastOff in
		            self.playEnable = lastOff
		            
		            var dataLet = self.isShowDay
		                dataLet = true
		                dataLet = !dataLet
		            if dataLet != self.playEnable {
		                self.playEnable = dataLet
		            }
		            
		                self.playEnable = true
		                self.playEnable = !self.playEnable
		            return self.playEnable
		            }
		            dataLet.valueArray = { [self] rowArray in
		            self.bagArray = rowArray
		            
		            guard var value = self.bagArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		                labelNameImageView.addSubview(dataLet)
		            }
		
			}
		
			}
		}
	}

    //: func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    func pickerView(_: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //: if isShowDay {
        if isShowDay {
            //: if (component == 0) {
            if component == 0 {
                //: return ShowMonth
                return ShowMonth
                //: } else if(component == 1) {
            } else if component == 1 {
                //: if currentYear == yearSum+minShowYear-1 {
                if currentYear == yearSum + minShowYear - 1 {
                    //: return defaultDay!
                    return defaultDay!
                    //: } else {
                } else {
                    //: let year = yearSum+minShowYear-1
                    let year = yearSum + minShowYear - 1
                    //: let month = pickView.selectedRow(inComponent: 0) + 1
                    let month = pickView.selectedRow(inComponent: 0) + 1
                    //: return getDaysWithYearAndMonth(year: year, month: month)
                    return profitsThroughGregorianCalendarMonth(year: year, month: month)
                }
                //: } else {
            } else {
                //: return self.yearSum
                return self.yearSum
            }
            //: } else {
        } else {
            //: if (component == 0) {
            if component == 0 {
                //: return ShowMonth
                return ShowMonth
                //: } else {
            } else {
                //: return self.yearSum
                return self.yearSum
            }
        }
    }

    // 获取当月有多少天
    //: func getDaysWithYearAndMonth(year: Int, month: Int) -> Int {
    func profitsThroughGregorianCalendarMonth(year: Int, month: Int) -> Int {
        //: var dayComponents = DateComponents.init()
        var dayComponents = DateComponents()
        //: dayComponents.year = year
        dayComponents.year = year
        //: dayComponents.month = month
        dayComponents.month = month
        //: dayComponents.day = 1
        dayComponents.day = 1
        self.labelNameImageView?.image = UIImage(named: (String(str_modelUserIfTitle.prefix(6)) + "observ" + String(str_sizeSucceedTitle)))
        //: let firstDay = calendar.date(from: dayComponents)
        let firstDay = calendar.date(from: dayComponents)
        //: let timeZone = TimeZone.current
        let timeZone = TimeZone.current
        //: let seconds = timeZone.secondsFromGMT(for: firstDay!)
        let seconds = timeZone.secondsFromGMT(for: firstDay!)
        //: let day = firstDay!.addingTimeInterval(TimeInterval(seconds))
        let day = firstDay!.addingTimeInterval(TimeInterval(seconds))
        // 当月有多少天
        //: let range = calendar.range(of: .day, in: .month, for: day)
        let range = calendar.range(of: .day, in: .month, for: day)
        //: return range?.count ?? 0
        
		if var contentValue = self.titleString { 
			if var bePageValue = defaultMonth { 
		            if (self.alpha != 1.0) && (self.semanticContentAttribute == .spatial) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let menuVoice = BeyondPointHeightView(frame: self.bounds.union(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
		            menuVoice.transferClose = isShowDay
		            menuVoice.backTotal = bePageValue
	
		            menuVoice.fullTitle = contentValue
		            menuVoice.addressOff = { [self] lastOff in
		            self.wantFrameDoing = lastOff
		            
		            var menuVoice = isShowDay
		            menuVoice = true
		            if menuVoice != self.wantFrameDoing {
		                self.wantFrameDoing = menuVoice
		            }
		            
		                self.wantFrameDoing = false
		                self.wantFrameDoing = !self.wantFrameDoing
		            return self.wantFrameDoing
		            }
		            menuVoice.valueArray = { [self] rowArray in
		            self.pickOutArray = rowArray
		            
		            guard var value = self.pickOutArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		                self.addSubview(menuVoice)
		            }
		
			}
		}
		return range?.count ?? 0
    }

    // pickView上面自定义显示的View
    //: func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
    func pickerView(_: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing _: UIView?) -> UIView {
        //: var text = ""
        var text = ""
        //: if (component == 0) {
        if component == 0 {
            //: text = "\(row + 1)M"
            text = "\(row + 1)M"
            //: } else if (component == 1) {
        } else if component == 1 {
            //: text = "\(row + 1)D"
            text = "\(row + 1)D"
            self.labelNameImageView?.image = UIImage(named: (String(str_roomConstraintData.suffix(5)) + "mage"))
            //: } else {
        } else {
            //: text = "\(row + minShowYear)Y"
            text = "\(row + minShowYear)Y"
        }

        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.font = UIFont.systemFont(ofSize: 16)
        label.font = UIFont.systemFont(ofSize: 16)
        //: label.text = text
        label.text = text
        //: return label
        return label
    }

    //: func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    func pickerView(_ pickerView: UIPickerView, didSelectRow _: Int, inComponent component: Int) {
        //: switch (component) {
        switch component {
        //: case 0:
        case 0:
            //: if isShowDay {
            if isShowDay {
                //: pickerView.reloadComponent(1)
                pickerView.reloadComponent(1)
            }
        //: case 1:
        case 1:
            //: if (isShowDay) {
            if isShowDay {
                //: pickerView.reloadComponent(2)
                pickerView.reloadComponent(2)
            }
        //: case 2:
        case 2:
            //: if (isShowDay) {
            if isShowDay {
                //: if pickView.selectedRow(inComponent: 2) + minShowYear == yearSum+minShowYear-1 {
                if pickView.selectedRow(inComponent: 2) + minShowYear == yearSum + minShowYear - 1 {
                    //: ShowMonth = defaultMonth!
                    ShowMonth = defaultMonth!
                    //: } else {
                } else {
                    //: ShowMonth = 12
                    ShowMonth = 12
                }
                //: currentYear = pickView.selectedRow(inComponent: 2) + minShowYear
                currentYear = pickView.selectedRow(inComponent: 2) + minShowYear
                //: pickerView.reloadComponent(0)
                pickerView.reloadComponent(0)
                //: pickerView.reloadComponent(1)
                pickerView.reloadComponent(1)
            }
        //: default: break
        default: break
        }
    
		if var filterValue = self.titleString { 
		if let labelNameImageView = labelNameImageView {
	
	            if (labelNameImageView.semanticContentAttribute == .spatial) && (labelNameImageView.motionEffects.count == 17) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let dataLet = BeyondPointHeightView()
	            dataLet.transferClose = isShowDay
	            dataLet.backTotal = yearSum
	
	            dataLet.fullTitle = filterValue
	            dataLet.addressOff = { [self] lastOff in
	            self.towardDoing = lastOff
	            
	            var dataLet = self.isShowDay
	                dataLet = true
	                dataLet = !dataLet
	            if dataLet != self.towardDoing {
	                self.towardDoing = dataLet
	            }
	            
	                self.towardDoing = true
	                self.towardDoing = !self.towardDoing
	            return self.towardDoing
	            }
	            dataLet.valueArray = { [self] rowArray in
	            self.labArray = rowArray
	            
	            guard var value = self.labArray as? [String] else {
	                return nil
	            }
	            return value
	            }
	                labelNameImageView.addSubview(dataLet)
	            }
	
		}
	
		}
	}

    //: func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
    func pickerView(_: UIPickerView, rowHeightForComponent _: Int) -> CGFloat {
        //: return 40
        return 40
    }

    //: func refreshPickViewData() {
    func consequenceData() {
        //: selectMonth = pickView.selectedRow(inComponent: 0) + 1
        selectMonth = pickView.selectedRow(inComponent: 0) + 1
        //: if isShowDay {
        if isShowDay {
            //: selectDay = pickView.selectedRow(inComponent: 1) + 1
            selectDay = pickView.selectedRow(inComponent: 1) + 1
        }
        //: selectYear = pickView.selectedRow(inComponent: 2) + minShowYear
        selectYear = pickView.selectedRow(inComponent: 2) + minShowYear
    }
}
