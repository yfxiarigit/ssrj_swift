//
//  BaseViewController.swift
//  ssrj_swift
//
//  Created by yfxiari on 2017/7/25.
//  Copyright © 2017年 yfxiari. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    }
    
    
    

}

//MARK:导航条设置
extension BaseViewController {
    
    //添加返回按钮
    func setBackNav() {
        let leftBtn = UIButton.init(type: .custom)
        leftBtn.frame = CGRect(x: 0, y: 0, width: 10, height: 18)
        leftBtn.setBackgroundImage(UIImage.init(named: "backicon"), for: .normal)
        leftBtn.addTarget(self, action: #selector(backBarBtnClick), for: .touchUpInside)
        
        let leftbarBtn = UIBarButtonItem.init(customView: leftBtn)
        let spaceBarBtn = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
        spaceBarBtn.width = -0
        self.navigationItem.leftBarButtonItems = [spaceBarBtn,leftbarBtn]
    }
    
    func backBarBtnClick() {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    //设置左边item -> 返回按钮
    func setLeftBarBtnItem(image:String) -> UIButton {
        assert(image != "", "图片不能为空")
        let leftBtn = UIButton.init(type: .custom)
        leftBtn.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        leftBtn.setImage(UIImage.init(named: image), for: .normal)
        
        let leftbarBtn = UIBarButtonItem.init(customView: leftBtn)
        let spaceBarBtn = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
        
        spaceBarBtn.width = -15
        self.navigationItem.leftBarButtonItems = [spaceBarBtn,leftbarBtn]
        return leftBtn
    }
    
    //设置右边item -> 返回按钮
    func setRightBarBtnItem(image:String) -> UIButton {
        assert(image != "", "图片不能为空")
        let rightBtn = UIButton.init(type: .custom)
        rightBtn.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        rightBtn.setImage(UIImage.init(named: image), for: .normal)
        
        let rightBarBtn = UIBarButtonItem.init(customView: rightBtn)
        let spaceBarBtn = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
        
        spaceBarBtn.width = 0
        self.navigationItem.rightBarButtonItems = [spaceBarBtn, rightBarBtn]
        return rightBtn
    }
    
    
}
