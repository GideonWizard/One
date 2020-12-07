//
//  Person.swift
//  MVP
//
//  Created by Владимир Колодезников on 06.10.2020.
//

import Foundation

struct Comment: Decodable {
    var postId: Int
    var Id: Int
    var name: String
    var email: String
    var body: String    
}
