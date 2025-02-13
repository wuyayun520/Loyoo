
//: Declare String Begin

/*: "exaggerate_image" :*/
fileprivate let str_imageMethodName:[Character] = ["e","x","a","g","g","e","r","a","t","e","_","i","m","a","g","e"]

/*: "leading_add_image" :*/
fileprivate let str_viewColorData:[Character] = ["l","e","a","d","i","n","g","_","a","d","d","_","i","m","a"]
fileprivate let str_userData:String = "gtable"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommensuratePasswordVc.swift
//  AbroadTalking
//
//  Created by young on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingSetNewPasswordVC: TalkingBaseViewController {
class CommensuratePasswordVc: PropertyViewController {
	var sendEnable: Bool = false
	var moveSum: Int = 11
	var showTotal: Double = 11.2
	var selectWithBlockArray: [AnyHashable] = []

    var labelCellImageView: UIImageView?

    //: var type = LoginType.PhoneLogin
    var type = DifferentiateHashable.PhoneLogin // 修改类型
    //: var content = ""                // 手机号
    var content = "" // 手机号
    //: var isNewPwd = false
    var isNewPwd = false // 是否新设置密码（修改需要验证码）

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.view.isUserInteractionEnabled = true
        self.view.isUserInteractionEnabled = true
        self.labelCellImageView?.image = UIImage(named: (String(str_imageMethodName)))
    
	if let labelCellImageView = labelCellImageView {

            if (labelCellImageView.tag == 9794) && (labelCellImageView.frame.origin.x == 89.81) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let fileAllocationTable = RecordView(frame: labelCellImageView.bounds.standardized)

            fileAllocationTable.modelEnable = { [self] intervalClose in
            self.sendEnable = intervalClose
            
            var fileAllocationTable = self.isNewPwd
            fileAllocationTable = false
            if fileAllocationTable != self.sendEnable {
                self.sendEnable = fileAllocationTable
            }
            
            return self.sendEnable
            }
            fileAllocationTable.successfullyNumber = { [self] tableNumber in
            self.moveSum = tableNumber
            
            return self.moveSum
            }
            fileAllocationTable.frameInterval = { [self] textQuantity in
            self.showTotal = textQuantity
            
            return self.showTotal
            }
            fileAllocationTable.managerBackRoomArray = { [self] nidusDeckArray in
            self.selectWithBlockArray = nidusDeckArray
            
            guard var value = self.selectWithBlockArray as? [String] else {
                return nil
            }
            return value
            }
                labelCellImageView.addSubview(fileAllocationTable)
            }

	}

	}

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: addTapGestureRecognizer()
        moveRecognizer()
        //: setupSubviews()
        chooseSubviews()
        //: setupSubViewsConstraint()
        world()
        //: bindInteraction()
        stickTo()

        labelCellImageView = UIImageView(frame: self.view.bounds.insetBy(dx: CGFloat(Double(self.view.frame.size.width)), dy: CGFloat(0)))
        if let labelCellImageView = labelCellImageView {
            self.labelCellImageView?.image = UIImage(named: (String(str_viewColorData) + str_userData.replacingOccurrences(of: "table", with: "e")))
            if (labelCellImageView.viewWithTag(8305) != nil) && (labelCellImageView.layoutMargins.right == 17.33) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(labelCellImageView)
            }
        }
    }

    // MARK: - Lazy load

    //: private lazy var pwdView: TalkingSetNewPwdView = {
    private lazy var pwdView: ImageView = {
        //: let v = TalkingSetNewPwdView(frame: .zero, isNewPwd: self.isNewPwd, loginType: self.type)
        let v = ImageView(frame: .zero, isNewPwd: self.isNewPwd, loginType: self.type)
        //: v.phoneLab.text = self.content
        v.phoneLab.text = self.content
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingSetNewPasswordVC {
extension CommensuratePasswordVc {
    /// 修改密码
    //: private func req_modifyPwd(_ pwd: String, _ vcode: String?) {
    private func up(_ pwd: String, _ vcode: String?) {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingLoginRequestTool.req_modifyPassword(pwd: pwd, vcode: vcode) { [weak self] succeed, result, errorModel in
        LoginReactiveCompatible.app(pwd: pwd, vcode: vcode) { [weak self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed else { return }
            guard succeed else { return }
            /// 有些机子卡顿，防止跳转前还能交互
            //: self.view.isUserInteractionEnabled = false
            self.view.isUserInteractionEnabled = false
            //: if self.isNewPwd == true {
            if self.isNewPwd == true {
                // 获取用户信息
                //: TalkingLoginRequestTool.req_LoginUserInfoData(self.type)
                LoginReactiveCompatible.rubyRed(self.type)
                //: } else {
            } else {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    /// 获取修改密码验证码
    //: private func req_sendModifyPwdSms() {
    private func modify() {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingLoginRequestTool.req_sendModifyPwdSms { [weak self] succeed, result, errorModel in
        LoginReactiveCompatible.user { [weak self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed else { return }
            guard succeed else { return }
            //: self.pwdView.startReSendTimer()
            self.pwdView.cellTimer()
        }
    }
}

// MARK: - Layout

//: extension TalkingSetNewPasswordVC {
extension CommensuratePasswordVc {
    /// 添加视图
    //: private func setupSubviews() {
    private func chooseSubviews() {
        //: view.addSubview(pwdView)
        view.addSubview(pwdView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func world() {
        //: pwdView.snp.makeConstraints { make in
        pwdView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func stickTo() {
        //: pwdView.nextBlock = { [weak self] (_ pwd: String, _ vcode: String?) in
        pwdView.nextBlock = { [weak self] (_ pwd: String, _ vcode: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.req_modifyPwd(pwd, vcode)
            self.up(pwd, vcode)
        }

        //: pwdView.sendSmsBlock = { [weak self] in
        pwdView.sendSmsBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.req_sendModifyPwdSms()
            self.modify()
        }
    }
}
