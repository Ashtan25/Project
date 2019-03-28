//
//  ViewController.swift
//  Question3Delegation
//
//  Created by Ashish Singh on 27/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController,UNUserNotificationCenterDelegate {
    let time = Date()
    let user = UNUserNotificationCenter.current()
    @IBOutlet weak var notificationLabel: UILabel!
    
    @IBOutlet weak var notificationTextField: UITextField!
    @IBOutlet weak var notificationButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationLabel.text = "Click to Notify"
    checkRegister()
    }
    @objc func checkRegister(){
        user.requestAuthorization(options: [.alert,.badge,.sound], completionHandler: {(granted,error) in
            if granted {
                print("Success")
                
            } else{
                print("Failure")
            }
        })
    }

   
    @IBAction func notificationAction(_ sender: Any) {
        notificationLabel.text = "Notification Done"
        user.removeAllPendingNotificationRequests()
        toRegisterSection()
        let content = UNMutableNotificationContent()
        content.title = "Warning!!!!!"
        content.subtitle = "\(time)"
        
        content.body = "This is the warning message"
        content.sound = UNNotificationSound(named: UNNotificationSoundName(rawValue: "definite.m4r"))
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 30, repeats: false)
        let request = UNNotificationRequest(identifier:UUID().uuidString , content:content , trigger: trigger)
        user.add(request)
        
    }
    
    
    func toRegisterSection(){
        user.delegate = self
    }
    
    
    
    
}

