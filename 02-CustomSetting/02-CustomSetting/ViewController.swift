//
//  ViewController.swift
//  02-CustomSetting
//
//  Created by 玉皇大亮 on 8/16/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(detectIfNightModeChange), name: NSUserDefaultsDidChangeNotification, object: nil)
        print("night mode is \(userDefaults.boolForKey("night_mode"))")
    }

    // MARK: - Properties
    @IBOutlet weak var textView: UITextView!
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    
    // MARK: - Functions
    func detectIfNightModeChange(){
        let nightMode = userDefaults.boolForKey("night_mode")
        
        if nightMode == true {
            view.backgroundColor = UIColor.blackColor()
            textView.keyboardAppearance = .Dark
            textView.textColor = UIColor.whiteColor()
            UIApplication.sharedApplication().statusBarStyle = .LightContent
            
        }
        else {
            view.backgroundColor = UIColor.whiteColor()
            textView.keyboardAppearance = .Default
            textView.textColor = UIColor.darkTextColor()
            UIApplication.sharedApplication().statusBarStyle = .Default
            
        }
    }

}

