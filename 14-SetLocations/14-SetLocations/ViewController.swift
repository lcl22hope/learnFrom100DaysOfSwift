//
//  ViewController.swift
//  14-SetLocations
//
//  Created by 玉皇大亮 on 8/24/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        
    }
    
    // MARK: - Outlets
    @IBOutlet weak var locationLabel: UILabel!
    
    
    // MARK: - Interactions
    @IBAction func tapGetLocation(sender: AnyObject) {
        getLcoation()
    }
    
    
    // MARK: - Location
    let locationManager = CLLocationManager()

    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("Error: \(error.localizedDescription)")
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let geoCoder = CLGeocoder()
        geoCoder.reverseGeocodeLocation(manager.location!) { (placemarks, error) in
            if error != nil {
                print(error?.localizedDescription)
            }
            else if placemarks?.count > 0 {
                let firstPlaceMark  = placemarks![0]
                self.convertDataToWordsFromLocations(firstPlaceMark)
            }
        }
    }
    
    func convertDataToWordsFromLocations(placemark: CLPlacemark) {
        locationManager.stopUpdatingLocation()
        
        let city    = placemark.locality!
        let state   = placemark.administrativeArea!
        let country = placemark.country!
        let zipCode = placemark.postalCode ?? ""
        
        let location = "\(city),\(state) \(zipCode), \(country)"
        locationLabel.text = location
        locationLabel.textColor = UIColor.blackColor()
    }
    
    func getLcoation() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
}

