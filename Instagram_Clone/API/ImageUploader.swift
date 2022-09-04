//
//  ImageUploader.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 2/9/2022.
//

import SwiftUI
import Firebase
import FirebaseStorage

enum UploadType {
    
    case profile
    case Post
    
    var filePath : StorageReference{
        let fileName = NSUUID().uuidString
        switch self{
        case .profile:
            return  Storage.storage().reference(withPath:"/profile_images\(fileName)")
        case .Post:
            return Storage.storage().reference(withPath:"/post_images\(fileName)")
        }
        
    }
}

struct ImageUploader {
    static func uploadImage(image: UIImage, type: UploadType, completion: @escaping(String)-> Void){
        guard let imageData = image.jpegData(compressionQuality: 0.5) else {return}
        
        let ref = type.filePath
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
                completion(imageURL)
            }
        }
    }
}
