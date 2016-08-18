//
//  ViewController.swift
//  04-DateTimeRefresh
//
//  Created by 玉皇大亮 on 8/18/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshDate()
    }

    // MARK: - Outlets
    @IBOutlet weak var dateLabel: UILabel!
    
    
    // MARK: - Interactions
    @IBAction func refreshButtonTap(sender: UIButton) {
        refreshDate()
    }
    
    // MARK: - Functions
    func refreshDate() {
        dateLabel.text = NSDateFormatter.localizedStringFromDate(
            NSDate(),
            dateStyle: NSDateFormatterStyle.MediumStyle,
            timeStyle: NSDateFormatterStyle.MediumStyle)
    }
}

