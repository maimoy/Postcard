//
//  ViewController.swift
//  Postcard
//
//  Created by Antonis Kalodimos on 24/12/14.
//  Copyright (c) 2014 Maimoy Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMessageButtonPressed(sender: AnyObject) {
        // add coments to test git commit
        messageLabel.hidden=false;
        messageLabel.text=enterMessageTextField.text
        messageLabel.textColor=UIColor.redColor();
        
        nameLabel.hidden=false;
        nameLabel.text=enterNameTextField.text;
        nameLabel.textColor=UIColor.blueColor();
        
        enterNameTextField.text="";
        enterNameTextField.resignFirstResponder();
        
        
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal);
        
    }


}

