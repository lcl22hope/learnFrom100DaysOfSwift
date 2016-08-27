//
//  SecondViewController.swift
//  22-CustomSegues
//
//  Created by 玉皇大亮 on 8/27/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func swipeUpGesture(sender: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("segueToThird", sender: self)
    }

    @IBAction func swipeDownGesture(sender: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("unwindToFirst", sender: self)

    }
    
    @IBAction func unwindToSecond(segue: UIStoryboardSegue) {
        
    }
}
