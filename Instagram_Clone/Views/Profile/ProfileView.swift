//
//  ProfileView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 3/8/2022.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                ProfileHeaderView()
                
                HStack() {
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.system(size: 16, weight: .semibold))
                            .frame(width: 350, height: 32)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(10)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "person.badge.plus")
                            .font(.system(size: 14, weight: .semibold))
                            .frame(width: 40, height: 32)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(5)
                    }
                    
                }
                
                
                PostGridView()
                
            }.padding(.top)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

