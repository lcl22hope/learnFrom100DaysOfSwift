//
//  TimeLineTableViewController.swift
//  15-SaveDateLocationPhoto
//
//  Created by 玉皇大亮 on 8/24/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit
import CoreData

class TimeLineTableViewController: UITableViewController, NSFetchedResultsControllerDelegate {

    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeFetchedResultsController()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 44
    }

    // MARK: - CoreData
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    var fetchedResultsController: NSFetchedResultsController!
    func initializeFetchedResultsController() {
        let request = NSFetchRequest(entityName: "Timeline")
        let sortByDate = NSSortDescriptor(key: "date", ascending: false)
        request.sortDescriptors = [sortByDate]
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: managedObjectContext, sectionNameKeyPath: "dateAsSectionName", cacheName: nil)
        fetchedResultsController.delegate = self
        
        do {
            try fetchedResultsController.performFetch()
        } catch {
            fatalError("Failed to initialize FetchedResultsController: \(error)")
        }
    }
    
    func controllerWillChangeContent(controller: NSFetchedResultsController) {
        tableView.beginUpdates()
    }
    
    func controller(controller: NSFetchedResultsController, didChangeSection sectionInfo: NSFetchedResultsSectionInfo, atIndex sectionIndex: Int, forChangeType type: NSFetchedResultsChangeType) {
        switch type {
        case .Insert:
            tableView.insertSections(NSIndexSet(index: sectionIndex), withRowAnimation: .Fade)
        case .Delete:
            tableView.deleteSections(NSIndexSet(index: sectionIndex), withRowAnimation: .Fade)
        case .Move:
            break
        case .Update:
            break
        }
    }
    
    func controller(controller: NSFetchedResultsController, didChangeObject anObject: AnyObject, atIndexPath indexPath: NSIndexPath?, forChangeType type: NSFetchedResultsChangeType, newIndexPath: NSIndexPath?) {
        switch type {
        case .Insert:
            tableView.insertRowsAtIndexPaths([newIndexPath!], withRowAnimation: .Fade)
        case .Delete:
            tableView.deleteRowsAtIndexPaths([indexPath!], withRowAnimation: .Fade)
        case .Update:
            configureCell(tableView.cellForRowAtIndexPath(indexPath!)!, indexPath: indexPath!)
        case .Move:
            tableView.moveRowAtIndexPath(indexPath!, toIndexPath: newIndexPath!)
        }
    }
    
    func controllerDidChangeContent(controller: NSFetchedResultsController) {
        tableView.endUpdates()
    }

    // MARK: - TableView data Source
    func configureCell(cell: UITableViewCell, indexPath: NSIndexPath) {
        let timeline = fetchedResultsController.objectAtIndexPath(indexPath) as! Timeline
        let cell = cell as! TimeLineTableViewCell
        
        
        cell.timeLineEntryLabel.text = timeline.entry
        cell.timeLineLocationLabel.text = timeline.location
        
        if let image = timeline.image {
            cell.timeLineImageView.image = UIImage(data: image)
        }
        
        if let date = timeline.date {
            cell.timeLineDateLabel.text = convertNSDateToString(date)
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("timelineCellId", forIndexPath: indexPath) as! TimeLineTableViewCell
        // Set up the cell
        configureCell(cell, indexPath: indexPath)
        return cell
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return fetchedResultsController.sections!.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let sections = fetchedResultsController.sections else {
            fatalError("No sections in fetchedResultsController")
        }
        let sectionInfo = sections[section]
        return sectionInfo.numberOfObjects
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {

            let managedObject = fetchedResultsController.objectAtIndexPath(indexPath) as! NSManagedObject
            managedObjectContext.deleteObject(managedObject)
            
            do {
                try managedObjectContext.save()
            }catch {
                fatalError("Failure to save context: \(error)")
            }
            
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let title = UILabel()
        let sectionInfo = fetchedResultsController.sections![section] as NSFetchedResultsSectionInfo
        
        title.text = sectionInfo.name
        title.font = UIFont(name: "HelveticaNeue", size: 14)
        title.textColor = UIColor(hue:0.48, saturation:0.06, brightness:0.44, alpha:1)
        title.backgroundColor = UIColor(hue:0.44, saturation:0.01, brightness:0.98, alpha:1)
        title.textAlignment = NSTextAlignment.Center
        return title
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Functions
    func convertNSDateToString(date: NSDate) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .LongStyle
        let dateString = dateFormatter.stringFromDate(date)
        return dateString
    }

}
