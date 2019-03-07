//
//  EmployeeDetails.swift
//  Day9Excercise
//
//  Created by Ashish Singh on 08/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class EmployeeDetails: UIViewController {

    @IBOutlet weak var employeeSegment: UISegmentedControl!
    @IBOutlet weak var emplyoeeLabel: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        emplyoeeLabel.text = "Employee segment selected";

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func changeScreen(_ sender: Any) {
        if(employeeSegment.selectedSegmentIndex == 0)
        {
            emplyoeeLabel.text = "Employee segment selected";
        }
        else  {
            emplyoeeLabel.text = "Employer segment selected";
        }
       }
    
}
