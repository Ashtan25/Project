//
//  Question5ViewController.swift
//  Question1POP
//
//  Created by Ashish Singh on 04/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
protocol LoggableProtocol {
    func userLogin(nameOfUser: String)
    func userLogout(nameOfUser: String)
}
extension LoggableProtocol {
    
    func userLogin(nameOfUser: String) {
        UserDefaults.standard.set(nameOfUser, forKey: nameOfUser)
    }
    func userLogout(nameOfUser: String) {
        UserDefaults.standard.removeObject(forKey: nameOfUser)
    }
}


class Question5ViewController: UIViewController, LoggableProtocol {

    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logoutFunction(_ sender: Any) {
        loginLabel.text = "Login"
        userLogout(nameOfUser: usernameTextField.text!)
        usernameTextField.text = " "
        passwordTextField.text = ""
    }
    
    @IBAction func loginFunction(_ sender: Any) {
        userLogin(nameOfUser: usernameTextField.text!)
        let user = UserDefaults.standard.string(forKey: usernameTextField.text!)
        loginLabel.text = "Welcome! \(user!)"
        
    }
    

}
