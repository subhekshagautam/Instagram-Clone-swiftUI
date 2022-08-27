//
//  BackButton.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 19/8/2022.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        Button {
            dismiss()
        } label: {
            
            HStack(spacing:1){
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                Text("Activity")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.black)
                Spacer()
            }
            
            
        }
        .padding([.top,.leading,.trailing],8)
        
    }
}
