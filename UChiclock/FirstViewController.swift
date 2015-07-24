//
//  FirstViewController.swift
//  UChiclock
//
//  Created by Rachael Gordon on 7/20/15.
//  Copyright © 2015 Alec Snyder. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var ClockInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let butText : String = ClockInButton.titleLabel!.text!
        print("Button text is: \(butText)");
        ClockInButton.setTitle("Hello", forState: .Normal)
        let butText2 : String = ClockInButton.titleLabel!.text!
        print("Button text is: \(butText2)");

        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clockInButtonPressed(sender: UIButton) {
        presentViewController(LoginViewController(), animated: true, completion: nil)
    }

}

