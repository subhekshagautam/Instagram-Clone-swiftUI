//
//  CustomButton.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 16/8/2022.
//

import SwiftUI

struct CustomButton: View {
    
    var buttonTitle : String
    var buttonWidth : CGFloat
    var buttonHeight : CGFloat
    var buttonBackgroundColor : SwiftUI.Color
    var clicked: (() -> Void) /// use closure for callback
    var body: some View {

        Button(action: clicked , label: {
            Text(buttonTitle)
                .font(.headline)
                .frame(width: buttonWidth, height: buttonHeight)
                .foregroundColor(Color.white)
                .background(buttonBackgroundColor)
                .cornerRadius(10)
                .padding()
        })
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonTitle: "hello", buttonWidth: 360, buttonHeight: 50, buttonBackgroundColor: .blue){}
    }
}
