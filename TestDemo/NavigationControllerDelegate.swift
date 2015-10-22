//
//  NavigationControllerDelegate.swift
//  SwiftDemo
//
//  Created by 盛志雄 on 15/10/22.
//  Copyright © 2015年 盛志雄. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject,UINavigationControllerDelegate {
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return UGCTransition()
    }
}
