//
//  ViewController.swift
//  Cat Years
//
//  Created by Joshua on 8/17/18.
//  Copyright © 2018 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    @IBAction func buttonClicked(_ sender: Any) {
        if let age = ageText.text {
            if let catAge = Int(age){
                let ccAge:Int
                if (catAge<=2){
                    ccAge = catAge*12
                } else if (toggleSwitch.isOn){
                    ccAge = 24 + (catAge-2) * 8
                } else {
                    ccAge = 24 + (catAge-2) * 4
                }
                ageLabel.text = "Your cat is " + String(ccAge) + " in cat years"
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

