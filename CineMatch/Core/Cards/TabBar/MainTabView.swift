//
//  MainTabView.swift
//  CineMatch
//
//  Created by Enes UTKU on 29.03.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            CardView()
                .tabItem { Image(systemName: "flame") }
                .tag(0)
            
            SearchView()
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            
            NotificationsView()
                .tabItem { Image(systemName: "bell") }
                .tag(2)
            
            ProfileView()
                .tabItem { Image(systemName: "person") }
                .tag(3)
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
}
