//
//  ForgotPasswordView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 16/8/2022.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @Binding var email:String
    
    init(email: Binding<String>){
        self._email = email
    }
    
    var body: some View {
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
            }
            CustomButton(buttonTitle: "Reset Password", buttonWidth: 360, buttonHeight: 50, buttonBackgroundColor: .blue){
                
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
        }
    }
}
