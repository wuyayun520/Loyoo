//
//  STBeautySlider.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

import UIKit

class STBeautySlider: UISlider {

    let Bar_Height = 3.0
    let OffsetFactor = 0.8
  
    override var minimumTrackTintColor: UIColor? {
        willSet {
            progressBar.backgroundColor = newValue
            super.minimumTrackTintColor = .clear
        }
    }
    
    override var maximumTrackTintColor: UIColor? {
        willSet {
            bgBar.backgroundColor = newValue
            super.maximumTrackTintColor = .clear
        }
    }
    
    override var currentThumbImage: UIImage? {
        get {
            return UIImage.outsideText(name: "st_slider_thumb")
        }
        set {
        }
    }
    
    var halfMode: Bool? {
        willSet {
            self.halfMode = newValue
            dotView.isHidden = (newValue == false)
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    deinit {
    }

    
    private lazy var valueView: UIButton = {
        let btn = UIButton()
        btn.setTitle("0", for: .normal)
        btn.isUserInteractionEnabled = false
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont.thoughtImage(type: .Regular, fontSize: 12)
        btn.titleLabel?.adjustsFontSizeToFitWidth = true
        btn.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 5, right: 0)
       
        return btn
    }()
    
    private lazy var bgBar: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = Bar_Height/2.0
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var progressBar: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = Bar_Height/2.0
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var dotView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 4.0
        view.clipsToBounds = true
        view.isHidden = true
        return view
    }()
    
}

extension STBeautySlider {
    
    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        let trackRect = super.trackRect(forBounds: bounds)
        return CGRect.init(x: 22, y: bounds.size.height * OffsetFactor, width: trackRect.size.width-44, height: trackRect.size.height)
    }
    
    override func thumbRect(forBounds bounds: CGRect, trackRect rect: CGRect, value: Float) -> CGRect {
        let h = bounds.height
        let w = rect.width
        
        let xOffset = rect.minX
        let yoffset = h*OffsetFactor
        
        bgBar.frame = CGRect.init(x: xOffset, y: yoffset, width: w, height: Bar_Height)
        
        if dotView.isHidden == false {
            dotView.frame = CGRect.init(x: (w-8)/2.0 + xOffset, y: (h*OffsetFactor+(Bar_Height-8)/2.0), width: 8, height: 8)
        }
                
        let thumbRect = super.thumbRect(forBounds: bounds, trackRect: rect, value: value)
      
        return thumbRect
    }
    
    func configShowValue(value: Float) {
     
        valueView.setTitle("\(Int(value))", for: .normal)
    }
    
    override func thumbImage(for state: UIControl.State) -> UIImage? {
        return UIImage.outsideText(name: "st_slider_thumb")
    }
    
}

extension STBeautySlider {
    
    func setupSubviews() {
        self.addSubview(valueView)
        self.insertSubview(bgBar, at: 0)
        self.insertSubview(progressBar, belowSubview: bgBar)
        self.insertSubview(dotView, belowSubview: progressBar)
        
        valueView.frame = CGRect.init(x: self.width-22, y: self.height-15, width: 20, height: 20)
    }
}
