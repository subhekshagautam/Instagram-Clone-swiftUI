//
//  Instagram_CloneApp.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 3/8/2022.
//

import SwiftUI
import Firebase

@main
struct Instagram_CloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }

    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
