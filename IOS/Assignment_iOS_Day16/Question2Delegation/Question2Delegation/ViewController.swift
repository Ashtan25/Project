//
//  ViewController.swift
//  Question2Delegation
//
//  Created by Ashish Singh on 27/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var notificationLabelFirstView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: notificationId), object: nil, queue: nil, using: fetchData)
    }
    func fetchData(notification : Notification)
    {
        guard let name = notification.userInfo![1]
            else {
                return
        }
        notificationLabelFirstView.text = "Message came from third controller : \(name)"
        
    }
    @objc func fetchData()
    {
        print("in first View Controller")
    }
    
    @IBAction func nextButtonOnClick(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "SecondNewViewController") as! SecondNewViewController
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    

}

