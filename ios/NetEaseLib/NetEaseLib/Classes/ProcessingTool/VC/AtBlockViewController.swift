
//: Declare String Begin

/*: "About me" :*/
fileprivate let str_reSumData:String = "a"
fileprivate let str_containerText:String = "bout megender var"

/*: "My interests" :*/
fileprivate let str_cellText:[Character] = ["M","y"," ","i","n","t","e"]
fileprivate let str_sumValue:String = "remessagetmessage"

/*: "Done" :*/
fileprivate let str_labText:[Character] = ["D","o","n","e"]

/*: "LaterThen" :*/
fileprivate let str_userValue:String = "value party kit ifTalkin"
fileprivate let str_photoData:String = "gTagCellmodel label lab image"

/*: "BankManagerUserPerspectiveThen" :*/
fileprivate let str_locationName:String = "Talkclass lab frame button model"
fileprivate let str_colorValue:String = "number"
fileprivate let str_buttonText:String = "path male value giftderView"

/*: "border_window_picture" :*/
fileprivate let str_pathViewData:[Character] = ["b","o","r","d","e","r","_","w","i","n","d","o","w","_","p","i","c","t","u","r","e"]

/*: "aboutMe" :*/
fileprivate let str_labValue:String = "aboutMequal main array"
fileprivate let str_maxName:[Character] = ["e"]

/*: "interest" :*/
fileprivate let str_touchTitle:String = "INTER"
fileprivate let str_modelText:[Character] = ["e","s","t"]

/*: "tagIds" :*/
fileprivate let str_frameData:String = "tagIdspost cancel limit since model"

/*: "category" :*/
fileprivate let str_toValue:[Character] = ["c","a","t","e","g","o","r","y"]

/*: "Save the change?" :*/
fileprivate let str_groupBottomTitle:String = "s"
fileprivate let str_leadingData:String = "text position block reportave th"
fileprivate let str_textSuccessTitle:String = "action view ifange?"

/*: "Cancel" :*/
fileprivate let str_withContentData:[Character] = ["C"]
fileprivate let str_dataGroupVarName:String = "ancemain"

/*: "Save" :*/
fileprivate let str_frameDeadlineData:[Character] = ["S","a","v","e"]

/*: "No more than 10 tags" :*/
fileprivate let str_systemText:String = "No moreview text next"
fileprivate let str_fatalData:String = " thanfloat color path last model"
fileprivate let str_allData:String = " 10 tagstask view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtBlockViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: public protocol EditTagDelegate: NSObject {
public protocol MarkTagDelegate: NSObject {
    //: func freshSeleteTag()
    func searchedTag()
}

//: class TalkingEditTagVC: TalkingBaseViewController {
class AtBlockViewController: PropertyViewController {
	var digitalName: String = "row"
	var searchedArray: [AnyHashable] = []

