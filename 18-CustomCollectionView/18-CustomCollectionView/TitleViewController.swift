//
//  TitleViewController.swift
//  18-CustomCollectionView
//
//  Created by 玉皇大亮 on 8/25/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class TitleViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let indexPath = selectedIndex {
            let row = model.posts[indexPath.row]
            title = row["title"]
            photoImageView.image = UIImage(named: row["photoName"]!)
            likesLabel.text = "♥︎ \(row["likes"]!) likes"
            contentLabel.text = row["description"]
            tagsLabel.text = row["tags"]
        }
    }

    // MARK: - Outlets
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var tagsLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    // MARK: - Properties
    var selectedIndex : NSIndexPath?



}
