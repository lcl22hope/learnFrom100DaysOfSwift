//
//  PlacesTableViewController.swift
//  20-SearchBarInTableView
//
//  Created by 玉皇大亮 on 8/26/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class PlacesTableViewController: UITableViewController, UISearchResultsUpdating{

    override func viewDidLoad() {
        super.viewDidLoad()
        initSearchViewController()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchViewController.active == true {
            return searchResults.count
        }
        else {
            return model.featuredPosters.count
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("placesCell", forIndexPath: indexPath)
        if searchViewController.active == true {
            cell.textLabel?.text = searchResults[indexPath.row]["description"] as? String
        }
        else {
            cell.textLabel?.text = model.featuredPosters[indexPath.row]["description"]
        }
        
        return cell
    }
    

    // MARK: - SearchBar
    let searchViewController = UISearchController(searchResultsController: nil)
    var searchResults = [AnyObject]()
    
    func initSearchViewController() {
        searchViewController.searchResultsUpdater = self
        searchViewController.dimsBackgroundDuringPresentation = false
        tableView.tableHeaderView = searchViewController.searchBar
    }
    
    // MARK: SearchResultsUpdating
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        
        let predicate = NSPredicate(format: "description contains[cd] %@", searchViewController.searchBar.text!)
        let filterResults = (model.featuredPosters as NSArray).filteredArrayUsingPredicate(predicate)
        
        searchResults = filterResults
        tableView.reloadData()
    }

}
