//
//  ListViewController.swift
//  Employative
//
//  Created by Ashish Singh on 19/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    var array = [EmployeeDetails]()
    let dataURL = "http://dummy.restapiexample.com/api/v1/employees"

    @IBOutlet weak var employeeListTableView: UITableView!
    
    @IBOutlet weak var titleEmployeeView: CustomNavBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkController.loadData(urlString: dataURL) { (employeeList, responseErr) in
            if let err = responseErr{
                debugPrint(err.localizedDescription)
            }else{
                self.array = employeeList as! Array<EmployeeDetails>
                print(self.array)
                DispatchQueue.main.async {
                    
                    self.employeeListTableView.reloadData()
                }
                
                
            }
        }
      
        navigationController?.setNavigationBarHidden(true, animated: true)
        let nib = UINib(nibName: "EmployeeTableViewCell", bundle: nil)
        employeeListTableView.register(nib, forCellReuseIdentifier: "Cell")
        employeeListTableView.delegate = self
        employeeListTableView.dataSource = self
       
    }
   

}

extension ListViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = employeeListTableView.dequeueReusableCell(withIdentifier: "Cell") as! EmployeeTableViewCell
        cell.nameLabelCell.text = array[indexPath.row].employee_name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        self.navigationController?.pushViewController(controller, animated: true)
       
        controller.employeeId = self.array[indexPath.row].id!
            
    }
    
    
    
    
}
