//
//  NotificationCell.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 10/8/2022.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack{
            Image("cat")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text("Gladis")
                .font(.system(size: 14, weight: .semibold))
            +
            Text(" has followed you")
                .font(.system(size: 15))
            +
            Text(" 2d")
                .font(.system(size: 12))
                .foregroundColor(.gray)
            
            Spacer()
            Button(action: {
                
            }, label: {
                
               Text("Follow")
                    .font(.system(size: 14, weight: .semibold))
                    .frame(width: 80, height: 32)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                
            }) 
        }.padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
