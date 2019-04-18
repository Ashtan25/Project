//
//  StructureFile.swift
//  NetworkAPI
//
//  Created by Ashish Singh on 08/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import Foundation

struct dataJson : Decodable {
    let format : String
    let width : Int
    let height : Int
    let filename : String
    let id : Int
    let author : String
    let author_url : String
    let post_url : String
}
