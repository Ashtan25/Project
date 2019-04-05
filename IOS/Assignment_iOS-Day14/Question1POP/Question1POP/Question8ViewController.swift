//
//  Question8ViewController.swift
//  Question1POP
//
//  Created by Ashish Singh on 04/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

protocol Contactable {
    func fetchData()
}
extension Contactable {
    
    func fetchData(){
        
    }

}
struct Employee {
    var email: String?
    var phoneNumber: String?
    var employeeId: String?
    var fName: String?
    var lName: String?
    var imageUser: UIImage?
    var userRole: String?
    var JoiningDate: String?
    var id: String?
    var address: String?
    
}

var array = [Employee]()

//struct Clients {
//
//    var email: String?
//    var fName: String?
//    var phoneNumber: String?
//    var imageUser: UIImage?
//    var address: String?
//    var id: String?
//
//}
//var clientArray = [Clients]()



class Question8ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    
    @IBOutlet weak var addImageButton: UIButton!
    @IBOutlet weak var resteButton: UIButton!
    @IBOutlet weak var toastLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var joiningDateTextField: UITextField!
    @IBOutlet weak var roleTextField: UITextField!
    @IBOutlet weak var iDTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var employeeID: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func appendInArray(){
    array.append(Employee(email: emailTextField?.text, phoneNumber: phoneNumberTextField?.text, employeeId: employeeID?.text, fName: firstNameTextField?.text, lName: lastNameTextField?.text, imageUser: userImageView?.image, userRole: roleTextField?.text, JoiningDate: joiningDateTextField?.text, id: iDTextField?.text, address: addressTextField?.text))
    }

    @IBAction func submitAction(_ sender: Any) {
        appendInArray()
    }
    
    
    @IBAction func addImage(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (alert:UIAlertAction!) -> Void in
            self.camera()
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { (alert:UIAlertAction!) -> Void in
            self.photoLibrary()
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    
    func camera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self;
            myPickerController.sourceType = .camera
            self.present(myPickerController, animated: true, completion: nil)
        }
    }
    
    func photoLibrary() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self;
            myPickerController.sourceType = .photoLibrary
            self.present(myPickerController, animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            userImageView.image = image
            
            
        }else{
            print("Something went wrong")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func resetFunction(_ sender: Any) {
        addressTextField.text = ""
        joiningDateTextField.text = ""
        roleTextField.text = ""
        iDTextField.text = ""
        lastNameTextField.text = ""
        firstNameTextField.text = ""
        employeeID.text = ""
        phoneNumberTextField.text = ""
        emailTextField.text = ""
        userImageView.image = UIImage(named: "placeHolderIcon.jpg")
        
        
    }

    

}
    

