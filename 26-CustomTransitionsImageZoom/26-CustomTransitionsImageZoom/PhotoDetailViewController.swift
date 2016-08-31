//
//  PhotoDetailViewController.swift
//  26-CustomTransitionsImageZoom
//
//  Created by 玉皇大亮 on 8/31/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController, ShowTransitionController, DismissTransitionController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let indexPath = selectedIndexPath {
            let row = model.portfolio[indexPath.row]
            photoDetailImage.image = UIImage(named: row["image"]!)
            title = row["name"]
        }
    
    }

    @IBOutlet weak var photoDetailImage: UIImageView!
    
    func passImageToShowTranstion(transition: ShowTransition) -> UIImageView? {
        return photoDetailImage
    }
    
    func passImageToDismissTransition(transition: DismissTransition) -> UIImageView? {
        return photoDetailImage
    }

}
