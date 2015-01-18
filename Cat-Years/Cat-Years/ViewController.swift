//
//  ViewController.swift
//  Cat-Years
//
//  Created by Mariko Wakabayashi on 1/17/15.
//  Copyright (c) 2015 wakawaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var resultLabel: UILabel!


    @IBAction func findAge(sender: AnyObject) {
        
        var enteredAge = age.text.toInt()
        
        if enteredAge != nil {
            var catYears = enteredAge! * 7
        
            resultLabel.text = "Your cat is \(catYears)"
        }
        else {
            resultLabel.text = "Please enter age"
        }
        self.view.endEditing(true)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.age.keyboardType = UIKeyboardType.PhonePad

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

