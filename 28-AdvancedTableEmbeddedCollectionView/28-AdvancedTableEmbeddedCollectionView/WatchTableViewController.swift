//
//  WatchTableViewController.swift
//  28-AdvancedTableEmbeddedCollectionView
//
//  Created by 玉皇大亮 on 9/1/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class WatchTableViewController: UITableViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        tableView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0)
    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("heroCell", forIndexPath: indexPath) as! HeroTableViewCell
            cell.imageView?.image = UIImage(named: model.watch["hero image"]!)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier("descriptionCell", forIndexPath: indexPath) as! DescriptionTableViewCell
            cell.titleLabel.text = model.watch["title"]
            cell.descriptionLabel.text = model.watch["description"]
            return cell
        case 2:
            let cell = tableView.dequeueReusableCellWithIdentifier("thumbnailsCell", forIndexPath: indexPath)
            return cell
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("infoCell", forIndexPath: indexPath) as! InfoTableViewCell
            cell.subTitlelabel1.text = model.watch["subtitle 1"]
            cell.infoLabel1.text = model.watch["info 1"]
            cell.subTitleLabel2.text = model.watch["subtitle 2"]
            cell.infoLabel2.text = model.watch["info 2"]
            cell.subTitleLabel3.text = model.watch["subtitle 3"]
            cell.infoLabel3.text = model.watch["info 3"]
            cell.footnoteLabel.text = model.watch["footnote"]
            return cell
        }

    }
   
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return UITableViewAutomaticDimension
        case 1: return 100
        case 2: return 200
        default: return 380
        }
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    
    
    // MARK: - CollectionView
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.images.count
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("thumbnailCell", forIndexPath: indexPath) as! ThumbnailCollectionViewCell
        cell.thumbnailImageView.image = UIImage(named: model.images[indexPath.row]["thumbnail"]!)
        return cell
    }

}






