//
//  InfoCardTableViewController.swift
//  13-DynamicDataForEachCell
//
//  Created by 玉皇大亮 on 8/23/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class InfoCardTableViewController: UITableViewController {
    
    var selectedIndexPath = NSIndexPath()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("InfoCell", forIndexPath: indexPath) as! InfoCardTableViewCell
        
        switch selectedIndexPath.section {
        case 0:
            cell.infoCardImage.image = UIImage(named: model.recent[selectedIndexPath.row]["infoImage"]!)
            cell.infoCardName.text = model.recent[selectedIndexPath.row]["name"]
            cell.infoCardNumber.text = model.recent[selectedIndexPath.row]["number"]
            cell.infoCardEmail.text = model.recent[selectedIndexPath.row]["email"]
            cell.infoCardNotes.text = model.recent[selectedIndexPath.row]["notes"]
        case 1:
            cell.infoCardImage.image = UIImage(named: model.friends[selectedIndexPath.row]["infoImage"]!)
            cell.infoCardName.text = model.friends[selectedIndexPath.row]["name"]
            cell.infoCardNumber.text = model.friends[selectedIndexPath.row]["number"]
            cell.infoCardEmail.text = model.friends[selectedIndexPath.row]["email"]
            cell.infoCardNotes.text = model.friends[selectedIndexPath.row]["notes"]
        default: break
        }
        
        return cell
    }


}
