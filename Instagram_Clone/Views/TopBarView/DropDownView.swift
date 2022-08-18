//
//  DropDownView.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 18/8/2022.
//

import SwiftUI

struct DropDownView: View {
    
    let callBack : (String) -> Void
    
    var body: some View {
        
        
        VStack(alignment: .leading){
            
            
            Button(action: {
                callBack("Subscription")
            }, label: {
                HStack{
                    Text("Subscription" )
                        .font(.system(size: 18))
                        .foregroundColor(Color.black)
                        .padding(8)
                    Image(systemName: "crown")
                        .foregroundColor(Color.black)
                }
                
                
            })
            Button(action: {
                callBack("Following")
            }, label: {
                HStack{
                    Text("Following" )
                        .font(.system(size: 18))
                        .foregroundColor(Color.black)
                        .padding(8)
                    Image(systemName:"person.2")
                        .foregroundColor(Color.black)
                }
                
                
            })
            Button(action: {
                callBack("Favourites")
            }, label: {
                HStack{
                    Text("Favourites" )
                        .font(.system(size: 18))
                        .foregroundColor(Color.black)
                        .padding(8)
                    Image(systemName:"star")
                        .foregroundColor(Color.black)
                    
                }
                
            })
        }.frame(width: .none, height: .none)
            .background(Color.white)
        
    }
}


struct DropDownView_Previews: PreviewProvider {
    static var previews: some View {
        DropDownView(callBack: {data in}).padding()
    }
}
