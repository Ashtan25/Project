//
//  ViewController.swift
//  Excercise7
//
//  Created by Ashish Singh on 04/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    @IBOutlet var gotoSecond: UIButton!
    var label2: String = "FROM 1ST VIEW"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func GotoSecond(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "ViewController2")
        self.navigationController?.pushViewController(controller, animated: true)
        
    }

}

