//
//  ViewController.swift
//  Task2
//
//  Created by Ashish Singh on 05/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewModified: UIView!
    @IBOutlet weak var labelShowcase: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //For Rounded Corner
        viewModified.layer.cornerRadius = 10.0
        //For Shadow
        viewModified.layer.shadowColor = UIColor.init(white: 200.0/255.0, alpha: 1.0).cgColor
        viewModified.layer.shadowOpacity = 4.0
        viewModified.layer.shadowRadius = 7.0
        viewModified.layer.shadowOffset = CGSize(width: -20, height: 10)

    }


}

