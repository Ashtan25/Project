//
//  ViewController.swift
//  TTN Greatings
//
//  Created by Ashish Singh on 20/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputButton: UIButton!
    @IBOutlet weak var outputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let input = inputTextField.text!
        Date.dateFormatType(date: input )
    }
  
}

extension Date {

    static func dateFormatType(date: String){
        var dateArray = [String]()
        dateArray = date.components(separatedBy: "/")
        print(dateArray)
        
    }
}


