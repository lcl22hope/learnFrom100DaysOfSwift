//
//  Timeline+CoreDataProperties.swift
//  15-SaveDateLocationPhoto
//
//  Created by 玉皇大亮 on 8/24/16.
//  Copyright © 2016 aaron. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Timeline {

    @NSManaged var date: NSDate?
    @NSManaged var entry: String?
    @NSManaged var image: NSData?
    @NSManaged var location: String?

    
    func dateAsSectionName() -> String{
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MMMM yyyy"
        let dateAsString = dateFormatter.stringFromDate(date!)
        return dateAsString
    }
}
