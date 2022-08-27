//
//  NotificationsView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 3/8/2022.
//

import SwiftUI

struct NotificationView: View {
    
    var body: some View {
        VStack(spacing:2){
            BackButton()
            Divider().foregroundColor(.gray)
            ScrollView{
                LazyVStack{
                    ForEach(0..<10){ _ in
                        NotificationCell()
                            .padding(.top)
                            .padding(.leading, 8)
                            .padding(.trailing, 8)
                        
                    }
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
