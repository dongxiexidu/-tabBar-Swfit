//
//  UIViewController+Extension.swift
//  仿知乎tabBar动画
//
//  Created by lidongxi on 17/1/7.
//  Copyright © 2017年 lidongxi. All rights reserved.
//

import UIKit

extension UIViewController{
    
    func setTabBarVisible(visible: Bool, animated: Bool) {
        
        //* This cannot be called before viewDidLayoutSubviews(), because the frame is not set before this time
        
        // bail if the current state matches the desired state
        if tabBarIsVisible == visible { return }
        
        // get a frame calculation ready
        let frame = tabBarController?.tabBar.frame
        let height = frame?.size.height
        let offsetY = (visible ? -height! : height)
        
        // zero duration means no animation
        let duration: TimeInterval = (animated ? 0.3 : 0.0)
        
        //  animate the tabBar
        if let rect = frame {
            UIView.animate(withDuration: duration) {
                self.tabBarController?.tabBar.frame = rect.offsetBy(dx: 0, dy: offsetY!)
                return
            }
        }
    }
    
    var tabBarIsVisible: Bool {
        return (tabBarController?.tabBar.frame.minY)! < view.frame.maxY
    }
}
