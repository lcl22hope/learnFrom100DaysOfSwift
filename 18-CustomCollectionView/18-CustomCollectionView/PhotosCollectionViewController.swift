//
//  PhotosCollectionViewController.swift
//  18-CustomCollectionView
//
//  Created by 玉皇大亮 on 8/25/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

private let reuseIdentifier = "photoCell"

class PhotosCollectionViewController: UICollectionViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "postSegue" {
            let postVC = segue.destinationViewController as! TitleViewController
            let cell = sender as! PhotoCollectionViewCell
            postVC.selectedIndex = collectionView?.indexPathForCell(cell)
        }
        
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.posts.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! PhotoCollectionViewCell
        
        cell.photoImageView.image = UIImage(named: model.posts[indexPath.row]["photoName"]!)
        
        return cell
    }


}
