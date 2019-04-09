//
//  ViewController.swift
//  Localization
//
//  Created by Ashish Singh on 09/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lotteryTextField: UITextField!
    @IBOutlet weak var dateOfBirthTextField: UITextField!
    @IBOutlet weak var lotteryWonLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = NSLocalizedString("nameLabel", comment: "Name Label")
        
        stateLabel.text = NSLocalizedString("stateLabel", comment: "State Label")
        
        countryLabel.text = NSLocalizedString("countryLabel", comment: "Country Label")
        
        dateOfBirthLabel.text = NSLocalizedString("dateOfBirthLabel", comment: "Date Of Birth Label")
        
        lotteryWonLabel.text = NSLocalizedString("lotteryWonLabel", comment: "Lottery Won Label")
        // Do any additional setup after loading the view.
    }


}

