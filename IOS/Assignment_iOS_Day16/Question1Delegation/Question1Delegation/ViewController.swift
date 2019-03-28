//
//  ViewController.swift
//  Question1Delegation
//
//  Created by Ashish Singh on 27/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DelegateForPassingData {
  
    
 
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = ""
        ageLabel.text = ""
        numberLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func nextButtonFunction(_ sender: Any) {
        self.view.endEditing(true)
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "NewViewController") as! NewViewController
        controller.delegate = self
        self.navigationController?.pushViewController(controller, animated: true)
    }
    func pass(Dict: [String : [String : String]]) {
        for item in Dict{
            nameLabel.text = item.key
            for value in item.value
            {
                ageLabel.text = value.key
                numberLabel.text = value.value
            }
        }
        
    }
    
}
   


