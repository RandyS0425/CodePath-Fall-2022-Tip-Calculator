//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Randy Martinez on 7/15/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    var splitNum = 1.00;
    
    
    // Labels / Text Fields / Views
    @IBOutlet weak var billAmountTextFIeld: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topview: UIView!
    @IBOutlet weak var splitTipPeople: UITextField!
    @IBOutlet weak var splitAmount: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bottomView.layer.cornerRadius = 15
        bottomView.layer.masksToBounds = true
        bottomView.layer.borderWidth = 1.5
        bottomView.layer.borderColor = UIColor.black.cgColor
        topview.layer.cornerRadius = 15
        topview.layer.masksToBounds = true
        topview.layer.borderWidth = 1.5
        topview.layer.borderColor = UIColor.black.cgColor
    }
    

    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field
        let bill = Double(billAmountTextFIeld.text!) ?? 0
        let peopleSplit = Double(splitTipPeople.text!) ?? 0
        
        // Get total tip by multiplying tip * percentage
        let tipPercentages = [0.15, 0.18, 0.2, 0.25]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let tipSplit = bill / peopleSplit
        // update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitAmount.text = String(format: "$%.2f", tipSplit)
        
}

}

    


