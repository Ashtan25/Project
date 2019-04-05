//
//  GreetViewController.swift
//  Question1POP
//
//  Created by Ashish Singh on 04/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class GreetViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.nameLabel.text = array[indexPath.row].fName
        cell.addressLabel.text = array[indexPath.row].address
        cell.phoneLabel.text = array[indexPath.row].phoneNumber
        cell.emailLabel.text = array[indexPath.row].email
        return cell
    }
    

    @IBOutlet weak var employeeTable: UITableView!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        employeeTable.dataSource = self
        employeeTable.delegate = self
        
        let nib = UINib.init(nibName: "TableViewCell", bundle: nil)
        employeeTable.register(nib, forCellReuseIdentifier: "cell")
        employeeTable.reloadData()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let customView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        customView.backgroundColor = UIColor.white
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("BACK", for: .normal)
        
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.backgroundColor = UIColor.blue
        customView.addSubview(button)
        
        return button
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let abc = TableViewCell()
        messageLabel.ToToast(label: "Greeting Sent To.... \(array[indexPath.row].fName!)!")
        
    }
    
    
    @objc func buttonAction(){
        self.navigationController?.popToRootViewController(animated: true)
    }
}
