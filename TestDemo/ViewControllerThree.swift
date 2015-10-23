//
//  ViewControllerThree.swift
//  TestDemo
//
//  Created by 盛志雄 on 15/10/22.
//  Copyright © 2015年 盛志雄. All rights reserved.
//

import UIKit

class ViewControllerThree: UIViewController,UIViewControllerTransitioningDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.grayColor()
        self.title = "Three"
        self.transitioningDelegate = self
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Four", style: .Plain, target: self, action: "gotoNext")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
    func gotoNext(){
        let toVC = ViewControllerFour()
//        toVC.transitioningDelegate = self
        self.presentViewController(toVC, animated: true, completion: nil)
    }
}
