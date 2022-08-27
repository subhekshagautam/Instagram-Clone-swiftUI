//
//  PostImageView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 21/8/2022.
//

import SwiftUI

struct PostImageView: View {
    @State var postImage : Image?
    @State var captionText = ""
    var body: some View {
        if  let image = postImage{
            VStack{
                HStack(alignment: .top){
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipped()
                    TextField("Enter your caption......", text: $captionText)
                }
                
                Button {
                    
                } label: {
                    Text("share")
                        .font(.system(size: 16))
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

struct PostImageView_Previews: PreviewProvider {
    static var previews: some View {
        PostImageView()
    }
}
