//
//  View5.swift
//  Excercise7
//
//  Created by Ashish Singh on 04/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class View5: UIViewController {
    @IBOutlet var gotoSpecificVC: UIButton!
    @IBOutlet var gotoRoot: UIButton!
    @IBOutlet var back: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navArray = self.navigationController?.viewControllers
        let obj = navArray![0] as? ViewController
        print(obj?.label2)
        
        
    }
    
    @IBAction func GotoSpecificVC(){
        let navArray = self.navigationController?.viewControllers
        self.navigationController?.popToViewController(navArray![2], animated: true)
    }
    @IBAction func GotoRoot(){
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func Back(){
        self.navigationController?.popViewController(animated: true)
    }

    
}
