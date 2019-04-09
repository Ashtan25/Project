//
//  ToSignUpViewController.swift
//  RecipeApp
//
//  Created by Ashish Singh on 07/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ToSignUpViewController: UIViewController, UITextFieldDelegate, LoggingProtocole , ErrorViewProtocol, ToastMessage{
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
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == emailIdTextField {
            do {
                _ = try validateEmailAdd(emailIdTextField!)
            }
            catch {
                emailIdTextField.text = ""
                toastLabel.toToast(message: "Please enter valid email")
                
            }
        }
        else if textField == passwordTextField {
            do {
                _ = try validatePassword(passwordTextField)
            }
            catch {
                passwordTextField.text = ""
                toastLabel.toToast(message: "Your 8 characters password should contain Two uppercase letters,one special chaacter, two digits, three lower case letters")
            }
        }
    }
    
    @IBAction func toSignUpButton () {
        if emailIdTextField.text! != "" && passwordTextField.text! != "" {
        emailText = emailIdTextField.text!
            
            signIn(userId: emailIdTextField.text!, key: emailIdTextField.text!)
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "RecipeTabBarcontroller")
        self.navigationController?.pushViewController(controller, animated: true)
        }
        else {
            toastLabel.toToast(message: "Enter your Details first")
        }
    }
    

    

}
