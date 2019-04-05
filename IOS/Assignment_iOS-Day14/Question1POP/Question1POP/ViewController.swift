//
//  ViewController.swift
//  Question1POP
//
//  Created by Ashish Singh on 29/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var date = Date()
    
    @IBOutlet weak var dateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(date.DateFormatChangeFunction())
        dateLabel.ToToast(label: date.DateFormatChangeFunction())
        
    }


}

extension Date{
    func DateFormatChangeFunction() -> String {
        let dateToFormat = DateFormatter()
        dateToFormat.dateFormat = "dd/MM/yyyy"
        return dateToFormat.string(from: self)
        
    }
    
}

