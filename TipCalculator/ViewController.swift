//
//  ViewController.swift
//  TipCalculator
//
//  Created by Minh Bui on 11/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billField.becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let tip1 = UserDefaults.standard.object(forKey:"Tip1") as? String ?? "10%"
        let tip2 = UserDefaults.standard.object(forKey:"Tip2") as? String ?? "15%"
        let tip3 = UserDefaults.standard.object(forKey:"Tip3") as? String ?? "20%"
        self.tipControl.setTitle(tip1, forSegmentAt:0)
        self.tipControl.setTitle(tip2, forSegmentAt:1)
        self.tipControl.setTitle(tip3, forSegmentAt:2)
        
    }

    @IBAction func onTapMain(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func onTapSetting(_ sender: Any) {
        view.endEditing(true)
    }
    

    

    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate tip and total
        let tipPercentages = [0.10, 0.15, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // Update the tips and total labels
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
    
}

