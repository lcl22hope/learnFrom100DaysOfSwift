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
    
    // MARK: - Interactions
    @IBAction func slideTipSliderChangeValue(sender: AnyObject) {
        updateUI()
    }
    
    
    // MARK: - Properties
    @IBOutlet weak var subtotalTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var subtotalLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    // MARK: - Functions
    func doneTapDismissKeyboard() {
        subtotalTextField.resignFirstResponder()
        
        if subtotalTextField.text?.characters.count == 0 {
            model.subtotal = 0
            updateUI()
        }
        else {
            model.subtotal = Double(subtotalTextField.text!)!
            updateUI()
        }
    }
    
    func updateUI() {
        model.tip = Int(tipSlider.value)
        subtotalTextField.text = "$\(model.subtotalAsCurrency)"
        tipPercentLabel.text = "Tip(\(model.tipPercentText))"
        tipLabel.text = "$\(model.tipAsCurrency)"
        subtotalLabel.text = "$\(model.totalAsCurrency)"
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

