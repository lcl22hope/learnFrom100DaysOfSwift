//
//  TimeLineTableViewCell.swift
//  15-SaveDateLocationPhoto
//
//  Created by 玉皇大亮 on 8/24/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class TimeLineTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        timeLineImageView.layer.cornerRadius = 8
        timeLineImageView.layer.masksToBounds = true
    }

    // MARK: - Outlets
    @IBOutlet weak var timeLineImageView: UIImageView!
    @IBOutlet weak var timeLineDateLabel: UILabel!
    @IBOutlet weak var timeLineEntryLabel: UILabel!
    @IBOutlet weak var timeLineLocationLabel: UILabel!
    

}
