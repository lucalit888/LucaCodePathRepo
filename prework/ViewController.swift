//
//  ViewController.swift
//  prework
//
//  Created by Luca Lit on 12/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var partySizeTextField: UITextField!
    
    @IBOutlet weak var partySizeSlider: UISlider!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var totalAfterParty: UILabel!
    
    @IBOutlet weak var totalperPerson: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get Bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let partysize = Double(partySizeSlider.value)
        
        // Get total tip by multiplying tip * tip percentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let totalDivided = total / partysize
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        totalperPerson.text = String(format: "$%.2f", totalDivided)
        
        totalAfterParty.text = String(format: "$%.2f", totalDivided)
        
    }
    
}

