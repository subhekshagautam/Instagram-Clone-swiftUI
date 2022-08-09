//
//  PostGridView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 9/8/2022.
//

import SwiftUI

struct PostGridView: View {
    let items = [GridItem(), GridItem(), GridItem()]
    let width = UIScreen.main.bounds.width / 3
    var body: some View {
        
        LazyVGrid(columns: items, spacing: 2,
                  content: {
            ForEach(0..<10){_ in
                Image("ted")
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: width)
                    .clipped()
            }
        })
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
