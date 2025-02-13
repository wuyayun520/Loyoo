// __DEBUG__
// __CLOSE_PRINT__
//
//  File.swift
//  NetEaseLib
//
//  Created by Hemming on 2024/10/10.
//

//: import Foundation
import Foundation

//: extension Dictionary {
extension Dictionary {
    //: @inlinable public static func + (lhs: Dictionary, rhs: Dictionary) -> Dictionary {
    @inlinable public static func + (lhs: Dictionary, rhs: Dictionary) -> Dictionary {
        //: var dic = lhs
        var dic = lhs
        //: for (k,v) in rhs {
        for (k,v) in rhs {
            //: dic[k] = v
            dic[k] = v
        }
        //: return dic
        return dic
    }
    
    //: @inlinable public static func += (lhs: inout Dictionary, rhs: Dictionary) {
    @inlinable public static func += (lhs: inout Dictionary, rhs: Dictionary) {
        //: for (k,v) in rhs {
        for (k,v) in rhs {
            //: lhs[k] = v
            lhs[k] = v
        }
    }
}