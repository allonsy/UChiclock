//
//  LoginViewController.swift
//  UChiclock
//
//  Created by Alec Snyder on 7/24/15.
//  Copyright © 2015 Alec Snyder. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameField.placeholder = " Username"
        passwordField.placeholder = " Password"
        passwordField.secureTextEntry = true
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(sender: UIButton) {
        
    }
}
