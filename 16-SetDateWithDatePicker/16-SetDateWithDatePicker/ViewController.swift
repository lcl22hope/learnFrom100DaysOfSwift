//
//  ViewController.swift
//  16-SetDateWithDatePicker
//
//  Created by 玉皇大亮 on 8/25/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Outlets
    @IBOutlet weak var datePicker: UIDatePicker!
    
    // MARK: - Interactions
    @IBAction func tapGetDateButton(sender: UIButton) {
        let date = datePicker.date
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .LongStyle
        let dateAsString = dateFormatter.stringFromDate(date)
        title = dateAsString
    }
    

}

