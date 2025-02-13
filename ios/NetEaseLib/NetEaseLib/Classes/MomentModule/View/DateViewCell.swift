
//: Declare String Begin

/*: "border_window_picture" :*/
fileprivate let str_liveName:String = "BORDER"
fileprivate let str_userValue:String = "button receivew_pict"
fileprivate let str_leadingName:String = "URE"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_roomContent:[UInt8] = [0xd7,0xd0,0xd7,0xca,0x96,0xdd,0xd1,0xda,0xdb,0xcc,0x84,0x97,0x9e,0xd6,0xdf,0xcd,0x9e,0xd0,0xd1,0xca,0x9e,0xdc,0xdb,0xdb,0xd0,0x9e,0xd7,0xd3,0xce,0xd2,0xdb,0xd3,0xdb,0xd0,0xca,0xdb,0xda]

/*: "F5F5F5" :*/
fileprivate let str_miniName:String = "attributeattributeF"
fileprivate let str_buttonReasonHeightName:[Character] = ["5"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import UIKit
import UIKit

//: class TalkingMomentItemCell: UITableViewCell {
class DateViewCell: UITableViewCell {
	var impressionDoing: Bool = false
	var blockCount: Int = 27
	var portionArray: [AnyHashable] = []
	var emptyOpen: Bool = true
	var iconSum: Int = 8
	var partyArray: [AnyHashable] = []

    var videoImageView: UIImageView?
    //: var cellDisposeBag = DisposeBag()
    var cellDisposeBag = DisposeBag()
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = CustomMeasurable()
    //: var isListTableCell = true
    var isListTableCell = true
    //: var isMyhost = false
    var isMyhost = false
    //: var videoView = TalkingMomentVideoCell.init()
    var videoView = NameVideoCell()
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    // 每次复用的时候调用
    //: override func prepareForReuse() {
    override func prepareForReuse() {
        //: super.prepareForReuse()
        super.prepareForReuse()
        //: self.cellDisposeBag = DisposeBag()
        self.cellDisposeBag = DisposeBag()
        videoImageView = UIImageView(frame: self.frame.intersection(CGRect(x: CGFloat(0), y: CGFloat(Int(self.center.y)), width: CGFloat(self.tag), height: CGFloat(self.canBecomeFocused ? 3 : 9))))
        if let videoImageView = videoImageView {
            self.videoImageView?.image = UIImage(named: (str_liveName.lowercased() + "_windo" + String(str_userValue.suffix(6)) + str_leadingName.lowercased()))
            if (videoImageView.canResignFirstResponder != true) && (videoImageView.layoutGuides.count == 118) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(videoImageView)
            }
        }
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_roomContent.map{$0^190}, encoding: .utf8)!)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        subviewsAction()
    }

    //: init(style: UITableViewCell.CellStyle, reuseIdentifier: String?, isMyHost: Bool?) {
    init(style: UITableViewCell.CellStyle, reuseIdentifier: String?, isMyHost: Bool?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.isMyhost = isMyHost ?? false
        self.isMyhost = isMyHost ?? false
        //: setupSubviews()
        subviewsAction()
    }

    //: func initwith(isListTableCell: Bool) {
    func totalercalaryYearAt(isListTableCell: Bool) {
        //: self.isListTableCell = isListTableCell
        self.isListTableCell = isListTableCell
        //: setupSubviews()
        subviewsAction()
    
		if var blockValue = userInfoView.model.viewNum { 
			if var artefactValue = photoView.cunrrenModel.vipLevel { 
				if var tingValue = self.cunrrenModel.novice { 
				if let videoImageView = videoImageView {
			
			            if (videoImageView.tintColor != nil && videoImageView.tintColor.cgColor == UIColor.black.cgColor) && (videoImageView.gestureRecognizers != nil && videoImageView.gestureRecognizers!.count == 11) {
			                //: SWIFT_CUSTOM_DANGER_File_Call
			                let dataHome = SectionView()
			            dataHome.voiceOff = tingValue
			            dataHome.viewAtQuantity = artefactValue
	
			            
			            dataHome.bottomFreeClose = { [self] toolPriceDoing in
			            self.emptyOpen = toolPriceDoing
			            
			            var dataHome = isListTableCell
			            dataHome = true
			            if dataHome != self.emptyOpen {
			                self.emptyOpen = dataHome
			            }
			            
			            return self.emptyOpen
			            }
			            dataHome.groupMagnitude = { [self] awardSum in
			            self.iconSum = awardSum
			            
			            var dataHome = blockValue
			            dataHome |= dataHome | 7
			            if dataHome > self.iconSum {
			                self.iconSum = dataHome
			            }
			            
			            return self.iconSum
			            }
			            dataHome.moveArray = { [self] targetMoonArray in
			            self.partyArray = targetMoonArray
			            
			            guard var value = self.partyArray as? [String] else {
			                return nil
			            }
			            return value
			            }
			                videoImageView.addSubview(dataHome)
			            }
			
				}
			
				}
			}
		}
	}

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    
		if var rowDataConnectValue = self.cunrrenModel.likeNum { 
			if var modelValue = photoView.cunrrenModel.viewNum { 
		            if (photoView.inputViewController != nil) && (photoView.layer.isDoubleSided != true) {
		                //: SWIFT_CUSTOM_DANGER_File_Call
		                let addTransition = SectionView(frame: photoView.bounds)
		            addTransition.voiceOff = videoView.isPlaying
		            addTransition.viewAtQuantity = modelValue
	
		            
		            addTransition.bottomFreeClose = { [self] toolPriceDoing in
		            self.impressionDoing = toolPriceDoing
		            
		            var addTransition = photoView.isMyhost
		                addTransition = true
		                addTransition = !addTransition
		            if addTransition != self.impressionDoing {
		                self.impressionDoing = addTransition
		            }
		            
		            return self.impressionDoing
		            }
		            addTransition.groupMagnitude = { [self] awardSum in
		            self.blockCount = awardSum
		            
		            var addTransition = rowDataConnectValue
		            addTransition &= 6
		            if addTransition < self.blockCount {
		                self.blockCount = addTransition
		            }
		            
		            return self.blockCount
		            }
		            addTransition.moveArray = { [self] targetMoonArray in
		            self.portionArray = targetMoonArray
		            
		            guard var value = self.portionArray as? [String] else {
		                return nil
		            }
		            return value
		            }
		                photoView.addSubview(addTransition)
		            }
		
			}
		}
	}

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let  view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: self.contentView.addSubview(view)
        self.contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: lazy var userInfoView: TalkingMomentUserInfoView = {
    lazy var userInfoView: CountTextInfoView = {
        //: let  view = TalkingMomentUserInfoView.init()
        let view = CountTextInfoView()
        //: backView.addSubview(view)
        backView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: lazy var textContentView: TalkingMomentTextContentView = {
    lazy var textContentView: DigitizerView = {
        //: let  view = TalkingMomentTextContentView.init()
        let view = DigitizerView()
        //: backView.addSubview(view)
        backView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: lazy var photoView: TalkingMomentPhotosView = {
    lazy var photoView: LabelMomentViewDelegate = {
        //: let flayout = UICollectionViewFlowLayout.init()
        let flayout = UICollectionViewFlowLayout()
        //: let  view = TalkingMomentPhotosView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: flayout)
        let view = LabelMomentViewDelegate(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: flayout)
        //: backView.addSubview(view)
        backView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: lazy var bottomView: TalkingMomentItemBottomView = {
    lazy var bottomView: SwitcheThen = {
        //: let  view = TalkingMomentItemBottomView.init()
        let view = SwitcheThen()
        //: backView.addSubview(view)
        backView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let  view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "F5F5F5")
        view.backgroundColor = UIColor(hex: (str_miniName.replacingOccurrences(of: "attribute", with: "F5") + String(str_buttonReasonHeightName)))
        //: self.contentView.addSubview(view)
        self.contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingMomentItemCell {
extension DateViewCell {
    //: func configCell(model: TalkingMomentModel) {
    func quantityimate(model: CustomMeasurable) {
        //: cunrrenModel = model
        cunrrenModel = model
        //: userInfoView.isHidden = false
        userInfoView.isHidden = false
        //: userInfoView.configInfo(model: model)
        userInfoView.miscalculation(model: model)
        //: photoView.isMyhost = self.isMyhost
        photoView.isMyhost = self.isMyhost
        //: textContentView.configText(text: model.content ?? "", isMomentDetail: model.isMomentDetail ?? false)
        textContentView.preface(text: model.content ?? "", isMomentDetail: model.isMomentDetail ?? false)

        //: if model.momentType == MomentType.Photo.rawValue || model.momentType == MomentType.Live.rawValue {
        if model.momentType == CellSubqueryConvertible.Photo.rawValue || model.momentType == CellSubqueryConvertible.Live.rawValue {
            //: photoView.isHidden = false
            photoView.isHidden = false
            //: videoView.isHidden = true
            videoView.isHidden = true

//            textContentView.snp.remakeConstraints { make in
//                make.leading.trailing.equalTo(0)
//                make.top.equalTo(userInfoView.snp.bottom)
//            }
//            photoView.snp.remakeConstraints { make in
//                make.leading.trailing.equalTo(0)
//                make.top.equalTo(textContentView.snp.bottom)
//                make.height.equalTo(model.photoHeight!)
//            }
//
//            bottomView.snp.remakeConstraints { make in
//                make.leading.trailing.equalTo(0)
//                make.top.equalTo(photoView.snp.bottom)
//                make.height.equalTo(60)
//                make.bottom.equalTo(-10)
//            }
            //: photoView.configModel(model: cunrrenModel)
            photoView.showModel(model: cunrrenModel)

            //: } else {
        } else {
            //: photoView.isHidden = true
            photoView.isHidden = true
            //: videoView.isHidden = false
            videoView.isHidden = false

//            textContentView.snp.remakeConstraints { make in
//                make.leading.trailing.equalTo(0)
//                make.top.equalTo(videoView.snp.bottom)
//            }
//            bottomView.snp.makeConstraints { make in
//                make.leading.trailing.equalTo(0)
//                make.top.equalTo(textContentView.snp.bottom).offset(0)
//                make.height.equalTo(60)
//                make.bottom.equalTo(-10)
//            }
            //: videoView.configModel(model: model.videoInfo!, isTop: model.pinStatus)
            videoView.removeBy(model: model.videoInfo!, isTop: model.pinStatus)
        }

        //: bottomView.configModel(model: cunrrenModel)
        bottomView.begin(model: cunrrenModel)

//        bottomView .snp.updateConstraints { make in
//            make.height.equalTo(83)
//        }
    }

    //: @objc func videoMommentClick() {
    @objc func picCover() {
        //: let vc = TalkingMomentVideoVC.init(videoPath: cunrrenModel.videoInfo!.videoUrl)
        let vc = LargePlayerDelegate(videoPath: cunrrenModel.videoInfo!.videoUrl)
        //: if cunrrenModel.sex != MeasurementAppManager.share.loginUserMode.sex {
        if cunrrenModel.sex != MeasurementAppManager.share.loginUserMode.sex {
            //: vc.isHideBotton = false
            vc.isHideBotton = false
        }
        //: vc.uid = cunrrenModel.uid ?? ""
        vc.uid = cunrrenModel.uid ?? ""
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.colorController()?.navigationController?.pushViewController(vc, animated: true)
    }

    //: func playVideo() {
    func equilateral() {
        //: if cunrrenModel.momentType == MomentType.Video.rawValue {
        if cunrrenModel.momentType == CellSubqueryConvertible.Video.rawValue {
            //: videoView.setupPlayer()
            videoView.beautyPush()
        }
    }

    //: func stopPlay() {
    func release() {
        //: if videoView.isPlaying {
        if videoView.isPlaying {
            //: videoView.stopPlay()
            videoView.garrison()
        }
    }

    //: func pausePlay() {
    func afterRoom() {
        //: if videoView.isPlaying {
        if videoView.isPlaying {
            //: videoView.pausePlay()
            videoView.play()
        }
    }

    //: func resume() {
    func pop() {
        //: videoView.resume()
        videoView.area()
    }
}

// MARK: - LayoutUI

//: extension TalkingMomentItemCell {
extension DateViewCell {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsAction() {
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.isUserInteractionEnabled = true
        self.isUserInteractionEnabled = true

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(self.contentView)
            make.top.equalTo(self.contentView)
            //: make.bottom.equalTo(-12)
            make.bottom.equalTo(-12)
        }

        //: videoView.isListTableCell = self.isListTableCell
        videoView.isListTableCell = self.isListTableCell
        //: backView.addSubview(videoView)
        backView.addSubview(videoView)
        //: let tapGesture = UITapGestureRecognizer(target: self, action: #selector(videoMommentClick))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(picCover))
        //: tapGesture.cancelsTouchesInView = false
        tapGesture.cancelsTouchesInView = false
        //: videoView.addGestureRecognizer(tapGesture)
        videoView.addGestureRecognizer(tapGesture)

        //: userInfoView.snp.makeConstraints { make in
        userInfoView.snp.makeConstraints { make in
            //: make.top.trailing.equalTo(0)
            make.top.trailing.equalTo(0)
            //: if isMyhost {
            if isMyhost {
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: } else {
            } else {
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
            }
            //: make.height.equalTo(68)
            make.height.equalTo(68)
        }
        //: textContentView.snp.makeConstraints { make in
        textContentView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: if isMyhost {
            if isMyhost {
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: } else {
            } else {
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
            }
            //: make.top.equalTo(userInfoView.snp.bottom)
            make.top.equalTo(userInfoView.snp.bottom)
        }
        //: photoView.snp.makeConstraints { make in
        photoView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: if isMyhost {
            if isMyhost {
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: } else {
            } else {
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
            }
            //: make.top.equalTo(textContentView.snp.bottom).offset(12)
            make.top.equalTo(textContentView.snp.bottom).offset(12)
        }
        //: videoView.snp.makeConstraints { make in
        videoView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(textContentView.snp.bottom).offset(10)
            make.top.equalTo(textContentView.snp.bottom).offset(10)
            //: make.size.equalTo(CGSize.init(width: 150, height: 224))
            make.size.equalTo(CGSize(width: 150, height: 224))
        }

        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: if isMyhost {
            if isMyhost {
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: } else {
            } else {
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
            }
            //: make.top.equalTo(photoView.snp.bottom)
            make.top.equalTo(photoView.snp.bottom)
            //: make.height.equalTo(83)
            make.height.equalTo(83)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.bottom.leading.trailing.equalTo(0)
            make.bottom.leading.trailing.equalTo(0)
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
        }
    }
}
