//
//  ViewController.swift
//  23-SpringAnimations
//
//  Created by 玉皇大亮 on 8/30/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layoutIfNeeded()
        animationSearchLogo()
    }

    // MARK: - Outlets
    @IBOutlet weak var searchLogo: UIImageView!
    @IBOutlet weak var bannerView: UIView!
    @IBOutlet weak var searchLogoCenterYConstraint: NSLayoutConstraint!
    @IBOutlet weak var bannerViewTopConstraint: NSLayoutConstraint!
    
    // MARK: - Interactions
    @IBAction func tapCloseBannerButton(sender: UIButton) {
        
    }
    

    // MARK: - Animations
    func animationSearchLogo()  {
        UIView.animateWithDuration(0.36, delay: 0.3, usingSpringWithDamping: 0.9, initialSpringVelocity: 30, options: .CurveEaseOut, animations: { 
            self.searchLogoCenterYConstraint.constant = -108
            self.view.layoutIfNeeded()
            }, completion: nil)
    }
}

