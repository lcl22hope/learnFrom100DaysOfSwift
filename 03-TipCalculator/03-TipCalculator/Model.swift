//
//  Model.swift
//  03-TipCalculator
//
//  Created by 玉皇大亮 on 8/18/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import Foundation

let model = Model(tip: 15, subtotal: 0)

class Model: NSObject {
    var tip: Int
    var subtotal: Double

    //init method contains extern parameter statement by default
    init(tip: Int, subtotal: Double){
        self.tip = tip
        self.subtotal = subtotal
    }
    
    
    // MARK: - calculate properties
    var tipPercentText: String {
        get {
            return "\(tip)%"
        }
    }
    
    var tipAsCurrency: String{
        get {
            return String(format: "%0.2f", subtotal * Double(tip)/100)
        }
    }
    
    var subtotalAsCurrency: String{
        get {
            return String(format: "%0.2f", subtotal)
        }
    }
    
    var totalAsCurrency: String{
        
        get {
            return String(format: "%0.2f", subtotal * (1 + Double(tip)/100))
        }
    }
    
}