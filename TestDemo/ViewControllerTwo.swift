//
//  ViewControllerTwo.swift
//  SwiftDemo
//
//  Created by 盛志雄 on 15/10/22.
//  Copyright © 2015年 盛志雄. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    let titleImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blueColor()
        self.title = "Two"
        self.navigationController?.delegate = nil
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Three", style: .Plain, target: self, action: "gotoNext")
        
        self.titleImageView.frame = CGRectMake(0.0, 0.0, 60.0, 60.0)
        self.titleImageView.top = 64.0
        self.titleImageView.right = 160 + 30
        self.view.addSubview(self.titleImageView)
        
    }
    
    func gotoNext(){
        self.navigationController?.pushViewController(ViewControllerThree(), animated: true)
    }
}
