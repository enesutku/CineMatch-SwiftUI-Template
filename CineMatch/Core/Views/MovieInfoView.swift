//
//  MovieInfoView.swift
//  CineMatch
//
//  Created by Enes UTKU on 25.03.2024.
//

import SwiftUI

struct MovieInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Avengers: Age of Ultron")
                    .font(.title3)
                    .fontWeight(.heavy)
                
                Spacer()
                
                Button(action: {
                    print("DEBUG: Show Details")
                }, label: {
                    Image(systemName: "arrow.up")
                        .fontWeight(.bold)
                        .imageScale(.medium)
                })
            }
        Text("2015")
            .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(25)
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    MovieInfoView()
}
