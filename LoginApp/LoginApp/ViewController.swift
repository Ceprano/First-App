//
//  ViewController.swift
//  LoginApp
//
//  Created by Joe Chang on 22/10/14.
//  Copyright (c) 2014 Joe Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theTextFieldUsername: UITextField!
    @IBOutlet weak var theTextFieldPassword: UITextField!
    
    @IBOutlet weak var theLabel: UILabel!

    
    @IBAction func theVerifyMethod(sender: AnyObject) {
        var usr = "car"
        var pw = "black"
        
        if theTextFieldUsername.text == usr &&
        theTextFieldPassword.text == pw
        {
            theLabel.text = "Password was correct"
            //println("Password was correct")
        }
        else
        {
            theLabel.text = "Credentials were not valid"
            //println("Credentials were not valid")
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

