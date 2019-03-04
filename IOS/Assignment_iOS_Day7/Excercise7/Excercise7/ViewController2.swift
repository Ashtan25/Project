//
//  ViewController2.swift
//  Excercise7
//
//  Created by Ashish Singh on 04/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet var gotoThird: UIButton!
    @IBOutlet var present: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func GotoThird(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "ViewController3")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func presentThird(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "ViewController3")
           self.present(controller, animated: true, completion: nil)
    }
    
}
