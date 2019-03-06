//
//  Favourites.swift
//  Task1Coding
//
//  Created by Ashish Singh on 06/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class Favourites: UIViewController {

    
    @IBOutlet weak var imgView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.layer.cornerRadius = imgView.frame.width/2
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
