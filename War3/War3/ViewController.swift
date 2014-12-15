//
//  ViewController.swift
//  War3
//
//  Created by Joe Chang on 18/10/14.
//  Copyright (c) 2014 Joe Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    
    @IBOutlet weak var secondCardImageView: UIImageView!
    
    @IBOutlet weak var playButton: UIView!
    @IBOutlet weak var backgroundView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playButton.setTitle("pLaY", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

