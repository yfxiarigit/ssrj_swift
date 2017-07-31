//
//  BaseNavigationController.swift
//  ssrj_swift
//
//  Created by yfxiari on 2017/7/26.
//  Copyright © 2017年 yfxiari. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bar = UINavigationBar.appearance()
        bar.tintColor = AppMainTextColor
        bar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        bar.barTintColor = AppMainColor
        
    }
    func leftBarBtnClick() {
        
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count >= 1 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
}
