//
//  ProfileViewModel.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 26/8/2022.
//

import SwiftUI
import Firebase
import FirebaseStorage

class ProfileViewModel : ObservableObject {
    @Published var user: User
    init(user: User){
        self.user = user
    }
    
    func changeProfileImage( imgae: UIImage, completion: @escaping(String) -> Void  ){
        guard let uid = self.user.id else {return}
        ImageUploader.uploadImage(image: imgae, type: .profile) { imageURL in
            
            Firestore.firestore().collection("users").document(uid).updateData(["profileImageURL": imageURL]) { err in
                if let err = err {
                    print(err.localizedDescription)
                    return
                }
            }
        }
    }
}