    var tvImageView: UIImageView?
    //: open weak var delegate: EditTagDelegate?
    open weak var delegate: MarkTagDelegate?
    //: var tagtype: TagType = .AboutMe
    var tagtype: ManagerTransformable = .AboutMe
    //: var seleteCellArray: [UserSeleteTagModel] = []
    var seleteCellArray: [OneTransformable] = []
    //: var isChange = false
    var isChange = false
    //: var titles: Array<UserTagTypeModel> = Array()
    var titles: [ConstraintMeasurable] = Array()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: self.title = "About me".localized
            self.title = (str_reSumData.uppercased() + String(str_containerText.prefix(7))).localized
        //: break
        //: case .Interests:
        case .Interests:
            //: self.title = "My interests".localized
            self.title = (String(str_cellText) + str_sumValue.replacingOccurrences(of: "message", with: "s")).localized
            //: break
        }

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle((String(str_labText)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.offt(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(time), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: collectionView.register(TalkingTagCell.self, forCellWithReuseIdentifier: "TalkingTagCell")
        collectionView.register(LaterThen.self, forCellWithReuseIdentifier: (String(str_userValue.suffix(6)) + String(str_photoData.prefix(8))))
        //: collectionView.register(TalkingTagHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TalkingTagHeaderView")
        collectionView.register(BankManagerUserPerspectiveThen.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(str_locationName.prefix(4)) + "ingTagHe" + str_colorValue.replacingOccurrences(of: "number", with: "a") + String(str_buttonText.suffix(7))))
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: self.view.addSubview(collectionView)

        var starAttribute: UIView = collectionView
        if let imageView = self.tvImageView, (self.view.convert(self.view.frame.intersection(CGRect(x: CGFloat(Double(self.view.frame.size.height)), y: CGFloat(Int(self.view.bounds.size.width)), width: CGFloat(0), height: CGFloat(self.view.effectiveUserInterfaceLayoutDirection.rawValue))), from: self.view.superview).origin.x == 83.93) && (self.view.constraintsAffectingLayout(for: .horizontal).count == 81) {
            //: SWIFT_CUSTOM_DANGER
            starAttribute = imageView
        }
        self.view.addSubview(starAttribute)
        //: collectionView.snp.makeConstraints {
        collectionView.snp.makeConstraints {
            //: $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }

        //: reqdata()
        sizeBy()

        tvImageView = UIImageView(frame: self.view.bounds)
        if let tvImageView = tvImageView {
            self.tvImageView?.image = UIImage(named: (String(str_pathViewData)))
            if (tvImageView.layer.isHidden != false) && (tvImageView.gestureRecognizers != nil && tvImageView.gestureRecognizers!.count == 20) {
                //: SWIFT_CUSTOM_DANGER
                self.view.addSubview(tvImageView)
            }
        }
    
	if let tvImageView = tvImageView {

            if (tvImageView.intrinsicContentSize.width == 281.29) && (tvImageView.layer.zPosition == 41.61) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let tableView = EqualFromView()
            
            tableView.effectContent = { [self] columnName in
            self.digitalName = columnName
            
            self.digitalName = String(repeating: self.digitalName.capitalized + "name", count: (self.digitalName.isContiguousUTF8 ? 6 : 2))
            return self.digitalName
            }
            tableView.textArray = { [self] phoneArray in
            self.searchedArray = phoneArray
            
            guard var value = self.searchedArray as? [String] else {
                return nil
            }
            return value
            }
                tvImageView.addSubview(tableView)
            }

	}

	}

    // MARK: - Lazy load

    //: lazy var layout: TalkingTagLayout = {
    lazy var layout: GoldThen = {
        //: let temp = TalkingTagLayout()
        let temp = GoldThen()
        //: temp.delegate = self
        temp.delegate = self
        //: return temp
        return temp
        //: }()
    }()

    //: private(set) lazy var collectionView: UICollectionView = {
    private(set) lazy var collectionView: UICollectionView = {
        //: let layout = self.layout
        let layout = self.layout
        //: let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingEditTagVC {
extension AtBlockViewController {
    //: func reqdata() {
    func sizeBy() {
        //: if MeasurementAppManager.share.func__loadUserTagCacheData() == nil {
        if MeasurementAppManager.share.titleData() == nil {
            //: } else {
        } else {
            //: let tagModel: UserTagModel=MeasurementAppManager.share.func__loadUserTagCacheData() as! UserTagModel
            let tagModel: RegularMeasurable = MeasurementAppManager.share.titleData() as! RegularMeasurable
            //: switch tagtype {
            switch tagtype {
            //: case .AboutMe:
            case .AboutMe:
                //: titles = tagModel.aboutMe
                titles = tagModel.aboutMe
                //: setLastSelete(type: 1)
                atStartType(type: 1)
            //: break
            //: case .Interests:
            case .Interests:
                //: titles = tagModel.interest
                titles = tagModel.interest
                //: setLastSelete(type: 2)
                atStartType(type: 2)
                //: break
            }
        }
    }

    //: func uploadTag() {
    func inviteTag() {
        //: guard let customDelegate = self.delegate else {
        guard let customDelegate = self.delegate else {
            //: return
            return
        }
        //: var category = ""
        var category = ""
        //: if self.tagtype == .AboutMe {
        if self.tagtype == .AboutMe {
            //: category = "aboutMe"
            category = (String(str_labValue.prefix(6)) + String(str_maxName))
            //: } else {
        } else {
            //: category = "interest"
            category = (str_touchTitle.lowercased() + String(str_modelText))
        }
        //: var str = ""
        var str = ""
        //: for i in 0..<self.seleteCellArray.count {
        for i in 0 ..< self.seleteCellArray.count {
            //: let model = self.seleteCellArray[i]
            let model = self.seleteCellArray[i]
            //: str += model.tag_id!
            str += model.tag_id!
            //: if i<self.seleteCellArray.count-1 {
            if i < self.seleteCellArray.count - 1 {
                //: str += ","
                str += ","
            }
        }
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tagIds"] = str
        dict[(String(str_frameData.prefix(6)))] = str
        //: dict["category"] = category
        dict[(String(str_toValue))] = category
        //: ProgressHUD.show()
        SizeHungReactiveCompatible.picCurrent()
        //: TalkingMeRequestTool.req_EditTag(params: dict) { [self] succeed, result, errorModel in
        ConstraintRequestTool.paramsComponent(params: dict) { [self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            SizeHungReactiveCompatible.dataMessage()
            //: if succeed {
            if succeed {
                //: if self.tagtype == .AboutMe {
                if self.tagtype == .AboutMe {
                    //: MeasurementAppManager.share.loginUserMode.aboutMe = self.seleteCellArray
                    MeasurementAppManager.share.loginUserMode.aboutMe = self.seleteCellArray
                    //: } else {
                } else {
                    //: MeasurementAppManager.share.loginUserMode.interest = self.seleteCellArray
                    MeasurementAppManager.share.loginUserMode.interest = self.seleteCellArray
                }
                //: customDelegate.freshSeleteTag()
                customDelegate.searchedTag()
                //: self.navigationController!.popViewController(animated: true)
                self.navigationController!.popViewController(animated: true)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingEditTagVC {
extension AtBlockViewController {
    //: override func naviPopback() {
    override func noNavi() {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [OneTransformable] = []
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: modelArray = MeasurementAppManager.share.loginUserMode.aboutMe!
            modelArray = MeasurementAppManager.share.loginUserMode.aboutMe!
        //: break
        //: case .Interests:
        case .Interests:
            //: modelArray = MeasurementAppManager.share.loginUserMode.interest!
            modelArray = MeasurementAppManager.share.loginUserMode.interest!
            //: break
        }

        //: if !isChange {
        if !isChange {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: } else {
        } else {
            //: let config = ShowAlertConfig()
            let config = MarkAlertConfig()
            //: config.alignment = .center
            config.alignment = .center
            //: TalkingAlertShow.customAlert(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: {
            TitleAlertShow.appearAll(message: (str_groupBottomTitle.uppercased() + String(str_leadingData.suffix(6)) + "e ch" + String(str_textSuccessTitle.suffix(5))).localized, leftBtnTitle: (String(str_withContentData) + str_dataGroupVarName.replacingOccurrences(of: "main", with: "l")).localized, rightBtnTitle: (String(str_frameDeadlineData)).localized, leftBlock: {
                //: TalkingAlertShow.hideAlert()
                TitleAlertShow.lastAlert()
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
                //: }, rightBlock: {
            }, rightBlock: {
                //: TalkingAlertShow.hideAlert()
                TitleAlertShow.lastAlert()
                //: self.uploadTag()
                self.inviteTag()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func setLastSelete(type: Int) {
    func atStartType(type: Int) {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [OneTransformable] = []
        //: if type == 1 {
        if type == 1 {
            //: modelArray = MeasurementAppManager.share.loginUserMode.aboutMe!
            modelArray = MeasurementAppManager.share.loginUserMode.aboutMe!
            //: } else {
        } else {
            //: modelArray = MeasurementAppManager.share.loginUserMode.interest!
            modelArray = MeasurementAppManager.share.loginUserMode.interest!
        }
        //: for i in 0..<modelArray.count {
        for i in 0 ..< modelArray.count {
            //: let modeli = modelArray[i]
            let modeli = modelArray[i]
            //: for j in 0..<titles.count {
            for j in 0 ..< titles.count {
                //: let modelj = titles[j]
                let modelj = titles[j]
                //: let list = modelj.list
                let list = modelj.list
                //: for z in 0..<list!.count {
                for z in 0 ..< list!.count {
                    //: var modelz = list?[z]
                    var modelz = list?[z]
                    //: if modeli.equals(compareTo: modelz!) {
                    if modeli.anima(compareTo: modelz!) {
                        //: modelz?.isSelete = true
                        modelz?.isSelete = true
                        //: titles[j].list[z] = modelz!
                        titles[j].list[z] = modelz!
                        //: seleteCellArray.append(modelz!)
                        seleteCellArray.append(modelz!)
                    }
                }
            }
        }
    }

    //: @objc func doneBtnClick() {
    @objc func time() {
        //: uploadTag()
        inviteTag()
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource

//: extension TalkingEditTagVC: UICollectionViewDelegate, UICollectionViewDataSource {
extension AtBlockViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return titles.count
        return titles.count
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: let model = titles[section]
        let model = titles[section]
        //: return model.list.count
        return model.list.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TalkingTagCell", for: indexPath) as! TalkingTagCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: (String(str_userValue.suffix(6)) + String(str_photoData.prefix(8))), for: indexPath) as! LaterThen
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title: UserSeleteTagModel = model.list[indexPath.row]
        let title: OneTransformable = model.list[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: cell.fill(title: tag_name )
        cell.clutterUp(title: tag_name)
        //: cell.tagBtnClick(isSelete: title.isSelete)
        cell.receive(isSelete: title.isSelete)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let cell: TalkingTagCell = collectionView.cellForItem(at: indexPath)as! TalkingTagCell
        let cell: LaterThen = collectionView.cellForItem(at: indexPath) as! LaterThen

        //: var model = self.titles[indexPath.section]
        var model = self.titles[indexPath.section]
        //: var title = model.list[indexPath.row]
        var title = model.list[indexPath.row]
        //: if  seleteCellArray.contains(where: { $0.equals(compareTo: title)}) {
        if seleteCellArray.contains(where: { $0.anima(compareTo: title) }) {
            //: seleteCellArray.removeAll(where: {$0.equals(compareTo: title)})
            seleteCellArray.removeAll(where: { $0.anima(compareTo: title) })
            //: isChange = true
            isChange = true
            //: title.isSelete =  false
            title.isSelete = false
            //: } else {
        } else {
            //: if seleteCellArray.count>=10 {
            if seleteCellArray.count >= 10 {
                //: self.func__showStatusBarErrorMsg(showMsg: "No more than 10 tags".localized)
                self.episode(showMsg: (String(str_systemText.prefix(7)) + String(str_fatalData.prefix(5)) + String(str_allData.prefix(8))).localized)
                //: return
                return
            }
            //: seleteCellArray.append(title)
            seleteCellArray.append(title)
            //: isChange = true
            isChange = true
            //: title.isSelete =  true
            title.isSelete = true
        }
        //: model.list[indexPath.row] = title
        model.list[indexPath.row] = title
        //: self.titles[indexPath.section] = model
        self.titles[indexPath.section] = model
        //: cell.tagBtnClick()
        cell.tagWithTap()
        //: if self.titles.count>0 {
        if self.titles.count > 0 {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = true
            self.navigationItem.rightBarButtonItem?.isEnabled = true
            //: } else {
        } else {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = false
            self.navigationItem.rightBarButtonItem?.isEnabled = false
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: let headView: TalkingTagHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TalkingTagHeaderView", for: indexPath) as! TalkingTagHeaderView
            let headView: BankManagerUserPerspectiveThen = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(str_locationName.prefix(4)) + "ingTagHe" + str_colorValue.replacingOccurrences(of: "number", with: "a") + String(str_buttonText.suffix(7))), for: indexPath) as! BankManagerUserPerspectiveThen
            //: headView.backgroundColor = UIColor.clear
            headView.backgroundColor = UIColor.clear
            //: let model = self.titles[indexPath.section]
            let model = self.titles[indexPath.section]
            //: var name = model.name
            var name = model.name
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.ar.rawValue {
                //: name = model.name_ar
                name = model.name_ar
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.es.rawValue {
                //: name = model.name_es
                name = model.name_es
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.pt.rawValue {
                //: name = model.name_pt
                name = model.name_pt
            }
            //: headView.label.text = name
            headView.label.text = name
            //: return headView
            return headView
        //: default:
        default:
            //: return UICollectionReusableView()
            return UICollectionReusableView()
        }
    }
}

// MARK: - UpLayoutDelegate

//: extension TalkingEditTagVC: TagLayoutDelegate {
extension AtBlockViewController: UpLayoutDelegate {
    /// 标签内边距
    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, tagInnerMarginForItemAt indexPath: IndexPath) -> CGFloat {
    func dataAt(_: GoldThen, collectionView _: UICollectionView, tagInnerMarginForItemAt _: IndexPath) -> CGFloat {
        //: return CGFloat(25)
        return CGFloat(25)
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at section: Int) -> CGSize {
    func between(_: GoldThen, collectionView _: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at _: Int) -> CGSize {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: return CGSize(width: 250, height: 32)
            return CGSize(width: 250, height: 32)
        //: case UICollectionView.elementKindSectionFooter:
        case UICollectionView.elementKindSectionFooter:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        //: default:
        default:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        }
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
    func imageTo(_: GoldThen, collectionView _: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title = model.list[indexPath.row]
        let title = model.list[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if AddrConstraintReactiveCompatible.share.interfaceLang == ActualWithSubscriptType.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: return tag_name
        return tag_name
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, heightBottomAt section: Int) -> CGFloat {
    func horizon(_: GoldThen, collectionView _: UICollectionView, heightBottomAt _: Int) -> CGFloat {
        //: return 24
        return 24
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, leftSapceAt section: Int) -> CGFloat {
    func comparable(_: GoldThen, collectionView _: UICollectionView, leftSapceAt _: Int) -> CGFloat {
        //: return 15
        return 15
    }
}
