//
//  NetworkController.swift
//  Employative
//
//  Created by Ashish Singh on 06/05/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import Foundation



typealias JSON = [String: Any]

enum ServiceError: Error {
    case noInternetConnection
    case customError(String)
    case other
}

extension ServiceError {
    init(json: JSON) {
        if let message =  json["status_message"] as? String {
            self = .customError(message)
        } else {
            self = .other
        }
    }
}
extension ServiceError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .noInternetConnection:
            return "No Internet connection"
        case .other:
            return "Something went wrong"
        case .customError(_):
            return "My Custom Message"
        }
    }
}

enum RequestMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}


class NetworkController {
    
    class func loadData(urlString: String, completion: @escaping ((Any?,Error?) -> ())){
        guard let url = URL(string: urlString) else{
            debugPrint("unable");
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = RequestMethod.get.rawValue
        let session = URLSession(configuration: .ephemeral)
        let sessionTask = session.dataTask(with: request) { (responseData, response, err) in
            var object: Any? = nil
            if let data = responseData {
                object = try? JSONDecoder().decode([EmployeeDetails].self, from: data)
                
            }
            
            if let httpResponse = response as? HTTPURLResponse, (200..<300) ~= httpResponse.statusCode {
                completion(object, nil)
            } else {
                let error = (object as? JSON).flatMap(ServiceError.init) ?? ServiceError.other
                completion(nil, error)
            }
        }
        sessionTask.resume()
}

}
