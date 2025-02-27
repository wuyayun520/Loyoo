
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeText:[UInt8] = [0x6,0x1,0x6,0x1b,0x47,0xc,0x0,0xb,0xa,0x1d,0x55,0x46,0x4f,0x7,0xe,0x1c,0x4f,0x1,0x0,0x1b,0x4f,0xd,0xa,0xa,0x1,0x4f,0x6,0x2,0x1f,0x3,0xa,0x2,0xa,0x1,0x1b,0xa,0xb]

/*: "#F5F5F5" :*/
fileprivate let str_visibleName:String = "tool self input#F5F5F5"

/*: "live_picture" :*/
fileprivate let str_maleData:String = "this only model item pushlive_"
fileprivate let str_actionDeviceName:String = "PICTURE"

/*: "exaggerate_image" :*/
fileprivate let str_textName:String = "exaequal"
fileprivate let str_modelData:String = "ERATE"

/*: "icon_Topping_bg" :*/
fileprivate let str_shareFromValue:[Character] = ["i","c","o","n","_","T"]
fileprivate let str_duringName:String = "require view player sizeopping_bg"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CharacterizeReusableView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosCell: UICollectionViewCell {
class CharacterizeReusableView: UICollectionViewCell {
	var billOfFareTotal: Double = -75.4
	var bagDictionary: [AnyHashable: String] = [:]
	var rowQuantity: Double = 10.8
	var pageDictionary: [AnyHashable: String] = [:]

    var iconImageView: UIImageView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        smallShow()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeText.map{$0^111}, encoding: .utf8)!)
    }

    //: func customUI() {
    func smallShow() {
        //: self.contentView.backgroundColor = UIColor.init(hex: "#F5F5F5")
        self.contentView.backgroundColor = UIColor(hex: (String(str_visibleName.suffix(7))))
        //: self.contentView.layer.cornerRadius = 6
        self.contentView.layer.cornerRadius = 6
        //: self.contentView.layer.masksToBounds = true
        self.contentView.layer.masksToBounds = true
        iconImageView = UIImageView(frame: self.bounds.integral)
        if let iconImageView = iconImageView {
            self.iconImageView?.image = UIImage(named: (String(str_maleData.suffix(5)) + str_actionDeviceName.lowercased()))
            if (iconImageView.isHighlighted == true) && (iconImageView.semanticContentAttribute == .playback) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(iconImageView)
            }
        }

        //: photoView.snp.makeConstraints { make in
        photoView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.contentView)
            make.edges.equalTo(self.contentView)
        }
        //: photoView.addSubview(topImage)

        var centerMessageCollection: UIView = topImage
        if let imageView = self.iconImageView, (centerMessageCollection.constraints.count == 57) && (centerMessageCollection.layer.isHidden != false) {
            //: SWIFT_CUSTOM_DANGER
            centerMessageCollection = imageView
        }
        photoView.addSubview(centerMessageCollection)
        //: topImage.snp.makeConstraints { make in
        topImage.snp.makeConstraints { make in
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.size.equalTo(CGSize(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    
            if (topImage.constraintsAffectingLayout(for: .horizontal).count == 81) && (topImage.convert(CGPoint.zero, to: topImage.superview).y == 42.65) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let sectionGift = ThanOfView(frame: topImage.frame.insetBy(dx: CGFloat(390.87), dy: CGFloat(463.39)))



            
            
            sectionGift.allMagnitude = { [self] brandSum in
            self.rowQuantity = brandSum
            
                self.rowQuantity -= 1
                if self.rowQuantity <= 0 {
                    self.rowQuantity = self.rowQuantity + 1
                }
            return self.rowQuantity
            }
            sectionGift.awakeDictionary = { [self] collectionDictionary in
            self.pageDictionary = collectionDictionary
            
            guard var value = self.pageDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                topImage.addSubview(sectionGift)
            }

	}

    //: func configUrl(url: String) {
    func fullMoonList(url: String) {
        //: photoView.setUrlImage(urlStr: url)
        photoView.recordFinish(urlStr: url)
        //: topImage.isHidden = true
        topImage.isHidden = true
        self.iconImageView?.image = UIImage(named: (str_textName.replacingOccurrences(of: "equal", with: "gg") + str_modelData.lowercased() + "_image"))
    }

    //: func setTopImage() {
    func exhibit() {
        //: topImage.isHidden = false
        topImage.isHidden = false
    
            if (topImage.constraintsAffectingLayout(for: .horizontal).count == 81) && (topImage.convert(CGPoint.zero, to: topImage.superview).y == 42.65) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let sectionGift = ThanOfView(frame: topImage.frame.insetBy(dx: CGFloat(390.87), dy: CGFloat(463.39)))



            
            
            sectionGift.allMagnitude = { [self] brandSum in
            self.billOfFareTotal = brandSum
            
                self.billOfFareTotal -= 1
                if self.billOfFareTotal <= 0 {
                    self.billOfFareTotal = self.billOfFareTotal + 1
                }
            return self.billOfFareTotal
            }
            sectionGift.awakeDictionary = { [self] collectionDictionary in
            self.bagDictionary = collectionDictionary
            
            guard var value = self.bagDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                topImage.addSubview(sectionGift)
            }

	}

    //: lazy var photoView: UIImageView = {
    lazy var photoView: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: self.contentView.addSubview(img)
        self.contentView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: lazy var enterIcon: UIImageView = {
    lazy var enterIcon: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: self.contentView.addSubview(img)
        self.contentView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.outsideText(name: "icon_Topping_bg")
        img.image = UIImage.outsideText(name: (String(str_shareFromValue) + String(str_duringName.suffix(9))))
        //: return img
        return img
        //: }()
    }()
}
