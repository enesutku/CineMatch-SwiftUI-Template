//
//  CardStackView.swift
//  CineMatch
//
//  Created by Enes UTKU on 27.04.2024.
//

import SwiftUI

struct CardStackView: View {
    
    @StateObject var viewModel = CardsViewModel(service: CardService())
    
    var body: some View {
        ZStack {
            ForEach(viewModel.cardModels) { card in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
