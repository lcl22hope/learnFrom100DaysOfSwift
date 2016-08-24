//
//  ViewController.swift
//  15-SaveDateLocationPhoto
//
//  Created by 玉皇大亮 on 8/24/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit
import CoreLocation
import CoreData

class ViewController: UIViewController , CLLocationManagerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    // MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        newEntryTextView.becomeFirstResponder()
        newEntryTextView.inputAccessoryView = newEntryInputAccessoryView
        locationManager.delegate = self
        newEntryDateLabel.text = "\(getCurrentDate())"
    }
    
    // MARK - Properties
    let locationManager = CLLocationManager()
    let dateFormatter = NSDateFormatter()

    // MARK: - Outlets
    @IBOutlet weak var newEntryDateLabel: UILabel!
    @IBOutlet weak var newEntryLocationLabel: UILabel!
    @IBOutlet weak var newEntryPhotoImageView: UIImageView!
    @IBOutlet weak var newEntryTextView: UITextView!
    @IBOutlet weak var newEntryInputAccessoryView: UIView!
    
    
    // MARK: - CoreData
    let managerObjectCtx = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    func saveEntry() {
        if newEntryTextView.text.characters.count > 0 {
            let timeline = NSEntityDescription.insertNewObjectForEntityForName("Timeline", inManagedObjectContext: self.managerObjectCtx) as! Timeline
            
            timeline.entry = newEntryTextView.text
            timeline.date = NSDate()
            
            if newEntryLocationLabel.text?.characters.count > 0 {
                timeline.location = newEntryLocationLabel.text
            }
            
            if let image = newEntryPhotoImageView.image {
                timeline.image = UIImageJPEGRepresentation(image, 0.75)
            }
        }

        do {
            try self.managerObjectCtx.save()
        } catch {
            fatalError("Failure to save context: \(error)")
        }
        
    }
    
    
    // MARK: - Interactions
    @IBAction func tapDoneButton(sender: UIBarButtonItem) {
        saveEntry()
        dismissView()
    }

    @IBAction func tapCameraButton(sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func tapLocateButton(sender: UIButton) {
        getLcoation()
    }

    
    // MARK: - delegate
    // MARK: LocationDelegate
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let geoCoder = CLGeocoder()
        geoCoder.reverseGeocodeLocation(manager.location!) { (placemarks, error) in
            if error != nil {
                print("Error: \(error!.localizedDescription)")
            }
            else if placemarks?.count > 0 {
                let firstPlaceMark = placemarks![0]
                self.convertDataToWordsFromLocations(firstPlaceMark)
            }
        }
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print(error.localizedDescription)
    }
    
    // MARK: ImagePickerDelegate
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        newEntryPhotoImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        dismissViewControllerAnimated(true, completion: nil)
        newEntryTextView.becomeFirstResponder()
    }
    
    // MARK: - Functions
    func convertDataToWordsFromLocations(placemark: CLPlacemark) {
        locationManager.stopUpdatingLocation()
        
        let city    = placemark.locality!
        let state   = placemark.administrativeArea!
        let country = placemark.ISOcountryCode!
        let zipCode = placemark.postalCode ?? ""
        
        let location = "\(city),\(state) \(zipCode), \(country)"
        newEntryLocationLabel.text = location
        newEntryLocationLabel.textColor = UIColor.blackColor()
    }
    
    func getLcoation() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func getCurrentDate() -> String {
        let date = NSDate()
        dateFormatter.dateFormat = "MMMM dd, yyyy 'at' hh:mm a"
        let curDateStr = dateFormatter.stringFromDate(date)
        return curDateStr
    }
    
    func dismissView() {
        navigationController?.popViewControllerAnimated(true)
    }
}

