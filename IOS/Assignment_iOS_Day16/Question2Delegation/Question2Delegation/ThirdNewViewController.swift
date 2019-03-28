//
//  ThirdNewViewController.swift
//  Question2Delegation
//
//  Created by Ashish Singh on 27/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit


let notificationId = "dataTransfer"

class ThirdNewViewController: UIViewController {
    
    @IBOutlet weak var NotificationtextFiledView3: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onSendButtonTap(_ sender: Any) {
            print(NotificationtextFiledView3.text!)
            NotificationCenter.default.post(name: Notification.Name(rawValue: notificationId) , object: self , userInfo: [1 : NotificationtextFiledView3.text! ])
            
            self.navigationController?.popViewController(animated: true)
        }
        
}
