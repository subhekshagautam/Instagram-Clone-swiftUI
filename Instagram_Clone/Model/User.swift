//
//  User.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 22/8/2022.
//

import Firebase
import FirebaseFirestoreSwift

struct User: Decodable, Identifiable{
    
    var username: String
    var email: String
    let profileImageURL: String?
    @DocumentID var id: String?
    
    var isCurrentUser: Bool{
        return AuthViewModel.shared.userSession?.uid == id
    }
    
}
