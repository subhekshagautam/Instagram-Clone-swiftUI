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
        
        guard let imageData = imgae.jpegData(compressionQuality: 0.5) else {return}
        
        let fileName = NSUUID().uuidString
        
        let ref = Storage.storage().reference(withPath:"/profile_images\(fileName)")
        
        ref.putData(imageData, metadata: nil) { (_, err) in
            if let err = err {
                print(err.localizedDescription)
                return
            }
            ref.downloadURL { (url, err) in
                if let  err = err {
                    print(err.localizedDescription)
                    return
                }
                guard let imageURL = url?.absoluteString else {return}
                guard let uid = self.user.id else {return}
                Firestore.firestore().collection("users").document(uid).updateData(["profileImageURL": imageURL]) { err in
                    if let err = err {
                        print(err.localizedDescription)
                        return
                    }
                }
            }
        }
    }
}
