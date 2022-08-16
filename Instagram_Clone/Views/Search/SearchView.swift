//
//  SearchView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 3/8/2022.
//

import SwiftUI

struct SearchView: View {
    @State var seacrchText = ""
    @State var inSearchMode = false
    
    var body: some View {
        ScrollView{
            SearchBar(userText: $seacrchText, isEditing: $inSearchMode)
                .padding()
            ZStack{
                if inSearchMode {
                    UserListView()
                }
                else{
                    PostGridView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
