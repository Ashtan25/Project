//
//  ViewController.swift
//  Day9Excercise
//
//  Created by Ashish Singh on 06/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var contactField: UITextField!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var dateOfBirthPicker: UIDatePicker!
    @IBOutlet weak var dateOfBirthField: UITextField!
    @IBOutlet weak var placeOfBirthLabel: UILabel!
    @IBOutlet weak var palceOfBirthPicker: UIPickerView!
    @IBOutlet weak var placeOfBirthField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var privateAccountLabel: UILabel!
    @IBOutlet weak var privateAccountSwitch: UISwitch!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var doneButtonOnView: UIButton!
    @IBOutlet weak var dateOfBirthHolder: UIView!
    @IBOutlet weak var proceedButton: UIButton!

    let cities = ["Varanasi","Agra","Delhi","Lucknow","Ghaziabad","Mumbai"]

    override func viewDidLoad() {
        super.viewDidLoad()
        palceOfBirthPicker.delegate = self
        palceOfBirthPicker.dataSource = self
        submitButton.isEnabled = false
    
        // Do any additional setup after loading the view, typically from a nib.
        }
    
    @IBAction func check(){
        if (usernameField.text?.isEmpty)! || (emailField.text?.isEmpty)! || (contactField.text?.isEmpty)! || (dateOfBirthField.text?.isEmpty)! || (passwordField.text?.isEmpty)!  {
            submitButton.isEnabled = false
        }else {
            submitButton.isEnabled = true
        }
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        placeOfBirthField.text = cities[row]
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == usernameField {
             emailField.becomeFirstResponder()
        } else if textField == emailField{
        contactField.becomeFirstResponder()
            
        } else if textField == contactField {
            dateOfBirthField.resignFirstResponder()
        } else if textField == placeOfBirthField{
          passwordField.becomeFirstResponder()
        }
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == placeOfBirthField{
          palceOfBirthPicker.isHidden = false
          dateOfBirthHolder.isHidden  = false
          dateOfBirthPicker.isHidden = true
            

        }
        if textField == dateOfBirthField{
            dateOfBirthPicker.isHidden = false
            dateOfBirthHolder.isHidden = false
            palceOfBirthPicker.isHidden = true
           
            }
    }
    
    @IBAction func dateOfBirthFilled(_ sender: Any) {
        let selectedDate = dateOfBirthPicker.date
        let dateFormatType = DateFormatter()
        dateFormatType.dateStyle = .medium
    
        dateOfBirthField.text = dateFormatType.string(from: selectedDate)
        dateOfBirthHolder.isHidden = true
    }

    @IBAction func switchChange(_ sender: Any) {
        if privateAccountSwitch.isOn {
            print("Private Account Enabled")
        }
        else{
            print("Private Account Disabled")
        }
    }
    


}


