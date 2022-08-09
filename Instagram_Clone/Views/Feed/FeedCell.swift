//
//  FeedCell.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 9/8/2022.
//

import SwiftUI

struct FeedCell: View {
    
    var width : CGFloat
    var height : CGFloat
    
    
    init(imageWidth: CGFloat, imageHeight: CGFloat) {
        width = imageWidth
        height = imageHeight
    }
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack {
                Image("ted")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("Tedmosby")
                    .font(.system(size: 14, weight: .semibold))
                // image with new change ... three dots
                Spacer()
                Image(systemName:"ellipsis")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .clipped()
                    .padding(.trailing, 10)
            }
            .padding([.leading, .bottom], 8)
            
            Image("cat")
                .resizable()
                .scaledToFill()
                .frame(width:  width , height: height )
                .clipped()
            
            HStack(spacing: 16){
                Image(systemName:"heart")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .clipped()
                    .padding(4)
                Image(systemName:"bubble.right")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .clipped()
                    .padding(4)
                Image(systemName:"paperplane")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .clipped()
                    .padding(4)
                
                //image for save the post
                Spacer()
                Image(systemName:"bookmark")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .clipped()
                    .padding(4)
                    .padding(.trailing, 10)
                
            }
            .padding(4)
            .foregroundColor(.black)
            
            
            Text("25 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 0.5)
            HStack{
                Text("tedmosby")
                    .font(.system(size: 14, weight: .semibold)) +
                Text("I look great on this look")
                    .font(.system(size: 14))
            }
            .padding(.horizontal,8)
            
            Text("2 HOUR AGO")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, -2)
        }
        
        
    }
}

