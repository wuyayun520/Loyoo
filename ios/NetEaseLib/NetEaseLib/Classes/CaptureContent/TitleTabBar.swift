
//: Declare String Begin

/*: "#666666" :*/
fileprivate let str_viewTitle:[Character] = ["#","6","6","6","6"]
fileprivate let str_shareTitle:String = "makemake"

/*: "#8566FF" :*/
fileprivate let str_bottomName:String = "#8566"
fileprivate let str_imageData:String = "ff"

/*: "Home" :*/
fileprivate let str_targetTitle:[Character] = ["H","o","m","e"]

/*: "People" :*/
fileprivate let str_borderRangeText:String = "of importPeople"

/*: "Hot" :*/
fileprivate let str_reName:String = "view turn bubble detail cropHot"

/*: "Moment" :*/
fileprivate let str_giftHiddenValue:String = "container beautyMoment"

/*: "Message" :*/
fileprivate let str_userData:[Character] = ["M","e","s","s","a"]
fileprivate let str_sizeShowGuardData:[Character] = ["g","e"]

/*: "Me" :*/
fileprivate let str_domainData:String = "video white content actionMe"

/*: "Live" :*/
fileprivate let str_contentValueText:String = "Livescreen height input pan"

/*: "icon_randownCall_nor" :*/
fileprivate let str_tagData:[UInt8] = [0x69,0x63,0x6f,0x6e,0x5f,0x72,0x61,0x6e,0x64,0x6f,0x77,0x6e,0x43,0x61,0x6c,0x6c,0x5f,0x6e,0x6f,0x72]

/*: "icon_randownCall_pre" :*/
fileprivate let str_numberData:[Character] = ["i","c","o","n","_","r","a","n","d","o","w","n","C","a","l"]
fileprivate let str_iconValue:String = "l_precase make gift"

/*: "btn_popular_pop_nor" :*/
fileprivate let str_applicationName:[UInt8] = [0x62,0x74,0x6e,0x5f,0x70,0x6f,0x70,0x75,0x6c,0x61,0x72,0x5f,0x70,0x6f,0x70,0x5f,0x6e,0x6f,0x72]

/*: "btn_popular_pop_pre" :*/
fileprivate let str_modelViewName:String = "btn_popureason with record true return"
fileprivate let str_modeImageTitle:String = "min userlar_p"

/*: "btn_discocer_dis_nor" :*/
fileprivate let str_pairTitle:[UInt8] = [0x62,0x74,0x6e,0x5f,0x64,0x69,0x73,0x63,0x6f,0x63,0x65,0x72,0x5f,0x64,0x69,0x73,0x5f,0x6e,0x6f,0x72]

/*: "btn_discocer_dis_pre" :*/
fileprivate let str_valueTitle:[Character] = ["b","t","n","_","d","i","s","c","o","c","e","r","_","d","i","s","_","p","r"]
fileprivate let str_allValue:String = "tap"

/*: "btn_label_add_nor" :*/
fileprivate let str_whiteData:[UInt8] = [0x62,0x74,0x6e,0x5f,0x6c,0x61,0x62,0x65,0x6c,0x5f,0x61,0x64,0x64,0x5f,0x6e,0x6f,0x72]

/*: "btn_label_add_pre" :*/
fileprivate let str_titleValue:String = "btn_laequal video model table let"
fileprivate let str_whiteMakeData:String = "app self quoteadd_pre"

/*: "btn_chat_cha_nor" :*/
fileprivate let str_intimateTitle:[UInt8] = [0x62,0x74,0x6e,0x5f,0x63,0x68,0x61,0x74,0x5f,0x63,0x68,0x61,0x5f,0x6e,0x6f,0x72]

/*: "btn_chat_cha_pre" :*/
fileprivate let str_liveContent:[Character] = ["b","t","n","_","c","h","a","t","_","c","h","a","_","p","r","e"]

/*: "btn_me_my_nor" :*/
fileprivate let str_equalContent:[UInt8] = [0x72,0x6f,0x6e,0x5f,0x79,0x6d,0x5f,0x65,0x6d,0x5f,0x6e,0x74,0x62]

