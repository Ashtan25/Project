//
//  ViewController.swift
//  Question1
//
//  Created by Ashish Singh on 18/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CellTable")
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        switch section{
       
        case 0:
            return "Action"
            
        case 1:
            return "Drama"
        
        case 2:
            return "Science Fiction"
        
        case 3:
            return "Kids"
            
        case 4:
            return "Horror"
            
        default:
            return "Nothing"
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTable", for: indexPath) as! TableViewCell
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    

   


}

