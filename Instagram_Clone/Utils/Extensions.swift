//
//  Extensions.swift
//  Instagram_Clone
//
//  Created by Subheksha Gautam on 10/8/2022.
//

import UIKit
extension UIApplication {
    //hide keyboard after cancel button is pressed
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

