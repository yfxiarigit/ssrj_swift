//
//  CustomTabBar.swift
//  ssrj_swift
//
//  Created by yfxiari on 2017/7/26.
//  Copyright © 2017年 yfxiari. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBar {

    
    let plusButton = UIButton()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var index = CGFloat(0)
        let width = self.width
        let height = self.height
        
        let tabBarButtonW = width / 5
        let tabBarButtonH = height
        let tabBarButtonY = CGFloat(0)
        
        for tabBarButton in self.subviews {
            if tabBarButton.isKind(of: NSClassFromString("UITabBarButton")!) {
               var tabBarButtonX = index * tabBarButtonW
                if index >= 2 {
                    tabBarButtonX+=tabBarButtonW
                }
                tabBarButton.frame = CGRect(x: tabBarButtonX, y: tabBarButtonY, width: tabBarButtonW, height: tabBarButtonH)
                index+=1
            }
        }
        
        self.plusButton.center = CGPoint(x: width * 0.5, y: height * 0.5)
        self.plusButton.bounds = CGRect(x: 0, y: 0, width: tabBarButtonW, height: tabBarButtonH)
        self.plusButton.setImage(UIImage.init(named: "home_add"), for: .normal)
        self.addSubview(plusButton)
        self.plusButton.addTarget(self, action: #selector(clickPlusButton), for: .touchUpInside)
        
    }
    func clickPlusButton() {
        
    }

}
