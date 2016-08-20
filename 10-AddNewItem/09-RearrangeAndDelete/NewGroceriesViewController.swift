//
//  NewGroceriesViewController.swift
//  10-AddNewItem
//
//  Created by 玉皇大亮 on 8/19/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class NewGroceriesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
        model.newStr = ""
    }
    @IBOutlet weak var textView: UITextView!

    @IBAction func done(sender: UIBarButtonItem) {
        model.newStr = textView.text
        navigationController?.popViewControllerAnimated(true)
    }

}
