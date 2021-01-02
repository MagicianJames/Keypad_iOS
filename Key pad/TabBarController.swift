//
//  TabBarController.swift
//  Key pad
//
//  Created by James S on 21/12/2563 BE.
//

import UIKit

class TabBarController: UITabBarController {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.viewControllers = []
    }

}
