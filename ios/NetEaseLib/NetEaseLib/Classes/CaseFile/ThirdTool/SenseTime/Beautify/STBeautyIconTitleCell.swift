//
//  STBeautyIconTitleCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

import UIKit

class STBeautyIconTitleCell: UICollectionViewCell {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupSubviews()
        self.setupSubViewsConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    
    // MARK: - Lazy load
    lazy var iconImage: UIImageView = {
        let v = UIImageView()
        v.tag = 100
        v.contentMode = .scaleAspectFit
        v.layer.cornerRadius = 28
        v.layer.borderWidth = 1.0
        v.layer.borderColor = UIColor.clear.cgColor
        v.clipsToBounds = true
        return v
    }()
    
    lazy var titleLb: UILabel = {
        let lb = UILabel()
        lb.tag = 200
        lb.font = UIFont.drogueSize(fontSize: 12)
        lb.textColor = .white
        lb.textAlignment = .center
        return lb
    }()
 

    
}

extension STBeautyIconTitleCell {
    
    
    func setFeatureItem(featureItem: STFilterLooksModel) {

        configIcon(iconName: featureItem.norImageName, selectedIconName: featureItem.selImageName, title: featureItem.title, isSelected: featureItem.isSelected)
    }
    
    func configIcon(iconName: String, selectedIconName: String, title: String, isSelected: Bool) {
   
        iconImage.image = UIImage.outsideText(name: iconName)
        
        titleLb.text = title
        
        if isSelected == true {
            let color = UIColor.offt()
            iconImage.isHighlighted = true
            iconImage.layer.borderColor = color.cgColor
            titleLb.textColor = color
        } else {
            iconImage.isHighlighted = false
            iconImage.layer.borderColor = UIColor.clear.cgColor
            titleLb.textColor = UIColor.init(white: 1, alpha: 0.6)
        }
    }
    
}

extension STBeautyIconTitleCell {
    
    func setupSubviews() {
        self.contentView.addSubview(iconImage)
        self.contentView.addSubview(titleLb)

    }
    
    func setupSubViewsConstraint() {

        let w = self.bounds.width
        iconImage.frame = CGRect.init(x: 10, y: 0, width: 56, height: 56)
        titleLb.frame   = CGRect.init(x: 0, y: 62, width: w, height: 18)
       
    }
}


