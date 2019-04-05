//
//  Question7ViewController.swift
//  Question1POP
//
//  Created by Ashish Singh on 04/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

protocol ValidatingProtocol {
    func emailValidator(email: String) -> Bool
    func passwordValidator(password: String) -> Bool
    
}
extension ValidatingProtocol{
    func emailValidator(email: String) -> Bool {
        let regexForEmail = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let testEmail = NSPredicate(format:"SELF MATCHES[c] %@", regexForEmail)
        return testEmail.evaluate(with: email)
    }
    func passwordValidator(password: String) -> Bool{
    
        let regexForPassword = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")

        return regexForPassword.evaluate(with: password)
    }
    }

class Question7ViewController: UIViewController, ValidatingProtocol {

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var toastLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitFunction(_ sender: Any) {
        
       let emailBool =  emailValidator(email: emailTextField.text!)
       let passBool =     passwordValidator(password: passwordTextField.text!)
        if emailBool == true && passBool == true{
            toastLabel.ToToast(label: "Correct email and Password ")
        }
        else{
            toastLabel.ToToast(label: "Wrong Password or Email")
        }
        

    }
    
}
