
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_contentData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Photo greeting" :*/
fileprivate let str_frameGiftText:String = "arc addPhoto "
fileprivate let str_messageData:[Character] = ["i","n","g"]

/*: "lab_manager_image" :*/
fileprivate let str_toValue:String = "lab_game interaction fill"
fileprivate let str_makeImageTitle:String = "ger_icontent make true self"

/*: "SheView" :*/
fileprivate let str_mainName:[Character] = ["T","a","l","k","i","n","g","E","d","i","t","P","h","o","t","o","C","e","l","l"]

/*: "EnableTableCell" :*/
fileprivate let str_storageFileName:String = "thought equal arrayTalking"
fileprivate let str_labelValue:String = "table make sizeGreet"
fileprivate let str_mainData:String = "oTabletemp bottom popular"

/*: "icon_me_greetSetPhoto_select_nor" :*/
fileprivate let str_textName:[UInt8] = [0x69,0x63,0x6f,0x6e,0x5f,0x6d,0x65,0x5f,0x67,0x72,0x65,0x65,0x74,0x53,0x65,0x74,0x50,0x68,0x6f,0x74,0x6f,0x5f,0x73,0x65,0x6c,0x65,0x63,0x74,0x5f,0x6e,0x6f,0x72]

/*: "icon_me_greetSetPhoto_select_pre" :*/
fileprivate let str_addIndexTitle:[UInt8] = [0x65,0x72,0x70,0x5f,0x74,0x63,0x65,0x6c,0x65,0x73,0x5f,0x6f,0x74,0x6f,0x68,0x50,0x74,0x65,0x53,0x74,0x65,0x65,0x72,0x67,0x5f,0x65,0x6d,0x5f,0x6e,0x6f,0x63,0x69]

/*: "  Burn after reading" :*/
fileprivate let str_viewData:[Character] = [" "," ","B"]
fileprivate let str_succeedData:String = "urn afblock content var"
fileprivate let str_bottomName:String = "eadinremove"

/*: "Finish" :*/
fileprivate let str_picData:String = "model icon blueFinish"

/*: "type" :*/
fileprivate let str_sharedTargetValue:[Character] = ["t","y","p","e"]

/*: "isBurn" :*/
fileprivate let str_domainName:String = "isBurnbutton position var"

/*: "list" :*/
fileprivate let str_errorText:String = "LIST"

/*: "unlockGift" :*/
fileprivate let str_constraintSplitAnswerName:String = "unvalueock"

/*: "giftId" :*/
fileprivate let str_userBottomTitle:[Character] = ["g","i","f","t","I","d"]

/*: "id" :*/
fileprivate let str_cornerModeTitle:String = "iclick"

/*: "content" :*/
fileprivate let str_colorTitle:[Character] = ["c","o","n","t","e"]
fileprivate let str_imageContent:String = "nadd"

/*: "status" :*/
fileprivate let str_atName:String = "stequalus"

/*: "photo" :*/
fileprivate let str_positionName:[Character] = ["p","h","o","t","o"]

/*: "Delete Successfully" :*/
fileprivate let str_onData:[Character] = ["D","e","l","e","t","e"," ","S","u","c","c"]
fileprivate let str_buttonName:String = "ES"
fileprivate let str_sharedValue:String = "SFULLY"

/*: "unlockGiftId" :*/
fileprivate let str_centerTitle:[Character] = ["u","n","l","o","c","k"]
fileprivate let str_groupValue:String = "domain style guardGiftId"

