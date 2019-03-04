//
//  ViewController3.swift
//  Excercise7
//
//  Created by Ashish Singh on 04/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet var gotoFourth: UIButton!
    @IBOutlet var dismissButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third"

        // Do any additional setup after loading the view.
    }
    @IBAction func GotoFourth(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "ViewController4")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func dismissThird(){
    
    self.dismiss(animated: true, completion: nil)
    
    }

    

}
