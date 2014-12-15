//
//  ViewController.swift
//  AppShocker
//
//  Created by Joe Chang on 22/10/14.
//  Copyright (c) 2014 Joe Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theTextField: UITextField!
    
    @IBOutlet weak var theLabel: UILabel!


    @IBAction func theButtonMethod(sender: AnyObject) {
        theLabel.text = theTextField.text
        theTextField.resignFirstResponder()
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

