//
//  CustomButton.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 16/8/2022.
//

import SwiftUI

struct CustomButton: View {
    
    var buttonTitle : String
    var clicked: (() -> Void) /// use closure for callback
    var body: some View {

        Button(action: clicked , label: {
            Text(buttonTitle)
                .font(.headline)
                .frame(width: 360, height: 50)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
                .padding()
        })
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonTitle: "hello"){}
    }
}
