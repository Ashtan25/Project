//
//  NewViewController.swift
//  CoreMapLast
//
//  Created by Ashish Singh on 10/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    let controller = ViewController()
    let countryCode = Locale.current.regionCode
    

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    
    @IBAction func showImage(_ sender: Any) {
      
        controller.checkLocationOn()
        print(countryCode)
        if countryCode! == "US"{
            let imageUrlString = "http://www.newsonair.com/writereaddata/News_Pictures/NAT/2018/Nov/NPIC-201811142185.jpg"
            let imageUrl:URL = URL(string: imageUrlString)!
            
                let imageData:NSData = NSData(contentsOf: imageUrl)!
          
                let image = UIImage(data: imageData as Data)
                imageView.image = image
            
            
        
            
            
            
        }

    
    }
    
   
}
