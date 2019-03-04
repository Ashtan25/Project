//
//  ViewContr5.swift
//  Excercise7
//
//  Created by Ashish Singh on 04/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewContr5: UIViewController {
    @IBOutlet var gotoSpecificVC: UIButton!
    @IBOutlet var gotoRoot: UIButton!
    @IBOutlet var back: UIButton!
    @IBOutlet var LAbel1: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fifth"
        let navArray = self.navigationController?.viewControllers
        let obj = navArray![0] as? ViewController
        let str = obj?.label2
        print(str!)
        LAbel1.text = str!
        
       }
    @IBAction func GotoSpecificVC(){
        let navArray = self.navigationController?.viewControllers
        self.navigationController?.popToViewController(navArray![1], animated: true)
    }
    @IBAction func GotoRoot(){
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func Back(){
        self.navigationController?.popViewController(animated: true)
    }
    

}
