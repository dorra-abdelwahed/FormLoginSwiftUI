//
//  CustomTextField.swift
//  LoginFormSwiftUI
//
//  Created by Dorra Ben Abdelwahed on 12/5/2022.
//

import SwiftUI

struct GradientTextFieldBackground: TextFieldStyle{
    
    let systemImageString: String
    
    //Hidden function to conform to this protocol
    func _body(configuration: TextField<Self._Label>) -> some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(
                LinearGradient(colors:
                                [
                                     Color("cyan"),
                                    .blue,
                                    .purple
                                ],
                               startPoint: .leading,
                               endPoint: .trailing
                              )
                )
                .frame(height: 40)
            
            HStack {
                Image(systemName: systemImageString)
                //Reference the textfield ere
                configuration
            }
            .padding(.leading)
            .foregroundColor(.gray)
        }
    }
}
