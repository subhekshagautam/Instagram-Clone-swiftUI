//
//  ProfileHeaderView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 15/8/2022.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                VStack {
                    Image("ted")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .padding(.leading, 16)
                    
                }
                
                Spacer()
                HStack(spacing: 16) {
                    
                    UserStats(value: 210, title: "Post")
                    UserStats(value: 340, title: "Followers")
                    UserStats(value: 200, title: "Following")
                    
                }.padding(.trailing, 32)
            }
            Text(" Ted Tedmosby")
                .font(.system(size: 16, weight: .semibold))
                .padding(.leading, 8)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
