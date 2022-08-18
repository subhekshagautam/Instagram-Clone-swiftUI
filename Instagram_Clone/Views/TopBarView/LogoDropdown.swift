//
//  LogoDropdown.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 18/8/2022.
//

import SwiftUI

struct LogoDropdown: View {
    @State var showStoreDropDown: Bool = false
    var body: some View {
        HStack(alignment: .center, spacing:2) {
            
            Image("instagram-text-logo")
                .resizable()
                .frame(width: 150, height: 50)
                .clipped()
                .scaledToFit()
            
            Menu {
                DropDownView(callBack: { data in
                    print(data)
                })
            } label: {
                Image(systemName: "chevron.down")
                    .resizable()
                    .frame(width:15.0, height: 10.0)
                    .foregroundColor(.black)
            }
        }
    }
}

struct LogoDropdown_Previews: PreviewProvider {
    static var previews: some View {
        LogoDropdown()
    }
}
