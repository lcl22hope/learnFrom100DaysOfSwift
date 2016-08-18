//
//  SecondViewController.swift
//  05-PassingData
//
//  Created by 玉皇大亮 on 8/18/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

var sendMsg: String?

class SecondViewController: UIViewController {
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        sendMsgLabel.text = sendMsg
    }
    
    // MARK: - Outlets
    @IBOutlet weak var sendMsgLabel: UILabel!
}