/*: "btn_me_my_pre" :*/
fileprivate let str_targetValue:String = "var share extension tablebtn_m"
fileprivate let str_nowData:String = "e_my_preindex text add pic voice"

/*: "btn_live_add_nor" :*/
fileprivate let str_removeContent:[UInt8] = [0x62,0x74,0x6e,0x5f,0x6c,0x69,0x76,0x65,0x5f,0x61,0x64,0x64,0x5f,0x6e,0x6f,0x72]

/*: "btn_live_add_pre" :*/
fileprivate let str_insideValue:String = "file selfbtn_li"
fileprivate let str_locationTitle:String = "d_preindicator title view for"

/*: "mic_image" :*/
fileprivate let str_formatStyleText:String = "make else image removemic_i"
fileprivate let str_viewIndexFloatData:String = "mflowge"

/*: "snap_img" :*/
fileprivate let str_titleDocumentName:String = "snap_imgas down false height"

/*: "get json error" :*/
fileprivate let str_appContent:String = "var head turn let returnget j"

/*: "99+" :*/
fileprivate let str_colorName:[Character] = ["9","9","+"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleTabBar.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/29.
//

//: import UIKit
import UIKit

//: class TalkingTabBar: UITabBar {
class TitleTabBar: UITabBar {
	var regularSum: Int = 99
	var scriptPicNumber: Int = 92
	var panelCount: Int = 13

    var quoteImageView: UIImageView?

    //: var currentTabType = 0
    var currentTabType = 0
    // 消息tabBar展示头像
    //: private var messageIcon = UIImageView()
    private var messageIcon = UIImageView()

    //: func setupItemsWithArr(itemTypes: Array<TabBarItemType>) {
    func equalTypes(itemTypes: [AtScalar]) {
        //: if itemTypes.count == 0 {
        if itemTypes.count == 0 {
            //: return
            return
        }
        //: let viewWidth = ScreenWidth
        let viewWidth = a_blockValue
        //: let backView = UIView.init()
        let backView = UIView()
        //: self.addSubview(backView)

        var phaseOfTheMoon: UIView = backView
        if let imageView = self.quoteImageView, (phaseOfTheMoon.contentMode == .scaleAspectFit) && (phaseOfTheMoon.inputAccessoryViewController != nil) {
            //: SWIFT_CUSTOM_DANGER
            phaseOfTheMoon = imageView
        }
        self.addSubview(phaseOfTheMoon)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.height.equalTo(Int(TabBarViewHeight))
            make.height.equalTo(Int(a_userTitle))
        }
        //: backView.backgroundColor = .white
        backView.backgroundColor = .white
        //: backView.layer.shadowColor = UIColor.init(red: 188/255.0, green: 188/255.0, blue: 188/255.0, alpha: 0.5).cgColor
        backView.layer.shadowColor = UIColor(red: 188 / 255.0, green: 188 / 255.0, blue: 188 / 255.0, alpha: 0.5).cgColor
        //: backView.layer.shadowOffset = CGSize.init(width: 0, height: 0)
        backView.layer.shadowOffset = CGSize(width: 0, height: 0)
        //: backView.layer.shadowOpacity = 1
        backView.layer.shadowOpacity = 1
        //: backView.layer.shadowRadius = 6
        backView.layer.shadowRadius = 6

        //: let width = Int(viewWidth)/itemTypes.count
        let width = Int(viewWidth) / itemTypes.count

        //: for i in 0..<itemTypes.count {
        for i in 0 ..< itemTypes.count {
            //: let itemType = itemTypes[i]
            let itemType = itemTypes[i]
            //: let btn = barBtnFor(itemType: itemType)!
            let btn = taproomVersionForItem(itemType: itemType)!
            //: btn.tag = itemType.rawValue + 100
            btn.tag = itemType.rawValue + 100
            //: btn.isSelected = (itemType.rawValue == currentTabType)
            btn.isSelected = (itemType.rawValue == currentTabType)
            //: backView.addSubview(btn)
            backView.addSubview(btn)
            //: btn.snp.makeConstraints { make in
            btn.snp.makeConstraints { make in
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.leading.equalTo(width*i)
                make.leading.equalTo(width * i)
                //: make.size.equalTo(CGSize.init(width: width, height: 48))
                make.size.equalTo(CGSize(width: width, height: 48))
            }
            //: if itemType != TabBarItemType.FreeMoment {
            if itemType != AtScalar.FreeMoment {
                //: setBtnPlace(btn: btn)
                styleSet(btn: btn)
            }

            //: if itemType == TabBarItemType.Message {
            if itemType == AtScalar.Message {
                //: messageIcon = UIImageView()
                messageIcon = UIImageView()
                //: messageIcon.contentMode = .scaleAspectFill
                messageIcon.contentMode = .scaleAspectFill
                //: messageIcon.layer.cornerRadius = 15.0
                messageIcon.layer.cornerRadius = 15.0
                //: messageIcon.layer.masksToBounds = true
                messageIcon.layer.masksToBounds = true
                //: messageIcon.isHidden = true
                messageIcon.isHidden = true
                //: btn.addSubview(messageIcon)

                var defenseLaboratory: UIView = messageIcon
                if let imageView = self.quoteImageView, (defenseLaboratory.sizeThatFits(.zero).height == 141.43) && ((defenseLaboratory.inputAssistantItem.leadingBarButtonGroups.count == 5) && (defenseLaboratory.inputAssistantItem.allowsHidingShortcuts != true)) {
                    //: SWIFT_CUSTOM_DANGER
                    defenseLaboratory = imageView
                }
                btn.addSubview(defenseLaboratory)
                //: messageIcon.snp.makeConstraints { make in
                messageIcon.snp.makeConstraints { make in
                    //: let y = btn.imageView?.origin.y ?? 0
                    let y = btn.imageView?.origin.y ?? 0
                    //: make.top.equalTo(y-2)
                    make.top.equalTo(y - 2)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 30, height: 30))
                    make.size.equalTo(CGSize(width: 30, height: 30))
                }
                //: } else if itemType == TabBarItemType.Live {
            } else if itemType == AtScalar.Live { // 直播tabBar添加SVGA动效
                //: btn.snp.makeConstraints { make in
                btn.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-6)
                    make.top.equalToSuperview().offset(-6)
                    //: make.leading.equalTo(width*i)
                    make.leading.equalTo(width * i)
                    //: make.size.equalTo(CGSize.init(width: width, height: 48))
                    make.size.equalTo(CGSize(width: width, height: 48))
                }
                //: liveSvga.isHidden = true
                liveSvga.isHidden = true
                //: btn.addSubview(liveSvga)
                btn.addSubview(liveSvga)
                //: liveSvga.snp.makeConstraints { make in
                liveSvga.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-4)
                    make.top.equalToSuperview().offset(-4)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 44, height: 44))
                    make.size.equalTo(CGSize(width: 44, height: 44))
                }
                //: } else if itemType == TabBarItemType.Randow {
            } else if itemType == AtScalar.Randow {
                //: btn.snp.makeConstraints { make in
                btn.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-6)
                    make.top.equalToSuperview().offset(-6)
                    //: make.leading.equalTo(width*i)
                    make.leading.equalTo(width * i)
                    //: make.size.equalTo(CGSize.init(width: width, height: 48))
                    make.size.equalTo(CGSize(width: width, height: 48))
                }
                //: randowSvga.isHidden = true
                randowSvga.isHidden = true
                //: btn.addSubview(randowSvga)
                btn.addSubview(randowSvga)
                //: randowSvga.snp.makeConstraints { make in
                randowSvga.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-4)
                    make.top.equalToSuperview().offset(-4)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 44, height: 44))
                    make.size.equalTo(CGSize(width: 44, height: 44))
                }
            }
        }

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance.init()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .clear
            tabBarAppearance.backgroundColor = .clear
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = .clear
            tabBarAppearance.shadowColor = .clear
            //: self.standardAppearance = tabBarAppearance
            self.standardAppearance = tabBarAppearance
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: self.scrollEdgeAppearance = tabBarAppearance
                self.scrollEdgeAppearance = tabBarAppearance
                //: } else {
            } else {
                // Fallback on earlier versions
            }
            //: } else {
        } else {
            // Fallback on earlier versions
        }
    
		
		//: if_extract_code "inputModel" begin
		
		var inputModel = false
		if !inputModel {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = phaseOfTheMoon.editingInteractionConfiguration == .none
		    }
		    inputModel = isValue
		}
		
		//: if_extract_code "inputModel" end
		
            if (inputModel) && (phaseOfTheMoon.clipsToBounds) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let messageTotalimate = PhoneRateView(frame: phaseOfTheMoon.bounds.standardized)


            messageTotalimate.shadowRoomQuantity = { [self] lodestarQuantity in
            self.panelCount = lodestarQuantity
            
            var messageTotalimate = currentTabType
            messageTotalimate &= 9
            if messageTotalimate < self.panelCount {
                self.panelCount = messageTotalimate
            }
            
            return self.panelCount
            }
                phaseOfTheMoon.addSubview(messageTotalimate)
            }

	}

    //: func barBtnFor(itemType: TabBarItemType) -> UIButton? {
    func taproomVersionForItem(itemType: AtScalar) -> UIButton? {
        //: switch itemType {
        switch itemType {
        //: case .Social, .Moment, .Account, .Message, .Randow, .Live:
        case .Social, .Moment, .Account, .Message, .Randow, .Live:
            //: let btn: UIButton = UIButton.init(type: .custom)
            let btn: UIButton = .init(type: .custom)
            //: btn.tag = itemType.rawValue + 100
            btn.tag = itemType.rawValue + 100
            //: btn.backgroundColor = .clear
            btn.backgroundColor = .clear
            //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 11)
            btn.titleLabel?.font = .thoughtImage(type: .Medium, fontSize: 11)
            //: btn.setTitle(self.itemTitleFor(itemType: itemType), for: .normal)
            btn.setTitle(self.bringHome(itemType: itemType), for: .normal)
            //: btn .setTitleColor(UIColor.init(hex: "#666666"), for: .normal)
            btn.setTitleColor(UIColor(hex: (String(str_viewTitle) + str_shareTitle.replacingOccurrences(of: "make", with: "6"))), for: .normal)
            //: btn .setTitleColor(UIColor.init(hex: "#8566FF"), for: .selected)
            btn.setTitleColor(UIColor(hex: (str_bottomName.capitalized + str_imageData.uppercased())), for: .selected)
            //: btn.setImage(UIImage.outsideText(name: self.itemImageFor(itemType: itemType, btnSelect: false)), for: .normal)
            btn.setImage(UIImage.outsideText(name: self.succeed(itemType: itemType, btnSelect: false)), for: .normal)
            //: btn.setImage(UIImage.outsideText(name: self.itemImageFor(itemType: itemType, btnSelect: true)), for: .selected)
            btn.setImage(UIImage.outsideText(name: self.succeed(itemType: itemType, btnSelect: true)), for: .selected)

            //: btn.imageView?.contentMode = .scaleAspectFill
            btn.imageView?.contentMode = .scaleAspectFill
            //: return btn
            return btn
        //: case .FreeMoment:
        case .FreeMoment:
            //: return nil
            return nil
        //: case .Login:
        case .Login:
            //: return nil
            return nil
        //: case .meet:
        case .meet:
            //: return nil
            return nil
        }
    
		
		//: if_extract_code "startCount" begin
		
		var startCount = false
		if !startCount {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = self.editingInteractionConfiguration == .none
		    }
		    startCount = isValue
		}
		
		//: if_extract_code "startCount" end
		
            if (startCount) && (self.clipsToBounds) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let messageTotalimate = PhoneRateView(frame: self.bounds.standardized)


            messageTotalimate.shadowRoomQuantity = { [self] lodestarQuantity in
            self.scriptPicNumber = lodestarQuantity
            
            var messageTotalimate = self.currentTabType
            messageTotalimate &= 9
            if messageTotalimate < self.scriptPicNumber {
                self.scriptPicNumber = messageTotalimate
            }
            
            return self.scriptPicNumber
            }
                self.addSubview(messageTotalimate)
            }

	}

    //: func itemTitleFor(itemType: TabBarItemType) -> String {
    func bringHome(itemType: AtScalar) -> String {
        //: switch itemType {
        switch itemType {
        //: case .Randow:
        case .Randow:
            //: return "Home".localized
            return (String(str_targetTitle)).localized
        //: case .Social:
        case .Social:
            //: if MeasurementAppManager.share.appStatus == AppSkinStatus.special.rawValue {
            if MeasurementAppManager.share.appStatus == LabCustomReflectable.special.rawValue {
                //: return "People".localized
                return (String(str_borderRangeText.suffix(6))).localized
                //: } else if MeasurementAppManager.share.loginUserMode.sex == Gender.male.rawValue {
            } else if MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.male.rawValue {
                //: return "Hot".localized
                return (String(str_reName.suffix(3))).localized
                //: } else {
            } else {
                //: return "Home".localized
                return (String(str_targetTitle)).localized
            }

        //: case .Moment:
        case .Moment:
            //: return "Moment".localized
            return (String(str_giftHiddenValue.suffix(6))).localized
        //: case .Message:
        case .Message:
            //: return "Message".localized
            return (String(str_userData) + String(str_sizeShowGuardData)).localized
        //: case .Account:
        case .Account:
            //: return "Me".localized
            return "Me".localized
        //: case .Live:
        case .Live:
            //: return "Live".localized
            return (String(str_contentValueText.prefix(4))).localized
        //: case .Login, .FreeMoment, .meet:
        case .Login, .FreeMoment, .meet:
            //: return ""
            return ""
        }
    }

    //: func itemImageFor(itemType: TabBarItemType, btnSelect: Bool) -> String {
    func succeed(itemType: AtScalar, btnSelect: Bool) -> String {
        //: switch itemType {
        switch itemType {
        //: case .Randow:
        case .Randow:
            //: return btnSelect == false ? "icon_randownCall_nor":"icon_randownCall_pre"
            return btnSelect == false ? String(bytes: str_tagData, encoding: .utf8)! : (String(str_numberData) + String(str_iconValue.prefix(5)))
        //: case .Social:
        case .Social:
            //: return btnSelect == false ? "btn_popular_pop_nor":"btn_popular_pop_pre"
            return btnSelect == false ? String(bytes: str_applicationName, encoding: .utf8)! : (String(str_modelViewName.prefix(8)) + String(str_modeImageTitle.suffix(5)) + "op_pre")
        //: case .Moment:
        case .Moment:
            //: return btnSelect == false ? "btn_discocer_dis_nor":"btn_discocer_dis_pre"
            return btnSelect == false ? String(bytes: str_pairTitle, encoding: .utf8)! : (String(str_valueTitle) + str_allValue.replacingOccurrences(of: "tap", with: "e"))
        //: case .FreeMoment:
        case .FreeMoment:
            //: return btnSelect == false ? "btn_label_add_nor":"btn_label_add_pre"
            return btnSelect == false ? String(bytes: str_whiteData, encoding: .utf8)! : (String(str_titleValue.prefix(6)) + "bel_" + String(str_whiteMakeData.suffix(7)))
        //: case .Message:
        case .Message:
            //: return btnSelect == false ? "btn_chat_cha_nor":"btn_chat_cha_pre"
            return btnSelect == false ? String(bytes: str_intimateTitle, encoding: .utf8)! : (String(str_liveContent))
        //: case .Account:
        case .Account:
            //: return btnSelect == false ? "btn_me_my_nor":"btn_me_my_pre"
            return btnSelect == false ? String(bytes: str_equalContent.reversed(), encoding: .utf8)! : (String(str_targetValue.suffix(5)) + String(str_nowData.prefix(8)))
        //: case .Live:
        case .Live:
            //: return btnSelect == false ? "btn_live_add_nor":"btn_live_add_pre"
            return btnSelect == false ? String(bytes: str_removeContent, encoding: .utf8)! : (String(str_insideValue.suffix(6)) + "ve_ad" + String(str_locationTitle.prefix(5)))
        //: case .Login, .meet:
        case .Login, .meet:
            //: return ""
            return ""
        }
    }

    /// 更改tabbar按钮选中状态
    //: func setSelectedTabItem(itemType: TabBarItemType) {
    func equalRecover(itemType: AtScalar) {
        //: let btn = self.viewWithTag(currentTabType + 100) as! UIButton
        let btn = self.viewWithTag(currentTabType + 100) as! UIButton
        //: if itemType.rawValue != currentTabType && btn.isSelected == true {
        if itemType.rawValue != currentTabType && btn.isSelected == true {
            //: btn.isSelected = false
            btn.isSelected = false
        }
        //: let lastBtn = self.viewWithTag(itemType.rawValue + 100) as! UIButton
        let lastBtn = self.viewWithTag(itemType.rawValue + 100) as! UIButton
        self.quoteImageView?.image = UIImage(named: (String(str_formatStyleText.suffix(5)) + str_viewIndexFloatData.replacingOccurrences(of: "flow", with: "a")))
        //: lastBtn.isSelected = true
        lastBtn.isSelected = true
        //: currentTabType = itemType.rawValue
        currentTabType = itemType.rawValue
        //: if itemType == .Message {
        if itemType == .Message {
            //: hideNewMessageUser()
            remindRequest()
        }
    
		
		//: if_extract_code "roomOriginal" begin
		
		var roomOriginal = false
		if !roomOriginal {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = messageIcon.editingInteractionConfiguration == .none
		    }
		    roomOriginal = isValue
		}
		
		//: if_extract_code "roomOriginal" end
		
            if (roomOriginal) && (messageIcon.clipsToBounds) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let messageTotalimate = PhoneRateView(frame: messageIcon.bounds.standardized)


            messageTotalimate.shadowRoomQuantity = { [self] lodestarQuantity in
            self.regularSum = lodestarQuantity
            
            var messageTotalimate = currentTabType
            messageTotalimate &= 9
            if messageTotalimate < self.regularSum {
                self.regularSum = messageTotalimate
            }
            
            return self.regularSum
            }
                messageIcon.addSubview(messageTotalimate)
            }

	}

    //: func setBtnPlace(btn: UIButton) {
    func styleSet(btn: UIButton) {
        //: let titleW: CGFloat = btn.titleLabel?.intrinsicContentSize.width ?? 0
        let titleW: CGFloat = btn.titleLabel?.intrinsicContentSize.width ?? 0
        //: let titleH: CGFloat = btn.titleLabel?.intrinsicContentSize.height ?? 0
        let titleH: CGFloat = btn.titleLabel?.intrinsicContentSize.height ?? 0

        //: let imageW: CGFloat = btn.imageView?.bounds.width ?? 0
        let imageW: CGFloat = btn.imageView?.bounds.width ?? 0
        //: let imageH: CGFloat = btn.imageView?.bounds.height ?? 0
        let imageH: CGFloat = btn.imageView?.bounds.height ?? 0
        //: if LanguageManager.shared.direction == .leftToRight {
        if ConstraintLanguageManager.shared.direction == .leftToRight {
            //: btn.imageEdgeInsets = UIEdgeInsets(top: -titleH+4, left: 0, bottom: 0, right: -titleW)
            btn.imageEdgeInsets = UIEdgeInsets(top: -titleH + 4, left: 0, bottom: 0, right: -titleW)
            //: btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageW, bottom: -imageH-2, right: 0)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageW, bottom: -imageH - 2, right: 0)
            //: } else {
        } else {
            //: btn.imageEdgeInsets = UIEdgeInsets(top: -titleH+4, left: -titleW, bottom: 0, right: 0)
            btn.imageEdgeInsets = UIEdgeInsets(top: -titleH + 4, left: -titleW, bottom: 0, right: 0)
            //: btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -imageH-2, right:  -imageW)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -imageH - 2, right: -imageW)
            quoteImageView = UIImageView(frame: self.bounds.offsetBy(dx: CGFloat(Double(self.frame.origin.x)), dy: CGFloat(0)))
            if let quoteImageView = quoteImageView {
                self.quoteImageView?.image = UIImage(named: (String(str_titleDocumentName.prefix(8))))
                if (quoteImageView.isHighlighted == true) && (quoteImageView.contentMode == .scaleAspectFit) {
                    //: SWIFT_CUSTOM_DANGER
                    self.addSubview(quoteImageView)
                }
            }
        }
    }

    //: private lazy var liveSvga: SVGAPlayer = {
    private lazy var liveSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_tabBar)
            let url = MonochromeThen.default.telecasting(type: .Live_tabBar)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_appContent.suffix(5)) + "son error"))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var randowSvga: SVGAPlayer = {
    private lazy var randowSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Tabbar_randownCall)
            let url = MonochromeThen.default.telecasting(type: .Tabbar_randownCall)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_appContent.suffix(5)) + "son error"))
        }

        //: return player
        return player
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabBar {
extension TitleTabBar {
    /// 刷新消息未读数角标
    //: func refreshBadgeLayoutWith(unread: Int, barType: TabBarItemType) {
    func ofActivity(unread: Int, barType: AtScalar) {
        //: let btn = self.viewWithTag(barType.rawValue + 100) as! UIButton
        let btn = self.viewWithTag(barType.rawValue + 100) as! UIButton
        //: let label = getBadgeLabel(btn: btn)
        let label = counterplay(btn: btn)
        //: if unread > 0 {
        if unread > 0 {
            //: label.isHidden = false
            label.isHidden = false
            //: if unread > 99 {
            if unread > 99 {
                //: label.text = "99+"
                label.text = "99+"
                //: } else {
            } else {
                //: label.text = "\(unread)"
                label.text = "\(unread)"
            }
            //: } else {
        } else {
            //: label.isHidden = true
            label.isHidden = true
            //: hideNewMessageUser()
            remindRequest()
        }
        //: var labWidth = 18.0
        var labWidth = 18.0
        //: if unread > 99 {
        if unread > 99 {
            //: labWidth = 30.0
            labWidth = 30.0
            //: } else if unread > 9 {
        } else if unread > 9 {
            //: labWidth = 23.0
            labWidth = 23.0
        }
        //: let delta = KDeviceIsIphoneX ? 5 : 2
        let delta = a_netName ? 5 : 2
        //: label.snp.remakeConstraints { make in
        label.snp.remakeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-5)
            make.trailing.equalToSuperview().offset(-5)
            //: make.top.equalTo(delta)
            make.top.equalTo(delta)
            //: make.size.equalTo(CGSize(width: labWidth, height: 18.0))
            make.size.equalTo(CGSize(width: labWidth, height: 18.0))
        }
    }

    //: func getBadgeLabel(btn: UIButton) -> UILabel {
    func counterplay(btn: UIButton) -> UILabel {
        //: var badgeLabel = btn.viewWithTag(1000)
        var badgeLabel = btn.viewWithTag(1000)
        //: if badgeLabel == nil {
        if badgeLabel == nil {
            //: var tempLabel = UILabel.init()
            var tempLabel = UILabel()
            //: tempLabel = UILabel.init()
            tempLabel = UILabel()
            //: tempLabel.tag = 1000
            tempLabel.tag = 1000
            //: tempLabel.backgroundColor = UIColor.msgTipsColor()
            tempLabel.backgroundColor = UIColor.atAfterPosition()
            //: tempLabel.layer.cornerRadius = 9
            tempLabel.layer.cornerRadius = 9
            //: tempLabel.layer.borderWidth = 1
            tempLabel.layer.borderWidth = 1
            //: tempLabel.layer.borderColor = UIColor.white.cgColor
            tempLabel.layer.borderColor = UIColor.white.cgColor
            //: tempLabel.clipsToBounds = true
            tempLabel.clipsToBounds = true
            //: tempLabel.textColor = UIColor.white
            tempLabel.textColor = UIColor.white
            //: tempLabel.font = UIFont.pingfangMediumFont(fontSize: 13)
            tempLabel.font = UIFont.methodPlay(fontSize: 13)
            //: tempLabel.isHidden = true
            tempLabel.isHidden = true
            //: tempLabel.textAlignment = .center
            tempLabel.textAlignment = .center

            //: btn.addSubview(tempLabel)
            btn.addSubview(tempLabel)
            //: badgeLabel = tempLabel
            badgeLabel = tempLabel
        }
        //: return badgeLabel as! UILabel
        return badgeLabel as! UILabel
    }

    /// 展示消息tab头像
    //: func showNewMessageUser(headPic: String) {
    func databasePic(headPic: String) {
        //: if currentTabType != TabBarItemType.Message.rawValue {
        if currentTabType != AtScalar.Message.rawValue {
            //: let btn = self.viewWithTag(TabBarItemType.Message.rawValue + 100) as? UIButton
            let btn = self.viewWithTag(AtScalar.Message.rawValue + 100) as? UIButton
            //: if btn != nil {
            if btn != nil {
                //: self.messageIcon.isHidden = false
                self.messageIcon.isHidden = false
                //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 15))]
                let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 15))]
                //: self.messageIcon.setUrlImage(urlStr: headPic, options: optionsInfo)
                self.messageIcon.posit(urlStr: headPic, options: optionsInfo)
            }
        }
    }

    /// 隐藏消息tab头像
    //: func hideNewMessageUser() {
    func remindRequest() {
        //: let btn = self.viewWithTag(TabBarItemType.Message.rawValue + 100) as? UIButton
        let btn = self.viewWithTag(AtScalar.Message.rawValue + 100) as? UIButton
        //: if btn != nil {
        if btn != nil {
            //: self.messageIcon.isHidden = true
            self.messageIcon.isHidden = true
        }
    }

    /// 展示女性直播toast提示
    //: func showFemaleLiveTurnOnToast() {
    func infoShared() {
        //: guard self.subviews.count > 0 else { return }
        guard self.subviews.count > 0 else { return }
        //: TalkingLiveTabToast().show(superView: self)
        NumberTabToast().anGiftView(superView: self)
    }

    /// 更改直播按钮图标
    //: func switchLiveTabBarImage() {
    func imbed() {
        //: guard MeasurementAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard MeasurementAppManager.share.loginUserMode.sex == SizeCustomReflectable.female.rawValue else { return }
        //: let liveBtn = self.viewWithTag(TabBarItemType.Live.rawValue + 100) as? UIButton
        let liveBtn = self.viewWithTag(AtScalar.Live.rawValue + 100) as? UIButton
        //: liveBtn?.isSelected = false
        liveBtn?.isSelected = false
        //: if TalkingLiveManager.shared().isLive ||
        if PropertyMManageressPushListener.giftShared().isLive ||
            //: TalkingVoiceRoomManager.shared().isParty, String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid {
            ImageToThen.labelShared().isParty, String(ImageToThen.labelShared().partyModel.streamerInfo.uid) == MeasurementAppManager.share.loginUid
        {
            //: liveSvga.isHidden = false
            liveSvga.isHidden = false
            //: } else {
        } else {
            //: liveSvga.isHidden = true
            liveSvga.isHidden = true
        }
    }

    /// 更改Randow按钮图标
    //: func switchRandowTabBarImage(isHidde: Bool) {
    func checkHidde(isHidde: Bool) {
        //: let liveBtn = self.viewWithTag(TabBarItemType.Randow.rawValue + 100) as? UIButton
        let liveBtn = self.viewWithTag(AtScalar.Randow.rawValue + 100) as? UIButton
        //: liveBtn?.isSelected = false
        liveBtn?.isSelected = false
        //: randowSvga.isHidden = !isHidde
        randowSvga.isHidden = !isHidde
    }
}
