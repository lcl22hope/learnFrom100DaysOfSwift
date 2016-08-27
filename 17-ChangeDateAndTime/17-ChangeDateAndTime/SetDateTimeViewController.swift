//
//  SetDateTimeViewController.swift
//  17-ChangeDateAndTime
//
//  Created by 玉皇大亮 on 8/25/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class SetDateTimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        dateLabel.text = "Today is : \(getCurrentDate())"
    
    }


    // MARK - Outlets
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    // MARK: - Interactions
    @IBAction func tapCancelButton(sender: UIBarButtonItem) {
        dismissView()
    }
    
    @IBAction func tapDoneButton(sender: UIBarButtonItem) {
        dismissView()
    }
    

    // MARK: - Functions
    func dismissView() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func getCurrentDate() -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .LongStyle
        let currentDateAsString = dateFormatter.stringFromDate(NSDate())
        return currentDateAsString    }
}
