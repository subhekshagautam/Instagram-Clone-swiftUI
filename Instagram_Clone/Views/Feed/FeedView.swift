//
//  FeedView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 3/8/2022.
//

import SwiftUI

struct FeedView: View {
    
    var body: some View {
        // var imageSize = FeedCell(imageWidth: UIScreen.main.bounds.width, imageHeight:  UIScreen.main.bounds.height / 2)
        let imageWidth = UIScreen.main.bounds.width
        let imageHeight = UIScreen.main.bounds.height / 2
        
        ScrollView{
            LazyVStack(spacing:32) {
                ForEach(0..<10) { _ in
                    FeedCell(imageWidth: imageWidth, imageHeight: imageHeight)
                }
            }
            
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
