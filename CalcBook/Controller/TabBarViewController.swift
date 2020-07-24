//
//  TabBarViewController.swift
//  CalcBook
//
//  Created by Nikolay Tkachenko on 24.07.2020.
//  Copyright © 2020 Nikolay Tkachenko. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let calcVC = CalcViewController()
        let storyVC = StoryViewController()

        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [calcVC, storyVC]
        tabBarController.selectedIndex = 0
        //tabBarController.tabBar.barTintColor = UIColor.black // your color
        UITabBar.appearance().barTintColor = UIColor.black // set black color
        
    }
    



}
