//
//  LoginViewController.swift
//  UChiclock
//
//  Created by Alec Snyder on 7/24/15.
//  Copyright © 2015 Alec Snyder. All rights reserved.
//

import UIKit

class LoginViewController : UIViewController
{
    //@IBOutlet var loginView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibs = NSBundle.mainBundle().loadNibNamed("LoginView", owner: self, options: nil)
        view = nibs[0] as! UIView
    }
    
}