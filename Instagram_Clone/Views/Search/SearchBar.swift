//
//  SearchBar.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 10/8/2022.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var userText: String
    @Binding var isEditing : Bool
    
    var body: some View {
        HStack{
            TextField("search here...",text: $userText)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(red: 0.93, green: 0.94, blue: 0.95))
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading,10)
                            .padding(.trailing,8)
                        
                        Spacer()
                        
                        Button (action: {
                            isEditing = false
                            userText = ""
                            UIApplication.shared.endEditing()
                        }, label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.gray)
                        }).padding(.trailing,8)
                            .transition(.move(edge: .trailing))
                            .animation(.default, value: 1)
                        
                    })
            
        }.onTapGesture {
            isEditing = true
        }
    }
}

