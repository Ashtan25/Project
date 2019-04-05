//
//  Question4ViewController.swift
//  Question1POP
//
//  Created by Ashish Singh on 03/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class Question4ViewController: UIViewController, ActivityIndicatorPresenter{
    var indicator = UIActivityIndicatorView()
    
    @IBOutlet weak var switchToShowIndicator: UISwitch!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    @IBAction func onSwitching(_ sender: Any) {
        if(switchToShowIndicator.isOn)
        {
            showIndicator()
        }
        else
        {
            hideIndicator()
        }
    }
    
    
}


public protocol ActivityIndicatorPresenter {
    
    /// The activity indicator
    var indicator: UIActivityIndicatorView { get }
    
    func showIndicator()
    
    func hideIndicator()
}

public extension ActivityIndicatorPresenter where Self: UIViewController {
    
    func showIndicator() {
        self.indicator.style = .gray
        self.indicator.frame = CGRect(x: 50, y:50, width: 100, height: 100)
        self.indicator.center = CGPoint(x: self.view.bounds.size.width / 2, y: self.view.bounds.height - 200 )
        self.view.addSubview(self.indicator)
        self.indicator.startAnimating()
    }
    
    func hideIndicator() {
        self.indicator.stopAnimating()
        self.indicator.removeFromSuperview()
    }
}
