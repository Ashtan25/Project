//
//  ViewController.swift
//  Question3
//
//  Created by Ashish Singh on 15/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainStackView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
    mainStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
    mainStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
    mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }


}

