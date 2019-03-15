//
//  ViewController.swift
//  Excercise11Ques1
//
//  Created by Ashish Singh on 13/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
     var imageHoldingStackView = UIStackView(arrangedSubviews: [])
    var horizontalStackViewFirst = UIStackView(arrangedSubviews: [])
    var horizontalStackViewSecond = UIStackView(arrangedSubviews: [])
    
    
    @IBOutlet weak var changeViewButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func changeViewFunction() {
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        let blackView = UIView()
        blackView.backgroundColor = .black
       
        let noOfViews = String(inputTextField.text!)
        if noOfViews == "1" {
             imageHoldingStackView = UIStackView(arrangedSubviews: [redView])
            
        }
        else if noOfViews == "2" {
            imageHoldingStackView = UIStackView(arrangedSubviews: [redView,yellowView])
            
        }
        else if noOfViews == "3" {
            imageHoldingStackView = UIStackView(arrangedSubviews: [redView,yellowView,blueView])
            
        }
        else if noOfViews == "4"{
            imageHoldingStackView = UIStackView(arrangedSubviews: [horizontalStackViewSecond,horizontalStackViewFirst])
            
            horizontalStackViewFirst = UIStackView(arrangedSubviews: [blackView,yellowView])
            horizontalStackViewSecond = UIStackView(arrangedSubviews: [redView,blueView])
            
            horizontalStackViewSecond.axis = .horizontal
            horizontalStackViewFirst.axis = .horizontal
            
            horizontalStackViewSecond.distribution = .fillEqually
            horizontalStackViewFirst.distribution = .fillEqually
            
            horizontalStackViewSecond.frame = CGRect(x: 0, y: 0, width: imageHoldingStackView.bounds.size.width, height: UIScreen.main.bounds.size.height)
            
             horizontalStackViewFirst.frame = CGRect(x: 0, y: 0, width: imageHoldingStackView.bounds.size.width, height: UIScreen.main.bounds.size.height)
            
        
        }
   
        imageHoldingStackView.axis = .vertical
        imageHoldingStackView.distribution = .fillEqually
        
        view.addSubview(imageHoldingStackView)
        imageHoldingStackView.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height - 200)}
    
}

