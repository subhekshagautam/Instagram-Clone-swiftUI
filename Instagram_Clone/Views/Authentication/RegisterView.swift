//
//  RegisterView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 16/8/2022.
//

import SwiftUI

struct RegisterView: View {
    
    @State var username = ""
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
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person.circle")
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 32)
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
                }
                CustomButton(buttonTitle: "Register", buttonWidth: 360, buttonHeight: 50, buttonBackgroundColor: .blue){
                    viewModel.register(withEmail:email , withPassword: password, username: username)
                }
                
                Spacer()
                
                NavigationLink(destination: SignUpView().navigationBarHidden(true), label: {
                    HStack{
                        Text("Already have an account?")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.gray)
                        Text("Sign Up")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.blue)
                    }
                })
            }.padding(.top, -100)
        }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
