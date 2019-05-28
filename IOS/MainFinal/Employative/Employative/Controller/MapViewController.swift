//
//  MapViewController.swift
//  Employative
//
//  Created by Ashish Singh on 19/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    @IBOutlet weak var titleMapView: CustomNavBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 navigationController?.setNavigationBarHidden(true, animated: true)
        titleMapView.titleLabel.text = "Map"

       
    }
    

    

}
