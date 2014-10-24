//
//  ViewController.swift
//  Discount
//
//  Created by Mohammad Adlan on 10/25/14.
//  Copyright (c) 2014 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var originalPrice: UITextField!
    @IBOutlet weak var discountPrice: UITextField!
    
    @IBOutlet weak var newPriceLabel: UILabel!
    @IBOutlet weak var totalSavedLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateButton(sender: UIButton) {
        
        let doubleOriginalPrice = Double((originalPrice.text as NSString).doubleValue)
        let doubleDiscountPrice = Double((discountPrice.text as NSString).doubleValue)
        
        var newPriceCalculated = "\(doubleOriginalPrice * (1 - (doubleDiscountPrice / 100)))"
        var savedCalculated = "\(doubleOriginalPrice * doubleDiscountPrice / 100)"
        
        newPriceLabel.hidden = false
        newPriceLabel.text = newPriceCalculated
        
        totalSavedLabel.hidden = false
        totalSavedLabel.text = savedCalculated
        
        totalSavedLabel.resignFirstResponder()
        newPriceLabel.resignFirstResponder()
    }

}

