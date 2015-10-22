//
//  ViewControllerOne.swift
//  SwiftDemo
//
//  Created by 盛志雄 on 15/10/22.
//  Copyright © 2015年 盛志雄. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController, UINavigationControllerDelegate {
    let avatar = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.greenColor()
        self.title = "One"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Two", style: .Plain, target: self, action: "gotoNext")
        
        self.avatar.image = UIImage(named: "avatar.jpeg")
        self.avatar.frame = CGRectMake(0.0, 0.0, 60.0, 60.0)
        self.avatar.center = CGPointMake(160.0, 200.0)
        self.view.addSubview(self.avatar)
        
    }
    
    func gotoNext(){
        self.navigationController?.delegate = self
        self.navigationController?.pushViewController(ViewControllerTwo(), animated: true)
    }
    
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        if operation == UINavigationControllerOperation.Push{
            return UGCTransition()
        }else{
            return nil
        }
    }
}
