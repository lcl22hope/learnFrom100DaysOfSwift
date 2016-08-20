//
//  PlacesTableViewController.swift
//  10-StickHeadersAndJumpBar
//
//  Created by 玉皇大亮 on 8/20/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

class PlacesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return model.places.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return model.places["A"]!.count
        case 1: return model.places["B"]!.count
        case 2: return model.places["C"]!.count
        case 3: return model.places["F"]!.count
        case 4: return model.places["G"]!.count
        case 5: return model.places["H"]!.count
        case 6: return model.places["M"]!.count
        case 7: return model.places["N"]!.count
        case 8: return model.places["P"]!.count
        case 9: return model.places["R"]!.count
        case 10: return model.places["S"]!.count
        case 11: return model.places["T"]!.count
        case 12: return model.places["V"]!.count
        case 13: return model.places["Y"]!.count
        case 14: return model.places["Z"]!.count
        default: return 1
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlaceCellId", forIndexPath: indexPath)

        switch indexPath.section {
        case 0: cell.textLabel?.text = model.places["A"]![indexPath.row]
        case 1: cell.textLabel!.text = model.places["B"]![indexPath.row]
        case 2: cell.textLabel!.text = model.places["C"]![indexPath.row]
        case 3: cell.textLabel!.text = model.places["F"]![indexPath.row]
        case 4: cell.textLabel!.text = model.places["G"]![indexPath.row]
        case 5: cell.textLabel!.text = model.places["H"]![indexPath.row]
        case 6: cell.textLabel!.text = model.places["M"]![indexPath.row]
        case 7: cell.textLabel!.text = model.places["N"]![indexPath.row]
        case 8: cell.textLabel!.text = model.places["P"]![indexPath.row]
        case 9: cell.textLabel!.text = model.places["R"]![indexPath.row]
        case 10: cell.textLabel!.text = model.places["S"]![indexPath.row]
        case 11: cell.textLabel!.text = model.places["T"]![indexPath.row]
        case 12: cell.textLabel!.text = model.places["V"]![indexPath.row]
        case 13: cell.textLabel!.text = model.places["Y"]![indexPath.row]
        case 14: cell.textLabel!.text = model.places["Z"]![indexPath.row]
        default: break
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCellWithIdentifier("sectionId")
        cell?.textLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        cell?.backgroundColor = UIColor(red:0.70, green:0.45, blue:0.16, alpha:1.00)
        
        switch section {
        case 0: cell?.textLabel!.text = "A"
        case 1: cell?.textLabel!.text = "B"
        case 2: cell?.textLabel!.text = "C"
        case 3: cell?.textLabel!.text = "F"
        case 4: cell?.textLabel!.text = "G"
        case 5: cell?.textLabel!.text = "H"
        case 6: cell?.textLabel!.text = "M"
        case 7: cell?.textLabel!.text = "N"
        case 8: cell?.textLabel!.text = "P"
        case 9: cell?.textLabel!.text = "R"
        case 10: cell?.textLabel!.text = "S"
        case 11: cell?.textLabel!.text = "T"
        case 12: cell?.textLabel!.text = "V"
        case 13: cell?.textLabel!.text = "Y"
        case 4: cell?.textLabel!.text = "Z"
        default: break
        }

        return cell
    }

    override func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        let jumpBar = Array(model.places.keys).sort{ $0 < $1 }
        return jumpBar
    }

}
