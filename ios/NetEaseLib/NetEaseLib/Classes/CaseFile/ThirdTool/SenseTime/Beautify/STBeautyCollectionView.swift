//
//  STBeautyCollectionView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

import UIKit


typealias DidSelectHandler = (_ featureItem: STFilterLooksModel) -> Void


class STBeautyCollectionView: UICollectionView {

    var curSuiteType = BeautyItemType.Face
    var featureItems = Array<Any>()
    var curItem: STFilterLooksModel?
    var selectBeautyBlock: SelectFilterBlock?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        
        let layout = STBeautyLayout.init()
        layout.scrollDirection = .horizontal

        super.init(frame: frame, collectionViewLayout: layout)
       
        setupSubviews()
    }
    
    deinit {
    }


}


extension STBeautyCollectionView {
    
    func setupData() {
        let tmp = NSMutableArray.init()
        switch (self.curSuiteType) {
        case .Face:
            let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .Base)
            tmp.addObjects(from: faceArr)
    
        case .Eyes:
            let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .Shape)
            tmp.addObjects(from: faceArr)
            
        case .Nose:
            let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .MicroSurgery)
            tmp.addObjects(from: faceArr)
            
        case .Lip:
            let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .MakeUp)
            tmp.addObjects(from: faceArr)
            
        default:
            featureItems = Array()
            break
        }
        
        featureItems = tmp as! [Any]
        configDefaultSelectItem()
        
        let layout: STBeautyLayout = self.collectionViewLayout as! STBeautyLayout
        layout.dataArr = featureItems
        self.reloadData()
    }
    
    func configDefaultSelectItem() {
        /*!
         * 1、找到当前featureType对应的item
         * 2、没有找到，就使用数组firstObject
         */
        var curFeature = STFilterCacheCost.share.curFeature
        self.curItem?.isSelected = false
        curFeature = self.curItem?.featureType
        
        // 1
        for aFeature in featureItems {
            let tfeature = aFeature as! STFilterLooksModel
            if (curFeature == tfeature.featureType) {
                tfeature.isSelected = true
                self.curItem = tfeature
                break
            }
        }
        
        // 2
        if (self.curItem == nil) {
            let aFeature: STFilterLooksModel = featureItems.first as! STFilterLooksModel
            aFeature.isSelected = true
            self.curItem = aFeature
        }
        
    }
    
    
    func setCurSuiteType(curSuiteType: BeautyItemType) {
        
        self.curSuiteType = curSuiteType
        setupData()
       
    }
    
    func resetDefaultBeautySuite() {
        
        self.curSuiteType = .Face
        setupData()
        let aFeature: STFilterLooksModel = featureItems.first as! STFilterLooksModel
        aFeature.isSelected = true
        self.curItem = aFeature
    }
    
}

extension STBeautyCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return featureItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: STBeautyIconTitleCell = collectionView.dequeueReusableCell(withReuseIdentifier: "featureCell", for: indexPath) as! STBeautyIconTitleCell
        
        let item: STFilterLooksModel = featureItems[indexPath.row] as! STFilterLooksModel
        item.isSelected  = (item.featureType == self.curItem?.featureType)
        cell.setFeatureItem(featureItem: item)
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if (indexPath.row < featureItems.count) {
            
            let item: STFilterLooksModel = featureItems[indexPath.row] as! STFilterLooksModel
            self.curItem?.isSelected = false
            item.isSelected = true
            
            self.curItem = item // setter
            if self.selectBeautyBlock != nil {
                self.selectBeautyBlock!(self.curItem ?? STFilterLooksModel.init())
            }
            self.reloadData()
        }
    }
}


extension STBeautyCollectionView {
    
    func setupSubviews() {
        
        self.backgroundColor = .clear
        self.isPagingEnabled = true
        self.showsHorizontalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        self.delegate = self
        self.dataSource = self
//        self.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "placeholder")
        self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "featureCell")
        self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "suiteCell")

        
    }
}
