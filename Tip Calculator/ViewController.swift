//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Athena Enosara on 1/27/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UITextField!
    @IBOutlet weak var totalLabel: UITextField!
    @IBOutlet weak var tipPercentageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.keyboardType = UIKeyboardType.decimalPad
        tipPercentageField.keyboardType = UIKeyboardType.numberPad
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //GET BILL AND TIP AMOUNT
        let bill = Double(billField.text!) ?? 0
        let tipPercentage = Double(tipPercentageField.text!) ?? 0.15
        
        //CALCULATE THE TIP AND TOTAL
        let tip = bill * (tipPercentage * 0.01)
        let total = bill + tip
        
                
        //UPDATE THE TIP AND TOTAL LABELS
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTapRecalculate(_ sender: Any) {
        //GET BILL AND TIP AMOUNT
        let bill = Double(billField.text!) ?? 0
        let tipPercentage = Double(tipPercentageField.text!) ?? 0.15
        
        //CALCULATE THE TIP AND TOTAL
        let tip = bill * (tipPercentage * 0.01)
        let total = bill + tip
        
                
        //UPDATE THE TIP AND TOTAL LABELS
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

