//
//  SignUpScreenView.swift
//  LoginFormSwiftUI
//
//  Created by Dorra Ben Abdelwahed on 12/5/2022.
//

import SwiftUI

struct SignUpScreenView: View {
    
    @State var email = ""
    @State var password = ""
    @State var acceptTerms = false
    
    var body: some View {
        
        VStack{
            
           
            //MARK: Email TextField
            TextField("Email Address",text: $email)
                .textFieldStyle(
                GradientTextFieldBackground(systemImageString: "envelope")
                )
                .padding(.bottom)
            
            //MARK: password TextField
            SecureField("Password",text: $password)
                .textFieldStyle(
                GradientTextFieldBackground(systemImageString: "lock")
                )
            
        
            Toggle("I accept the policy and terms", isOn: $acceptTerms)
                .font(.caption)
                .toggleStyle(SwitchToggleStyle(tint: .blue))
                .frame(width: 250,alignment: .leading)
                .padding(.top)
              
           
           

        }
        .padding()
    }
}

struct SignUpScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreenView()
    }
}
