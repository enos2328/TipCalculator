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
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //GET BILL AMOUNT
        let bill = Double(billField.text!) ?? 0 //let is a constant // ?? 0 says that anything that isn't a number gets changed to zero
        
        //CALCULATE THE TIP AND TOTAL
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //UPDATE THE TIP AND TOTAL LABELS
//        tipLabel.text = "$\(tip)" // the \() separates text from variable
        tipLabel.text = String(format: "$%.2f", tip) // the %f gets replaced by the tip variable, the .2 sets 2 decimal places
        
//        totalLabel.text = "$\(total)"
        totalLabel.text = String(format: "$%.2f", total) // the %f gets replaced by the tip variable, the .2 sets 2 decimal places
    }
}

