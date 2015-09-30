//
//  ViewController.swift
//  BMR Calculator
//
//  Created by Robin on 9/18/15.
//  Copyright © 2015 Robin. All rights reserved.
//
// .toInt() was removed. Int accepted string. 
// Int(textField.text!) instead of textField.text!.toInt()

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var outputTextField: UILabel!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
    
        //test for adding doubleValue
        
        NSString(string: heightTextField.text!).doubleValue as Double?
        NSString(string: weightTextField.text!).doubleValue as Double?
        NSString(string: ageTextField.text!).doubleValue as Double?
        
    
        if let height = Int(heightTextField.text!){
            if let weight = Int(weightTextField.text!) {
                if let age = Int(ageTextField.text!){
                
                
                
                    let area = (height * 4) + (weight * 5) - (age * 5) + 655 
                outputTextField.text = "\(area)"
            }
            }
        }
    }
    

}

//655 + ( 4.35 x weight in pounds ) + ( 4.7 x height in inches ) - ( 4.7 x age in years )