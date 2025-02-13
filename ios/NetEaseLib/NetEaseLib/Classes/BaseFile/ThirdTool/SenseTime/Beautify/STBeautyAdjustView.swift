//
//  STBeautyAdjustView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

import UIKit

class STBeautyAdjustView: UIView {
    
    var currentItemType = BeautyItemType.Face
    var popView: MeasurementThen?
    
    var curFeatureItem: STFilterLooksModel?
    
    var faceItem: STFilterLooksModel?
    
    var eyesItem: STFilterLooksModel?
    
    var noseItem: STFilterLooksModel?
    
    var lipItem: STFilterLooksModel?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
        changeTopItem(senderTag: BeautyItemType.Face.rawValue)

    }
    
    deinit {
        
    }
    
    // MARK: - Lazy Load
    private lazy var beautyContainerView: UIScrollView = {
        let sview = UIScrollView()
        sview.backgroundColor = UIColor(hex: "171615")?.withAlphaComponent(0.9)
        return sview
    }()
    
    private lazy var topItemView: STBeautyTopItemView = {
        let view = STBeautyTopItemView()
        view.frame = CGRect.init(x: 0, y: 50, width: a_blockValue, height: 50)
        view.delegate = self
        return view
    }()
    
    
    private lazy var itemCollectionView: STBeautyCollectionView = {
        let view = STBeautyCollectionView.init(frame: CGRect.init(x: 0, y: 50+18, width: a_blockValue, height: beautyContainerView.height-50-18-a_agentData), collectionViewLayout: UICollectionViewLayout())
        return view
    }()
    
    ///  滤镜列表
    private lazy var filterListView: STFilterListView = {
        let view = STFilterListView.init(frame: CGRect.init(x: a_blockValue, y: 50+18, width: a_blockValue, height: beautyContainerView.height-50-18-a_agentData))
        return view
    }()
    
    
    private lazy var beautySlider: STBeautySlider = {
        let view = STBeautySlider.init(frame: CGRect.init(x: 22, y: 0, width: a_blockValue-44, height: 40))
        view.minimumTrackTintColor = UIColor.offt()
        view.maximumTrackTintColor = .white
        view.minimumValue = 0
        view.maximumValue = 1.0
        view.value  = 0
        view.addTarget(self, action: #selector(beautySliderValueChanged(sender:)), for: .valueChanged)
        view.setThumbImage(UIImage.outsideText(name: "st_slider_thumb"), for: .normal)
       
        return view
    }()
    
}



extension STBeautyAdjustView: STBeautyTopItemViewDelegate {
   
    
    
    func show() {
        
        popView = MeasurementThen.init(frame: UIScreen.main.bounds)
        popView?.anInit(view: self)
        popView?.targetFailure(view: ImageMacroDefine.sumHungWindowObject())
        
    }
    /// 重置
    func ResetBeauty() {
        
        self.faceItem = nil
        self.eyesItem = nil
        self.noseItem = nil
        self.lipItem = nil
        
        STFilterCacheCost.share.resetCustomDefSuite()
        self.itemCollectionView.resetDefaultBeautySuite()
        if (self.currentItemType == .Filter) {
            self.beautySlider.isHidden = true
        }
        
        STFilterCacheCost.share.initFilterData()
        STFilterCacheCost.share.reloadFilterData(model: STFilterCacheCost.share.filterModelArray.first!)
        filterListView.reLoadSetFilter(model: STFilterCacheCost.share.filterSuite ?? STFilterEntiretycostModel.init())
        NotificationCenter.default.post(name: kNotificationSelectBeautyFilter, object: STFilterCacheCost.share.filterModelArray.first, userInfo: nil)
        
        let value = Float(STFilterCacheCost.share.customSuite.fWhitenStrength/0.9)
        self.beautySlider.value = value
        self.beautySlider.configShowValue(value: Float(STFilterCacheCost.share.customSuite.fWhitenStrength*100))
        
    }
    
    func setBeautySetSuiteType(afterSuiteType: Int) {
        let type = BeautyItemType(rawValue: afterSuiteType) ?? .Face
       
        STFilterCacheCost.share.curBeautySuite = type
        
        self.itemCollectionView.setCurSuiteType(curSuiteType: type)
        
    }
    
    func handleSelectFeatureItem(featureItem: STFilterLooksModel, category: STBeautyCategory) {
        
        self.curFeatureItem = featureItem
        if featureItem.canEdit() {
            self.beautySlider.isEnabled = true
            self.beautySlider.halfMode = !featureItem.isOnlyPositiveValue()
            if featureItem.isLimitMaxNightValue() {
                self.beautySlider.value = Float(featureItem.beautyValue/0.9)
            }else {
                self.beautySlider.value = Float(featureItem.beautyValue)
            }
            self.beautySlider.configShowValue(value: self.curFeatureItem?.showBeautyValue() ?? 0.0)
            
            self.beautySlider.isHidden = false
        } else {
            self.beautySlider.isHidden = true
        }
        
    }
    
