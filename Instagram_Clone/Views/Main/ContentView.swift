//
//  ContentView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 3/8/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
       // RegisterView().environmentObject(AuthViewModel.shared)
        Group{
            if viewModel.userSession == nil {
                SignUpView()
            }
            else{
                MainView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
