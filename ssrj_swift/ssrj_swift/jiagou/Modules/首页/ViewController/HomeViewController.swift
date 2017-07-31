//
//  HomeViewController.swift
//  ssrj_swift
//
//  Created by yfxiari on 2017/7/25.
//  Copyright © 2017年 yfxiari. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
    }
    
}

//MARK:导航条设置
extension HomeViewController {
    func setupNavBar() {
        let search = UIButton.createButton(backgroundImageName: "suozhou_icon")
        search.frame = CGRect.init(x: 0, y: 0, width: 22, height: 22)
        let rightOneBarButtonItem = UIBarButtonItem.init(customView: search)
        
        let gouwudai = UIButton.createButton(backgroundImageName: "gouwudai_icon")
        gouwudai.frame = CGRect.init(x: 0, y: 0, width: 22, height: 22)
        let rightTwoBarButtonItem = UIBarButtonItem.init(customView: gouwudai)
        
        let spaceBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        spaceBarButtonItem.width = 10
        
        self.navigationItem.rightBarButtonItems = [rightTwoBarButtonItem, spaceBarButtonItem,rightOneBarButtonItem]
        
        search.addTarget(self, action: #selector(gotoSearchVc), for: .touchUpInside)
        search.addTarget(self, action: #selector(gotoShopCarVc), for: .touchUpInside)
        
    }
    func gotoShopCarVc() {
        
    }
    func gotoSearchVc() {
        
    }
}
