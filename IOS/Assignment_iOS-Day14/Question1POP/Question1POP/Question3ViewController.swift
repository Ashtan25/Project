//
//  Question3ViewController.swift
//  Question1POP
//
//  Created by Ashish Singh on 29/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit


protocol ErrorViewProtocol: class{
    func textFieldValidation(textField: UITextField) throws -> String
}

extension ErrorViewProtocol where Self: UIViewController {
    
    func textFieldValidation(textField: UITextField) -> String{
        print(textField.text!)
        
        let stringFormat = "[A-Za-z]{1,}"
        let format = NSPredicate(format:"SELF MATCHES %@", stringFormat)
        let result = format.evaluate(with: textField.text!)
        if result == true {
            return "String is valid"
        }
        else{
            return "String is not valid" 
        }
        
        
        
        
        
    }
}

class Question3ViewController: UIViewController, ErrorViewProtocol {
    
 

    @IBOutlet var stringTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    

    @IBOutlet weak var labelToToast: UILabel!
    
    @IBAction func moveToQuestion4Controller(_ sender: Any) {
       
        let output = textFieldValidation(textField: stringTextField)
        
        labelToToast.ToToast(label: output)
            
    }
    
}


