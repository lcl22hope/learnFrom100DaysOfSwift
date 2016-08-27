//
//  ViewController.swift
//  21-BasicAnimation
//
//  Created by 玉皇大亮 on 8/27/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImage(tesla, imageName: "tesla", imageX: 0, imageY: 130, imageWidth: 230, imageHeight: 330)
    }

    
    // MARK: - Interactions
    @IBAction func tapShootButton(sender: UIButton) {
        let lightningBall = UIImageView()
        loadImage(lightningBall, imageName: "lightning ball", imageX: 200, imageY: 170, imageWidth: 100, imageHeight: 100)
     
        UIView.animateWithDuration(0.3, delay: 0, options: .CurveLinear, animations: { 
            lightningBall.frame = CGRect(x: self.view.frame.width, y: 170, width: 100, height: 100)
            self.tesla.image = UIImage(named: "tesla action")
            }) { (Bool) -> Void in
                self.tesla.image = UIImage(named: "tesla")
        }
    }


    // MARK: - Functions
    let tesla = UIImageView()
    
    func loadImage(imageView: UIImageView, imageName: String, imageX: Int, imageY: Int, imageWidth: Int , imageHeight: Int) {
        imageView.image = UIImage(named: imageName)
        imageView.frame = CGRect(x: imageX, y: imageY, width: imageWidth, height: imageHeight)
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        self.view.addSubview(imageView)
    }



}
