//
//  PostView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 6/8/2022.
//

import SwiftUI

struct PostView: View {
    @State private var selectedImage : UIImage?
    @State var postImage : Image?
    @State var captionText = ""
    @State var imagePickerRepresented = false
    
    var body: some View {
        
        if postImage == nil {
            Button {
                self.imagePickerRepresented.toggle()
                
            } label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipped()
                    .padding(.top)
                    .foregroundColor(.black)
                
            }.sheet(isPresented: $imagePickerRepresented){
                loadImage()
            } content: {
                ImagePicker(image: $selectedImage)
            }
        }
        else if let image = postImage{
            VStack{
                HStack(alignment: .top){
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipped()
                    TextArea(text: $captionText, placeholder: "enter your caption here....")
                }
                .padding()
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

extension PostView{
    func loadImage() {
        guard let selectedImage = selectedImage else {return}
        postImage = Image(uiImage: selectedImage)
    }
}
