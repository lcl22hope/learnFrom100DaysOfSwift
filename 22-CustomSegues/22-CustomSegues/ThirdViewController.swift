//
//  ThirdViewController.swift
//  22-CustomSegues
//
//  Created by 玉皇大亮 on 8/27/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func swipeDownGesture(sender: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("unwindToSecond", sender: self)
    }

}
