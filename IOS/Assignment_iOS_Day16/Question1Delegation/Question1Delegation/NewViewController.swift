//
//  NewViewController.swift
//  Question1Delegation
//
//  Created by Ashish Singh on 27/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

protocol DelegateForPassingData{
    func pass(Dict:[String : [String : String]])
}

class NewViewController: UIViewController {
   
    
    
    var delegate: DelegateForPassingData?

    

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func backButtonFunction(_ sender: Any) {
        if delegate != nil{
            delegate?.pass(Dict: [nameTextField.text!:[ageTextField.text!:numberTextField.text!]])
        }
        self.navigationController?.popViewController(animated: true)
    }
    

}
