//
//  Transitions.swift
//  26-CustomTransitionsImageZoom
//
//  Created by 玉皇大亮 on 8/31/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

protocol ShowTransitionController {
    func passImageToShowTranstion(transition: ShowTransition) -> UIImageView?
}

protocol DismissTransitionController {
    func passImageToDismissTransition(transition: DismissTransition) -> UIImageView?
}

var transitionOriginImageViewFrame: CGRect?

class ShowTransition: NSObject, UIViewControllerAnimatedTransitioning {
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView()!
        let fromVC = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        let toVC = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        
        let fromImg = (fromVC as! ShowTransitionController).passImageToShowTranstion(self)!
        let toImg = (toVC as! ShowTransitionController).passImageToShowTranstion(self)!
        let transitionImg = UIImageView(image: fromImg.image)
        
        containerView.addSubview(fromVC.view)
        containerView.addSubview(toVC.view)
        containerView.addSubview(transitionImg)
        
        toVC.view.alpha = 0
        toVC.view.layoutIfNeeded() // why?
 
        toImg.hidden = true
        transitionImg.contentMode = .ScaleAspectFit
        transitionImg.frame = containerView.convertRect(fromImg.frame, fromView: fromImg.superview)
        transitionOriginImageViewFrame = transitionImg.frame
        
        
        UIView.animateWithDuration(transitionDuration(transitionContext), delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 10, options: [], animations: { 
            toVC.view.alpha = 1
            transitionImg.frame = containerView.convertRect(toImg.frame, toView: toImg.superview)
            }, completion: { finished in
                toImg.hidden = false
                transitionImg.removeFromSuperview()
                transitionContext.completeTransition(true)
        })
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.35
    }
}


class DismissTransition: NSObject, UIViewControllerAnimatedTransitioning {
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView()!
        let fromVC = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        let toVC = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        
        let fromImg = (fromVC as! DismissTransitionController).passImageToDismissTransition(self)!
        let toImg = (toVC as! DismissTransitionController).passImageToDismissTransition(self)!
        let transitionImg = UIImageView(image: fromImg.image)
        
        containerView.addSubview(fromVC.view)
        containerView.addSubview(toVC.view)
        containerView.addSubview(transitionImg)
        
        
        toVC.view.alpha = 0
        toVC.view.layoutIfNeeded()

        transitionImg.frame = containerView.convertRect(fromImg.frame, fromView: fromImg.superview)
        toImg.hidden = true
        
        
        UIView.animateWithDuration(transitionDuration(transitionContext), delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 10, options: [], animations: {
            
            toVC.view.alpha = 1
            transitionImg.frame = transitionOriginImageViewFrame!
            
            }, completion: { finished in
                toImg.hidden = false
                transitionImg.removeFromSuperview()
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled())
        })
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.35
    }
}