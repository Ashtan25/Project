//
//  ViewController4.swift
//  Excercise7
//
//  Created by Ashish Singh on 04/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    @IBOutlet var gotoFifth: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fourth"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func GotoFifth(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "ViewContr5")
        self.navigationController?.pushViewController(controller, animated: true)

    }

}
