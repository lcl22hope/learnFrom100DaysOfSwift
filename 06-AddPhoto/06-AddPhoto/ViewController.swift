//
//  ViewController.swift
//  06-AddPhoto
//
//  Created by 玉皇大亮 on 8/18/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Outlets
    @IBOutlet weak var imgView: UIImageView!

    
    @IBAction func tapCameraButton(sender: UIBarButtonItem) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    // MARK: - delegates
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imgView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}

