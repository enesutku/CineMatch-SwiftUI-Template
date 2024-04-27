//
//  CardService.swift
//  CineMatch
//
//  Created by Enes UTKU on 27.04.2024.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({ CardModel(user: $0) })
    }
}
