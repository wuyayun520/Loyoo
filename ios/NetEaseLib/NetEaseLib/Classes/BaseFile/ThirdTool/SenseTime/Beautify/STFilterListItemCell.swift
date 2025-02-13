//
//  STFilterListItemCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

import UIKit

class STFilterListItemCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupSubviews()
        self.setupSubViewsConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    
    // MARK: - Lazy load
    lazy var iconView: UIImageView = {
        let v = UIImageView()
        return v
    }()
    lazy var nameLab: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.drogueSize(fontSize: 12)
        lb.textColor = .white
        lb.textAlignment = .center
        return lb
    }()
    
    lazy var borderView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.borderColor = UIColor.offt().cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 56/2
        view.layer.masksToBounds = true
        view.isHidden = true
        return view
    }()
    
    
    
}

extension STFilterListItemCell {
    
    func setCellModel(model: STFilterLooksModel) {
        self.iconView.image = UIImage.outsideText(name: model.filterNormalImageName)
        self.nameLab.text = model.strName
        self.borderView.isHidden = !model.isSelected
        if model.isSelected {
            self.nameLab.textColor = UIColor.offt()
        }else {
            self.nameLab.textColor = .white
        }
    }
}

extension STFilterListItemCell {
    
    func setupSubviews() {
        self.contentView.addSubview(iconView)
        self.contentView.addSubview(borderView)
        self.contentView.addSubview(nameLab)
       
    }
    
    func setupSubViewsConstraint() {
        
        self.iconView.snp.makeConstraints { make in
            make.top.equalTo(self.contentView).offset(3)
            make.centerX.equalTo(self.contentView)
            make.size.equalTo(CGSize.init(width: 50, height: 50))
        }
        self.borderView.snp.makeConstraints { make in
            make.center.equalTo(self.iconView)
            make.size.equalTo(CGSize.init(width: 56, height: 56))
        }
        
        self.nameLab.snp.makeConstraints { make in
            make.top.equalTo(self.borderView.snp.bottom).offset(8)
            make.leading.trailing.equalTo(self.contentView)
        }
       
    }
}
