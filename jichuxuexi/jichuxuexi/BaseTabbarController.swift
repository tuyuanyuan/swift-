//
//  BaseViewController.swift
//  jichuxuexi
//
//  Created by Mac on 2017/3/20.
//  Copyright © 2017年 wjhg. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let view = HomeViewController()
//        view.tabBarItem = UITabBarItem(title:"home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        view.tabBarItem.title = "home"
        view.tabBarItem.image = UIImage(named: "home")
        view.tabBarItem.selectedImage = UIImage(named: "home_1")
        let v1 = BaseNavigationController(rootViewController: view)
        let v2 = BaseNavigationController(rootViewController: UIViewController())
        let v3 = BaseNavigationController(rootViewController: UIViewController())
        let v4 = BaseNavigationController(rootViewController: UIViewController())
        let v5 = BaseNavigationController(rootViewController: UIViewController())

        //        v1.tabBarItem = UITabBarItem(title:"home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        self.viewControllers = [v1,v2,v3,v4,v5]
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
