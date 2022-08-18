//
//  MainTopBarView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 18/8/2022.
//

import SwiftUI

struct MainTopBarView: View {
    
    let iconSize: CGFloat = 25.0
    
    var body: some View {
        HStack( alignment: .center,spacing:20){
            LogoDropdown()
            
            Spacer()
            
            Image(systemName: "plus.circle")
                .resizable()
                .scaledToFit()
                .frame(width: iconSize, height: iconSize)
                .clipped()
                .foregroundColor(.black)
            
            Image(systemName: "suit.heart")
                .resizable()
                .scaledToFit()
                .frame(width: iconSize, height: iconSize)
                .clipped()
                .foregroundColor(.black)
            
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
