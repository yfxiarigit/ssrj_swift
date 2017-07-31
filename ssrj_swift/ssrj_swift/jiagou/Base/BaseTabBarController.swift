//
//  BaseTabBarController.swift
//  ssrj_swift
//
//  Created by yfxiari on 2017/7/25.
//  Copyright © 2017年 yfxiari. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addChildViewController(title: "首页", viewController: HomeViewController(), image: "icon1", selectImage: "icon1_select")
        self.addChildViewController(title: "购物", viewController: ShopViewController(), image: "icon2", selectImage: "icon2_select")
        self.addChildViewController(title: "场景穿搭", viewController: SceneViewController(), image: "icon6", selectImage: "icon6_select")
        self.addChildViewController(title: "我的日记", viewController: MineViewController(), image: "icon5", selectImage: "icon5_select")
        
        let item = UITabBarItem.appearance()
        item.setTitleTextAttributes([NSForegroundColorAttributeName: AppTabBarTextColor], for: .normal)
        item.setTitleTextAttributes([NSForegroundColorAttributeName: AppTabBarTextSelectColor], for: .selected)
        
        self.setupTabBar()
    }
    func setupTabBar() {
        
        self.setValue(CustomTabBar(), forKey: "tabBar");
    }
    func addChildViewController(title:String, viewController:UIViewController, image:String, selectImage:String) {
        
        viewController.title = title
        viewController.tabBarItem.image = UIImage(named: image)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        viewController.tabBarItem.selectedImage = UIImage(named: selectImage)?.withRenderingMode(.alwaysOriginal)
        let nav = BaseNavigationController(rootViewController: viewController)
        self.addChildViewController(nav)
    }

}
