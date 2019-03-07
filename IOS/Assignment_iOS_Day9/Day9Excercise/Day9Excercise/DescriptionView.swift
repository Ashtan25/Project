//
//  DescriptionView.swift
//  Day9Excercise
//
//  Created by Ashish Singh on 07/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class DescriptionView: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var profilePictureView:
    UIImageView!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addProfilePictureButton: UIButton!
    @IBOutlet weak var doneButtonProceed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePictureView.layer.borderWidth=1.0
        profilePictureView.layer.masksToBounds = false
        profilePictureView.layer.cornerRadius = profilePictureView.frame.width/2
        profilePictureView.clipsToBounds = true

        // Do any additional setup after loading the view.
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
            profilePictureView.image = image
            
            
        }else{
            print("Something went wrong")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
}
