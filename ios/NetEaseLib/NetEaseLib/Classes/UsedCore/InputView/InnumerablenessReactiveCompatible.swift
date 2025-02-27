// __DEBUG__
// __CLOSE_PRINT__
//
//  InnumerablenessReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/7.
//

//: import UIKit
import UIKit


//: class TalkingChatGiftLayout: UICollectionViewFlowLayout {
class InnumerablenessReactiveCompatible: UICollectionViewFlowLayout {

    //: var sectionArr = [GiftDataType]()  
    var sectionArr = [AtRepresentable]()  // collection有多少个分区
    //: var hotPage = 0                    
    var hotPage = 0                    // hot页数
    //: var hotDataArr = Array<Any>()      
    var hotDataArr = Array<Any>()      // hot分区数据
    //: var vipPage = 0                    
    var vipPage = 0                    // vip页数
    //: var vipDataArr = Array<Any>()      
    var vipDataArr = Array<Any>()      // vip分区数据
    //: var bagsPage = 0                   
    var bagsPage = 0                   // bags页数
    //: var bagsDataArr = Array<Any>()     
    var bagsDataArr = Array<Any>()     // bags分区数据
    
    //: private var GiftItemHeight  = Int(GiftScrollContentView_H/2) 
    private var GiftItemHeight  = Int(a_successValue/2) // 每个礼物的高度
    //: private let GiftItemColumn  = 4
    private let GiftItemColumn  = 4
    //: private let GiftItemRow     = 2
    private let GiftItemRow     = 2
    //: private let USE_DEFAULT_SELECT = 1
    private let USE_DEFAULT_SELECT = 1
    //: private var layoutArr = Array<UICollectionViewLayoutAttributes>()
    private var layoutArr = Array<UICollectionViewLayoutAttributes>()
    //: private var layoutContentSize = CGSize()
    private var layoutContentSize = CGSize()
    
    //: override func prepare() {
    override func prepare() {
        //: super.prepare()
        super.prepare()
        
        //: layoutArr.removeAll()
        layoutArr.removeAll()
 
        // 总页数
        //: var totalPage = 0
        var totalPage = 0
        
        // hot
        //: if let index = sectionArr.firstIndex(of: .Hot) {
        if let index = sectionArr.firstIndex(of: .Hot) {
            //: hotPage = hotDataArr.count/(GiftItemRow*GiftItemColumn)
            hotPage = hotDataArr.count/(GiftItemRow*GiftItemColumn)
            //: hotPage = hotDataArr.count % (GiftItemRow*GiftItemColumn) == 0 ? hotPage : (hotPage + 1)
            hotPage = hotDataArr.count % (GiftItemRow*GiftItemColumn) == 0 ? hotPage : (hotPage + 1)
            //: hotPage = max(hotPage, 1)
            hotPage = max(hotPage, 1)
            //: totalPage += hotPage
            totalPage += hotPage
            
            //: for i in 0..<hotDataArr.count {
            for i in 0..<hotDataArr.count {
                //: let itemAttr = self.layoutAttributesForItem(at: IndexPath.init(item: i, section: index))
                let itemAttr = self.layoutAttributesForItem(at: IndexPath.init(item: i, section: index))
                //: layoutArr.append(itemAttr!)
                layoutArr.append(itemAttr!)
            }
        }
 
        // vip
        //: if let index = sectionArr.firstIndex(of: .Vip) {
        if let index = sectionArr.firstIndex(of: .Vip) {
            //: vipPage = vipDataArr.count/(GiftItemRow*GiftItemColumn)
            vipPage = vipDataArr.count/(GiftItemRow*GiftItemColumn)
            //: vipPage = vipDataArr.count % (GiftItemRow*GiftItemColumn) == 0 ? vipPage : (vipPage + 1)
            vipPage = vipDataArr.count % (GiftItemRow*GiftItemColumn) == 0 ? vipPage : (vipPage + 1)
            //: vipPage = max(vipPage, 1)
            vipPage = max(vipPage, 1)
            //: totalPage += vipPage
            totalPage += vipPage
            
            //: for i in 0..<vipDataArr.count {
            for i in 0..<vipDataArr.count {
                //: let itemAttr = self.layoutAttributesForItem(at: IndexPath.init(item: i, section: index))
                let itemAttr = self.layoutAttributesForItem(at: IndexPath.init(item: i, section: index))
                //: layoutArr.append(itemAttr!)
                layoutArr.append(itemAttr!)
            }
        }
        
        // Bags
        //: if let index = sectionArr.firstIndex(of: .Bags) {
        if let index = sectionArr.firstIndex(of: .Bags) {
            //: bagsPage = bagsDataArr.count/(GiftItemRow*GiftItemColumn)
            bagsPage = bagsDataArr.count/(GiftItemRow*GiftItemColumn)
            //: bagsPage = bagsDataArr.count % (GiftItemRow*GiftItemColumn) == 0 ? bagsPage : (bagsPage + 1)
            bagsPage = bagsDataArr.count % (GiftItemRow*GiftItemColumn) == 0 ? bagsPage : (bagsPage + 1)
            //: bagsPage = max(bagsPage, 1)
            bagsPage = max(bagsPage, 1)
            //: totalPage += bagsPage
            totalPage += bagsPage
            
            //: for i in 0..<bagsDataArr.count {
            for i in 0..<bagsDataArr.count {
                //: let itemAttr = self.layoutAttributesForItem(at: IndexPath.init(item: i, section: index))
                let itemAttr = self.layoutAttributesForItem(at: IndexPath.init(item: i, section: index))
                //: layoutArr.append(itemAttr!)
                layoutArr.append(itemAttr!)
            }
        }
        
        //: layoutContentSize = CGSize(width: Int(ScreenWidth-10) * totalPage, height: 2*GiftItemHeight)
        layoutContentSize = CGSize(width: Int(a_blockValue-10) * totalPage, height: 2*GiftItemHeight)
    }

