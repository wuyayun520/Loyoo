//
//  STBeautyLayout.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/1.
//

import UIKit

class STBeautyLayout: UICollectionViewFlowLayout {
    var GiftItemHeight  =   90
    let GiftItemColumn  =   5
    let GiftItemRow     =   2
    let USE_DEFAULT_SELECT   =   1
    
    var dataArr = Array<Any>()
    var layoutArr = Array<UICollectionViewLayoutAttributes>()
    
    var  layoutContentSize = CGSize()
    
    override func prepare() {
        
        super.prepare()
        
        layoutArr.removeAll()
        
        for i in 0..<dataArr.count {
          
            let itemAttr = self.layoutAttributesForItem(at: IndexPath.init(item: i, section: 0))
            layoutArr.append(itemAttr!)
        }
        var page = dataArr.count/(GiftItemRow*GiftItemColumn)
        page = dataArr.count % (GiftItemRow*GiftItemColumn) == 0 ? page : (page + 1)
        page = max(page, 1)
        layoutContentSize = CGSize(width: Int(a_blockValue) * page, height: 2*GiftItemHeight)
    }

    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        let page = indexPath.item / (GiftItemRow*GiftItemColumn)
        let pageIndex = indexPath.item % (GiftItemRow*GiftItemColumn)
        let pageRow = pageIndex / GiftItemColumn
        let pageCol = pageIndex % GiftItemColumn
        let itemWidth = 76
        let x = page * Int(a_blockValue) + pageCol * (itemWidth )
        let y = pageRow * GiftItemHeight
        let layoutAttr = UICollectionViewLayoutAttributes.init(forCellWith: indexPath)
        layoutAttr.frame = CGRect(x: 10+x, y: y, width: itemWidth, height: GiftItemHeight)
        
        return layoutAttr

    }
    override var collectionViewContentSize: CGSize {
        return layoutContentSize
    }
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return layoutArr
    }
    
    override var flipsHorizontallyInOppositeLayoutDirection: Bool {
        return true
    }
}
