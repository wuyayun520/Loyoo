
//: Declare String Begin

/*: "visualisation_img" :*/
fileprivate let str_userText:String = "vcountuali"
fileprivate let str_pathMethodTitle:String = "satton"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerVerificationVc.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationVC: TalkingBaseViewController {
class ManagerVerificationVc: PropertyViewController {
	var attackClose: Bool = true
	var changeNumber: Int = 100
	var examineedNumber: Double = -10.7
	var voiceDisappearArray: [AnyHashable] = []

    var layerImageView: UIImageView?

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    
            if (mainView.tag == 9794) && (mainView.frame.origin.x == 89.81) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let fileAllocationTable = RecordView(frame: mainView.bounds.standardized)

            fileAllocationTable.modelEnable = { [self] intervalClose in
            self.attackClose = intervalClose
            
            var fileAllocationTable = animated
            fileAllocationTable = false
            if fileAllocationTable != self.attackClose {
                self.attackClose = fileAllocationTable
            }
            
            return self.attackClose
            }
            fileAllocationTable.successfullyNumber = { [self] tableNumber in
            self.changeNumber = tableNumber
            
            return self.changeNumber
            }
            fileAllocationTable.frameInterval = { [self] textQuantity in
            self.examineedNumber = textQuantity
            
            return self.examineedNumber
            }
            fileAllocationTable.managerBackRoomArray = { [self] nidusDeckArray in
            self.voiceDisappearArray = nidusDeckArray
            
            guard var value = self.voiceDisappearArray as? [String] else {
                return nil
            }
            return value
            }
                mainView.addSubview(fileAllocationTable)
            }

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.createUI()
        self.dateButton()
        //: self.createUIConstraint()
        self.draft()

        layerImageView = UIImageView(frame: self.view.bounds.union(CGRect(x: CGFloat(Double(self.view.frame.origin.y)), y: CGFloat(Double(self.view.frame.size.width)), width: CGFloat(Int(self.view.frame.origin.x)), height: CGFloat(self.view.isFocused ? 2 : 2))))
        if let layerImageView = layerImageView {
            self.layerImageView?.image = UIImage(named: (str_userText.replacingOccurrences(of: "count", with: "is") + str_pathMethodTitle.replacingOccurrences(of: "to", with: "io") + "_img"))
            if (layerImageView.layer.position.x == 28.23) && (layerImageView.layer.zPosition == 14.57) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(layerImageView)
            }
        }
    }

    // MARK: - Lazy load

    //: lazy var mainView: TalkingFinalVerificationView = {
    lazy var mainView: GestureEventVerificationView = {
        //: let view = TalkingFinalVerificationView()
        let view = GestureEventVerificationView()
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFinalVerificationVC {
extension ManagerVerificationVc {
    //: override func naviPopback() {
    override func noNavi() {
        /// 注册时真人认证
        //: for index in 0..<(self.navigationController?.viewControllers.count)! {
        for index in 0 ..< (self.navigationController?.viewControllers.count)! {
            //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingLoginEditAuthAndVideoVC.self) == true {
            if self.navigationController?.viewControllers[index].isKind(of: MixRecognizerDelegate.self) == true {
                //: let vc = (self.navigationController?.viewControllers[index] as? TalkingLoginEditAuthAndVideoVC)!
                let vc = (self.navigationController?.viewControllers[index] as? MixRecognizerDelegate)!
                //: self.navigationController?.popToViewController(vc, animated: true)
                self.navigationController?.popToViewController(vc, animated: true)
                //: return
                return
            }
        }

        //: self.navigationController?.popToRootViewController(animated: true)
        self.navigationController?.popToRootViewController(animated: true)
    }
}

// MARK: - UI

//: extension TalkingFinalVerificationVC {
extension ManagerVerificationVc {
    //: func createUI() {
    func dateButton() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
    }

    //: func createUIConstraint() {
    func draft() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
    }
}
