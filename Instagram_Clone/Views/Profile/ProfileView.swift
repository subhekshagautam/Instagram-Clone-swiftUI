//
//  ProfileView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 3/8/2022.
//

import SwiftUI

struct ProfileView: View {
    let user : User
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                
                ProfileHeaderView(viewModel: ProfileViewModel(user: user))
                ProfileButtonView(viewModel: ProfileViewModel(user: user))
                PostGridView()
                
            }.padding(.top)
        }
    }
}


