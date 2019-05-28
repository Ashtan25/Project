//
//  ViewController.swift
//  Employative
//
//  Created by Ashish Singh on 19/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func welcomeButton(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "ListViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}

