//
//  UploadPostViewModel.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 31/8/2022.
//

import SwiftUI
import Firebase
import FirebaseStorage
class UploadPostViewModel : ObservableObject {
    
    func uploadPost(image: UIImage, caption: String){
        
        guard let user = AuthViewModel.shared.currentUser else{return}
        ImageUploader.uploadImage(image: image, type: .Post) { imageURL in
            guard let uid = user.id else {return}
            
            let data = ["caption": caption,
                        "timestamp": Timestamp(date : Date()),
                        "likes" : 0,
                        "imageURL" : imageURL,
                        "ownerUid" : user.id,
                        "ownerImageURL" : user.profileImageURL,
                        "ownerUserName" : user.username] as [String: Any]
            Firestore.firestore().collection("posts").addDocument(data: data) { err in
                if let err = err {
                    print(err.localizedDescription)
                    return
                }
            }
        }
    }
}
