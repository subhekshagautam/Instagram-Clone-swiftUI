//
//  MainTopBarView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 18/8/2022.
//

import SwiftUI

struct MainTopBarView: View {
    
    let iconSize: CGFloat = 25.0
    @State private var isActive : Bool = false
    var body: some View {
        HStack( alignment: .center,spacing:20){
            LogoDropdown()
            
            Spacer()
            
            Button(action: {
                
               isActive = true
                
            }, label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: iconSize, height: iconSize)
                    .clipped()
                    .foregroundColor(.black)
            }).sheet(isPresented: $isActive){
                UploadPostView()
            }
            
            Button {
              isActive = true
            } label: {
                Image(systemName: "suit.heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: iconSize, height: iconSize)
                    .clipped()
                    .foregroundColor(.black)
            }.sheet(isPresented: $isActive){
                NotificationView()
            }
            
            Image(systemName: "paperplane")
                .resizable()
                .scaledToFit()
                .frame(width: iconSize, height: iconSize)
                .clipped()
                .foregroundColor(.black)
            
        }.padding([.leading, .trailing],20)
    }
}

struct MainTopBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTopBarView()
    }
}
