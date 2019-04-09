//  ViewController.swift
//  RecipeApp
//
//  Created by Ashish Singh on 07/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
var emailText: String?

class ToLoginViewController : UIViewController ,UITextFieldDelegate, ToastMessage{
    func toToast(message: String) {
        
    }
    
    @IBOutlet weak var emailIdTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var toastLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        emailIdTextField.delegate = self
        passwordTextField.delegate = self
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func toLoginButton() {
        if emailIdTextField.text != "" && passwordTextField.text != "" {
            if UserDefaults.standard.string(forKey: emailIdTextField.text!) == emailIdTextField.text {
                emailText = emailIdTextField.text
                let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
                let controller = storyBoard.instantiateViewController(withIdentifier: "RecipeTabBarcontroller")
                self.navigationController?.pushViewController(controller, animated: true)
            }
            else {
                toastLabel.toToast(message: "please enter correct emailid")
            }
            

        }
    }
    
    
    @IBAction func toSignUpButton() {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "SignUpVc")
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
}

