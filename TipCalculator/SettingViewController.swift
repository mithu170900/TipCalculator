//
//  SettingViewController.swift
//  TipCalculator
//
//  Created by TCU_OFFCAMPUS on 11/18/20.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var Tip1TextField: UITextField!
    @IBOutlet weak var Tip2TextField: UITextField!
    @IBOutlet weak var Tip3TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SaveButton(_ sender: Any) {
        UserDefaults.standard.set(Tip1TextField.text, forKey: "Tip1")
        UserDefaults.standard.set(Tip2TextField.text, forKey: "Tip2")
        UserDefaults.standard.set(Tip3TextField.text, forKey: "Tip3")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
