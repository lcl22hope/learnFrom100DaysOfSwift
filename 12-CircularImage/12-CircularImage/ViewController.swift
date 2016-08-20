//
//  ViewController.swift
//  12-CircularImage
//
//  Created by 玉皇大亮 on 8/20/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        profileImg.layer.cornerRadius = profileImg.layer.frame.size.width/2.0
        profileImg.layer.masksToBounds = true
    }

    @IBOutlet weak var profileImg: UIImageView!


}

