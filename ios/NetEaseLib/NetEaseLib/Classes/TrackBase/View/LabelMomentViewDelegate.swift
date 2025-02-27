
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_maxTitle:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "point_image" :*/
fileprivate let str_hiddenBitTitle:String = "poimodel"

/*: "CharacterizeReusableView" :*/
fileprivate let str_intervalData:[Character] = ["T","a","l","k","i","n","g","M","o","m","e","n","t","P","h","o","t","o","s","C","e","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelMomentViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosView: UICollectionView {
class LabelMomentViewDelegate: UICollectionView {
	var nameTitle: String = "view"
	var frameFileArray: [AnyHashable] = []

    var colorImageView: UIImageView?

    //: var  cunrrenModel  = TalkingMomentModel()
    var cunrrenModel = CustomMeasurable()
    //: var isMyhost = false
    var isMyhost = false

    //: override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    override init(frame: CGRect, collectionViewLayout _: UICollectionViewLayout) {
        //: let flayout = UICollectionViewFlowLayout.init()
        let flayout = UICollectionViewFlowLayout()
        //: super.init(frame: frame, collectionViewLayout: flayout)
        super.init(frame: frame, collectionViewLayout: flayout)
        //: setupSubviews()
        setupEqual()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_maxTitle, encoding: .utf8)!)
    }

    //: func configModel(model: TalkingMomentModel) {
    func showModel(model: CustomMeasurable) {
        //: cunrrenModel = model
        cunrrenModel = model
        colorImageView = UIImageView(frame: self.bounds.offsetBy(dx: CGFloat(0), dy: CGFloat(Int(self.bounds.size.height))))
        if let colorImageView = colorImageView {
            self.colorImageView?.image = UIImage(named: (str_hiddenBitTitle.replacingOccurrences(of: "model", with: "n") + "t_image"))
            if (colorImageView.textInputContextIdentifier != nil) && (colorImageView.layer.anchorPoint.x != 0.5) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(colorImageView)
            }
        }

        //: self.reloadData()
        self.reloadData()
    
		if var managerValue = cunrrenModel.city { 
		if let colorImageView = colorImageView {
	
	            if (colorImageView.forLastBaselineLayout.center.y == 76.77) && (colorImageView.convert(CGPoint(), from: colorImageView.superview).x == 22.39) {
	                //: SWIFT_CUSTOM_DANGER_File_Call
	                let roomWith = EqualFromView(frame: colorImageView.bounds.standardized)
	            
	            roomWith.effectContent = { [self] columnName in
	            self.nameTitle = columnName
	            
	            var roomWith = managerValue
	            roomWith.append(roomWith[roomWith.index(after: roomWith.startIndex)])
	            if roomWith.hasPrefix(self.nameTitle) {
	                self.nameTitle = roomWith
	            }
	            
	            if let listen = self.nameTitle.first(where: { $0.isNewline }) {
	                self.nameTitle.insert(listen, at: self.nameTitle.startIndex)
	            }
	            return self.nameTitle
	            }
	            roomWith.textArray = { [self] phoneArray in
	            self.frameFileArray = phoneArray
	            
	            guard var value = self.frameFileArray as? [String] else {
	                return nil
	            }
	            return value
	            }
	                colorImageView.addSubview(roomWith)
	            }
	
		}
	
		}
	}
}

// MARK: - UICollectionViewDelegate

//: extension TalkingMomentPhotosView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension LabelMomentViewDelegate: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, insetForSectionAt _: Int) -> UIEdgeInsets {
        //: if cunrrenModel.pic.count == 4 {
        if cunrrenModel.pic.count == 4 {
            //: return UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 12)
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 12)
            //: } else if (cunrrenModel.pic.count == 1) {
        } else if cunrrenModel.pic.count == 1 {
            //: return UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: ScreenWidth-200-30)
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: a_blockValue - 200 - 30)

            //: } else {
        } else {
            //: return UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 12)
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 12)
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: if cunrrenModel.pic.count == 1 {
        if cunrrenModel.pic.count == 1 {
            //: return CGSize.init(width: 200, height: 200)
            return CGSize(width: 200, height: 200)
            //: } else {
        } else {
            //: var width = isMyhost ? (ScreenWidth-30-24-30)/3 : (ScreenWidth-30-24)/3
            var width = isMyhost ? (a_blockValue - 30 - 24 - 30) / 3 : (a_blockValue - 30 - 24) / 3
            //: return CGSize.init(width: width, height: width)
            return CGSize(width: width, height: width)
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, referenceSizeForHeaderInSection _: Int) -> CGSize {
        //: return CGSize.init(width: ScreenWidth, height: 1)
        return CGSize(width: a_blockValue, height: 1)
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, minimumLineSpacingForSectionAt _: Int) -> CGFloat {
        //: return 6
        return 6
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, minimumInteritemSpacingForSectionAt _: Int) -> CGFloat {
        //: return 6
        return 6
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return cunrrenModel.pic.count
        return cunrrenModel.pic.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: TalkingMomentPhotosCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TalkingMomentPhotosCell", for: indexPath) as! TalkingMomentPhotosCell
        let cell: CharacterizeReusableView = collectionView.dequeueReusableCell(withReuseIdentifier: (String(str_intervalData)), for: indexPath) as! CharacterizeReusableView
        //: let model: TalkingMomentPhotoModel = cunrrenModel.pic[indexPath.row]
        let model: GoldObjectMeasurable = cunrrenModel.pic[indexPath.row]
        //: cell.configUrl(url: model.thumbUrl ?? "")
        cell.fullMoonList(url: model.thumbUrl ?? "")
        //: if indexPath.item == 0 && cunrrenModel.pinStatus {
        if indexPath.item == 0 && cunrrenModel.pinStatus {
            //: cell.setTopImage()
            cell.exhibit()
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let vc =  TalkingMomentPhotosVC.init(momentModel: cunrrenModel, index: indexPath.row, type: .normal)
        let vc = CellViewController(momentModel: cunrrenModel, index: indexPath.row, type: .normal)
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.colorController()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - LayoutUI

//: extension TalkingMomentPhotosView {
extension LabelMomentViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func setupEqual() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: register(TalkingMomentPhotosCell.self, forCellWithReuseIdentifier: "TalkingMomentPhotosCell")
        register(CharacterizeReusableView.self, forCellWithReuseIdentifier: (String(str_intervalData)))
        //: dataSource = self
        dataSource = self
        //: delegate = self
        delegate = self
        //: isScrollEnabled = false
        isScrollEnabled = false
    }
}
