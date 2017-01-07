//
//  ViewController.swift
//  仿知乎tabBar动画
//
//  Created by lidongxi on 17/1/7.
//  Copyright © 2017年 lidongxi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setTabBarVisible(visible: true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        setTabBarVisible(visible: false, animated: true)
    }

    @IBAction func jumpSecondVc(_ sender: UIButton) {
        let secondVc = SecondViewController.init()
        //secondVc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(secondVc, animated: true)
    }

}



