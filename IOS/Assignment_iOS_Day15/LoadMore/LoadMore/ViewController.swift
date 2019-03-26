//
//  ViewController.swift
//  LoadMore
//
//  Created by Ashish Singh on 25/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,capabaleToLoad,UIScrollViewDelegate {
    
    @IBOutlet weak var scrollViewDrag: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        loadTheString()
    }


}

protocol capabaleToLoad {
    func loadTheString()
}

extension capabaleToLoad where Self : UIScrollViewDelegate
{
    func loadTheString()
    {
        print("Loading The Data please wait.........")
    }

}
