//
//  ThumbnailCollectionViewCell.swift
//  28-AdvancedTableEmbeddedCollectionView
//
//  Created by 玉皇大亮 on 9/1/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ThumbnailCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        thumbnailImageView.layer.cornerRadius = 10
        thumbnailImageView.layer.masksToBounds = true
    }

}
