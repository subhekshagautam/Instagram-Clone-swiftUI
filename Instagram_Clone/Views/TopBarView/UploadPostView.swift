//
//  UploadPostView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 19/8/2022.
//

import SwiftUI

struct UploadPostView: View {
    @State private var selectedImage : UIImage?
    @State var captionText = ""
    @State var imagePickerRepresented = false
    @State private var shouldPresentActionScheet = false
    @State var sourceType:UIImagePickerController.SourceType = .camera
    
    
    var body: some View {
        VStack{
            if selectedImage != nil {
                VStack{
                    HStack(alignment: .top){
                        Image(uiImage: selectedImage!)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 96, height: 96)
                            .clipped()
                        TextArea(text: $captionText, placeholder: "Enter the caption here.....")
                    }   .padding(.top,20)
                        .padding(.leading, 8)
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
            } else {
                Image(systemName: "timelapse")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 96, height: 96)
            }
            Button(action: {
                self.shouldPresentActionScheet = true
            }) {
                Text("Show Image Picker")
            }.actionSheet(isPresented: $shouldPresentActionScheet){
                ActionSheet(title: Text("Add a picture to your post"), message: nil, buttons: [
                    //Button1
                    
                    .default(Text("Camera"), action: {
                        self.imagePickerRepresented = true
                        self.sourceType = .camera
                    }),
                    //Button2
                    .default(Text("Photo Library"), action: {
                        self.imagePickerRepresented = true
                        self.sourceType = .photoLibrary
                    }),
                    
                    //Button3
                    .cancel()
                    
                ])
            }
            .sheet(isPresented: $imagePickerRepresented){
                ImagePickerView(image: self.$selectedImage, showImagePicker: self.$imagePickerRepresented, sourceType: self.sourceType)
                
            }
        }
    }
}


struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
