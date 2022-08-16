//
//  UserListView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 10/8/2022.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
               ForEach(0..<10){ _ in
                    UserCell()
                       .padding(.leading, 8)
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
