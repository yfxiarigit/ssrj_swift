//
//  HHExtention.swift
//  ssrj_swift
//
//  Created by yfxiari on 2017/7/27.
//  Copyright © 2017年 yfxiari. All rights reserved.
//

import UIKit

struct RuntimeKey {
    static let topNameKey = UnsafeRawPointer.init(bitPattern: "topNameKey".hashValue)
    static let rightNameKey = UnsafeRawPointer.init(bitPattern: "rightNameKey".hashValue)
    static let bottomNameKey = UnsafeRawPointer.init(bitPattern: "bottomNameKey".hashValue)
    static let leftNameKey = UnsafeRawPointer.init(bitPattern: "leftNameKey".hashValue)
    static let string = UnsafeRawPointer.init(bitPattern: "string".hashValue)
    /// ...其他Key声明
}

extension UIButton {
    
    var topEdge:CGFloat {
        set {
            objc_setAssociatedObject(self, RuntimeKey.topNameKey, NSNumber.init(value: Float(newValue)), .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        get {
            let top = objc_getAssociatedObject(self, RuntimeKey.topNameKey) as? NSNumber
            guard let numTop = top else {
                return CGFloat()
            }
            return CGFloat.init(numTop)
        }
    }
    var rightEdge:CGFloat {
        set {
            objc_setAssociatedObject(self, RuntimeKey.rightNameKey, NSNumber.init(value: Float(newValue)), .OBJC_ASSOCIATION_ASSIGN)
        }
        get {
            guard let right = objc_getAssociatedObject(self, RuntimeKey.rightNameKey) as? NSNumber else {
                return CGFloat()
            }
            return CGFloat.init(right)
        }
    }
    var bottomEdge:CGFloat {
        set {
            objc_setAssociatedObject(self, RuntimeKey.bottomNameKey, NSNumber.init(value: Float(newValue)), .OBJC_ASSOCIATION_ASSIGN)
        }
        get {
            guard let bottom = objc_getAssociatedObject(self, RuntimeKey.bottomNameKey) as? NSNumber else {
                return CGFloat()
            }
            return CGFloat.init(bottom)
        }
    }
    var leftEdge:CGFloat {
        set {
            objc_setAssociatedObject(self, RuntimeKey.leftNameKey, NSNumber.init(value: Float(newValue)), .OBJC_ASSOCIATION_ASSIGN)
        }
        get {
            guard let left = objc_getAssociatedObject(self, RuntimeKey.leftNameKey) as? NSNumber else {
                return CGFloat()
            }
            return CGFloat.init(left)
        }
    }
    var enlargedRect: CGRect {
        
        return CGRect(x: self.bounds.origin.x - leftEdge, y: self.bounds.origin.y - topEdge, width: self.bounds.size.width + leftEdge + rightEdge, height: self.bounds.size.height + topEdge + bottomEdge)
        
    }
    
    
    func setEnlargeEdege(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) {
        self.topEdge = top
        self.leftEdge = left
        self.bottomEdge = bottom
        self.rightEdge = right
        
    }
    
    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let rect = self.enlargedRect
        
        if rect.equalTo(self.bounds) {
            return super.hitTest(point, with: event)
        }
        return rect.contains(point) ? self : nil
    }
    
}
