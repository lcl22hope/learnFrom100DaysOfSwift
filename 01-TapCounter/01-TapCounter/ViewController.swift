//
//  ViewController.swift
//  01-TapCounter
//
//  Created by 玉皇大亮 on 8/16/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // remove background semitransparent style and bottom line
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
    }

    // MARK: - Outlets
    @IBOutlet weak var countLabel: UILabel!
    var count = 0
    
    // MARK: - Interactions
    
    @IBAction func tapButton(sender: AnyObject) {
        increaseCount()
    }
    
    @IBAction func tapResetButton(sender: AnyObject) {
        count = 0
        countLabel.text = "0"
    }
    
    @IBAction func holdTapButton(sender: UILongPressGestureRecognizer) {
        increaseCount()
    }

    
    func increaseCount() {
        count += 1
        countLabel.text = String(count)
    }
}

