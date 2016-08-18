//
//  ViewController.swift
//  05-PassingData
//
//  Created by 玉皇大亮 on 8/18/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        sendMsg = textView.text
    }
    
    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
}

