//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Randy Martinez on 7/15/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    // Stepper Menu
    @IBOutlet weak var stepperLabel: UILabel!
    @IBAction func stepper(_ sender: UIStepper) {
        stepperLabel.text = String(Int(sender.value))
        
    }
    
    // Labels & Text Fields
    @IBOutlet weak var billAmountTextFIeld: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                
    }
    
    @objc func update(_ sender: UIStepper) {
        print(sender.value)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field
        let bill = Doub le(billAmountTextFIeld.text!) ?? 0
        
        // Get total tip by multiplying tip * percentage
        let tipPercentages = [0.15, 0.18, 0.2, 0.25]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
            }
        
}

    


