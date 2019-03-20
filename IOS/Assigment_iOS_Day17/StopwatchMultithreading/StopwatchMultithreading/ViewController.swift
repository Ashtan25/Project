//
//  ViewController.swift
//  StopwatchMultithreading
//
//  Created by Ashish Singh on 19/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
    
    @IBOutlet weak var stopwatchLabel: UILabel!
    var seconds = 0
    var minutes = 0
    var value:Int = 1
    var timer = Timer()
    var isTimerRunning = false
    var lap = [Any]()
    
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
   
    @IBOutlet weak var recordTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recordTableView.dataSource = self
        let nib = UINib.init(nibName: "RecordTableViewCell", bundle: nil)
        recordTableView.register(nib, forCellReuseIdentifier: "cellTable")
        recordTableView.reloadData()
    
    }
    
   
    @IBAction func resetFunction(_ sender: Any) {
        isTimerRunning = false
        playPauseButton.isEnabled = true
        seconds = 0
        minutes = 0
        value = 0
        lap = []
        stopwatchLabel.text = "0\(minutes):0\(seconds)"
        timer.invalidate()

        recordTableView.reloadData()
        recordTableView.fadeOut()
        
    
        
    }
    
    @IBAction func recordFunction(_ sender: Any) {
        
        if isTimerRunning {
            DispatchQueue.main.async {
                
            
            self.recordTableView.isHidden = false
            
                let time:[String:Any] = ["Lap Number     \(self.value)": self.stopwatchLabel!.text!]
                self.value = self.value + 1
                self.lap.insert(time, at: 0)
            
                self.recordTableView.reloadData()
                if self.recordTableView.isHidden{
                self.recordTableView.fadeIn()
                }
            }
        }
    }
    
    @IBAction func playPauseFunction(_ sender: Any) {
      
//        if(timer != nil)
//        {
            runTimer()
        isTimerRunning = true
        playPauseButton.isEnabled = false
      //  }
    }
    
    func runTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    @objc func updateTimer() {
        if seconds < 9 {
            seconds += 1
            if minutes < 10{
                stopwatchLabel.text = "0\(minutes):0\(seconds)"
            }
            else{
                stopwatchLabel.text = "\(minutes):0\(seconds)"
            }
            if seconds == 59{
                seconds = 0
                minutes += 1
            }
            if minutes == 59 {
                seconds += 1
                minutes = 0
            }
            
        }
        else{
            seconds += 1
            if minutes < 10{
                stopwatchLabel.text = "0\(minutes):\(seconds)"
            }
            else{
                stopwatchLabel.text = "\(minutes):\(seconds)"
                
            }
            if seconds == 59{
                seconds = 0
                minutes += 1
            }
            if minutes == 59 {
                seconds += 1
                minutes = 0
            }
            
        }
    }
        
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lap.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = recordTableView.dequeueReusableCell(withIdentifier: "cellTable") as! RecordTableViewCell
        cell.setRecordLabel(value: lap[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
        
    }
    extension UITableView {
        func fadeIn(_ duration: TimeInterval? = 0.5, onCompletion: (() -> Void)? = nil) {
            self.alpha = 0
            self.isHidden = false
            UIView.animate(withDuration: duration!, animations: { self.alpha = 1 }, completion: { (value: Bool) in if let complete = onCompletion { complete() }})
            
        }
        func fadeOut(_ duration: TimeInterval? = 0.5, onCompletion: (() -> Void)? = nil){
            UIView.animate(withDuration: duration!, animations: { self.alpha = 0 }, completion: { (value: Bool) in self.isHidden = true
                if let complete = onCompletion { complete()}})}
        
}



