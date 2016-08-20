//
//  GroceriesTableViewController.swift
//  09-RearrangeAndDelete
//
//  Created by 玉皇大亮 on 8/19/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class GroceriesTableViewController: UITableViewController {


    let dataRefresh = UIRefreshControl()

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: #selector(GroceriesTableViewController.addItem))
        
        self.refreshControl = dataRefresh
        refreshControl?.addTarget(self, action: #selector(GroceriesTableViewController.refresh), forControlEvents: UIControlEvents.ValueChanged)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if model.newStr.trimming(String.TrimmingType.Whitespace).characters.count > 0 {
            model.data.append(model.newStr)
            tableView.reloadData()
        }
    }
    
    // MARK: - functions

    func refresh() {
        model.data = model.serverData
        tableView.reloadData()
        refreshControl?.endRefreshing()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.data.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellId", forIndexPath: indexPath)

        cell.textLabel?.text = model.data[indexPath.row]

        return cell
    }
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            model.data.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }

    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }


}
