//
//  ViewController.swift
//  17-ChangeDateAndTime
//
//  Created by 玉皇大亮 on 8/25/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let date = NSDate()
        updateDateLabel(date:date, time: date)
    }


    // MARK: - Outlets
    @IBOutlet weak var dateLabel: UILabel!
    
    // MARK: - Interactions
    @IBAction func tapChangeDatebutton(sender: UIButton) {
        
    }
    
    @IBAction func unwindToMainMenu(sender: UIStoryboardSegue) {
        let setDateTimeVC = sender.sourceViewController as! SetDateTimeViewController
        
        //store date picker values in model
        model.date = setDateTimeVC.datePicker.date
        model.time = setDateTimeVC.timePicker.date
        
        updateDateLabel(date: model.date!, time: model.time!)
        
    }
    
    
    
    // MARK: - Functions
    func getCurrentDate(date: NSDate) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .LongStyle
        let dateAsString = dateFormatter.stringFromDate(date)
        return dateAsString
    }
    
    func getCurrentTime(time: NSDate) -> String {
        let dateFormater = NSDateFormatter()
        dateFormater.dateFormat = "h:mm a"
        let timeAsString = dateFormater.stringFromDate(time)
        return timeAsString
    }
    
    func updateDateLabel(date date: NSDate , time: NSDate) {
        dateLabel.text = "\(getCurrentDate(date)) at \(getCurrentTime(time))"

    }

}
