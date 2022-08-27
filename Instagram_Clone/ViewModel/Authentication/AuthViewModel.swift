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
    @Published var currentUser: User?
    
    
    static let shared = AuthViewModel()
    // no need to login every time checks for current user is login
    init(){
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    func login(withEmail email:String, withpassword password: String){
        Auth.auth().signIn(withEmail: email, password: password) { (result, err) in
            if let err = err{
                print(err.localizedDescription)
                return
            }
            guard let user = result?.user else{return}
            self.userSession = user
            self.fetchUser()
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
                self.userSession = user
                self.fetchUser()
                print("user created......")
            }
        }
    }
    
    
    func logout(){
        self.userSession = nil
        try?Auth.auth().signOut()
    }
    
    func fetchUser(){
        guard let uid = userSession?.uid else {return}
        Firestore.firestore().collection("users").document(uid).getDocument { (snap, err) in
            if let err = err {
                print(err.localizedDescription)
                return
            }
            guard let user = try? snap?.data(as: User.self) else {return}
            self.currentUser = user
        }
    }
}
