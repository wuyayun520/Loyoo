
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modeValue:[UInt8] = [0x69,0x6e,0x69,0x74,0x28,0x63,0x6f,0x64,0x65,0x72,0x3a,0x29,0x20,0x68,0x61,0x73,0x20,0x6e,0x6f,0x74,0x20,0x62,0x65,0x65,0x6e,0x20,0x69,0x6d,0x70,0x6c,0x65,0x6d,0x65,0x6e,0x74,0x65,0x64]

/*: "mount_img" :*/
fileprivate let str_modelData:String = "contentount"
fileprivate let str_addContent:String = "_imgcoin table image layer"

/*: "UITableViewCellContentView" :*/
fileprivate let str_feedbackValue:String = "user add if to pageUITa"
fileprivate let str_byData:String = "gift cover tapwCellC"
fileprivate let str_fieldValue:[Character] = ["t","V","i","e","w"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MeasurementThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/8.
//

//: import UIKit
import UIKit

//: typealias EndPopBlock = () -> Void
typealias EndPopBlock = () -> Void

//: class MeasurementThen: UIView {
class MeasurementThen: UIView {
	var coverEnable: Bool = true
	var contentMagnitude: Int = 53
	var labelYearDoing: Bool = true
	var bubbleSubCount: Int = 46

    var loadImageView: UIImageView?

    //: var endPopBlock: EndPopBlock!
    var endPopBlock: EndPopBlock!

    //: var subView: UIView?
    var subView: UIView?

    //: var isRemoveTapGes: Bool = false {
    var isRemoveTapGes: Bool = false {
        //: didSet {
        didSet {
            //: guard isRemoveTapGes == true else {return}
            guard isRemoveTapGes == true else { return }
            //: guard self.gestureRecognizers?.count ?? 0 > 0 else { return }
            guard self.gestureRecognizers?.count ?? 0 > 0 else { return }
            //: self.removeGestureRecognizer((self.gestureRecognizers?.first)!)
            self.removeGestureRecognizer((self.gestureRecognizers?.first)!)
        }
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6000)
        self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6000)

        //: let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissView))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(makeBy))
        //: tapGesture.delegate = self
        tapGesture.delegate = self
        //: self.addGestureRecognizer(tapGesture)
        self.addGestureRecognizer(tapGesture)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modeValue, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: func initWithView(view: UIView) {
    func anInit(view: UIView) {
        //: subView = view
        subView = view
        //: self.addSubview(subView ?? UIView.init())
        self.addSubview(subView ?? UIView())
    
	if let subView = subView {

            if (subView.convert(CGRect.zero, from: subView.superview).size.height == 20.74) && (!subView.autoresizesSubviews) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let subLet = PackageView(frame: subView.frame.offsetBy(dx: CGFloat(0), dy: CGFloat(81)))
            subLet.policyJoinClose = self.isRemoveTapGes


            
            subLet.tableOpen = { [self] headOpen in
            self.labelYearDoing = headOpen
            
            var subLet = self.isRemoveTapGes
                subLet = false
                subLet = !subLet
            if subLet != self.labelYearDoing {
                self.labelYearDoing = subLet
            }
            
            return self.labelYearDoing
            }
            subLet.needQuantity = { [self] enableLineQuantity in
            self.bubbleSubCount = enableLineQuantity
            
            return self.bubbleSubCount
            }
                subView.addSubview(subLet)
            }

	}

	}

    //: @objc func dismissView() {
    @objc func makeBy() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 0
            self.alpha = 0
            //: } completion: { _ in
        } completion: { _ in
            //: if self.endPopBlock != nil {
            if self.endPopBlock != nil {
                //: self.endPopBlock()
                self.endPopBlock()
            }
            //: self.removeFromSuperview()
            self.removeFromSuperview()
            //: self.subView = nil
            self.subView = nil
        }
    
            if (self.isExclusiveTouch) && (self.backgroundColor != nil && self.backgroundColor!.cgColor == UIColor.cyan.cgColor) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let mentalImage = PackageView()
            mentalImage.policyJoinClose = self.isRemoveTapGes


            
            mentalImage.tableOpen = { [self] headOpen in
            self.coverEnable = headOpen
            
            var mentalImage = self.isRemoveTapGes
                mentalImage = true
                mentalImage = !mentalImage
            if mentalImage != self.coverEnable {
                self.coverEnable = mentalImage
            }
            
            return self.coverEnable
            }
            mentalImage.needQuantity = { [self] enableLineQuantity in
            self.contentMagnitude = enableLineQuantity
            
            return self.contentMagnitude
            }
                self.addSubview(mentalImage)
            }

	}

    //: func showView() {
    func viewWith() {
        //: self.currentViewController()?.view.endEditing(true)
        self.colorController()?.view.endEditing(true)
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.alpha = 1.0
            self.alpha = 1.0
            //: }, completion: nil)
        }, completion: nil)
    }

    //: func showInView(view: UIView) {
    func targetFailure(view: UIView) {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: a_blockValue, height: a_formalValue)
        //: self.alpha = 0
        self.alpha = 0
        loadImageView = UIImageView(frame: self.frame.standardized)
        if let loadImageView = loadImageView {
            self.loadImageView?.image = UIImage(named: (str_modelData.replacingOccurrences(of: "content", with: "m") + String(str_addContent.prefix(4))))
            if (loadImageView.layer.contentsRect.origin.y != 0) && (loadImageView.layoutMargins.right == 18.86) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(loadImageView)
            }
        }

        //: view.addSubview(self)

        var nameView: UIView = self
        if let imageView = self.loadImageView, (nameView.convert(CGPoint.zero, from: nameView.superview).x == 40.07) && (nameView.superview != nil && nameView.superview!.isHidden) {
            //: SWIFT_CUSTOM_DANGER
            nameView = imageView
        }
        view.addSubview(nameView)
        //: view.bringSubviewToFront(self)
        view.bringSubviewToFront(self)
        //: showView()
        viewWith()
    }
}

//: extension MeasurementThen: UIGestureRecognizerDelegate {
extension MeasurementThen: UIGestureRecognizerDelegate {
    // MARK: - tapGesture delegate

    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
    func gestureRecognizer(_: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        //: let classStr = NSStringFromClass((touch.view?.classForCoder)!)
        let classStr = NSStringFromClass((touch.view?.classForCoder)!)
        //: if classStr == "UITableViewCellContentView" {
        if classStr == (String(str_feedbackValue.suffix(4)) + "bleVie" + String(str_byData.suffix(6)) + "onten" + String(str_fieldValue)) {
            //: return false
            return false
            //: }else {
        } else {
            //: return true
            return true
        }
    }
}
