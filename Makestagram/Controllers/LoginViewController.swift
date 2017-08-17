//
//  LogininViewController.swift
//  Makestagram
//
//  Created by Manar Mahmalji on 8/16/17.
//  Copyright © 2017 Manar Mahmalji. All rights reserved.
//
import UIKit
import FirebaseAuth
import FirebaseAuthUI

typealias FIRUser = FirebaseAuth.User

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
        guard let authUI = FUIAuth.defaultAuthUI()
            else{ return }
        authUI.delegate = self
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
    }
    
}

extension LoginViewController: FUIAuthDelegate{
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {
        if let error = error {
            assertionFailure("Error signing in: \(error.localizedDescription)")
    }
        
      print("Handle user sign up / log in")
    
    }
}


