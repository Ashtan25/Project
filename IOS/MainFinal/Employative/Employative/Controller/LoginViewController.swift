//
//  LoginViewController.swift
//  Employative
//
//  Created by Ashish Singh on 19/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var titleProfileView: CustomNavBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 navigationController?.setNavigationBarHidden(true, animated: true)
        titleProfileView.titleLabel.text = "Profile"

       
    }
    

   

}
