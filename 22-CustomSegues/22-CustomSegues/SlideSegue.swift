//
//  slideSegue.swift
//  22-CustomSegues
//
//  Created by 玉皇大亮 on 8/27/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class SlideUpSegue: UIStoryboardSegue {
    
    override func perform() {
        let sourceView = sourceViewController.view
        let destinationView = destinationViewController.view
        let screen = UIScreen.mainScreen().bounds
        
        
        (UIApplication.sharedApplication().keyWindow)?.insertSubview(destinationView, aboveSubview: sourceView)
        
        destinationView.frame = CGRectOffset(destinationView.frame, 0, screen.height)
        
        UIView.animateWithDuration(0.3, animations: { 
            destinationView.frame = CGRectOffset(destinationView.frame, 0, -screen.height)
            sourceView.frame = CGRectOffset(sourceView.frame, 0, -screen.height)
            }) { (Bool) in
                self.sourceViewController.presentViewController(self.destinationViewController, animated: false, completion: nil)
        }
    }
}


class SlideDownSegue: UIStoryboardSegue {
    
    override func perform() {
        let sourceView = sourceViewController.view
        let destinationView = destinationViewController.view
        let screen = UIScreen.mainScreen().bounds
        
        
        (UIApplication.sharedApplication().keyWindow)?.insertSubview(destinationView, aboveSubview: sourceView)
        
        
        UIView.animateWithDuration(0.3, animations: {
            destinationView.frame = CGRectOffset(destinationView.frame, 0, screen.height)
            sourceView.frame = CGRectOffset(sourceView.frame, 0, screen.height)
        }) { (Bool) in
            self.sourceViewController.dismissViewControllerAnimated(false, completion: nil)
        }
    }
}

