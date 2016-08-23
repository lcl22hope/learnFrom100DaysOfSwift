//
//  ContactsTableViewController.swift
//  13-DynamicDataForEachCell
//
//  Created by 玉皇大亮 on 8/23/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.sectionFooterHeight = 0;
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return model.recent.count
        case 1: return model.friends.count
        default: break
        }
        
        return 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("contactCell", forIndexPath: indexPath) as! ContactsTableViewCell
        
        switch indexPath.section {
        case 0:
            cell.avatar.image = UIImage(named: model.recent[indexPath.row]["contactImage"]!)
            cell.nameLabel.text = model.recent[indexPath.row]["name"]
        case 1:
            cell.avatar.image = UIImage(named: model.friends[indexPath.row]["contactImage"]!)
            cell.nameLabel.text = model.friends[indexPath.row]["name"]
        default: break
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCellWithIdentifier("HeaderCell") as! ContactsHeaderTableViewCell
        
        switch section {
        case 0: cell.headerLabel.text = "RECENT"
        case 1: cell.headerLabel.text = "FRIENDS"
        default: break
        }
        
        return cell;
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "InfoCardSegue" {
            let destination = segue.destinationViewController as! InfoCardTableViewController
            destination.selectedIndexPath = tableView.indexPathForSelectedRow!
        }
       
    }

}
