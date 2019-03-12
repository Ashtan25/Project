//
//  CircleImageController.swift
//  Excercise10
//
//  Created by Ashish Singh on 10/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class CircleImageController: UIViewController {

   
    @IBOutlet weak var circleImage: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleImage.layer.borderWidth = 1.0
        circleImage.layer.cornerRadius = circleImage.frame.size.height/2
        circleImage.layer.masksToBounds = true
        circleImage.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    
  
   
    
}
