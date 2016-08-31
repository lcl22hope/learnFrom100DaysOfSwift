//
//  CustomNavigationControllerDelegate.swift
//  26-CustomTransitionsImageZoom
//
//  Created by 玉皇大亮 on 8/31/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class CustomNavigationControllerDelegate: NSObject, UINavigationControllerDelegate {

    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        if fromVC.isKindOfClass(PhotosCollectionViewController) {
            return ShowTransition()
        }
        else if fromVC.isKindOfClass(PhotoDetailViewController) {
            return DismissTransition()
        }else{
            return nil
        }
    }
    
    
    func navigationController(navigationController: UINavigationController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?{
        
        return nil
    }
    
}
