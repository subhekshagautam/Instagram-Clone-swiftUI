//
//  SignUpView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 16/8/2022.
//

import SwiftUI

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        NavigationView{
            VStack {
                Image("instagram-text-logo")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 220)
                    .foregroundColor(.black)
                
                VStack(spacing: -16){
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 32)
                    CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock")
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 32)
                    
                    HStack{
                        Spacer()
                        
                        NavigationLink(destination: ForgotPasswordView(email: $email).navigationBarHidden(true),label: {
                            Text("Forgotten Password")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(.blue)
                                .padding(.top)
                                .padding(.trailing,30)
                        })
                        
                    }
                    
                }
                CustomButton(buttonTitle: "Login"){
                    viewModel.login(withEmail: email, withpassword: password)
                }
                Spacer()
                
                NavigationLink(destination: RegisterView().navigationBarHidden(true), label: {
                    HStack{
                        Text("Don't have an account?")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.gray)
                        Text("Register")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.blue)
                    }
                })
            }.padding(.top, -100)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
