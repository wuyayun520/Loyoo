// __DEBUG__
// __CLOSE_PRINT__
//
//  UIViewExtension.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//
 
//: import Foundation
import Foundation

//: extension UIView {
extension UIView {
    //: func Corner(width: CGFloat, height: CGFloat, corners: UIRectCorner, cornerRadii: CGSize) {
    func barRadii(width: CGFloat, height: CGFloat, corners: UIRectCorner, cornerRadii: CGSize) {
        //: let maskBezier = UIBezierPath.init(roundedRect: CGRect.init(x: 0, y: 0, width: width, height: height), byRoundingCorners: corners, cornerRadii: cornerRadii)
        let maskBezier = UIBezierPath.init(roundedRect: CGRect.init(x: 0, y: 0, width: width, height: height), byRoundingCorners: corners, cornerRadii: cornerRadii)
        //: let maskLayer = CAShapeLayer.init()
        let maskLayer = CAShapeLayer.init()
        //: maskLayer.frame = CGRect.init(x: 0, y: 0, width: width, height: height)
        maskLayer.frame = CGRect.init(x: 0, y: 0, width: width, height: height)
        //: maskLayer.path = maskBezier.cgPath
        maskLayer.path = maskBezier.cgPath
        //: self.layer.mask = maskLayer
        self.layer.mask = maskLayer
    }
    
    //: func CornerShadow(width: CGFloat, height: CGFloat, corners: UIRectCorner, cornerRadii: CGSize)->CAShapeLayer {
    func onName(width: CGFloat, height: CGFloat, corners: UIRectCorner, cornerRadii: CGSize)->CAShapeLayer {
        //: let maskBezier = UIBezierPath.init(roundedRect: CGRect.init(x: 0, y: 0, width: width, height: height), byRoundingCorners: corners, cornerRadii: cornerRadii)
        let maskBezier = UIBezierPath.init(roundedRect: CGRect.init(x: 0, y: 0, width: width, height: height), byRoundingCorners: corners, cornerRadii: cornerRadii)
        //: let maskLayer = CAShapeLayer.init()
        let maskLayer = CAShapeLayer.init()
        //: maskLayer.frame = CGRect.init(x: 0, y: 0, width: width, height: height)
        maskLayer.frame = CGRect.init(x: 0, y: 0, width: width, height: height)
        //: maskLayer.path = maskBezier.cgPath
        maskLayer.path = maskBezier.cgPath
        
        //: maskLayer.shadowColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5).cgColor
        maskLayer.shadowColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5).cgColor
        //: maskLayer.fillColor = UIColor.white.cgColor
        maskLayer.fillColor = UIColor.white.cgColor
        //: maskLayer.shadowOffset = CGSize(width: 0, height: 1)
        maskLayer.shadowOffset = CGSize(width: 0, height: 1)
        //: maskLayer.shadowOpacity = 1
        maskLayer.shadowOpacity = 1
        //: maskLayer.shadowRadius = 4
        maskLayer.shadowRadius = 4
       
        //: return maskLayer
        return maskLayer
    }
}
//: extension Reactive where Base: UIView {
extension Reactive where Base: UIView {
    
    //: var hidden: Observable<Bool> {
    var hidden: Observable<Bool> {
        //: return self.methodInvoked(#selector(setter: self.base.isHidden))
        return self.methodInvoked(#selector(setter: self.base.isHidden))
            //: .map { event -> Bool in
            .map { event -> Bool in
                //: guard let isHidden = event.first as? Bool else {
                guard let isHidden = event.first as? Bool else {
                    //: fatalError()
                    fatalError()
                }
                //: return isHidden
                return isHidden
            }
            //: .startWith(self.base.isHidden)
            .startWith(self.base.isHidden)
    }
}