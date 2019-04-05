//
//  Question2ViewController.swift
//  Question1POP
//
//  Created by Ashish Singh on 29/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
protocol ToPresentToast {
    func ToToast(label: String)
}



    class Question2ViewController: UIViewController  {
        @IBOutlet weak var toastLabel: UILabel!
        
       
        
        override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
        @IBAction func showToastAction(_ sender: Any) {
             toastLabel.ToToast(label: "This is a Toast")
        }
}


    


extension UILabel: ToPresentToast{
    func ToToast(label: String) {
        self.isHidden = false
        self.backgroundColor = UIColor.cyan
        self.clipsToBounds = true
        self.text = label
        UIView.animate(withDuration: 3, delay: 3.0, options: .transitionFlipFromTop, animations: {self.alpha = 0.0} , completion: {(isCompleted) in
            
        })
        
}
}
