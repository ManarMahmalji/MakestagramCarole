//
//  LogininViewController.swift
//  Makestagram
//
//  Created by Manar Mahmalji on 8/16/17.
//  Copyright © 2017 Manar Mahmalji. All rights reserved.
//
import UIKit
class LoginViewController: UIViewController{
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        print("login Button Tapped")
    }
}

