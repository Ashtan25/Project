//
//  ViewController.swift
//  Question1
//
//  Created by Ashish Singh on 18/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    struct RecordData{
        var profilePic: UIImage
        var name: String
        var address: String
        var age: String
        var detail: String
    }
    var recordDataArray = [RecordData]()
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var detailTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addPictureButton: UIButton!
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var viewOfTable: UIView!
    @IBOutlet weak var dataTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.layer.borderWidth=1.0
        profileImageView.layer.masksToBounds = false
        profileImageView.layer.cornerRadius = profileImageView.frame.width/2
        profileImageView.clipsToBounds = true
        viewOfTable.isHidden = true
        
        
        let nib = UINib.init(nibName: "TableViewCell", bundle: nil)
        dataTableView.register(nib, forCellReuseIdentifier: "CellTable")
        dataTableView.delegate = self
        dataTableView.dataSource = self
    }

    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recordDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataTableView.dequeueReusableCell(withIdentifier: "CellTable", for: indexPath) as! TableViewCell
        
        cell.cellImageView.image = recordDataArray[indexPath.row].profilePic
        cell.cellNameLabel.text = recordDataArray[indexPath.row].name
        cell.ageNameLabel.text = recordDataArray[indexPath.row].age
        cell.addressNameLabel.text = recordDataArray[indexPath.row].address
        cell.detailNameLabel.text = recordDataArray[indexPath.row].detail
        
        return cell
        
    }
   

    @IBAction func submitAction(_ sender: Any) {
        
        viewOfTable.isHidden = false
        scrollView.isHidden = true
        
        
        recordDataArray.append(RecordData(profilePic: profileImageView.image!  , name: nameTextField.text!  , address: addressTextField.text!, age: ageTextField.text!, detail: detailTextField.text!))
        
        dataTableView.reloadData()
        
    }
    
    
    @IBAction func addPicture(_ sender: Any) {
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
            profileImageView.image = image
            
            
        }else{
            print("Something went wrong")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    }
    


