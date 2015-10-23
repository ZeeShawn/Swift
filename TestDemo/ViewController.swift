//
//  ViewController.swift
//  TestDemo
//
//  Created by 盛志雄 on 15/10/22.
//  Copyright © 2015年 盛志雄. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let tableView = UITableView(frame: CGRectZero, style: .Plain)
    let viewControllers:[(String,UIViewController.Type)] = [
                            ("1.转场动画",ViewControllerOne.self),
                            ("2.",ViewControllerTwo.self),
                          ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.frame = UIScreen.mainScreen().bounds
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.view.addSubview(self.tableView)
        
        self.title = "Core Animation"
    }
    
    //MARK:TableView
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewControllers.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        if cell == nil{
            cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        }
        cell?.selectionStyle = .None
        let (title,_) = self.viewControllers[indexPath.row]
        cell?.textLabel?.text = title
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let (_,vcType) = self.viewControllers[indexPath.row]
        let vc = vcType.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