    @objc func beautySliderValueChanged(sender: STBeautySlider) {
 
        if (self.currentItemType == .Filter) {
            // 滤镜
            self.filterListView.selectModel?.beautyValue = Double(sender.value)
            self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)

            NotificationCenter.default.post(name: kNotificationBeautyFilterValueChange, object: self.filterListView.selectModel, userInfo: nil)


            STFilterCacheCost.share.reloadFilterData(model: self.filterListView.selectModel ?? STFilterLooksModel.init())
        }else {
            if self.curFeatureItem != nil {
                if self.curFeatureItem?.isLimitMaxNightValue() == true {
                    self.curFeatureItem?.beautyValue = Double(sender.value*0.9)
                }else {
                    self.curFeatureItem?.beautyValue = Double(sender.value)
                }
                self.beautySlider.configShowValue(value: self.curFeatureItem?.showBeautyValue() ?? 0.0)

                NotificationCenter.default.post(name: kNotificationBeautyFeatureModity, object: self.curFeatureItem, userInfo: nil)

            } else {
                sender.isEnabled = false
                sender.isHidden  = true
            }
        }

    }
    
    
    /// 切换item
    /// @param itemType

    func changeTopItem(senderTag: Int) {
        let itemType = BeautyItemType(rawValue: senderTag) ?? .Face
        self.currentItemType = itemType
    
        if itemType == .Filter {
            
            self.beautyContainerView.setContentOffset(CGPoint.init(x: a_blockValue, y: 0), animated: true)
            if self.filterListView.selectModel?.strPath.count == 0 {
                self.beautySlider.isHidden = true
            }else {
                self.beautySlider.isHidden = false
                self.beautySlider.isEnabled = true
                self.beautySlider.halfMode = false
                self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
                self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
            }
         }else {
           
             itemCollectionView.setCurSuiteType(curSuiteType: itemType)
             self.beautySlider.isHidden = false
             self.beautyContainerView.setContentOffset(CGPoint.init(x: 0, y: 0), animated: true)
             
             var  model = itemCollectionView.featureItems.first as? STFilterLooksModel
             switch itemType {
            
             case .Face:
                 if self.faceItem != nil {
                     model = self.faceItem
                 }
             case .Eyes:
                 if self.eyesItem != nil {
                     model = self.eyesItem
                 }
             case .Nose:
                 if self.noseItem != nil {
                     model = self.noseItem
                 }
             case .Lip:
                 if self.lipItem != nil {
                     model = self.lipItem
                 }
             default:
                 break
             }
             
             handleSelectFeatureItem(featureItem: model ?? STFilterLooksModel.init(), category: self.curFeatureItem?.category ?? .Base)
             self.itemCollectionView.curItem = model
             self.itemCollectionView.reloadData() 
             
         }
    }
    
    /// 选择滤镜
    /// @param featureModel _
    func selectFilter(featureModel: STFilterLooksModel) {
        if self.filterListView.selectModel?.strPath.count == 0 {
            self.beautySlider.isHidden = true
        }else {
            self.beautySlider.isHidden = false
            self.beautySlider.isEnabled = true
            self.beautySlider.halfMode = false
            self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
            self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
           
        }
        STFilterCacheCost.share.reloadFilterData(model: self.filterListView.selectModel ?? STFilterLooksModel.init())
        NotificationCenter.default.post(name: kNotificationSelectBeautyFilter, object: self.filterListView.selectModel, userInfo: nil)
        
    }
    
    func selectBeauty(model: STFilterLooksModel) {
        if itemCollectionView.curItem == nil {
            self.beautySlider.isHidden = true
        }else {
            self.beautySlider.isHidden = false
            self.beautySlider.isEnabled = true
            self.beautySlider.halfMode = false
            self.beautySlider.configShowValue(value: itemCollectionView.curItem?.showBeautyValue() ?? 0.0)
            self.beautySlider.value = Float(itemCollectionView.curItem?.beautyValue ?? 0.0)
            self.curFeatureItem = model
            switch self.currentItemType {
            case .Face:
                self.faceItem = model
            case .Eyes:
                self.eyesItem = model
            case .Nose:
                self.noseItem = model
            case .Lip:
                self.lipItem = model
            default:
                break
            }
        }
       
    }
}



extension STBeautyAdjustView {
    
    func setupSubviews() {
        self.layoutIfNeeded()
        self.currentItemType = .Face
        self.backgroundColor = .clear
        
        beautyContainerView.frame = CGRect.init(x: 0, y: 50, width: a_blockValue, height: self.height - 50)
        self.addSubview(beautyContainerView)
        self.addSubview(topItemView)
        self.addSubview(beautySlider)
        beautyContainerView.addSubview(itemCollectionView)
                
        itemCollectionView.setCurSuiteType(curSuiteType: STFilterCacheCost.share.curBeautySuite ?? .Face)
        itemCollectionView.selectBeautyBlock = {[weak self] bmodel in
            guard let self = self else { return }
            self.selectBeauty(model: bmodel)
        }
        // 添加滤镜
        beautyContainerView.addSubview(filterListView)
        filterListView.selectFilterBlock = { [weak self] featureItem in
            guard let self = self else { return }
            self.selectFilter(featureModel: featureItem)
        }
        filterListView.reLoadSetFilter(model: STFilterCacheCost.share.filterSuite ?? STFilterEntiretycostModel.init())
       

    }
    
   
}
 
