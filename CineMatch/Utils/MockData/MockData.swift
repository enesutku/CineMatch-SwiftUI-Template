//
//  MockData.swift
//  CineMatch
//
//  Created by Enes UTKU on 27.04.2024.
//

import Foundation

struct MockData {
    
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Avengers",
            age: 2010,
            profileImageURLs: ["avengers"]),
        
        .init(
            id: NSUUID().uuidString,
            fullname: "Avengers",
            age: 2010,
            profileImageURLs: ["avengers"]),
    ]
}
