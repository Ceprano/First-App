//
//  ViewController.swift
//  SaveFile
//
//  Created by Joe Chang on 23/10/14.
//  Copyright (c) 2014 Joe Chang. All rights reserved.
//

import UIKit

let theDocumentsFolderForSavingFiles = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,  .UserDomainMask, true) [0] as String
let theFilename = "/theUserFile.txt"
let thePathToTheFile  = theDocumentsFolderForSavingFiles.stringByAppendingString(theFilename)

class ViewController: UIViewController {

    
    @IBOutlet weak var theNameTextField: UITextField!
    
    @IBOutlet weak var theLastnameTextField: UITextField!
    
    
    @IBOutlet weak var theAgeTextField: UITextField!
    
    
    @IBOutlet weak var theLabel: UILabel!
    
    
    @IBAction func theSaveButtonFunction(sender: AnyObject) {
        var theName     = theNameTextField.text
        var theLastName = theLastnameTextField.text
        var theAge      = theAgeTextField.text
        
        var theStringWillSaveAsATxtFile = "The user's info is: \(theName), \(theLastName), \(theAge)"
        
        let theFileManager = NSFileManager.defaultManager()
        if (!theFileManager.fileExistsAtPath(thePathToTheFile))
        {
            var theWriteError:NSError?
            let theFileToBeWritten = theStringWillSaveAsATxtFile.writeToFile(thePathToTheFile, atomically: true, encoding: NSUTF8StringEncoding, error: &theWriteError)
            
            if theWriteError == nil
            {
                println("No problem, we could save the file and the content was \(theStringWillSaveAsATxtFile)")
            }
            else
            {
                println("We encountered an error and this error is \(theWriteError)")
            }
        }
        else
        {
            println("File already there")
        }
        theNameTextField.resignFirstResponder()
        theLastnameTextField.resignFirstResponder()
        theAgeTextField.resignFirstResponder()
    }
    
    
    @IBAction func theLoadButtonFunction(sender: AnyObject) {
        let theInfoFromTheFileSaved:String = String.stringWithContentsOfFile(thePathToTheFile, encoding: NSUTF8StringEncoding, error:nil)!
        theLabel.text = theInfoFromTheFileSaved
        
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

