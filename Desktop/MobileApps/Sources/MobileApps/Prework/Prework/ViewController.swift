//
//  ViewController.swift
//  Prework
//
//  Created by Batia Segal on 8/25/22.
//  Copyright © 2022 Batia Segal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var billAmountTextField: UITextField!
    
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
    @IBOutlet var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tip percentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

