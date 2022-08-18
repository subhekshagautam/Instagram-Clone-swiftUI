//
//  AuthViewModel.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 17/8/2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    @Published var userSession: Firebase.User?
    static let shared = AuthViewModel()
    
    func login(withEmail email:String, withpassword password: String){
        Auth.auth().signIn(withEmail: email, password: password) { (result, err) in
            if let err = err{
                print(err.localizedDescription)
                return
            }
            guard let user = result?.user else{return}
            self.userSession = user
        }
    }
    
    func register(withEmail email: String, withPassword password: String, username: String){
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            if let err = err{
                print(err.localizedDescription)
                return
            }
            guard let user = result?.user else {return}
            let data = ["email": email,
                        "username": username,
                        "uid": user.uid]
            Firestore.firestore().collection("users").document(user.uid).setData(data) { err in
                if let err = err{
                    print(err.localizedDescription)
                    return
                }
                print("user created......")
            }
        }
    }
}
