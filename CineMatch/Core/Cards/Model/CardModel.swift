//
//  CardModel.swift
//  CineMatch
//
//  Created by Enes UTKU on 27.04.2024.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable {
    var id: String { return user.id }
}
