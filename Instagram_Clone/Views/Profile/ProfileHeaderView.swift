//
//  ProfileHeaderView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 15/8/2022.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    @State var selectedImage: UIImage?
    @State var userImage: Image? =  Image("profile-placeholder")
    @State var imagePickerRepresented = false
    @State private var shouldPresentActionScheet = false
    @State var sourceType:UIImagePickerController.SourceType = .camera
    @ObservedObject var viewModel : ProfileViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                ZStack{
                    if let imageURL = viewModel.user.profileImageURL {
                        KFImage( URL(string: imageURL))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding(.leading, 16)
                    }
                    else {
                        Button(action:{
                            self.shouldPresentActionScheet .toggle()
                        }){
                           userImage?
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                                .padding(.leading, 16)
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
                        .sheet(isPresented: $imagePickerRepresented,
                               onDismiss:{
                            guard let selectedImage = selectedImage else { return }
                            userImage = Image(uiImage: selectedImage)
                            viewModel.changeProfileImage(imgae: selectedImage) { (_) in
                                print("Debug.....")
                            }
                        },content:{
                            ImagePickerView(image: self.$selectedImage, showImagePicker: self.$imagePickerRepresented, sourceType: self.sourceType)
                        })
                    }
                }
                
                Spacer()
                HStack(spacing: 16) {
                    UserStats(value: 210, title: "Post")
                    UserStats(value: 340, title: "Followers")
                    UserStats(value: 200, title: "Following")
                    
                }.padding(.trailing, 32)
            }
            Text(viewModel.user.username )
                .font(.system(size: 16, weight: .bold))
                .padding([.leading, .top])
        }
    }
}



