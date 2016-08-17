//
//  ViewController.swift
//  03-TipCalculator
//
//  Created by 玉皇大亮 on 8/17/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        subtotalTextField.becomeFirstResponder()
        createToolBar()

    }
    
    // MARK: - Properties
    @IBOutlet weak var subtotalTextField: UITextField!
    
    
    // MARK: - Functions
    func doneTapDismissKeyboard() {
        subtotalTextField.resignFirstResponder()
        
        if subtotalTextField.text?.characters.count == 0 {
            subtotalTextField.text = "$0.00"
        }
        else {
            
            subtotalTextField.text = "$\(String(format: "%.2f",Double(subtotalTextField.text!)!))"
        }
    }
    
    
    func createToolBar() {
        let toolBar = UIToolbar()
        // make toolBar visible
        toolBar.sizeToFit()
        // create done button
        let doneButton = UIBarButtonItem(
            title: "Done",
            style: .Done,
            target: self,
            action: #selector(ViewController.doneTapDismissKeyboard))
        
        // create flexible space item 
        let flexibleSpace = UIBarButtonItem(
            barButtonSystemItem: .FlexibleSpace,
            target: nil,
            action: nil)
        
        let items = [flexibleSpace, doneButton]
        
        toolBar.setItems(items, animated: true)
        
        subtotalTextField.inputAccessoryView = toolBar
    }

}

