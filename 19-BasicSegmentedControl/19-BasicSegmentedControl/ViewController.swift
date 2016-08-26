//
//  ViewController.swift
//  19-BasicSegmentedControl
//
//  Created by 玉皇大亮 on 8/26/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        showSecondView()
        segmentControl.selectedSegmentIndex = 1
    }


    // MARK: - Outlets
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    // MARK: - Interactions
    @IBAction func tapSegmentControl(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: showFirstView()
        case 1: showSecondView()
        default: break
        }
    }
    
    
    // MARK: - Functions
    func showFirstView()  {
        firstView.hidden = false
        secondView.hidden = true
    }
    
    func showSecondView()  {
        firstView.hidden = true
        secondView.hidden = false
    }
    

}

