//
//  STBeautyTopItemView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

import UIKit



@objc public enum BeautyItemType: Int {
    
    case Face = 100   /// 脸部
    case Eyes = 101   /// 眼部
    case Nose = 102   /// 鼻部
    case Lip = 103    /// 嘴部
    
    case Filter = 104  /// 滤镜
  
}

@objc protocol STBeautyTopItemViewDelegate: NSObjectProtocol {
    ///
    @objc func changeTopItem(senderTag: Int)
    @objc func ResetBeauty()
}

class STBeautyTopItemView: UIView {

    var selectButton = UIButton.init()
    
    var delegate: STBeautyTopItemViewDelegate?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    deinit {
    }
    
    // MARK: - Lazy Load
    private lazy var sliderView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var resetBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage.outsideText(name: "icon_cz_nor"), for: .normal)
        btn.addTarget(self, action: #selector(resetBtnClick), for: .touchUpInside)
        return btn
    }()
}


extension STBeautyTopItemView {
    
    func setupSubviews() {

        self.addSubview(sliderView)
        sliderView.bounds = CGRect(x: 0, y: 0, width: 10, height: 2)
        self.backgroundColor = .clear
        let items = ["Face", "Eyes", "Nose", "Lip", "Filter"]
        var tag = BeautyItemType.Face.rawValue
        let buttonW = 56
        var buttonX = 6
        for (i, item) in items.enumerated() {
            let itemButton = creatButton(item: item.localized, type: tag)
            self.addSubview(itemButton)
            itemButton.snp.makeConstraints { make in
                make.leading.equalTo(buttonX)
                make.top.equalToSuperview()
                make.width.equalTo(buttonW)
                make.height.equalTo(50)
            }
            itemButton.layoutIfNeeded()
            buttonX = buttonW + buttonX
            tag += 1
            if i == 0 {
                buttonItemChange(sender: itemButton)
                let startX = ConstraintLanguageManager.shared.direction == .rightToLeft ? (Int(a_blockValue)-6-buttonW/2):6+buttonW/2
                sliderView.center = CGPoint(x: startX, y: 40)
            }
        }

        self.addSubview(resetBtn)
        resetBtn.snp.makeConstraints { make in
            make.leading.equalTo(a_blockValue-10-30)
            make.top.equalTo(10)
            make.width.height.equalTo(30)
        }
    }
    
    func creatButton(item: String, type: Int) -> UIButton {
        let btn = UIButton.init()
        btn.setTitle(item, for: .normal)
        btn.setTitleColor(UIColor.init(hex: "#C3BDB9"), for: .normal)
        btn.setTitleColor(UIColor.white, for: .selected)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 14)
        btn.tag = type
        btn.addTarget(self, action: #selector(buttonItemChange(sender:)), for: .touchUpInside)
        return btn
    }
    
    @objc func buttonItemChange(sender: UIButton) {
        
        setButtonStatus(sender: sender)
        self.delegate?.changeTopItem(senderTag: sender.tag)
        
    }
    
    func setButtonStatus(sender: UIButton) {
        if sender.isSelected {
            return
        }
        self.selectButton.titleLabel?.font = UIFont.thoughtImage(type: .Semibold, fontSize: 14)
        self.selectButton.isSelected = false
        sender.isSelected = true
        self.selectButton = sender
        if (self.sliderView.superview != nil) {
            UIView.animate(withDuration: 0.25) {
                self.sliderView.center = CGPoint(x: sender.centerX, y: 40)
            }
        }
    }
    
    @objc func resetBtnClick() {
        let config = MarkAlertConfig()
        config.alignment = .center
        config.textFont = UIFont.thoughtImage(type: .Medium, fontSize: 18)
        TitleAlertShow.appearAll(message: "Restore to default Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
            TitleAlertShow.lastAlert()
        }, rightBlock: { [weak self] in
            guard let self = self else { return }
            TitleAlertShow.lastAlert()
            let btn: UIButton =  self.viewWithTag(BeautyItemType.Face.rawValue) as! UIButton
            self.buttonItemChange(sender: btn)
            self.delegate?.ResetBeauty()
        }, config: config)
    }
}
 
