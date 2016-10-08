//
//  GlobalLoginViewController.swift
//  WorkOutBook
//
//  Created by Jyothi Reddy Kallam on 5/10/16.
//  Copyright © 2016 Jyothi. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class GlobalLoginViewController: UIViewController {
    
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var signup: UIButton!
    
    @IBAction func loginAction(_ sender: AnyObject) {
        performSegue(withIdentifier: "loginId", sender: self)
    }

    @IBAction func signupAction(_ sender: AnyObject) {
        performSegue(withIdentifier: "signupId", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBSDKLoginButton()
        loginButton.frame = CGRect(x: 16, y: self.view.frame.size.height - 32 - 32 - 32, width: self.view.frame.size.width - 32, height: 32)
        self.view.addSubview(loginButton)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
