//
//  HHFactory.swift
//  ssrj_swift
//
//  Created by yfxiari on 2017/7/27.
//  Copyright © 2017年 yfxiari. All rights reserved.
//

import UIKit

extension UIButton {
    
    static func createButton(titleColor:UIColor, font:UIFont) -> UIButton {
        let button = UIButton()
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = font
        return button
    }
    static func createButton(title:String, titleColor:UIColor, font:UIFont) -> UIButton{
        let button = createButton(titleColor: titleColor, font: font)
        return button
    }
    static func createButton(imageName:String) -> UIButton{
        let button = UIButton()
        let image = UIImage.init(named: imageName)
        button.setImage(image, for: .normal)
        return button
    }
    static func createButton(backgroundImageName:String) -> UIButton{
        let button = UIButton()
        let image = UIImage.init(named: backgroundImageName)
        button.setBackgroundImage(image, for: .normal)
        return button
    }
    static func createButton(normalImageName:String, selectedImageName:String) -> UIButton {
        let button = UIButton()
        button.setImage(UIImage.init(named: normalImageName), for: .normal)
        button.setImage(UIImage.init(named: selectedImageName), for: .selected)
        return button
    }
    
    static func createButton(title:String, imageName:String) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setImage(UIImage.init(named: imageName), for: .normal)
        return button
    }
    
}
