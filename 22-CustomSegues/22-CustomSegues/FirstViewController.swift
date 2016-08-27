//
//  FirstViewController.swift
//  22-CustomSegues
//
//  Created by 玉皇大亮 on 8/27/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        UIApplication.sharedApplication().statusBarStyle = .Default
    }
    
    override func viewDidDisappear(animated: Bool) {
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }

    // MARK: - Interactions
    @IBAction func swipeUpGesture(sender: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("segueToSecond", sender: self)
    }
    
    @IBAction func unwindToFirstView(segue: UIStoryboardSegue) {
        
    }

}
