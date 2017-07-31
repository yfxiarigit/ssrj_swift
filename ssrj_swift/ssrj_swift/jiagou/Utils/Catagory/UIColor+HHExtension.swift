//
//  UIColorExtension.swift
//  ssrj_swift
//
//  Created by yfxiari on 2017/7/25.
//  Copyright © 2017年 yfxiari. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func colorWithHex(hexColor:Int64)->UIColor{
        
        let red = ((CGFloat)((hexColor & 0xFF0000) >> 16))/255.0;
        let green = ((CGFloat)((hexColor & 0xFF00) >> 8))/255.0;
        let blue = ((CGFloat)(hexColor & 0xFF))/255.0;
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
