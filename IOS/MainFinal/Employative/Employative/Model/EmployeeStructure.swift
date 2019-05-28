//
//  EmployeeStructure.swift
//  Employative
//
//  Created by Ashish Singh on 06/05/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import Foundation
struct EmployeeDetails: Decodable {
    let id: String?
    let employee_name: String?
    let employee_salary: String?
    let employee_age: String?
    let profile_image: String?
}
extension EmployeeDetails{
    init(json: JSON) {
        self.id = json["id"] as? String
        self.employee_name = json["employee_name"] as? String
        self.employee_salary = json["employee_salary"] as? String
        self.employee_age = json["employee_age"] as? String
        self.profile_image = json["profile_image"] as? String
}
}
