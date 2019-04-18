//
//  ImagePoper.swift
//  NetworkAPI
//
//  Created by Ashish Singh on 08/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ImagePoper: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var author: UIButton!
    
    var openURL = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func onAuthorButtonClick(_ sender: Any) {
        UIApplication.shared.openURL(NSURL(string: openURL)! as URL)
    }
}
