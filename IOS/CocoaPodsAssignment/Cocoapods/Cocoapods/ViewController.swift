//
//  ViewController.swift
//  Cocoapods
//
//  Created by Ashish Singh on 22/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
import Reachability

class ViewController: UIViewController {
    
    var reach: Reachability?

    override func viewDidLoad() {
        super.viewDidLoad()
        print(isInternetAvailable())
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func isInternetAvailable() -> Bool {
        let reachability: Reachability = Reachability(hostname: "www.google.com")!
        let networkStatus = reachability.connection
        if networkStatus == .none {
            return false
        } else {
            return true
        }
    }
    

}



