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
                
                HStack() {
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.system(size: 16, weight: .semibold))
                            .frame(width: 320, height: 32)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    
                    Button {
                        AuthViewModel.shared.logout()
                    } label: {
                        Text("Logout")
                            .font(.system(size: 14, weight: .semibold))
                            .frame(width: 60, height: 32)
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(5)
                    }
                    
                }
                
                
                PostGridView()
                
            }.padding(.top)
        }
    }
}


