//
//  SecondNewViewController.swift
//  Question2Delegation
//
//  Created by Ashish Singh on 27/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class SecondNewViewController: UIViewController {

    @IBOutlet weak var notificationLabelView2: UILabel!
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
        notificationLabelView2.text = "Message came from third controller : \(name)"
        
    }
    
    //    @objc func fetchData()
    //    {
    //        print("in Second View Controller")
    //        //work to do
    //    }
    @IBAction func onNext2Click(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "ThirdNewViewController") as! ThirdNewViewController
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
