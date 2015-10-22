//
//  UGCTransition.swift
//  SwiftDemo
//
//  Created by 盛志雄 on 15/10/22.
//  Copyright © 2015年 盛志雄. All rights reserved.
//

import UIKit

class UGCTransition: NSObject,UIViewControllerAnimatedTransitioning {
    weak var transitionContext: UIViewControllerContextTransitioning?
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 1.5
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        self.transitionContext = transitionContext
        
        
        let fromVC = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey) as! ViewControllerOne
        let toVC = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey) as! ViewControllerTwo
        let container = transitionContext.containerView()
        
        fromVC.avatar.hidden = true
        
        let avatarCopy = fromVC.avatar.snapshotViewAfterScreenUpdates(false)
        avatarCopy.frame = (container?.convertRect(fromVC.avatar.frame, fromView: fromVC.view))!
        
        
        toVC.view.frame = transitionContext.finalFrameForViewController(toVC)
        toVC.view.alpha = 1
        
        container?.addSubview(toVC.view)
        container?.addSubview(avatarCopy)
        
        UIView.animateWithDuration(transitionDuration(transitionContext), delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                avatarCopy.frame = toVC.titleImageView.frame
                toVC.view.alpha = 1
            }, completion: {Bool -> Void in
                avatarCopy.removeFromSuperview()
                fromVC.avatar.hidden = false
                toVC.titleImageView.image = fromVC.avatar.image
                transitionContext.completeTransition(true)
            })
    }
}
