//
//  PhotosCollectionViewController.swift
//  26-CustomTransitionsImageZoom
//
//  Created by 玉皇大亮 on 8/31/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PhotoCell"
var selectedIndexPath : NSIndexPath?

class PhotosCollectionViewController: UICollectionViewController, ShowTransitionController, DismissTransitionController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }



    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.portfolio.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! PhotoCollectionViewCell
    
        let row = model.portfolio[indexPath.row]
        cell.photoImage.image = UIImage(named: row["image"]!)
    
        return cell
    }

    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewControllerWithIdentifier("PhotoDetailViewController") as! PhotoDetailViewController
        navigationController?.pushViewController(detailVC, animated: true)
        selectedIndexPath = indexPath
    }

    
    func passImageToShowTranstion(transition: ShowTransition) -> UIImageView? {
        if let indexPath = selectedIndexPath {
            let cell = collectionView?.cellForItemAtIndexPath(indexPath) as! PhotoCollectionViewCell
            return cell.photoImage
        }
        else {
            return nil
        }
    }
    
    func passImageToDismissTransition(transition: DismissTransition) -> UIImageView? {
        if let indexPath = selectedIndexPath {
            let cell = collectionView?.cellForItemAtIndexPath(indexPath) as! PhotoCollectionViewCell
            return cell.photoImage
        }
        else {
            return nil
        }
    }
}
