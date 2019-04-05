//
//  Question6ViewController.swift
//  Question1POP
//
//  Created by Ashish Singh on 04/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
protocol Roundable {
    func round(view: UIView)
}
extension Roundable{
    func round(view: UIView) {
    view.clipsToBounds = true
     view.layer.cornerRadius = (view.frame.size.height)/2
    }
    
}
protocol Bordable {
    func border(view: UIView)
}
extension Bordable{
    func border(view: UIView) {
       view.layer.borderWidth = 5.0
        
    }
    
}
class Question6ViewController: UIViewController, Roundable, Bordable {

    @IBOutlet weak var viewOrange: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        round(view: imageView)
        border(view: viewOrange)
        
        

       
    }
    

}
