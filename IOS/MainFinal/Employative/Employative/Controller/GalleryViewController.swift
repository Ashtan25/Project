//
//  GalleryViewController.swift
//  Employative
//
//  Created by Ashish Singh on 19/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
   
    @IBOutlet weak var titleGalleryView: CustomNavBar!
    override func viewDidLoad() {
        super.viewDidLoad()
 navigationController?.setNavigationBarHidden(true, animated: true)
        titleGalleryView.titleLabel.text = "Gallery"
        
    }
    


}
