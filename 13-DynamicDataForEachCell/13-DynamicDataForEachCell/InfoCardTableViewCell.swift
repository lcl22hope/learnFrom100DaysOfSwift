//
//  InfoCardTableViewCell.swift
//  13-DynamicDataForEachCell
//
//  Created by 玉皇大亮 on 8/23/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class InfoCardTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        infoCardImage.layer.cornerRadius = infoCardImage.layer.frame.size.width / 2
        infoCardImage.layer.masksToBounds = true
    }

    @IBOutlet weak var infoCardImage: UIImageView!
    @IBOutlet weak var infoCardName: UILabel!
    @IBOutlet weak var infoCardNumber: UILabel!
    @IBOutlet weak var infoCardEmail: UILabel!
    @IBOutlet weak var infoCardNotes: UILabel!

}