/*: "Upload a beautiful photo of the greeting" :*/
fileprivate let str_sexValue:[UInt8] = [0x67,0x6e,0x69,0x74,0x65,0x65,0x72,0x67,0x20,0x65,0x68,0x74,0x20,0x66,0x6f,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x6c,0x75,0x66,0x69,0x74,0x75,0x61,0x65,0x62,0x20,0x61,0x20,0x64,0x61,0x6f,0x6c,0x70,0x55]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeginViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: class TalkingGreetPhotoVC: TalkingBaseViewController {
class BeginViewController: PropertyViewController {
	var buttonStartOn: Bool = false
	var viewQuantity: Int = 47
	var checkTotal: Double = -13.8
	var currentTitle: String = "label"
	var optionArray: [AnyHashable] = []
	var upEnable: Bool = false
	var point: Int = 62
	var pinCount: Double = 82.2
	var editName: String = "icon"
	var pathProgressArray: [AnyHashable] = []

    var statusImageView: UIImageView?

    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [CellMeasurable] = []
    //: var giftDic = Dictionary<String, Any>()
    var giftDic = [String: Any]()
    //: var seleteGiftId = ""  /// 选中的礼物ID
    var seleteGiftId = "" /// 选中的礼物ID
    //: var isBurn = 0
    var isBurn = 0 // 是否阅后即焚：1=是，0=否

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_contentData.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    
            if (finishBtn.layer.contentsRect.size.width != 1) && (finishBtn.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let landLet = LineView()
            landLet.imageOn = self.hideNavi

            landLet.resultText = seleteGiftId
            
            landLet.inscriptionOn = { [self] periodicTableOff in
            self.buttonStartOn = periodicTableOff
            
            var landLet = animated
            landLet = true
            if landLet != self.buttonStartOn {
                self.buttonStartOn = landLet
            }
            
                self.buttonStartOn = false
                self.buttonStartOn = !self.buttonStartOn
            return self.buttonStartOn
            }
            landLet.colorIconQuantity = { [self] filterMagnitude in
            self.viewQuantity = filterMagnitude
            
            var landLet = isBurn
            landLet >>= 1
            if landLet > self.viewQuantity {
                self.viewQuantity = landLet
            }
            
            return self.viewQuantity
            }
            landLet.giftMagnitude = { [self] timeNumber in
            self.checkTotal = timeNumber
            
            return self.checkTotal
            }
            landLet.imageContent = { [self] viewStartContent in
            self.currentTitle = viewStartContent
            
            var landLet = self.seleteGiftId
            landLet = landLet.lowercased() + "message"
            if landLet.contains(self.currentTitle) {
                self.currentTitle = landLet
            }
            
            return self.currentTitle
            }
            landLet.voiceInfoGiftArray = { [self] giftExamineArray in
            self.optionArray = giftExamineArray
            
            guard var value = self.optionArray as? [String] else {
                return nil
            }
            return value
            }
                finishBtn.addSubview(landLet)
            }

	}

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Photo greeting".localized
        self.title = (String(str_frameGiftText.suffix(6)) + "greet" + String(str_messageData)).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.playerEqual()
        //: setupSubviews()
        primaryColor()
        //: setupSubViewsConstraint()
        location()
        //: bindInteraction()
        afterFinish()

        statusImageView = UIImageView(frame: self.view.bounds.offsetBy(dx: CGFloat(Int(self.view.frame.origin.x)), dy: CGFloat(Int(self.view.bounds.size.width))))
        if let statusImageView = statusImageView {
            self.statusImageView?.image = UIImage(named: (String(str_toValue.prefix(4)) + "mana" + String(str_makeImageTitle.prefix(5)) + "mage"))
            if (statusImageView.subviews.count == 141) && (statusImageView.inputView != nil) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(statusImageView)
            }
        }
    
            if (!finishBtn.autoresizesSubviews) && (finishBtn.constraintsAffectingLayout(for: .horizontal).count == 58) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let heightRowExplain = LineView(frame: finishBtn.bounds.offsetBy(dx: CGFloat(254.56), dy: CGFloat(514.61)))
            heightRowExplain.imageOn = self.hideNavi

            heightRowExplain.resultText = seleteGiftId
            
            heightRowExplain.inscriptionOn = { [self] periodicTableOff in
            self.upEnable = periodicTableOff
            
            var heightRowExplain = self.hideNavi
            heightRowExplain = false
            if heightRowExplain != self.upEnable {
                self.upEnable = heightRowExplain
            }
            
            self.upEnable = true
            return self.upEnable
            }
            heightRowExplain.colorIconQuantity = { [self] filterMagnitude in
            self.point = filterMagnitude
            
            var heightRowExplain = isBurn
            heightRowExplain += 1
            if heightRowExplain > self.point {
                self.point = heightRowExplain
            }
            
            return self.point
            }
            heightRowExplain.giftMagnitude = { [self] timeNumber in
            self.pinCount = timeNumber
            
            return self.pinCount
            }
            heightRowExplain.imageContent = { [self] viewStartContent in
            self.editName = viewStartContent
            
            var heightRowExplain = self.seleteGiftId
            heightRowExplain = String(heightRowExplain.lowercased() + "load")
            if heightRowExplain.contains(self.editName) {
                self.editName = heightRowExplain
            }
            
            return self.editName
            }
            heightRowExplain.voiceInfoGiftArray = { [self] giftExamineArray in
            self.pathProgressArray = giftExamineArray
            
            guard var value = self.pathProgressArray as? [String] else {
                return nil
            }
            return value
            }
                finishBtn.addSubview(heightRowExplain)
            }

	}

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: "TalkingEditPhotoCell")
        table.register(SheView.self, forCellReuseIdentifier: (String(str_mainName)))
        //: table.register(TalkingGreetPhotoTableCell.self, forCellReuseIdentifier: "TalkingGreetPhotoTableCell")
        table.register(EnableTableCell.self, forCellReuseIdentifier: (String(str_storageFileName.suffix(7)) + String(str_labelValue.suffix(5)) + "Phot" + String(str_mainData.prefix(6)) + "Cell"))
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()

    //: lazy var seleteBtn: UIButton = {
    lazy var seleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.outsideText(name: "icon_me_greetSetPhoto_select_nor"), for: .normal)
        btn.setImage(UIImage.outsideText(name: String(bytes: str_textName, encoding: .utf8)!), for: .normal)
        //: btn.setImage(UIImage.outsideText(name: "icon_me_greetSetPhoto_select_pre"), for: .selected)
        btn.setImage(UIImage.outsideText(name: String(bytes: str_addIndexTitle.reversed(), encoding: .utf8)!), for: .selected)
        //: btn.setTitle("  Burn after reading".localized, for: .normal)
        btn.setTitle((String(str_viewData) + String(str_succeedData.prefix(6)) + "ter r" + str_bottomName.replacingOccurrences(of: "remove", with: "g")).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.blockOf(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 16)
        //: btn.addTarget(self, action: #selector(seleteBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(total), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(str_picData.suffix(6))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 17)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.stopAcross(colors: UIColor.doRange(), size: CGSize(width: a_blockValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nameClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetPhotoVC {
extension BeginViewController {
    //: func getPhotoList(isFreshAll: Bool) {
    func get(isFreshAll: Bool) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 4
        dict[(String(str_sharedTargetValue))] = 4
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        ConstraintRequestTool.subCompletion(params: dict) { [weak self] succeed, result, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.PhotoArray.removeAll()
                self.PhotoArray.removeAll()
                //: self.isBurn = dict["isBurn"] as? Int ?? 0
                self.isBurn = dict[(String(str_domainName.prefix(6)))] as? Int ?? 0
                //: self.seleteBtn.isSelected = self.isBurn > 0
                self.seleteBtn.isSelected = self.isBurn > 0
                //: let array: Array =  dict["list"] as? Array<Any> ?? Array.init()
                let array: Array = dict[(str_errorText.lowercased())] as? [Any] ?? Array()
                //: self.giftDic = dict["unlockGift"] as? [String: Any] ?? Dictionary.init()
                self.giftDic = dict[(str_constraintSplitAnswerName.replacingOccurrences(of: "value", with: "l") + "Gift")] as? [String: Any] ?? Dictionary()
                //: self.seleteGiftId = self.giftDic["giftId"] as? String ?? ""
                self.seleteGiftId = self.giftDic[(String(str_userBottomTitle))] as? String ?? ""
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: let dic  = array[i] as? Dictionary<String, Any>
                    let dic = array[i] as? [String: Any]
                    //: var model = TalkingUserInfoGalleryModel.init()
                    var model = CellMeasurable()
                    //: model.uid = dic?["id"] as? String ?? ""
                    model.uid = dic?["id"] as? String ?? ""
                    //: model.url = dic?["content"] as? String ?? ""
                    model.url = dic?[(String(str_colorTitle) + str_imageContent.replacingOccurrences(of: "add", with: "t"))] as? String ?? ""
                    //: model.status = dic?["status"] as? Int ?? 0
                    model.status = dic?[(str_atName.replacingOccurrences(of: "equal", with: "at"))] as? Int ?? 0
                    //: model.isLocal = false
                    model.isLocal = false
                    //: self.PhotoArray.append(model)
                    self.PhotoArray.append(model)
                }
                //: if isFreshAll {
                if isFreshAll {
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                    //: }else {
                } else {
                    /// 防止刷新全部，把修改的礼物信息还原
                    //: self.MainTable.reloadSection(0, with: .none)
                    self.MainTable.reloadSection(0, with: .none)
                }
                //: self.examinefinishBtnStatus()
                self.checkfinish()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingGreetPhotoVC {
extension BeginViewController {
    //: @objc func finishBtnClick() {
    @objc func nameClick() {
        //: self.saveInfo()
        self.moment()
    }

    //: @objc func seleteBtnClick() {
    @objc func total() {
        //: seleteBtn.isSelected = !seleteBtn.isSelected
        seleteBtn.isSelected = !seleteBtn.isSelected
        //: examinefinishBtnStatus()
        checkfinish()
    }

    //: func examinefinishBtnStatus() {
    func checkfinish() {
        //: if  self.PhotoArray.count > 0 && seleteGiftId.count > 0 {
        if self.PhotoArray.count > 0, seleteGiftId.count > 0 {
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
            //: }else {
        } else {
            //: self.finishBtn.isEnabled = false
            self.finishBtn.isEnabled = false
        }
    }
}

// MARK: - ErrorPhotoDelegate

//: extension TalkingGreetPhotoVC: EditPhotoDelegate {
extension BeginViewController: ErrorPhotoDelegate {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func marque(_ icon: [UIImage]) {
        //: uploadPhoto(icon)
        uploadClickPhoto(icon)
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func errorView(_: UIImage) {}

    /// 删除后台相册的图片
    //: func deletePhotoWithUid(_ iconUid: String) {
    func beforeWith(_ iconUid: String) {
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if iconUid == PhotoArray[i].uid {
            if iconUid == PhotoArray[i].uid {
                //: seleteIndex =  i
                seleteIndex = i
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: deletePhoto(index: seleteIndex)
            allIndex(index: seleteIndex)
        }
    }

    /// 上传相册
    //: func uploadPhoto(_ icon: [UIImage]) {
    func uploadClickPhoto(_ icon: [UIImage]) {
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: DispatchQueue.global().async {
        DispatchQueue.global().async {
            //: let sema = DispatchSemaphore(value: 0)
            let sema = DispatchSemaphore(value: 0)

            //: for i in 0..<icon.count {
            for i in 0 ..< icon.count {
                //: let resultData: NSData = icon[i].compressedImageData()! as NSData
                let resultData: NSData = icon[i].priceVideo()! as NSData
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["type"] = 4
                dict[(String(str_sharedTargetValue))] = 4
                //: dict["photo"] = resultData
                dict[(String(str_positionName))] = resultData

                //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) { succeed, result, errorModel in
                ConstraintRequestTool.card(params: dict) { succeed, _, _ in

                    //: sema.signal()
                    sema.signal()
                    //: if succeed {
                    if succeed {
                        //: }else {
                    } else {
                        //: ProgressHUD.dismiss()
                        SizeHungReactiveCompatible.dataMessage()
                    }
                }
                //: sema.wait()
                sema.wait()
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //: self.getPhotoList(isFreshAll: false)
                self.get(isFreshAll: false)
                //: self.examinefinishBtnStatus()
                self.checkfinish()
            }
        }
    }

    /// 删除相册
    //: func deletePhoto(index: Int) {
    func allIndex(index: Int) {
        //: let model: TalkingUserInfoGalleryModel = self.PhotoArray[index]
        let model: CellMeasurable = self.PhotoArray[index]
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["id"] = model.uid
        dict["id"] = model.uid
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
        ConstraintRequestTool.indexCompletion(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: self.PhotoArray.remove(at: index)
                self.PhotoArray.remove(at: index)
                //: self.func__showStatusBarSuccessMsg(showMsg: "Delete Successfully".localized)
                self.afterTitle(showMsg: (String(str_onData) + str_buttonName.lowercased() + str_sharedValue.lowercased()).localized)
                //: self.examinefinishBtnStatus()
                self.checkfinish()
            }
            //: self.MainTable.reloadSection(0, with: .none)
            self.MainTable.reloadSection(0, with: .none)
        }
    }

    /// 修改信息
    //: func saveInfo() {
    func moment() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["unlockGiftId"] = seleteGiftId
        dict[(String(str_centerTitle) + String(str_groupValue.suffix(6)))] = seleteGiftId
        //: dict["isBurn"] = seleteBtn.isSelected ? 1:0
        dict[(String(str_domainName.prefix(6)))] = seleteBtn.isSelected ? 1 : 0
        //: TalkingMeRequestTool.req_UploadGreetExtraSetting(params: dict) { succeed, result, errorModel in
        ConstraintRequestTool.drown(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetPhotoVC: UITableViewDelegate, UITableViewDataSource {
extension BeginViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((a_blockValue - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12
            let cellheiht = Y + 12
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: }else {
        } else {
            //: return 140
            return 140
        }
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = "TalkingEditPhotoCell"
            let identifier = (String(str_mainName))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? SheView
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = SheView(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setTips(str: "Upload a beautiful photo of the greeting".localized)
            cell?.tarotCardPage(str: String(bytes: str_sexValue.reversed(), encoding: .utf8)!.localized)
            //: cell?.backBottomOffer = 0
            cell?.backBottomOffer = 0
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.qualify(selete: PhotoArray)
                //: }else {
            } else {
                //: cell?.resetPhoto()
                cell?.imageOfLive()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: }else {
        } else {
            //: let identifier = "TalkingGreetPhotoTableCell"
            let identifier = (String(str_storageFileName.suffix(7)) + String(str_labelValue.suffix(5)) + "Phot" + String(str_mainData.prefix(6)) + "Cell")
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingGreetPhotoTableCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? EnableTableCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingGreetPhotoTableCell(style: .default, reuseIdentifier: identifier)
                cell = EnableTableCell(style: .default, reuseIdentifier: identifier)
            }
            //: if self.giftDic.keys.isEmpty == false {
            if self.giftDic.keys.isEmpty == false {
                //: cell?.setGiftMsgLab(dic: self.giftDic)
                cell?.pathTo(dic: self.giftDic)
            }
            //: cell?.seleteGiftBlock = { [weak self] giftId in
            cell?.seleteGiftBlock = { [weak self] giftId in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: self.seleteGiftId = giftId
                self.seleteGiftId = giftId
                //: self.examinefinishBtnStatus()
                self.checkfinish()
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }
}

// MARK: - Layout

//: extension TalkingGreetPhotoVC {
extension BeginViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func primaryColor() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: self.view.addSubview(seleteBtn)
        self.view.addSubview(seleteBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func location() {
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-35)
            make.bottom.equalToSuperview().offset(-35)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-68)
            make.bottom.equalTo(finishBtn.snp.top).offset(-68)
        }
        //: seleteBtn.snp.makeConstraints { make in
        seleteBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func afterFinish() {
        //: getPhotoList(isFreshAll: true)
        get(isFreshAll: true)
    }
}
