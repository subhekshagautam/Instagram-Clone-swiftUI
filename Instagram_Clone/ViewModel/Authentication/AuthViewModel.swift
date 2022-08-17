//
//  AuthViewModel.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 17/8/2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
     static let shared = AuthViewModel()
    
    func register(withEmail email: String, withPassword password: String){
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            if let err = err{
                print(err.localizedDescription)
                return
            }
            guard let user = result?.user else {return}
            print(user)
        }
    }
}
