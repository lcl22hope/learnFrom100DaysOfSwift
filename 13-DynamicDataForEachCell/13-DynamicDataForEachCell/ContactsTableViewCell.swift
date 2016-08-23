//
//  ContactsTableViewCell.swift
//  13-DynamicDataForEachCell
//
//  Created by 玉皇大亮 on 8/23/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        avatar.layer.cornerRadius = avatar.layer.frame.size.width / 2
        avatar.layer.masksToBounds = true
    }

}
