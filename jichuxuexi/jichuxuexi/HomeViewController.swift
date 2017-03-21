//
//  HomeViewController.swift
//  jichuxuexi
//
//  Created by Mac on 2017/3/20.
//  Copyright © 2017年 wjhg. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDataSource {
    
    fileprivate let titleNameArr = ["基本","改变View","改变page"]
    var tableView = UITableView()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "首页"
        tableView.frame = view.bounds
        view.addSubview(tableView)
        tableView.dataSource = self
//        tableView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleNameArr.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.backgroundColor = UIColor.red
        cell.textLabel?.text = titleNameArr[indexPath.row]
//        cell.textLabel?.text = self.transformerNames[indexPath.row]
//        cell.accessoryType = indexPath.row == self.typeIndex ? .checkmark : .none
        return cell

    }
}