    //: override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        //: var page = indexPath.item / (GiftItemRow*GiftItemColumn)
        var page = indexPath.item / (GiftItemRow*GiftItemColumn)
        //: if indexPath.section == GiftDataType.Vip.rawValue {
        if indexPath.section == AtRepresentable.Vip.rawValue {
            //: page += hotPage
            page += hotPage
        //: } else if indexPath.section == GiftDataType.Bags.rawValue {
        } else if indexPath.section == AtRepresentable.Bags.rawValue {
            //: page += hotPage + vipPage
            page += hotPage + vipPage
        }
 
        //: let pageIndex = indexPath.item % (GiftItemRow*GiftItemColumn)
        let pageIndex = indexPath.item % (GiftItemRow*GiftItemColumn)
        //: let pageRow = pageIndex / GiftItemColumn
        let pageRow = pageIndex / GiftItemColumn
        //: let pageCol = pageIndex % GiftItemColumn
        let pageCol = pageIndex % GiftItemColumn
        //: let itemWidth = Int(ScreenWidth-10) / GiftItemColumn
        let itemWidth = Int(a_blockValue-10) / GiftItemColumn
        //: let x = page * Int(ScreenWidth-10) + pageCol * itemWidth
        let x = page * Int(a_blockValue-10) + pageCol * itemWidth
        //: let y = pageRow * GiftItemHeight
        let y = pageRow * GiftItemHeight
        //: let layoutAttr = UICollectionViewLayoutAttributes.init(forCellWith: indexPath)
        let layoutAttr = UICollectionViewLayoutAttributes.init(forCellWith: indexPath)
        //: layoutAttr.frame = CGRect(x: x, y: y, width: itemWidth, height: GiftItemHeight)
        layoutAttr.frame = CGRect(x: x, y: y, width: itemWidth, height: GiftItemHeight)
        
        //: return layoutAttr
        return layoutAttr

    }
    //: override var collectionViewContentSize: CGSize {
    override var collectionViewContentSize: CGSize {
        //: return layoutContentSize
        return layoutContentSize
    }
    //: override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        //: return layoutArr
        return layoutArr
    }
    
}