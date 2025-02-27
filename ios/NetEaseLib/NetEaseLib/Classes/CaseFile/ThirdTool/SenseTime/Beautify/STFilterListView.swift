//
//  STFilterListView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

import UIKit

typealias SelectFilterBlock = (_ model: STFilterLooksModel) -> Void

class STFilterListView: UIView {

    var selectModel: STFilterLooksModel?
   
    var selectFilterBlock: SelectFilterBlock?

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        STFilterCacheCost.share.initFilterData()
        self.selectModel = STFilterCacheCost.share.filterModelArray.first
        self.selectModel?.isSelected = true
        self.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        let layout: STBeautyLayout = collectionView.collectionViewLayout as! STBeautyLayout
        layout.dataArr = STFilterCacheCost.share.filterModelArray
        collectionView.reloadData()
        
    }
    deinit {
    }

    
    private lazy var collectionView: UICollectionView = {
        let layout = STBeautyLayout.init()
        layout.scrollDirection = .horizontal
        let View = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        View.backgroundColor = .clear
        View.showsVerticalScrollIndicator = false
        View.delegate = self
        View.dataSource = self
        View.register(STFilterListItemCell.self, forCellWithReuseIdentifier: "STFilterListItemCell")
        return View
    }()
}

extension STFilterListView {
    
    func reLoadSetFilter(model: STFilterEntiretycostModel) {
        
        if self.selectModel?.strName == model.filterName {
            return
        }
        
        for (i, childM) in STFilterCacheCost.share.filterModelArray.enumerated() {
            var index = i
            if childM.strName == model.filterName {
                self.selectModel?.isSelected = false
                childM.isSelected = true
                childM.beautyValue = model.fFilterStrength
                self.selectModel = childM
                self.collectionView.reloadData()
               
                if (index >= 10) {
                    index = STFilterCacheCost.share.filterModelArray.count-1
                }
                let indexp = NSIndexPath.init(item: index, section: 0)
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    self.collectionView.scrollToItem(at: indexp as IndexPath, at: .bottom, animated: false)
                }
                break
            }
        }
        
    }
}
extension STFilterListView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return STFilterCacheCost.share.filterModelArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: STFilterListItemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "STFilterListItemCell", for: indexPath) as! STFilterListItemCell

        cell.setCellModel(model: STFilterCacheCost.share.filterModelArray[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let model = STFilterCacheCost.share.filterModelArray[indexPath.item]
        if self.selectModel == model {
            return
        }
        self.selectModel?.isSelected = false
        self.selectModel = model
        self.selectModel?.isSelected = true
        self.collectionView.reloadData()
        if self.selectFilterBlock != nil {
            self.selectFilterBlock!(self.selectModel ?? STFilterLooksModel.init())
        }
    }
    
    
    
}
