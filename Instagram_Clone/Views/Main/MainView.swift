//
//  MainView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 3/8/2022.
//

import SwiftUI

struct MainView: View {
    let user: User
    var body: some View {
        
        TabView {
            
            FeedView().tabItem {
                Image(systemName: "house")
            }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            PostView().tabItem {
                Image(systemName: "plus.circle")
            }
            
            NotificationView().tabItem {
                Image(systemName: "suit.heart")
            }
            
            ProfileView(user: user).tabItem {
                Image(systemName: "person.crop.circle")
            }
        }
    }
}


