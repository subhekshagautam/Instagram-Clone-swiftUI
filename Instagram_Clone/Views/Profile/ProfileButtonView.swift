//
//  ProfileButtonView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 28/8/2022.
//

import SwiftUI

struct ProfileButtonView: View {
    @ObservedObject var viewModel : ProfileViewModel
    var body: some View {
        
        if viewModel.user.isCurrentUser{
            HStack(spacing: -10) {
                
                CustomButton(buttonTitle: "Edit Profile", buttonWidth: 330, buttonHeight: 32, buttonBackgroundColor: .blue) {
                    
                }
                
                CustomButton(buttonTitle: "Logout", buttonWidth: 60, buttonHeight: 32, buttonBackgroundColor: .red) {
                    AuthViewModel.shared.logout()
                }

            }.padding([.top, .bottom],-20)
        }
        else{
            HStack(spacing: -10) {
                
                CustomButton(buttonTitle: "Follow", buttonWidth: 195, buttonHeight: 32, buttonBackgroundColor: .blue) {
                    
                }
                
                CustomButton(buttonTitle: "Message", buttonWidth: 195, buttonHeight: 32, buttonBackgroundColor: .blue) {
                   
                }

            }.padding([.top, .bottom],-20)
        }


    }
}
